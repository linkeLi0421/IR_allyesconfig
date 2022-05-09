; ModuleID = '/llk/IR_all_yes/sound/pci/cmipci.c_pt.bc'
source_filename = "../sound/pci/cmipci.c"
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.snd_pcm_chmap_elem = type { i8, [15 x i8] }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.85, i32 }
%union.anon.85 = type { ptr }
%struct.cmipci_switch_args = type { i32, i32, i32, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.72 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.cmipci = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i8, i32, i32, i32, [3 x ptr], [2 x i32], %struct.mutex, i8, [4 x ptr], [4 x i32], [2 x %struct.cmipci_pcm], ptr, ptr, %struct.spinlock, [32 x i32], [32 x i8] }
%struct.cmipci_pcm = type { ptr, i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.83, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.83 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.gameport = type { ptr, [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, i32, %struct.spinlock, i32, ptr, ptr, ptr, ptr, %struct.mutex, %struct.device, %struct.list_head }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.73, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.73 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
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
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.78, [128 x i8] }
%union.anon.78 = type { %union.anon.80 }
%union.anon.80 = type { [64 x i64] }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.74, [64 x i8] }
%union.anon.74 = type { %struct.anon.77, [40 x i8] }
%struct.anon.77 = type { i32, i32, [64 x i8], i64, i32 }

@__UNIQUE_ID_author242 = internal constant [47 x i8] c"snd_cmipci.author=Takashi Iwai <tiwai@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [43 x i8] c"snd_cmipci.description=C-Media CMI8x38 PCI\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [37 x i8] c"snd_cmipci.file=sound/pci/snd-cmipci\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [23 x i8] c"snd_cmipci.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [17 x i8] c"snd_cmipci.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [39 x i8] c"snd_cmipci.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [61 x i8] c"snd_cmipci.parm=index:Index value for C-Media PCI soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [14 x i8] c"snd_cmipci.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [38 x i8] c"snd_cmipci.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [56 x i8] c"snd_cmipci.parm=id:ID string for C-Media PCI soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [18 x i8] c"snd_cmipci.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype250 = internal constant [41 x i8] c"snd_cmipci.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable251 = internal constant [53 x i8] c"snd_cmipci.parm=enable:Enable C-Media PCI soundcard.\00", section ".modinfo", align 1
@__param_str_mpu_port = internal constant [20 x i8] c"snd_cmipci.mpu_port\00", align 1
@__param_arr_mpu_port = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_long, ptr @mpu_port }, align 4
@__param_mpu_port = internal constant %struct.kernel_param { ptr @__param_str_mpu_port, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 2, %union.anon.65 { ptr @__param_arr_mpu_port } }, section "__param", align 4
@__UNIQUE_ID_mpu_porttype252 = internal constant [43 x i8] c"snd_cmipci.parmtype=mpu_port:array of long\00", section ".modinfo", align 1
@__UNIQUE_ID_mpu_port253 = internal constant [39 x i8] c"snd_cmipci.parm=mpu_port:MPU-401 port.\00", section ".modinfo", align 1
@__param_str_fm_port = internal constant [19 x i8] c"snd_cmipci.fm_port\00", align 1
@__param_arr_fm_port = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_long, ptr @fm_port }, align 4
@__param_fm_port = internal constant %struct.kernel_param { ptr @__param_str_fm_port, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 2, %union.anon.65 { ptr @__param_arr_fm_port } }, section "__param", align 4
@__UNIQUE_ID_fm_porttype254 = internal constant [42 x i8] c"snd_cmipci.parmtype=fm_port:array of long\00", section ".modinfo", align 1
@__UNIQUE_ID_fm_port255 = internal constant [33 x i8] c"snd_cmipci.parm=fm_port:FM port.\00", section ".modinfo", align 1
@__param_str_soft_ac3 = internal constant [20 x i8] c"snd_cmipci.soft_ac3\00", align 1
@__param_arr_soft_ac3 = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @soft_ac3 }, align 4
@__param_soft_ac3 = internal constant %struct.kernel_param { ptr @__param_str_soft_ac3, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_soft_ac3 } }, section "__param", align 4
@__UNIQUE_ID_soft_ac3type256 = internal constant [43 x i8] c"snd_cmipci.parmtype=soft_ac3:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_soft_ac3257 = internal constant [84 x i8] c"snd_cmipci.parm=soft_ac3:Software-conversion of raw SPDIF packets (model 033 only).\00", section ".modinfo", align 1
@__param_str_joystick_port = internal constant [25 x i8] c"snd_cmipci.joystick_port\00", align 1
@__param_arr_joystick_port = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @joystick_port }, align 4
@__param_joystick_port = internal constant %struct.kernel_param { ptr @__param_str_joystick_port, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 2, %union.anon.65 { ptr @__param_arr_joystick_port } }, section "__param", align 4
@__UNIQUE_ID_joystick_porttype258 = internal constant [47 x i8] c"snd_cmipci.parmtype=joystick_port:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_joystick_port259 = internal constant [53 x i8] c"snd_cmipci.parm=joystick_port:Joystick port address.\00", section ".modinfo", align 1
@__initcall__kmod_snd_cmipci__264_3341_cmipci_driver_init6 = internal global ptr @cmipci_driver_init, section ".initcall6.init", align 4
@cmipci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_cmipci_ids, ptr @snd_cmipci_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_cmipci_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_cmipci_driver_exit = internal global ptr @cmipci_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@param_ops_long = external dso_local constant %struct.kernel_param_ops, align 4
@mpu_port = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [32 x i8] zeroinitializer }, align 32
@fm_port = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [32 x i8] zeroinitializer }, align 32
@soft_ac3 = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@joystick_port = internal global { [32 x i32], [32 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snd_cmipci\00", [21 x i8] zeroinitializer }, align 32
@snd_cmipci_ids = internal constant { [6 x %struct.pci_device_id], [32 x i8] } { [6 x %struct.pci_device_id] [%struct.pci_device_id { i32 5110, i32 256, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5110, i32 257, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5110, i32 273, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5110, i32 274, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4281, i32 273, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_cmipci_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @snd_cmipci_suspend, ptr @snd_cmipci_resume, ptr @snd_cmipci_suspend, ptr @snd_cmipci_resume, ptr @snd_cmipci_suspend, ptr @snd_cmipci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@snd_cmipci_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CMIPCI\00", [25 x i8] zeroinitializer }, align 32
@snd_cmipci_create.intel_82437vx = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 28720, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_cmipci_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&cm->reg_lock\00", [18 x i8] zeroinitializer }, align 32
@snd_cmipci_create.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&cm->open_mutex\00", [16 x i8] zeroinitializer }, align 32
@snd_cmipci_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 3011, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to grab IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_cmipci_create\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sound/pci/cmipci.c\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_cmipci_create._entry_ptr = internal global ptr @snd_cmipci_create._entry, section ".printk_index", align 4
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-MC%d\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"-SWIEC\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"C-Media CMI%d\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" (model %d)\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s%s at %#lx, irq %i\00", [43 x i8] zeroinitializer }, align 32
@snd_cmipci_create._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.8, ptr @.str.9, i32 3142, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cannot enable MPU-401 port at %#lx\0A\00", [60 x i8] zeroinitializer }, align 32
@snd_cmipci_create._entry_ptr.19 = internal global ptr @snd_cmipci_create._entry.17, section ".printk_index", align 4
@snd_cmipci_create._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.8, ptr @.str.9, i32 3192, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no UART401 device at 0x%lx\0A\00", [36 x i8] zeroinitializer }, align 32
@snd_cmipci_create._entry_ptr.22 = internal global ptr @snd_cmipci_create._entry.20, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@snd_cmipci_create_fm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.9, i32 2958, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no OPL device at %#lx, skipping...\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_cmipci_create_fm\00", [43 x i8] zeroinitializer }, align 32
@snd_cmipci_create_fm._entry_ptr = internal global ptr @snd_cmipci_create_fm._entry, section ".printk_index", align 4
@snd_cmipci_create_fm._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.9, i32 2964, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot create OPL3 hwdep\0A\00", [38 x i8] zeroinitializer }, align 32
@snd_cmipci_create_fm._entry_ptr.27 = internal global ptr @snd_cmipci_create_fm._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cmipci\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\0A%02x:\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %02x\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@snd_cmipci_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_cmipci_playback_open, ptr @snd_cmipci_playback_close, ptr null, ptr null, ptr @snd_cmipci_playback_hw_free, ptr @snd_cmipci_playback_prepare, ptr @snd_cmipci_playback_trigger, ptr null, ptr @snd_cmipci_playback_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_cmipci_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_cmipci_capture_open, ptr @snd_cmipci_capture_close, ptr null, ptr null, ptr null, ptr @snd_cmipci_capture_prepare, ptr @snd_cmipci_capture_trigger, ptr null, ptr @snd_cmipci_capture_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"C-Media PCI DAC/ADC\00", [44 x i8] zeroinitializer }, align 32
@snd_cmipci_playback = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 852227, i64 6, i32 255, i32 5512, i32 48000, i32 1, i32 2, i32 131072, i32 64, i32 131072, i32 2, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@hw_constraints_rates = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @rate_constraints, i32 11, i32 0 }, [20 x i8] zeroinitializer }, align 32
@rate_constraints = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 5512, i32 8000, i32 11025, i32 16000, i32 22050, i32 32000, i32 44100, i32 48000, i32 88200, i32 96000, i32 128000], [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IEC958 Output Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IEC958 Mix Analog\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IEC958 Loop\00", [20 x i8] zeroinitializer }, align 32
@snd_cmipci_pcm_prepare.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.9, ptr @.str.39, i8 0, i8 -64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_cmipci_pcm_prepare\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot set dac channels\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUG?\0A\00", [26 x i8] zeroinitializer }, align 32
@snd_cmipci_pcm_prepare.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.9, ptr @.str.41, i8 0, i8 -50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"functrl1 = %08x\0A\00", [47 x i8] zeroinitializer }, align 32
@snd_cmipci_pcm_prepare.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.9, ptr @.str.42, i8 0, i8 -46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"chformat = %08x\0A\00", [47 x i8] zeroinitializer }, align 32
@snd_cmipci_pcm_trigger.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.9, ptr @.str.44, i8 0, i8 -37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_cmipci_pcm_trigger\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"functrl0 = %08x\0A\00", [47 x i8] zeroinitializer }, align 32
@snd_cmipci_pcm_pointer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.9, i32 927, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid PCM pointer: %#x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_cmipci_pcm_pointer\00", [41 x i8] zeroinitializer }, align 32
@snd_cmipci_pcm_pointer._entry_ptr = internal global ptr @snd_cmipci_pcm_pointer._entry, section ".printk_index", align 4
@snd_cmipci_capture = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 852227, i64 6, i32 255, i32 5512, i32 48000, i32 1, i32 2, i32 131072, i32 64, i32 131072, i32 2, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_cmipci_playback2_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_cmipci_playback2_open, ptr @snd_cmipci_playback2_close, ptr null, ptr @snd_cmipci_playback2_hw_params, ptr @snd_cmipci_playback2_hw_free, ptr @snd_cmipci_capture_prepare, ptr @snd_cmipci_capture_trigger, ptr null, ptr @snd_cmipci_capture_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"C-Media PCI 2nd DAC\00", [44 x i8] zeroinitializer }, align 32
@snd_cmipci_playback2 = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 852227, i64 4, i32 255, i32 5512, i32 48000, i32 2, i32 2, i32 131072, i32 64, i32 131072, i32 2, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@hw_constraints_channels_4 = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @hw_channels, i32 3, i32 0 }, [20 x i8] zeroinitializer }, align 32
@hw_constraints_channels_6 = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @hw_channels, i32 4, i32 0 }, [20 x i8] zeroinitializer }, align 32
@hw_constraints_channels_8 = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @hw_channels, i32 5, i32 0 }, [20 x i8] zeroinitializer }, align 32
@hw_channels = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 4, i32 6, i32 8], [44 x i8] zeroinitializer }, align 32
@snd_cmipci_playback_spdif_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_cmipci_playback_spdif_open, ptr @snd_cmipci_playback_spdif_close, ptr null, ptr null, ptr @snd_cmipci_playback_hw_free, ptr @snd_cmipci_playback_spdif_prepare, ptr @snd_cmipci_playback_trigger, ptr null, ptr @snd_cmipci_playback_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_cmipci_capture_spdif_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_cmipci_capture_spdif_open, ptr @snd_cmipci_capture_spdif_close, ptr null, ptr null, ptr @snd_cmipci_capture_spdif_hw_free, ptr @snd_cmipci_capture_spdif_prepare, ptr @snd_cmipci_capture_trigger, ptr null, ptr @snd_cmipci_capture_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"C-Media PCI IEC958\00", [45 x i8] zeroinitializer }, align 32
@snd_pcm_alt_chmaps = external dso_local constant [0 x %struct.snd_pcm_chmap_elem], align 1
@snd_cmipci_playback_spdif = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 852227, i64 4, i32 192, i32 44100, i32 48000, i32 2, i32 2, i32 131072, i32 64, i32 131072, i32 2, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_cmipci_playback_iec958_subframe = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 852227, i64 262144, i32 192, i32 44100, i32 48000, i32 2, i32 2, i32 131072, i32 64, i32 131072, i32 2, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_cmipci_capture_spdif = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 852227, i64 262148, i32 192, i32 44100, i32 48000, i32 2, i32 2, i32 131072, i32 64, i32 131072, i32 2, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CMedia PCI\00", [21 x i8] zeroinitializer }, align 32
@snd_cmipci_mixers = internal constant { [27 x %struct.snd_kcontrol_new], [336 x i8] } { [27 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_cmipci_info_volume, ptr @snd_cmipci_get_volume, ptr @snd_cmipci_put_volume, %union.anon.85 zeroinitializer, i32 530264368 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_cmipci_info_native_mixer, ptr @snd_cmipci_get_native_mixer, ptr @snd_cmipci_put_native_mixer, %union.anon.85 zeroinitializer, i32 17376292 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_cmipci_info_volume, ptr @snd_cmipci_get_volume, ptr @snd_cmipci_put_volume, %union.anon.85 zeroinitializer, i32 530264882 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 0, i32 0, ptr @snd_cmipci_info_native_mixer, ptr @snd_cmipci_get_native_mixer_sensitive, ptr @snd_cmipci_put_native_mixer_sensitive, %union.anon.85 zeroinitializer, i32 24519716 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_cmipci_info_native_mixer, ptr @snd_cmipci_get_native_mixer, ptr @snd_cmipci_put_native_mixer, %union.anon.85 zeroinitializer, i32 26420260 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_cmipci_info_volume, ptr @snd_cmipci_get_volume, ptr @snd_cmipci_put_volume, %union.anon.85 zeroinitializer, i32 530265396 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_cmipci_info_native_mixer, ptr @snd_cmipci_get_native_mixer, ptr @snd_cmipci_put_native_mixer, %union.anon.85 zeroinitializer, i32 25109540 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_cmipci_info_input_sw, ptr @snd_cmipci_get_input_sw, ptr @snd_cmipci_put_input_sw, %union.anon.85 zeroinitializer, i32 28196413 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_cmipci_info_volume, ptr @snd_cmipci_get_volume, ptr @snd_cmipci_put_volume, %union.anon.85 zeroinitializer, i32 530265910 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_cmipci_info_volume, ptr @snd_cmipci_get_volume, ptr @snd_cmipci_put_volume, %union.anon.85 zeroinitializer, i32 25836604 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_cmipci_info_input_sw, ptr @snd_cmipci_get_input_sw, ptr @snd_cmipci_put_input_sw, %union.anon.85 zeroinitializer, i32 25837117 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_cmipci_info_volume, ptr @snd_cmipci_get_volume, ptr @snd_cmipci_put_volume, %union.anon.85 zeroinitializer, i32 530266424 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 0, i32 0, ptr @snd_cmipci_info_volume, ptr @snd_cmipci_get_volume, ptr @snd_cmipci_put_volume, %union.anon.85 zeroinitializer, i32 27016252 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 0, i32 0, ptr @snd_cmipci_info_input_sw, ptr @snd_cmipci_get_input_sw, ptr @snd_cmipci_put_input_sw, %union.anon.85 zeroinitializer, i32 27016765 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 0, i32 0, ptr @snd_cmipci_info_volume, ptr @snd_cmipci_get_volume, ptr @snd_cmipci_put_volume, %union.anon.85 zeroinitializer, i32 521878074 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 0, i32 0, ptr @snd_cmipci_info_volume, ptr @snd_cmipci_get_volume, ptr @snd_cmipci_put_volume, %union.anon.85 zeroinitializer, i32 16792636 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 0, i32 0, ptr @snd_cmipci_info_volume, ptr @snd_cmipci_get_volume, ptr @snd_cmipci_put_volume, %union.anon.85 zeroinitializer, i32 16793149 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 0, i32 0, ptr @snd_cmipci_info_volume, ptr @snd_cmipci_get_volume, ptr @snd_cmipci_put_volume, %union.anon.85 zeroinitializer, i32 53885755 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 0, i32 0, ptr @snd_cmipci_info_native_mixer, ptr @snd_cmipci_get_native_mixer, ptr @snd_cmipci_put_native_mixer, %union.anon.85 zeroinitializer, i32 260318758 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 0, i32 0, ptr @snd_cmipci_info_native_mixer, ptr @snd_cmipci_get_native_mixer, ptr @snd_cmipci_put_native_mixer, %union.anon.85 zeroinitializer, i32 28058917 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @snd_cmipci_info_native_mixer, ptr @snd_cmipci_get_native_mixer, ptr @snd_cmipci_put_native_mixer, %union.anon.85 zeroinitializer, i32 29238565 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 0, i32 0, ptr @snd_cmipci_info_native_mixer, ptr @snd_cmipci_get_native_mixer, ptr @snd_cmipci_put_native_mixer, %union.anon.85 zeroinitializer, i32 20981029 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 0, i32 0, ptr @snd_cmipci_info_native_mixer, ptr @snd_cmipci_get_native_mixer, ptr @snd_cmipci_put_native_mixer, %union.anon.85 zeroinitializer, i32 118039845 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 0, i32 0, ptr @snd_cmipci_info_volume, ptr @snd_cmipci_get_volume, ptr @snd_cmipci_put_volume, %union.anon.85 zeroinitializer, i32 120451312 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_cmipci_info_volume, ptr @snd_cmipci_get_volume, ptr @snd_cmipci_put_volume, %union.anon.85 zeroinitializer, i32 19198192 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 0, i32 0, ptr @snd_cmipci_info_volume, ptr @snd_cmipci_get_volume, ptr @snd_cmipci_put_volume, %union.anon.85 zeroinitializer, i32 18608368 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 0, i32 0, ptr @snd_cmipci_info_volume, ptr @snd_cmipci_get_volume, ptr @snd_cmipci_put_volume, %union.anon.85 zeroinitializer, i32 16838896 }], [336 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@snd_cmipci_mixer_switches = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.76, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_cmipci_uswitch_get, ptr @snd_cmipci_uswitch_put, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @cmipci_switch_arg_fourch to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 0, i32 0, ptr @snd_cmipci_line_in_mode_info, ptr @snd_cmipci_line_in_mode_get, ptr @snd_cmipci_line_in_mode_put, %union.anon.85 zeroinitializer, i32 0 }], [32 x i8] zeroinitializer }, align 32
@snd_cmipci_nomulti_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_cmipci_uswitch_get, ptr @snd_cmipci_uswitch_put, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @cmipci_switch_arg_exchange_dac to i32) }, [48 x i8] zeroinitializer }, align 32
@snd_cmipci_8738_mixer_switches = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_cmipci_spdout_enable_get, ptr @snd_cmipci_spdout_enable_put, %union.anon.85 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_cmipci_uswitch_get, ptr @snd_cmipci_uswitch_put, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @cmipci_switch_arg_spdi_valid to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_cmipci_uswitch_get, ptr @snd_cmipci_uswitch_put, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @cmipci_switch_arg_spdif_copyright to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.84, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_cmipci_uswitch_get, ptr @snd_cmipci_uswitch_put, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @cmipci_switch_arg_spdo_5v to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_cmipci_uswitch_get, ptr @snd_cmipci_uswitch_put, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @cmipci_switch_arg_spdif_loop to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_cmipci_uswitch_get, ptr @snd_cmipci_uswitch_put, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @cmipci_switch_arg_spdi_monitor to i32) }], [64 x i8] zeroinitializer }, align 32
@snd_cmipci_spdif_default = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.86, i32 0, i32 0, i32 0, ptr @snd_cmipci_spdif_default_info, ptr @snd_cmipci_spdif_default_get, ptr @snd_cmipci_spdif_default_put, %union.anon.85 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_cmipci_spdif_mask = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.87, i32 0, i32 1, i32 0, ptr @snd_cmipci_spdif_mask_info, ptr @snd_cmipci_spdif_mask_get, ptr null, %union.anon.85 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_cmipci_spdif_stream = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.88, i32 0, i32 259, i32 0, ptr @snd_cmipci_spdif_stream_info, ptr @snd_cmipci_spdif_stream_get, ptr @snd_cmipci_spdif_stream_put, %union.anon.85 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_cmipci_old_mixer_switches = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_cmipci_uswitch_get, ptr @snd_cmipci_uswitch_put, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @cmipci_switch_arg_spdif_dac_out to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_cmipci_uswitch_get, ptr @snd_cmipci_uswitch_put, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @cmipci_switch_arg_spdi_phase to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_cmipci_uswitch_get, ptr @snd_cmipci_uswitch_put, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @cmipci_switch_arg_spdif_in_sel1 to i32) }], [48 x i8] zeroinitializer }, align 32
@snd_cmipci_extra_mixer_switches = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_cmipci_uswitch_get, ptr @snd_cmipci_uswitch_put, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @cmipci_switch_arg_spdif_in_sel2 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_cmipci_uswitch_get, ptr @snd_cmipci_uswitch_put, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @cmipci_switch_arg_spdi_phase2 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 0, i32 0, ptr @snd_cmipci_mic_in_mode_info, ptr @snd_cmipci_mic_in_mode_get, ptr @snd_cmipci_mic_in_mode_put, %union.anon.85 zeroinitializer, i32 0 }], [48 x i8] zeroinitializer }, align 32
@snd_cmipci_modem_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_cmipci_uswitch_get, ptr @snd_cmipci_uswitch_put, %union.anon.85 zeroinitializer, i32 ptrtoint (ptr @cmipci_switch_arg_modem to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"3D Control - Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PCM Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Synth Playback Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Synth Playback Switch\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Synth Capture Route\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CD Playback Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CD Playback Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CD Capture Route\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Line Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Line Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Line Capture Route\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Mic Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Mic Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Mic Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Beep Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Aux Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Aux Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Aux Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Mic Boost Playback Switch\00", [38 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Mic Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Phone Playback Volume\00", [42 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Phone Playback Switch\00", [42 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Beep Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Mic Boost Capture Switch\00", [39 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Four Channel Mode\00", [46 x i8] zeroinitializer }, align 32
@cmipci_switch_arg_fourch = internal global { %struct.cmipci_switch_args, [16 x i8] } { %struct.cmipci_switch_args { i32 24, i32 67108864, i32 67108864, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Line-In Mode\00", [19 x i8] zeroinitializer }, align 32
@snd_cmipci_line_in_mode_info.texts = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.78, ptr @.str.79, ptr @.str.80], [20 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Line-In\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Rear Output\00", [20 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Bass Output\00", [20 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Exchange DAC\00", [19 x i8] zeroinitializer }, align 32
@cmipci_switch_arg_exchange_dac = internal global { %struct.cmipci_switch_args, [16 x i8] } { %struct.cmipci_switch_args { i32 24, i32 4194304, i32 4194304, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IEC958 In Valid\00", [16 x i8] zeroinitializer }, align 32
@cmipci_switch_arg_spdi_valid = internal global { %struct.cmipci_switch_args, [16 x i8] } { %struct.cmipci_switch_args { i32 39, i32 2, i32 2, i8 -128 }, [16 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IEC958 Copyright\00", [47 x i8] zeroinitializer }, align 32
@cmipci_switch_arg_spdif_copyright = internal global { %struct.cmipci_switch_args, [16 x i8] } { %struct.cmipci_switch_args { i32 20, i32 4194304, i32 4194304, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IEC958 5V\00", [22 x i8] zeroinitializer }, align 32
@cmipci_switch_arg_spdo_5v = internal global { %struct.cmipci_switch_args, [16 x i8] } { %struct.cmipci_switch_args { i32 24, i32 33554432, i32 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@cmipci_switch_arg_spdif_loop = internal global { %struct.cmipci_switch_args, [16 x i8] } { %struct.cmipci_switch_args { i32 4, i32 128, i32 128, i8 64 }, [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IEC958 In Monitor\00", [46 x i8] zeroinitializer }, align 32
@cmipci_switch_arg_spdi_monitor = internal global { %struct.cmipci_switch_args, [16 x i8] } { %struct.cmipci_switch_args { i32 36, i32 1, i32 1, i8 -128 }, [16 x i8] zeroinitializer }, align 32
@cmipci_switch_arg_spdif_enable = internal global { %struct.cmipci_switch_args, [16 x i8] } { %struct.cmipci_switch_args { i32 20, i32 8388608, i32 8388608, i8 0 }, [16 x i8] zeroinitializer }, align 32
@cmipci_switch_arg_spdo2dac = internal global { %struct.cmipci_switch_args, [16 x i8] } { %struct.cmipci_switch_args { i32 4, i32 64, i32 64, i8 64 }, [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Playback Default\00", [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IEC958 Playback Con Mask\00", [39 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IEC958 Playback PCM Stream\00", [37 x i8] zeroinitializer }, align 32
@cmipci_switch_arg_spdif_dac_out = internal global { %struct.cmipci_switch_args, [16 x i8] } { %struct.cmipci_switch_args { i32 20, i32 2097152, i32 2097152, i8 64 }, [16 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 In Phase Inverse\00", [40 x i8] zeroinitializer }, align 32
@cmipci_switch_arg_spdi_phase = internal global { %struct.cmipci_switch_args, [16 x i8] } { %struct.cmipci_switch_args { i32 39, i32 4, i32 4, i8 -128 }, [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IEC958 In Select\00", [47 x i8] zeroinitializer }, align 32
@cmipci_switch_arg_spdif_in_sel1 = internal global { %struct.cmipci_switch_args, [16 x i8] } { %struct.cmipci_switch_args { i32 8, i32 524288, i32 524288, i8 0 }, [16 x i8] zeroinitializer }, align 32
@cmipci_switch_arg_spdif_in_sel2 = internal global { %struct.cmipci_switch_args, [16 x i8] } { %struct.cmipci_switch_args { i32 24, i32 256, i32 256, i8 0 }, [16 x i8] zeroinitializer }, align 32
@cmipci_switch_arg_spdi_phase2 = internal global { %struct.cmipci_switch_args, [16 x i8] } { %struct.cmipci_switch_args { i32 8, i32 128, i32 128, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Mic-In Mode\00", [20 x i8] zeroinitializer }, align 32
@snd_cmipci_mic_in_mode_info.texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.92, ptr @.str.93], [24 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Mic-In\00", [25 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Center/LFE Output\00", [46 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Modem\00", [26 x i8] zeroinitializer }, align 32
@cmipci_switch_arg_modem = internal global { %struct.cmipci_switch_args, [16 x i8] } { %struct.cmipci_switch_args { i32 24, i32 96, i32 64, i8 0 }, [16 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.95 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CMIPCI gameport\00", [16 x i8] zeroinitializer }, align 32
@snd_cmipci_create_gameport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.9, i32 2867, ptr @.str.98, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot reserve joystick ports\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"snd_cmipci_create_gameport\00", [37 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@snd_cmipci_create_gameport._entry_ptr = internal global ptr @snd_cmipci_create_gameport._entry, section ".printk_index", align 4
@snd_cmipci_create_gameport._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.97, ptr @.str.9, i32 2873, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cannot allocate memory for gameport\0A\00", [59 x i8] zeroinitializer }, align 32
@snd_cmipci_create_gameport._entry_ptr.101 = internal global ptr @snd_cmipci_create_gameport._entry.99, section ".printk_index", align 4
@.str.102 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"C-Media Gameport\00", [47 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pci%s/gameport0\00", [16 x i8] zeroinitializer }, align 32
@saved_regs = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\04\08\14\18 $%$\F8\80\84\88\8C\90\10\0C\00", [47 x i8] zeroinitializer }, align 32
@saved_mixers = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"0123456789:;\F0<=>", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 256, i64 257, i64 273, i64 274]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 16777216]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.106 = internal global [8 x i64] [i64 6, i64 32, i64 334927713, i64 1481455425, i64 1481455441, i64 1481455457, i64 1481455473, i64 1921287044]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.108 = internal global [6 x i64] [i64 4, i64 32, i64 904, i64 968, i64 992, i64 1000]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 55, i64 68]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 48000, i64 96000]
@__sancov_gen_cov_switch_values.112 = internal global [5 x i64] [i64 3, i64 32, i64 88200, i64 96000, i64 128000]
@__sancov_gen_cov_switch_values.113 = internal global [10 x i64] [i64 8, i64 32, i64 5512, i64 8000, i64 11025, i64 16000, i64 22050, i64 32000, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.114 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 55, i64 68]
@__sancov_gen_cov_switch_values.116 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 55, i64 68]
@___asan_gen_.118 = private unnamed_addr constant [14 x i8] c"cmipci_driver\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 3332, i32 26 }
@___asan_gen_.121 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 38, i32 12 }
@___asan_gen_.124 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 39, i32 14 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 40, i32 13 }
@___asan_gen_.130 = private unnamed_addr constant [9 x i8] c"mpu_port\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 41, i32 13 }
@___asan_gen_.133 = private unnamed_addr constant [8 x i8] c"fm_port\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 42, i32 13 }
@___asan_gen_.136 = private unnamed_addr constant [9 x i8] c"soft_ac3\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 43, i32 13 }
@___asan_gen_.139 = private unnamed_addr constant [14 x i8] c"joystick_port\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 45, i32 12 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 3341, i32 1 }
@___asan_gen_.145 = private unnamed_addr constant [15 x i8] c"snd_cmipci_ids\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2779, i32 35 }
@___asan_gen_.148 = private unnamed_addr constant [14 x i8] c"snd_cmipci_pm\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 3326, i32 8 }
@___asan_gen_.151 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 3219, i32 13 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 3245, i32 24 }
@___asan_gen_.157 = private unnamed_addr constant [14 x i8] c"intel_82437vx\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2985, i32 36 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2994, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2995, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 3011, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 3034, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 3036, i32 55 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 3108, i32 27 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 3110, i32 21 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 3113, i32 26 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 3140, i32 5 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 3191, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2956, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2964, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2776, i32 33 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2762, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2768, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2769, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2771, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant [24 x i8] c"snd_cmipci_playback_ops\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1825, i32 33 }
@___asan_gen_.250 = private unnamed_addr constant [23 x i8] c"snd_cmipci_capture_ops\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1834, i32 33 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1888, i32 20 }
@___asan_gen_.256 = private unnamed_addr constant [20 x i8] c"snd_cmipci_playback\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1456, i32 38 }
@___asan_gen_.259 = private unnamed_addr constant [21 x i8] c"hw_constraints_rates\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1578, i32 48 }
@___asan_gen_.262 = private unnamed_addr constant [17 x i8] c"rate_constraints\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1576, i32 27 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 433, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 434, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 435, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 437, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 771, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 812, i32 16 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 825, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 841, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 879, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 927, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant [19 x i8] c"snd_cmipci_capture\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1476, i32 38 }
@___asan_gen_.310 = private unnamed_addr constant [25 x i8] c"snd_cmipci_playback2_ops\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1842, i32 33 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1910, i32 20 }
@___asan_gen_.316 = private unnamed_addr constant [21 x i8] c"snd_cmipci_playback2\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1496, i32 38 }
@___asan_gen_.319 = private unnamed_addr constant [26 x i8] c"hw_constraints_channels_4\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 695, i32 48 }
@___asan_gen_.322 = private unnamed_addr constant [26 x i8] c"hw_constraints_channels_6\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 700, i32 48 }
@___asan_gen_.325 = private unnamed_addr constant [26 x i8] c"hw_constraints_channels_8\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 705, i32 48 }
@___asan_gen_.328 = private unnamed_addr constant [12 x i8] c"hw_channels\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 694, i32 27 }
@___asan_gen_.331 = private unnamed_addr constant [30 x i8] c"snd_cmipci_playback_spdif_ops\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1852, i32 33 }
@___asan_gen_.334 = private unnamed_addr constant [29 x i8] c"snd_cmipci_capture_spdif_ops\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1861, i32 33 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1933, i32 20 }
@___asan_gen_.340 = private unnamed_addr constant [26 x i8] c"snd_cmipci_playback_spdif\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1516, i32 38 }
@___asan_gen_.343 = private unnamed_addr constant [36 x i8] c"snd_cmipci_playback_iec958_subframe\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1536, i32 38 }
@___asan_gen_.346 = private unnamed_addr constant [25 x i8] c"snd_cmipci_capture_spdif\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1556, i32 38 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2653, i32 26 }
@___asan_gen_.352 = private unnamed_addr constant [18 x i8] c"snd_cmipci_mixers\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2267, i32 38 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2662, i32 5 }
@___asan_gen_.358 = private unnamed_addr constant [26 x i8] c"snd_cmipci_mixer_switches\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2578, i32 38 }
@___asan_gen_.361 = private unnamed_addr constant [26 x i8] c"snd_cmipci_nomulti_switch\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2590, i32 38 }
@___asan_gen_.364 = private unnamed_addr constant [31 x i8] c"snd_cmipci_8738_mixer_switches\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2594, i32 38 }
@___asan_gen_.367 = private unnamed_addr constant [25 x i8] c"snd_cmipci_spdif_default\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1020, i32 38 }
@___asan_gen_.370 = private unnamed_addr constant [22 x i8] c"snd_cmipci_spdif_mask\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1047, i32 38 }
@___asan_gen_.373 = private unnamed_addr constant [24 x i8] c"snd_cmipci_spdif_stream\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1094, i32 38 }
@___asan_gen_.376 = private unnamed_addr constant [30 x i8] c"snd_cmipci_old_mixer_switches\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2616, i32 38 }
@___asan_gen_.379 = private unnamed_addr constant [32 x i8] c"snd_cmipci_extra_mixer_switches\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2623, i32 38 }
@___asan_gen_.382 = private unnamed_addr constant [24 x i8] c"snd_cmipci_modem_switch\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2636, i32 38 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2268, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2269, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2280, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2281, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2282, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2283, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2284, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2285, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2286, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2287, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2288, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2289, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2290, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2291, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2292, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2293, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2294, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2295, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2296, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2297, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2298, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2299, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2300, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2301, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2302, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2579, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant [25 x i8] c"cmipci_switch_arg_fourch\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2433, i32 1 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2581, i32 11 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2490, i32 27 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2491, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2491, i32 14 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2491, i32 29 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2591, i32 1 }
@___asan_gen_.484 = private unnamed_addr constant [31 x i8] c"cmipci_switch_arg_exchange_dac\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2431, i32 1 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2607, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant [29 x i8] c"cmipci_switch_arg_spdi_valid\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2418, i32 1 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2608, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant [34 x i8] c"cmipci_switch_arg_spdif_copyright\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2419, i32 1 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2609, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant [26 x i8] c"cmipci_switch_arg_spdo_5v\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2421, i32 1 }
@___asan_gen_.505 = private unnamed_addr constant [29 x i8] c"cmipci_switch_arg_spdif_loop\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2423, i32 1 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2612, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant [31 x i8] c"cmipci_switch_arg_spdi_monitor\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2424, i32 1 }
@___asan_gen_.514 = private unnamed_addr constant [31 x i8] c"cmipci_switch_arg_spdif_enable\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2416, i32 1 }
@___asan_gen_.517 = private unnamed_addr constant [27 x i8] c"cmipci_switch_arg_spdo2dac\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2417, i32 1 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1023, i32 11 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1051, i32 11 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1098, i32 11 }
@___asan_gen_.529 = private unnamed_addr constant [32 x i8] c"cmipci_switch_arg_spdif_dac_out\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2420, i32 1 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2618, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant [29 x i8] c"cmipci_switch_arg_spdi_phase\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2426, i32 1 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2619, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant [32 x i8] c"cmipci_switch_arg_spdif_in_sel1\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2414, i32 1 }
@___asan_gen_.544 = private unnamed_addr constant [32 x i8] c"cmipci_switch_arg_spdif_in_sel2\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2415, i32 1 }
@___asan_gen_.547 = private unnamed_addr constant [30 x i8] c"cmipci_switch_arg_spdi_phase2\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2427, i32 1 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2627, i32 11 }
@___asan_gen_.553 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2545, i32 27 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2545, i32 40 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2545, i32 50 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2637, i32 1 }
@___asan_gen_.565 = private unnamed_addr constant [24 x i8] c"cmipci_switch_arg_modem\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2437, i32 1 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2855, i32 8 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2867, i32 3 }
@___asan_gen_.583 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2873, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2876, i32 24 }
@___asan_gen_.592 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2877, i32 24 }
@___asan_gen_.595 = private unnamed_addr constant [11 x i8] c"saved_regs\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 3266, i32 28 }
@___asan_gen_.598 = private unnamed_addr constant [13 x i8] c"saved_mixers\00", align 1
@___asan_gen_.599 = private constant [22 x i8] c"../sound/pci/cmipci.c\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 3274, i32 28 }
@llvm.compiler.used = appending global [197 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_enable251, ptr @__UNIQUE_ID_enabletype250, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_fm_port255, ptr @__UNIQUE_ID_fm_porttype254, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_joystick_port259, ptr @__UNIQUE_ID_joystick_porttype258, ptr @__UNIQUE_ID_license245, ptr @__UNIQUE_ID_mpu_port253, ptr @__UNIQUE_ID_mpu_porttype252, ptr @__UNIQUE_ID_soft_ac3257, ptr @__UNIQUE_ID_soft_ac3type256, ptr @__exitcall_cmipci_driver_exit, ptr @__initcall__kmod_snd_cmipci__264_3341_cmipci_driver_init6, ptr @__param_enable, ptr @__param_fm_port, ptr @__param_id, ptr @__param_index, ptr @__param_joystick_port, ptr @__param_mpu_port, ptr @__param_soft_ac3, ptr @cmipci_driver_exit, ptr @snd_cmipci_create._entry, ptr @snd_cmipci_create._entry.17, ptr @snd_cmipci_create._entry.20, ptr @snd_cmipci_create._entry_ptr, ptr @snd_cmipci_create._entry_ptr.19, ptr @snd_cmipci_create._entry_ptr.22, ptr @snd_cmipci_create_fm._entry, ptr @snd_cmipci_create_fm._entry.25, ptr @snd_cmipci_create_fm._entry_ptr, ptr @snd_cmipci_create_fm._entry_ptr.27, ptr @snd_cmipci_create_gameport._entry, ptr @snd_cmipci_create_gameport._entry.99, ptr @snd_cmipci_create_gameport._entry_ptr, ptr @snd_cmipci_create_gameport._entry_ptr.101, ptr @snd_cmipci_pcm_pointer._entry, ptr @snd_cmipci_pcm_pointer._entry_ptr, ptr @cmipci_driver, ptr @index, ptr @id, ptr @enable, ptr @mpu_port, ptr @fm_port, ptr @soft_ac3, ptr @joystick_port, ptr @.str, ptr @snd_cmipci_ids, ptr @snd_cmipci_pm, ptr @snd_cmipci_probe.dev, ptr @.str.3, ptr @snd_cmipci_create.intel_82437vx, ptr @snd_cmipci_create.__key, ptr @.str.4, ptr @snd_cmipci_create.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @snd_cmipci_playback_ops, ptr @snd_cmipci_capture_ops, ptr @.str.33, ptr @snd_cmipci_playback, ptr @hw_constraints_rates, ptr @rate_constraints, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @snd_cmipci_capture, ptr @snd_cmipci_playback2_ops, ptr @.str.47, ptr @snd_cmipci_playback2, ptr @hw_constraints_channels_4, ptr @hw_constraints_channels_6, ptr @hw_constraints_channels_8, ptr @hw_channels, ptr @snd_cmipci_playback_spdif_ops, ptr @snd_cmipci_capture_spdif_ops, ptr @.str.48, ptr @snd_cmipci_playback_spdif, ptr @snd_cmipci_playback_iec958_subframe, ptr @snd_cmipci_capture_spdif, ptr @.str.49, ptr @snd_cmipci_mixers, ptr @.str.50, ptr @snd_cmipci_mixer_switches, ptr @snd_cmipci_nomulti_switch, ptr @snd_cmipci_8738_mixer_switches, ptr @snd_cmipci_spdif_default, ptr @snd_cmipci_spdif_mask, ptr @snd_cmipci_spdif_stream, ptr @snd_cmipci_old_mixer_switches, ptr @snd_cmipci_extra_mixer_switches, ptr @snd_cmipci_modem_switch, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @cmipci_switch_arg_fourch, ptr @.str.77, ptr @snd_cmipci_line_in_mode_info.texts, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @cmipci_switch_arg_exchange_dac, ptr @.str.82, ptr @cmipci_switch_arg_spdi_valid, ptr @.str.83, ptr @cmipci_switch_arg_spdif_copyright, ptr @.str.84, ptr @cmipci_switch_arg_spdo_5v, ptr @cmipci_switch_arg_spdif_loop, ptr @.str.85, ptr @cmipci_switch_arg_spdi_monitor, ptr @cmipci_switch_arg_spdif_enable, ptr @cmipci_switch_arg_spdo2dac, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @cmipci_switch_arg_spdif_dac_out, ptr @.str.89, ptr @cmipci_switch_arg_spdi_phase, ptr @.str.90, ptr @cmipci_switch_arg_spdif_in_sel1, ptr @cmipci_switch_arg_spdif_in_sel2, ptr @cmipci_switch_arg_spdi_phase2, ptr @.str.91, ptr @snd_cmipci_mic_in_mode_info.texts, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @cmipci_switch_arg_modem, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @saved_regs, ptr @saved_mixers], section "llvm.metadata"
@0 = internal global [161 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmipci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_port to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm_port to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soft_ac3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joystick_port to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_ids to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_create.intel_82437vx to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_create.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_create._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_create._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_create_fm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_create_fm._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_playback to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_constraints_rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rate_constraints to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_pcm_pointer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_capture to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_playback2_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_playback2 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_constraints_channels_4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_constraints_channels_6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_constraints_channels_8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_channels to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_playback_spdif_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_capture_spdif_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_playback_spdif to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_playback_iec958_subframe to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_capture_spdif to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_mixers to i32), i32 1296, i32 1632, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_mixer_switches to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_nomulti_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_8738_mixer_switches to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_spdif_default to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_spdif_mask to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_spdif_stream to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_old_mixer_switches to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_extra_mixer_switches to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_modem_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmipci_switch_arg_fourch to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_line_in_mode_info.texts to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmipci_switch_arg_exchange_dac to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmipci_switch_arg_spdi_valid to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmipci_switch_arg_spdif_copyright to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmipci_switch_arg_spdo_5v to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmipci_switch_arg_spdif_loop to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmipci_switch_arg_spdi_monitor to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmipci_switch_arg_spdif_enable to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmipci_switch_arg_spdo2dac to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmipci_switch_arg_spdif_dac_out to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmipci_switch_arg_spdi_phase to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmipci_switch_arg_spdif_in_sel1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmipci_switch_arg_spdif_in_sel2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmipci_switch_arg_spdi_phase2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_mic_in_mode_info.texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmipci_switch_arg_modem to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_create_gameport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cmipci_create_gameport._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saved_regs to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saved_mixers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cmipci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @cmipci_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cmipci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @cmipci_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_probe(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #2 align 64 {
entry:
  %elem_id.i.i = alloca %struct.snd_ctl_elem_id, align 4
  %pcm.i542.i = alloca ptr, align 4
  %pcm.i531.i = alloca ptr, align 4
  %pcm.i.i = alloca ptr, align 4
  %opl3.i.i = alloca ptr, align 4
  %modelstr.i = alloca [16 x i8], align 1
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #12
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !391
  %1 = load i32, ptr @snd_cmipci_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp = icmp sgt i32 %1, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !392
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @snd_cmipci_probe.dev, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %arrayidx3 = getelementptr [32 x i32], ptr @index, i32 0, i32 %1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr [32 x ptr], ptr @id, i32 0, i32 %1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4, align 4
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %5, ptr noundef %7, ptr noundef null, i32 noundef 468, ptr noundef nonnull %card) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %device = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 8
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i16 %9, label %sw.default [
    i16 273, label %if.end7.sw.bb_crit_edge
    i16 274, label %if.end7.sw.bb_crit_edge42
    i16 256, label %if.end7.sw.bb9_crit_edge
    i16 257, label %if.end7.sw.bb9_crit_edge43
  ]

if.end7.sw.bb9_crit_edge43:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb9

if.end7.sw.bb9_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb9

if.end7.sw.bb_crit_edge42:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end7.sw.bb_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %if.end7.sw.bb_crit_edge, %if.end7.sw.bb_crit_edge42
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %driver to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 4849612879540992000, ptr %driver, align 1
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end7.sw.bb9_crit_edge, %if.end7.sw.bb9_crit_edge43
  %14 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card, align 4
  %driver10 = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %driver10 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 4849612879473883136, ptr %driver10, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card, align 4
  %driver13 = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 2
  %19 = call ptr @memcpy(ptr %driver13, ptr @.str.3, i32 7)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb
  %20 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card, align 4
  %22 = load i32, ptr @snd_cmipci_probe.dev, align 4
  %private_data.i = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 9
  %23 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %private_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %modelstr.i) #12
  %25 = call ptr @memset(ptr %modelstr.i, i32 255, i32 16)
  %call.i = call i32 @pcim_enable_device(ptr noundef %pci) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.epilog.snd_cmipci_create.exit.thread_crit_edge, label %do.body.i

sw.epilog.snd_cmipci_create.exit.thread_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_create.exit.thread

do.body.i:                                        ; preds = %sw.epilog
  %reg_lock.i = getelementptr inbounds %struct.cmipci, ptr %24, i32 0, i32 24
  call void @__raw_spin_lock_init(ptr noundef %reg_lock.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @snd_cmipci_create.__key, i16 noundef signext 3) #12
  %open_mutex.i = getelementptr inbounds %struct.cmipci, ptr %24, i32 0, i32 17
  call void @__mutex_init(ptr noundef %open_mutex.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @snd_cmipci_create.__key.5) #12
  %26 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %device, align 2
  %conv.i = zext i16 %27 to i32
  %device5.i = getelementptr inbounds %struct.cmipci, ptr %24, i32 0, i32 2
  %28 = ptrtoint ptr %device5.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv.i, ptr %device5.i, align 4
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %21, ptr %24, align 4
  %pci7.i = getelementptr inbounds %struct.cmipci, ptr %24, i32 0, i32 1
  %30 = ptrtoint ptr %pci7.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %pci, ptr %pci7.i, align 4
  %irq.i = getelementptr inbounds %struct.cmipci, ptr %24, i32 0, i32 3
  %31 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %irq.i, align 4
  %ch.i = getelementptr inbounds %struct.cmipci, ptr %24, i32 0, i32 21, i32 0, i32 7
  %32 = ptrtoint ptr %ch.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %ch.i, align 4
  %ch10.i = getelementptr %struct.cmipci, ptr %24, i32 0, i32 21, i32 1, i32 7
  %33 = ptrtoint ptr %ch10.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %ch10.i, align 4
  %is_dac.i = getelementptr %struct.cmipci, ptr %24, i32 0, i32 21, i32 1, i32 3
  %34 = ptrtoint ptr %is_dac.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %is_dac.i, align 2
  %is_dac15.i = getelementptr inbounds %struct.cmipci, ptr %24, i32 0, i32 21, i32 0, i32 3
  %35 = ptrtoint ptr %is_dac15.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %is_dac15.i, align 2
  %driver.i = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 2
  %call16.i = call i32 @pci_request_regions(ptr noundef %pci, ptr noundef %driver.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %do.body.i.snd_cmipci_create.exit.thread_crit_edge, label %if.end20.i

do.body.i.snd_cmipci_create.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_create.exit.thread

if.end20.i:                                       ; preds = %do.body.i
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %36 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %resource.i, align 8
  %iobase.i = getelementptr inbounds %struct.cmipci, ptr %24, i32 0, i32 4
  %38 = ptrtoint ptr %iobase.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %iobase.i, align 4
  %irq23.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %39 = ptrtoint ptr %irq23.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq23.i, align 4
  %call.i.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %40, ptr noundef nonnull @snd_cmipci_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end31.i, label %do.end28.i

do.end28.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev29.i = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 27
  %41 = ptrtoint ptr %dev29.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev29.i, align 8
  %43 = ptrtoint ptr %irq23.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq23.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.7, i32 noundef %44) #15
  br label %snd_cmipci_create.exit.thread

if.end31.i:                                       ; preds = %if.end20.i
  %45 = ptrtoint ptr %irq23.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq23.i, align 4
  %47 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %irq.i, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 33
  %48 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %46, ptr %sync_irq.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 10
  %49 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @snd_cmipci_free, ptr %private_free.i, align 4
  %50 = ptrtoint ptr %pci7.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pci7.i, align 4
  call void @pci_set_master(ptr noundef %51) #12
  %chip_version.i = getelementptr inbounds %struct.cmipci, ptr %24, i32 0, i32 9
  %52 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %chip_version.i, align 4
  %max_channels.i = getelementptr inbounds %struct.cmipci, ptr %24, i32 0, i32 10
  %53 = ptrtoint ptr %max_channels.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %max_channels.i, align 4
  %arrayidx36.i = getelementptr [32 x i8], ptr @soft_ac3, i32 0, i32 %22
  %54 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx36.i, align 1, !range !392
  %do_soft_ac3.i = getelementptr inbounds %struct.cmipci, ptr %24, i32 0, i32 11
  %56 = ptrtoint ptr %do_soft_ac3.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load.i = load i8, ptr %do_soft_ac3.i, align 4
  %bf.shl.i = shl nuw nsw i8 %55, 3
  %bf.clear.i = and i8 %bf.load.i, -9
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %do_soft_ac3.i, align 4
  %57 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %device, align 2
  %59 = and i16 %58, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %59)
  %switch385.i = icmp eq i16 %59, 256
  br i1 %switch385.i, label %if.end31.i.if.end48.i_crit_edge, label %if.then47.i

if.end31.i.if.end48.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.i

if.then47.i:                                      ; preds = %if.end31.i
  %60 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %iobase.i, align 4
  %add.i.i.i = add i32 %61, 12
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %62 = inttoptr i32 %add1.i.i.i to ptr
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %62) #12, !srcloc !393
  %64 = call i32 @llvm.bswap.i32(i32 %63) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %64)
  %tobool.not.i.i = icmp ult i32 %64, 16777216
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else21.i.i

if.then.i.i:                                      ; preds = %if.then47.i
  %65 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %iobase.i, align 4
  %add.i85.i.i = add i32 %66, 8
  %and.i86.i.i = and i32 %add.i85.i.i, 1048575
  %add1.i87.i.i = or i32 %and.i86.i.i, -18874368
  %67 = inttoptr i32 %add1.i87.i.i to ptr
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %67) #12, !srcloc !393
  %69 = shl i32 %68, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  %and2.i.i = and i32 %69, 520093696
  %70 = zext i32 %and2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %and2.i.i, label %sw.default.i.i [
    i32 0, label %sw.bb.i.i
    i32 16777216, label %sw.bb10.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.then.i.i
  %71 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 33, ptr %chip_version.i, align 4
  %72 = ptrtoint ptr %do_soft_ac3.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load.i.i = load i8, ptr %do_soft_ac3.i, align 4
  %73 = and i8 %bf.load.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool3.not.i.i = icmp eq i8 %73, 0
  br i1 %tobool3.not.i.i, label %if.else.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set.i.i = or i8 %bf.load.i.i, -128
  br label %sw.epilog.i.i

if.else.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set9.i.i = or i8 %bf.load.i.i, 64
  br label %sw.epilog.i.i

sw.bb10.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 37, ptr %chip_version.i, align 4
  %75 = ptrtoint ptr %do_soft_ac3.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load13.i.i = load i8, ptr %do_soft_ac3.i, align 4
  %bf.set15.i.i = or i8 %bf.load13.i.i, 64
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 39, ptr %chip_version.i, align 4
  %77 = ptrtoint ptr %do_soft_ac3.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load18.i.i = load i8, ptr %do_soft_ac3.i, align 4
  %bf.set20.i.i = or i8 %bf.load18.i.i, 64
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.default.i.i, %sw.bb10.i.i, %if.else.i.i, %if.then4.i.i
  %bf.set20.i.sink.i = phi i8 [ %bf.set20.i.i, %sw.default.i.i ], [ %bf.set15.i.i, %sw.bb10.i.i ], [ %bf.set9.i.i, %if.else.i.i ], [ %bf.set.i.i, %if.then4.i.i ]
  %78 = ptrtoint ptr %do_soft_ac3.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %bf.set20.i.sink.i, ptr %do_soft_ac3.i, align 4
  %79 = ptrtoint ptr %max_channels.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 2, ptr %max_channels.i, align 4
  br label %if.end48.i

if.else21.i.i:                                    ; preds = %if.then47.i
  %and22.i.i = and i32 %64, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i.i)
  %tobool23.not.i.i = icmp eq i32 %and22.i.i, 0
  br i1 %tobool23.not.i.i, label %if.else33.i.i, label %if.then24.i.i

if.then24.i.i:                                    ; preds = %if.else21.i.i
  %80 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 39, ptr %chip_version.i, align 4
  %and26.i.i = and i32 %64, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i)
  %tobool27.not.i.i = icmp eq i32 %and26.i.i, 0
  br i1 %tobool27.not.i.i, label %if.else30.i.i, label %if.then28.i.i

if.then28.i.i:                                    ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %81 = ptrtoint ptr %max_channels.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 6, ptr %max_channels.i, align 4
  br label %if.end50.i.i

if.else30.i.i:                                    ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %82 = ptrtoint ptr %max_channels.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 4, ptr %max_channels.i, align 4
  br label %if.end50.i.i

if.else33.i.i:                                    ; preds = %if.else21.i.i
  %and34.i.i = and i32 %64, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i.i)
  %tobool35.not.i.i = icmp eq i32 %and34.i.i, 0
  br i1 %tobool35.not.i.i, label %if.else42.i.i, label %if.then36.i.i

if.then36.i.i:                                    ; preds = %if.else33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 68, ptr %chip_version.i, align 4
  %84 = ptrtoint ptr %max_channels.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 8, ptr %max_channels.i, align 4
  %85 = ptrtoint ptr %do_soft_ac3.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load39.i.i = load i8, ptr %do_soft_ac3.i, align 4
  %bf.set41.i.i = or i8 %bf.load39.i.i, 16
  store i8 %bf.set41.i.i, ptr %do_soft_ac3.i, align 4
  br label %if.end50.i.i

if.else42.i.i:                                    ; preds = %if.else33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %86 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 55, ptr %chip_version.i, align 4
  %87 = ptrtoint ptr %max_channels.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 6, ptr %max_channels.i, align 4
  %88 = ptrtoint ptr %do_soft_ac3.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load46.i.i = load i8, ptr %do_soft_ac3.i, align 4
  %bf.set48.i.i = or i8 %bf.load46.i.i, 16
  store i8 %bf.set48.i.i, ptr %do_soft_ac3.i, align 4
  br label %if.end50.i.i

if.end50.i.i:                                     ; preds = %if.else42.i.i, %if.then36.i.i, %if.else30.i.i, %if.then28.i.i
  %89 = ptrtoint ptr %do_soft_ac3.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %bf.load52.i.i = load i8, ptr %do_soft_ac3.i, align 4
  %bf.set57.i.i = or i8 %bf.load52.i.i, 96
  store i8 %bf.set57.i.i, ptr %do_soft_ac3.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.end50.i.i, %sw.epilog.i.i, %if.end31.i.if.end48.i_crit_edge
  %bf.load49.i = phi i8 [ %bf.set57.i.i, %if.end50.i.i ], [ %bf.set20.i.sink.i, %sw.epilog.i.i ], [ %bf.set.i, %if.end31.i.if.end48.i_crit_edge ]
  %90 = and i8 %bf.load49.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool51.not.i = icmp eq i8 %90, 0
  br i1 %tobool51.not.i, label %if.else.i, label %if.then52.i

if.then52.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  %91 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %24, align 4
  %driver54.i = getelementptr inbounds %struct.snd_card, ptr %92, i32 0, i32 2
  %call59.i = call i32 @strlen(ptr noundef %driver54.i) #16
  %add.ptr.i = getelementptr i8, ptr %driver54.i, i32 %call59.i
  %93 = ptrtoint ptr %max_channels.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %max_channels.i, align 4
  %call61.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.12, i32 noundef %94) #12
  br label %if.end77.i

if.else.i:                                        ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load49.i)
  %tobool65.not.i = icmp sgt i8 %bf.load49.i, -1
  br i1 %tobool65.not.i, label %if.else.i.if.end77.i_crit_edge, label %if.then66.i

if.else.i.if.end77.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77.i

if.then66.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %95 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %24, align 4
  %driver68.i = getelementptr inbounds %struct.snd_card, ptr %96, i32 0, i32 2
  %call73.i = call i32 @strlen(ptr noundef %driver68.i) #16
  %add.ptr74.i = getelementptr i8, ptr %driver68.i, i32 %call73.i
  %97 = call ptr @memcpy(ptr %add.ptr74.i, ptr @.str.13, i32 7)
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then66.i, %if.else.i.if.end77.i_crit_edge, %if.then52.i
  %dig_status.i = getelementptr inbounds %struct.cmipci, ptr %24, i32 0, i32 13
  %98 = ptrtoint ptr %dig_status.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 33587712, ptr %dig_status.i, align 4
  %dig_pcm_status.i = getelementptr inbounds %struct.cmipci, ptr %24, i32 0, i32 14
  %99 = ptrtoint ptr %dig_pcm_status.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 33587712, ptr %dig_pcm_status.i, align 4
  %ctrl.i = getelementptr inbounds %struct.cmipci, ptr %24, i32 0, i32 5
  %100 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 2, ptr %ctrl.i, align 4
  %101 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %iobase.i, align 4
  %add.i.i = add i32 %102, 24
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %103 = inttoptr i32 %add1.i.i to ptr
  %104 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %103) #12, !srcloc !393
  %105 = call i32 @llvm.bswap.i32(i32 %104) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  %or.i.i = or i32 %105, 1073741824
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i, i32 %105)
  %cmp.i.i = icmp eq i32 %or.i.i, %105
  br i1 %cmp.i.i, label %if.end77.i.snd_cmipci_set_bit.exit.i_crit_edge, label %do.body.i.i

if.end77.i.snd_cmipci_set_bit.exit.i_crit_edge:   ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_set_bit.exit.i

do.body.i.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  call void @arm_heavy_mb() #12
  %106 = call i32 @llvm.bswap.i32(i32 %or.i.i) #12
  %107 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %iobase.i, align 4
  %add4.i.i = add i32 %108, 24
  %and5.i.i = and i32 %add4.i.i, 1048575
  %add6.i.i = or i32 %and5.i.i, -18874368
  %109 = inttoptr i32 %add6.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %109, i32 %106) #12, !srcloc !397
  br label %snd_cmipci_set_bit.exit.i

snd_cmipci_set_bit.exit.i:                        ; preds = %do.body.i.i, %if.end77.i.snd_cmipci_set_bit.exit.i_crit_edge
  %110 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %iobase.i, align 4
  %add.i387.i = add i32 %111, 24
  %and.i388.i = and i32 %add.i387.i, 1048575
  %add1.i389.i = or i32 %and.i388.i, -18874368
  %112 = inttoptr i32 %add1.i389.i to ptr
  %113 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %112) #12, !srcloc !393
  %114 = call i32 @llvm.bswap.i32(i32 %113) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  %and3.i.i = and i32 %114, -1073741825
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i.i, i32 %114)
  %cmp.i390.i = icmp eq i32 %and3.i.i, %114
  br i1 %cmp.i390.i, label %snd_cmipci_set_bit.exit.i.snd_cmipci_clear_bit.exit.i_crit_edge, label %do.body.i391.i

snd_cmipci_set_bit.exit.i.snd_cmipci_clear_bit.exit.i_crit_edge: ; preds = %snd_cmipci_set_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_clear_bit.exit.i

do.body.i391.i:                                   ; preds = %snd_cmipci_set_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  call void @arm_heavy_mb() #12
  %115 = call i32 @llvm.bswap.i32(i32 %and3.i.i) #12
  %116 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %iobase.i, align 4
  %add5.i.i = add i32 %117, 24
  %and6.i.i = and i32 %add5.i.i, 1048575
  %add7.i.i = or i32 %and6.i.i, -18874368
  %118 = inttoptr i32 %add7.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %118, i32 %115) #12, !srcloc !397
  br label %snd_cmipci_clear_bit.exit.i

snd_cmipci_clear_bit.exit.i:                      ; preds = %do.body.i391.i, %snd_cmipci_set_bit.exit.i.snd_cmipci_clear_bit.exit.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  call void @arm_heavy_mb() #12
  %119 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %iobase.i, align 4
  %add.i394.i = add i32 %120, 12
  %and.i395.i = and i32 %add.i394.i, 1048575
  %add1.i396.i = or i32 %and.i395.i, -18874368
  %121 = inttoptr i32 %add1.i396.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %121, i32 0) #12, !srcloc !397
  %122 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %ch.i, align 4
  %shl.i.i = shl i32 262144, %123
  %124 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %ctrl.i, align 4
  %or.i397.i = or i32 %125, %shl.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  call void @arm_heavy_mb() #12
  %126 = call i32 @llvm.bswap.i32(i32 %or.i397.i) #12
  %127 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %iobase.i, align 4
  %and.i.i399.i = and i32 %128, 1048575
  %add1.i.i400.i = or i32 %and.i.i399.i, -18874368
  %129 = inttoptr i32 %add1.i.i400.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %129, i32 %126) #12, !srcloc !397
  %130 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %ctrl.i, align 4
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i401.i = and i32 %131, %neg.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  call void @arm_heavy_mb() #12
  %132 = call i32 @llvm.bswap.i32(i32 %and.i401.i) #12
  %133 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %iobase.i, align 4
  %and.i9.i.i = and i32 %134, 1048575
  %add1.i10.i.i = or i32 %and.i9.i.i, -18874368
  %135 = inttoptr i32 %add1.i10.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %135, i32 %132) #12, !srcloc !397
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %136 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %136(i32 noundef 2147480) #12
  %137 = ptrtoint ptr %ch10.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %ch10.i, align 4
  %shl.i403.i = shl i32 262144, %138
  %139 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %ctrl.i, align 4
  %or.i405.i = or i32 %140, %shl.i403.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  call void @arm_heavy_mb() #12
  %141 = call i32 @llvm.bswap.i32(i32 %or.i405.i) #12
  %142 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %iobase.i, align 4
  %and.i.i407.i = and i32 %143, 1048575
  %add1.i.i408.i = or i32 %and.i.i407.i, -18874368
  %144 = inttoptr i32 %add1.i.i408.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %144, i32 %141) #12, !srcloc !397
  %145 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %ctrl.i, align 4
  %neg.i409.i = xor i32 %shl.i403.i, -1
  %and.i410.i = and i32 %146, %neg.i409.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  call void @arm_heavy_mb() #12
  %147 = call i32 @llvm.bswap.i32(i32 %and.i410.i) #12
  %148 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %iobase.i, align 4
  %and.i9.i411.i = and i32 %149, 1048575
  %add1.i10.i412.i = or i32 %and.i9.i411.i, -18874368
  %150 = inttoptr i32 %add1.i10.i412.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %150, i32 %147) #12, !srcloc !397
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %151 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %151(i32 noundef 2147480) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  call void @arm_heavy_mb() #12
  %152 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %iobase.i, align 4
  %and.i414.i = and i32 %153, 1048575
  %add1.i415.i = or i32 %and.i414.i, -18874368
  %154 = inttoptr i32 %add1.i415.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %154, i32 0) #12, !srcloc !397
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  call void @arm_heavy_mb() #12
  %155 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %iobase.i, align 4
  %add.i417.i = add i32 %156, 4
  %and.i418.i = and i32 %add.i417.i, 1048575
  %add1.i419.i = or i32 %and.i418.i, -18874368
  %157 = inttoptr i32 %add1.i419.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %157, i32 0) #12, !srcloc !397
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  call void @arm_heavy_mb() #12
  %158 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %iobase.i, align 4
  %add.i421.i = add i32 %159, 8
  %and.i422.i = and i32 %add.i421.i, 1048575
  %add1.i423.i = or i32 %and.i422.i, -18874368
  %160 = inttoptr i32 %add1.i423.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %160, i32 0) #12, !srcloc !397
  %161 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %iobase.i, align 4
  %add.i425.i = add i32 %162, 24
  %and.i426.i = and i32 %add.i425.i, 1048575
  %add1.i427.i = or i32 %and.i426.i, -18874368
  %163 = inttoptr i32 %add1.i427.i to ptr
  %164 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %163) #12, !srcloc !393
  %165 = call i32 @llvm.bswap.i32(i32 %164) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  %or.i428.i = or i32 %165, 75497472
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i428.i, i32 %165)
  %cmp.i429.i = icmp eq i32 %or.i428.i, %165
  br i1 %cmp.i429.i, label %snd_cmipci_clear_bit.exit.i.snd_cmipci_set_bit.exit435.i_crit_edge, label %do.body.i433.i

snd_cmipci_clear_bit.exit.i.snd_cmipci_set_bit.exit435.i_crit_edge: ; preds = %snd_cmipci_clear_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_set_bit.exit435.i

do.body.i433.i:                                   ; preds = %snd_cmipci_clear_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  call void @arm_heavy_mb() #12
  %166 = call i32 @llvm.bswap.i32(i32 %or.i428.i) #12
  %167 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %iobase.i, align 4
  %add4.i430.i = add i32 %168, 24
  %and5.i431.i = and i32 %add4.i430.i, 1048575
  %add6.i432.i = or i32 %and5.i431.i, -18874368
  %169 = inttoptr i32 %add6.i432.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %169, i32 %166) #12, !srcloc !397
  br label %snd_cmipci_set_bit.exit435.i

snd_cmipci_set_bit.exit435.i:                     ; preds = %do.body.i433.i, %snd_cmipci_clear_bit.exit.i.snd_cmipci_set_bit.exit435.i_crit_edge
  %170 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %iobase.i, align 4
  %add.i437.i = add i32 %171, 24
  %and.i438.i = and i32 %add.i437.i, 1048575
  %add1.i439.i = or i32 %and.i438.i, -18874368
  %172 = inttoptr i32 %add1.i439.i to ptr
  %173 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %172) #12, !srcloc !393
  %174 = call i32 @llvm.bswap.i32(i32 %173) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  %and3.i440.i = and i32 %174, -4194305
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i440.i, i32 %174)
  %cmp.i441.i = icmp eq i32 %and3.i440.i, %174
  br i1 %cmp.i441.i, label %snd_cmipci_set_bit.exit435.i.snd_cmipci_clear_bit.exit447.i_crit_edge, label %do.body.i445.i

snd_cmipci_set_bit.exit435.i.snd_cmipci_clear_bit.exit447.i_crit_edge: ; preds = %snd_cmipci_set_bit.exit435.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_clear_bit.exit447.i

do.body.i445.i:                                   ; preds = %snd_cmipci_set_bit.exit435.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  call void @arm_heavy_mb() #12
  %175 = call i32 @llvm.bswap.i32(i32 %and3.i440.i) #12
  %176 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %iobase.i, align 4
  %add5.i442.i = add i32 %177, 24
  %and6.i443.i = and i32 %add5.i442.i, 1048575
  %add7.i444.i = or i32 %and6.i443.i, -18874368
  %178 = inttoptr i32 %add7.i444.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %178, i32 %175) #12, !srcloc !397
  br label %snd_cmipci_clear_bit.exit447.i

snd_cmipci_clear_bit.exit447.i:                   ; preds = %do.body.i445.i, %snd_cmipci_set_bit.exit435.i.snd_cmipci_clear_bit.exit447.i_crit_edge
  %179 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %chip_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool83.not.i = icmp eq i32 %180, 0
  br i1 %tobool83.not.i, label %snd_cmipci_clear_bit.exit447.i.if.end85.i_crit_edge, label %if.then84.i

snd_cmipci_clear_bit.exit447.i.if.end85.i_crit_edge: ; preds = %snd_cmipci_clear_bit.exit447.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85.i

if.then84.i:                                      ; preds = %snd_cmipci_clear_bit.exit447.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !401
  call void @arm_heavy_mb() #12
  %181 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %iobase.i, align 4
  %add.i449.i = add i32 %182, 144
  %and.i450.i = and i32 %add.i449.i, 1048575
  %add1.i451.i = or i32 %and.i450.i, -18874368
  %183 = inttoptr i32 %add1.i451.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %183, i8 32) #12, !srcloc !402
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !401
  call void @arm_heavy_mb() #12
  %184 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %iobase.i, align 4
  %add.i453.i = add i32 %185, 145
  %and.i454.i = and i32 %add.i453.i, 1048575
  %add1.i455.i = or i32 %and.i454.i, -18874368
  %186 = inttoptr i32 %add1.i455.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %186, i8 9) #12, !srcloc !402
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then84.i, %snd_cmipci_clear_bit.exit447.i.if.end85.i_crit_edge
  %187 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %iobase.i, align 4
  %add.i457.i = add i32 %188, 4
  %and.i458.i = and i32 %add.i457.i, 1048575
  %add1.i459.i = or i32 %and.i458.i, -18874368
  %189 = inttoptr i32 %add1.i459.i to ptr
  %190 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %189) #12, !srcloc !393
  %191 = call i32 @llvm.bswap.i32(i32 %190) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  %or.i460.i = or i32 %191, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i460.i, i32 %191)
  %cmp.i461.i = icmp eq i32 %or.i460.i, %191
  br i1 %cmp.i461.i, label %if.end85.i.snd_cmipci_set_bit.exit467.i_crit_edge, label %do.body.i465.i

if.end85.i.snd_cmipci_set_bit.exit467.i_crit_edge: ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_set_bit.exit467.i

do.body.i465.i:                                   ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  call void @arm_heavy_mb() #12
  %192 = call i32 @llvm.bswap.i32(i32 %or.i460.i) #12
  %193 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %iobase.i, align 4
  %add4.i462.i = add i32 %194, 4
  %and5.i463.i = and i32 %add4.i462.i, 1048575
  %add6.i464.i = or i32 %and5.i463.i, -18874368
  %195 = inttoptr i32 %add6.i464.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %195, i32 %192) #12, !srcloc !397
  br label %snd_cmipci_set_bit.exit467.i

snd_cmipci_set_bit.exit467.i:                     ; preds = %do.body.i465.i, %if.end85.i.snd_cmipci_set_bit.exit467.i_crit_edge
  %196 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %device, align 2
  %.off.i = add i16 %197, -273
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off.i)
  %switch.i = icmp ult i16 %.off.i, 2
  br i1 %switch.i, label %sw.bb.i, label %snd_cmipci_set_bit.exit467.i.sw.epilog.i_crit_edge

snd_cmipci_set_bit.exit467.i.sw.epilog.i_crit_edge: ; preds = %snd_cmipci_set_bit.exit467.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %snd_cmipci_set_bit.exit467.i
  %call89.i = call i32 @pci_dev_present(ptr noundef nonnull @snd_cmipci_create.intel_82437vx) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i)
  %tobool90.not.i = icmp eq i32 %call89.i, 0
  br i1 %tobool90.not.i, label %if.then91.i, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

if.then91.i:                                      ; preds = %sw.bb.i
  %198 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %iobase.i, align 4
  %add.i469.i = add i32 %199, 24
  %and.i470.i = and i32 %add.i469.i, 1048575
  %add1.i471.i = or i32 %and.i470.i, -18874368
  %200 = inttoptr i32 %add1.i471.i to ptr
  %201 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %200) #12, !srcloc !393
  %202 = call i32 @llvm.bswap.i32(i32 %201) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  %or.i472.i = or i32 %202, 134217728
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i472.i, i32 %202)
  %cmp.i473.i = icmp eq i32 %or.i472.i, %202
  br i1 %cmp.i473.i, label %if.then91.i.sw.epilog.i_crit_edge, label %do.body.i477.i

if.then91.i.sw.epilog.i_crit_edge:                ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

do.body.i477.i:                                   ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  call void @arm_heavy_mb() #12
  %203 = call i32 @llvm.bswap.i32(i32 %or.i472.i) #12
  %204 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %iobase.i, align 4
  %add4.i474.i = add i32 %205, 24
  %and5.i475.i = and i32 %add4.i474.i, 1048575
  %add6.i476.i = or i32 %and5.i475.i, -18874368
  %206 = inttoptr i32 %add6.i476.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %206, i32 %203) #12, !srcloc !397
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.body.i477.i, %if.then91.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge, %snd_cmipci_set_bit.exit467.i.sw.epilog.i_crit_edge
  %207 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %chip_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %208)
  %cmp95.i = icmp slt i32 %208, 68
  br i1 %cmp95.i, label %if.then97.i, label %if.else102.i

if.then97.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  %209 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %210)
  %cmp100.i = icmp ult i16 %210, 272
  %cond.i = select i1 %cmp100.i, i32 8338, i32 8738
  br label %if.end114.i

if.else102.i:                                     ; preds = %sw.epilog.i
  %211 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %iobase.i, align 4
  %add.i481.i = add i32 %212, 15
  %and.i482.i = and i32 %add.i481.i, 1048575
  %add1.i483.i = or i32 %and.i482.i, -18874368
  %213 = inttoptr i32 %add1.i483.i to ptr
  %214 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %213) #12, !srcloc !403
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !404
  %215 = and i8 %214, 3
  %and.i = zext i8 %215 to i32
  %216 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %216, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %and.i, label %sw.default107.i [
    i32 0, label %if.else102.i.if.end114.i_crit_edge
    i32 2, label %sw.bb106.i
  ]

if.else102.i.if.end114.i_crit_edge:               ; preds = %if.else102.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114.i

sw.bb106.i:                                       ; preds = %if.else102.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114.i

sw.default107.i:                                  ; preds = %if.else102.i
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 9
  %217 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %subsystem_vendor.i, align 4
  %conv108.i = zext i16 %218 to i32
  %shl.i = shl nuw i32 %conv108.i, 16
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 10
  %219 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %subsystem_device.i, align 2
  %conv109.i = zext i16 %220 to i32
  %or.i = or i32 %shl.i, %conv109.i
  %221 = zext i32 %or.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %221, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %or.i, label %sw.default111.i [
    i32 334927713, label %sw.default107.i.if.end114.i_crit_edge
    i32 1481455425, label %sw.default107.i.if.end114.i_crit_edge44
    i32 1481455441, label %sw.default107.i.if.end114.i_crit_edge45
    i32 1481455457, label %sw.default107.i.if.end114.i_crit_edge46
    i32 1481455473, label %sw.default107.i.if.end114.i_crit_edge47
    i32 1921287044, label %sw.default107.i.if.end114.i_crit_edge48
  ]

sw.default107.i.if.end114.i_crit_edge48:          ; preds = %sw.default107.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114.i

sw.default107.i.if.end114.i_crit_edge47:          ; preds = %sw.default107.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114.i

sw.default107.i.if.end114.i_crit_edge46:          ; preds = %sw.default107.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114.i

sw.default107.i.if.end114.i_crit_edge45:          ; preds = %sw.default107.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114.i

sw.default107.i.if.end114.i_crit_edge44:          ; preds = %sw.default107.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114.i

sw.default107.i.if.end114.i_crit_edge:            ; preds = %sw.default107.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114.i

sw.default111.i:                                  ; preds = %sw.default107.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114.i

if.end114.i:                                      ; preds = %sw.default111.i, %sw.default107.i.if.end114.i_crit_edge, %sw.default107.i.if.end114.i_crit_edge44, %sw.default107.i.if.end114.i_crit_edge45, %sw.default107.i.if.end114.i_crit_edge46, %sw.default107.i.if.end114.i_crit_edge47, %sw.default107.i.if.end114.i_crit_edge48, %sw.bb106.i, %if.else102.i.if.end114.i_crit_edge, %if.then97.i
  %val.0.i = phi i32 [ %cond.i, %if.then97.i ], [ 8768, %sw.default111.i ], [ 8762, %sw.bb106.i ], [ 8769, %if.else102.i.if.end114.i_crit_edge ], [ 8770, %sw.default107.i.if.end114.i_crit_edge ], [ 8770, %sw.default107.i.if.end114.i_crit_edge44 ], [ 8770, %sw.default107.i.if.end114.i_crit_edge45 ], [ 8770, %sw.default107.i.if.end114.i_crit_edge46 ], [ 8770, %sw.default107.i.if.end114.i_crit_edge47 ], [ 8770, %sw.default107.i.if.end114.i_crit_edge48 ]
  %shortname.i = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 3
  %call116.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %shortname.i, ptr noundef nonnull @.str.14, i32 noundef %val.0.i) #12
  %222 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %chip_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %223)
  %cmp118.i = icmp slt i32 %223, 68
  br i1 %cmp118.i, label %if.then120.i, label %if.else124.i

if.then120.i:                                     ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #14
  %call123.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %modelstr.i, ptr noundef nonnull @.str.15, i32 noundef %223) #12
  br label %if.end126.i

if.else124.i:                                     ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #14
  %224 = ptrtoint ptr %modelstr.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 0, ptr %modelstr.i, align 1
  br label %if.end126.i

if.end126.i:                                      ; preds = %if.else124.i, %if.then120.i
  %longname.i = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 4
  %225 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %iobase.i, align 4
  %227 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %irq.i, align 4
  %call133.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname.i, ptr noundef nonnull @.str.16, ptr noundef %shortname.i, ptr noundef nonnull %modelstr.i, i32 noundef %226, i32 noundef %228) #12
  %229 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %chip_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %230)
  %cmp135.i = icmp sgt i32 %230, 38
  br i1 %cmp135.i, label %if.then137.i, label %if.end126.i.if.then154.i_crit_edge

if.end126.i.if.then154.i_crit_edge:               ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then154.i

if.then137.i:                                     ; preds = %if.end126.i
  %231 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %iobase.i, align 4
  %add.i485.i = add i32 %232, 65
  %and.i486.i = and i32 %add.i485.i, 1048575
  %add1.i487.i = or i32 %and.i486.i, -18874368
  %233 = inttoptr i32 %add1.i487.i to ptr
  %234 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %233) #12, !srcloc !403
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !404
  %235 = zext i8 %234 to i64
  call void @__sanitizer_cov_trace_switch(i64 %235, ptr @__sancov_gen_cov_switch_values.107)
  switch i8 %234, label %if.then145.i [
    i8 0, label %if.then137.i.if.then154.i_crit_edge
    i8 -1, label %if.then137.i.if.then154.i_crit_edge49
  ]

if.then137.i.if.then154.i_crit_edge49:            ; preds = %if.then137.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then154.i

if.then137.i.if.then154.i_crit_edge:              ; preds = %if.then137.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then154.i

if.then145.i:                                     ; preds = %if.then137.i
  %arrayidx146.i = getelementptr [32 x i32], ptr @mpu_port, i32 0, i32 %22
  %236 = ptrtoint ptr %arrayidx146.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx146.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %tobool147.not.i = icmp eq i32 %237, 0
  br i1 %tobool147.not.i, label %if.then145.i.if.end183.i_crit_edge, label %if.then148.i

if.then145.i.if.end183.i_crit_edge:               ; preds = %if.then145.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end183.i

if.then148.i:                                     ; preds = %if.then145.i
  call void @__sanitizer_cov_trace_pc() #14
  %238 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %239, 64
  br label %if.end183.i

if.then154.i:                                     ; preds = %if.then137.i.if.then154.i_crit_edge, %if.then137.i.if.then154.i_crit_edge49, %if.end126.i.if.then154.i_crit_edge
  %arrayidx155.i = getelementptr [32 x i32], ptr @mpu_port, i32 0, i32 %22
  %240 = ptrtoint ptr %arrayidx155.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx155.i, align 4
  %242 = add i32 %241, -768
  %243 = call i32 @llvm.fshl.i32(i32 %242, i32 %242, i32 28) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %243)
  %244 = icmp ult i32 %243, 4
  br i1 %244, label %switch.lookup, label %if.then154.i.if.end183.i_crit_edge

if.then154.i.if.end183.i_crit_edge:               ; preds = %if.then154.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end183.i

switch.lookup:                                    ; preds = %if.then154.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %cmp162.i = icmp sgt i32 %241, 0
  br i1 %cmp162.i, label %if.then164.i, label %switch.lookup.if.end183.i_crit_edge

switch.lookup.if.end183.i_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end183.i

if.then164.i:                                     ; preds = %switch.lookup
  %switch.idx.mult = mul i32 %243, -32
  %switch.offset = add i32 %switch.idx.mult, 96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  call void @arm_heavy_mb() #12
  %245 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %iobase.i, align 4
  %add.i489.i = add i32 %246, 20
  %and.i490.i = and i32 %add.i489.i, 1048575
  %add1.i491.i = or i32 %and.i490.i, -18874368
  %247 = inttoptr i32 %add1.i491.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %247, i32 %switch.offset) #12, !srcloc !397
  %248 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %iobase.i, align 4
  %add.i493.i = add i32 %249, 4
  %and.i494.i = and i32 %add.i493.i, 1048575
  %add1.i495.i = or i32 %and.i494.i, -18874368
  %250 = inttoptr i32 %add1.i495.i to ptr
  %251 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %250) #12, !srcloc !393
  %252 = call i32 @llvm.bswap.i32(i32 %251) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  %or.i496.i = or i32 %252, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i496.i, i32 %252)
  %cmp.i497.i = icmp eq i32 %or.i496.i, %252
  br i1 %cmp.i497.i, label %if.then164.i.snd_cmipci_set_bit.exit503.i_crit_edge, label %do.body.i501.i

if.then164.i.snd_cmipci_set_bit.exit503.i_crit_edge: ; preds = %if.then164.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_set_bit.exit503.i

do.body.i501.i:                                   ; preds = %if.then164.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  call void @arm_heavy_mb() #12
  %253 = call i32 @llvm.bswap.i32(i32 %or.i496.i) #12
  %254 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %iobase.i, align 4
  %add4.i498.i = add i32 %255, 4
  %and5.i499.i = and i32 %add4.i498.i, 1048575
  %add6.i500.i = or i32 %and5.i499.i, -18874368
  %256 = inttoptr i32 %add6.i500.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %256, i32 %253) #12, !srcloc !397
  br label %snd_cmipci_set_bit.exit503.i

snd_cmipci_set_bit.exit503.i:                     ; preds = %do.body.i501.i, %if.then164.i.snd_cmipci_set_bit.exit503.i_crit_edge
  %add166.i = add nuw i32 %241, 1
  %and167.i = and i32 %add166.i, 1048575
  %add168.i = or i32 %and167.i, -18874368
  %257 = inttoptr i32 %add168.i to ptr
  %258 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %257) #12, !srcloc !403
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !405
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %258)
  %cmp172.i = icmp eq i8 %258, -1
  br i1 %cmp172.i, label %do.end177.i, label %snd_cmipci_set_bit.exit503.i.if.end183.i_crit_edge

snd_cmipci_set_bit.exit503.i.if.end183.i_crit_edge: ; preds = %snd_cmipci_set_bit.exit503.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end183.i

do.end177.i:                                      ; preds = %snd_cmipci_set_bit.exit503.i
  call void @__sanitizer_cov_trace_pc() #14
  %259 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %24, align 4
  %dev179.i = getelementptr inbounds %struct.snd_card, ptr %260, i32 0, i32 27
  %261 = ptrtoint ptr %dev179.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %dev179.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %262, ptr noundef nonnull @.str.18, i32 noundef %241) #15
  %call180.i = call fastcc i32 @snd_cmipci_clear_bit(ptr noundef %24, i32 noundef 4, i32 noundef 4) #12
  br label %if.end183.i

if.end183.i:                                      ; preds = %do.end177.i, %snd_cmipci_set_bit.exit503.i.if.end183.i_crit_edge, %switch.lookup.if.end183.i_crit_edge, %if.then154.i.if.end183.i_crit_edge, %if.then148.i, %if.then145.i.if.end183.i_crit_edge
  %tobool153.not599.i = phi i32 [ 32, %do.end177.i ], [ 32, %snd_cmipci_set_bit.exit503.i.if.end183.i_crit_edge ], [ 32, %switch.lookup.if.end183.i_crit_edge ], [ 36, %if.then145.i.if.end183.i_crit_edge ], [ 36, %if.then148.i ], [ 32, %if.then154.i.if.end183.i_crit_edge ]
  %iomidi.3.i = phi i32 [ 0, %do.end177.i ], [ %241, %snd_cmipci_set_bit.exit503.i.if.end183.i_crit_edge ], [ %241, %switch.lookup.if.end183.i_crit_edge ], [ 0, %if.then145.i.if.end183.i_crit_edge ], [ %add.i, %if.then148.i ], [ 0, %if.then154.i.if.end183.i_crit_edge ]
  %263 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %chip_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %264)
  %cmp185.i = icmp slt i32 %264, 68
  br i1 %cmp185.i, label %if.then187.i, label %if.end183.i.if.end194.i_crit_edge

if.end183.i.if.end194.i_crit_edge:                ; preds = %if.end183.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end194.i

if.then187.i:                                     ; preds = %if.end183.i
  %arrayidx188.i = getelementptr [32 x i32], ptr @fm_port, i32 0, i32 %22
  %265 = ptrtoint ptr %arrayidx188.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %arrayidx188.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opl3.i.i) #12
  %267 = ptrtoint ptr %opl3.i.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr inttoptr (i32 -1 to ptr), ptr %opl3.i.i, align 4, !annotation !391
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %266)
  %tobool.not.i504.i = icmp eq i32 %266, 0
  br i1 %tobool.not.i504.i, label %if.then187.i.disable_fm.i.i_crit_edge, label %if.end.i.i

if.then187.i.disable_fm.i.i_crit_edge:            ; preds = %if.then187.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %disable_fm.i.i

if.end.i.i:                                       ; preds = %if.then187.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %264)
  %cmp.i506.i = icmp sgt i32 %264, 38
  br i1 %cmp.i506.i, label %if.then1.i.i, label %if.end.i.i.if.then5.i.i_crit_edge

if.end.i.i.if.then5.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  %268 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %iobase.i, align 4
  %add.i508.i = add i32 %269, 80
  %270 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %24, align 4
  %add2.i.i = add i32 %269, 82
  %call.i509.i = call i32 @snd_opl3_create(ptr noundef %271, i32 noundef %add.i508.i, i32 noundef %add2.i.i, i16 noundef zeroext 768, i32 noundef 1, ptr noundef nonnull %opl3.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i509.i)
  %phi.cmp.i.i = icmp slt i32 %call.i509.i, 0
  br i1 %phi.cmp.i.i, label %if.then1.i.i.if.then5.i.i_crit_edge, label %if.then1.i.i.if.end21.i.i_crit_edge

if.then1.i.i.if.end21.i.i_crit_edge:              ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i.i

if.then1.i.i.if.then5.i.i_crit_edge:              ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.then1.i.i.if.then5.i.i_crit_edge, %if.end.i.i.if.then5.i.i_crit_edge
  %272 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %iobase.i, align 4
  %add.i.i511.i = add i32 %273, 20
  %and.i.i512.i = and i32 %add.i.i511.i, 1048575
  %add1.i.i513.i = or i32 %and.i.i512.i, -18874368
  %274 = inttoptr i32 %add1.i.i513.i to ptr
  %275 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %274) #12, !srcloc !393
  %276 = call i32 @llvm.bswap.i32(i32 %275) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  %and.i514.i = and i32 %276, -50331649
  %277 = zext i32 %266 to i64
  call void @__sanitizer_cov_trace_switch(i64 %277, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %266, label %if.then5.i.i.disable_fm.i.i_crit_edge [
    i32 1000, label %sw.bb.i516.i
    i32 992, label %sw.bb7.i.i
    i32 968, label %sw.bb9.i.i
    i32 904, label %if.then5.i.i.sw.epilog.i517.i_crit_edge
  ]

if.then5.i.i.sw.epilog.i517.i_crit_edge:          ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i517.i

if.then5.i.i.disable_fm.i.i_crit_edge:            ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %disable_fm.i.i

sw.bb.i516.i:                                     ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or.i515.i = or i32 %276, 50331648
  br label %sw.epilog.i517.i

sw.bb7.i.i:                                       ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or8.i.i = or i32 %and.i514.i, 33554432
  br label %sw.epilog.i517.i

sw.bb9.i.i:                                       ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or10.i.i = or i32 %and.i514.i, 16777216
  br label %sw.epilog.i517.i

sw.epilog.i517.i:                                 ; preds = %sw.bb9.i.i, %sw.bb7.i.i, %sw.bb.i516.i, %if.then5.i.i.sw.epilog.i517.i_crit_edge
  %val.0.i.i = phi i32 [ %or10.i.i, %sw.bb9.i.i ], [ %or8.i.i, %sw.bb7.i.i ], [ %or.i515.i, %sw.bb.i516.i ], [ %and.i514.i, %if.then5.i.i.sw.epilog.i517.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  call void @arm_heavy_mb() #12
  %278 = call i32 @llvm.bswap.i32(i32 %val.0.i.i) #12
  %279 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %iobase.i, align 4
  %add.i59.i.i = add i32 %280, 20
  %and.i60.i.i = and i32 %add.i59.i.i, 1048575
  %add1.i61.i.i = or i32 %and.i60.i.i, -18874368
  %281 = inttoptr i32 %add1.i61.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %281, i32 %278) #12, !srcloc !397
  %282 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %iobase.i, align 4
  %add.i63.i.i = add i32 %283, 24
  %and.i64.i.i = and i32 %add.i63.i.i, 1048575
  %add1.i65.i.i = or i32 %and.i64.i.i, -18874368
  %284 = inttoptr i32 %add1.i65.i.i to ptr
  %285 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %284) #12, !srcloc !393
  %286 = call i32 @llvm.bswap.i32(i32 %285) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  %or.i.i.i = or i32 %286, 524288
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i.i, i32 %286)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, %286
  br i1 %cmp.i.i.i, label %sw.epilog.i517.i.snd_cmipci_set_bit.exit.i.i_crit_edge, label %do.body.i.i.i

sw.epilog.i517.i.snd_cmipci_set_bit.exit.i.i_crit_edge: ; preds = %sw.epilog.i517.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_set_bit.exit.i.i

do.body.i.i.i:                                    ; preds = %sw.epilog.i517.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  call void @arm_heavy_mb() #12
  %287 = call i32 @llvm.bswap.i32(i32 %or.i.i.i) #12
  %288 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %iobase.i, align 4
  %add4.i.i.i = add i32 %289, 24
  %and5.i.i.i = and i32 %add4.i.i.i, 1048575
  %add6.i.i.i = or i32 %and5.i.i.i, -18874368
  %290 = inttoptr i32 %add6.i.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %290, i32 %287) #12, !srcloc !397
  br label %snd_cmipci_set_bit.exit.i.i

snd_cmipci_set_bit.exit.i.i:                      ; preds = %do.body.i.i.i, %sw.epilog.i517.i.snd_cmipci_set_bit.exit.i.i_crit_edge
  %291 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %24, align 4
  %add15.i.i = add nuw nsw i32 %266, 2
  %call16.i.i = call i32 @snd_opl3_create(ptr noundef %292, i32 noundef %266, i32 noundef %add15.i.i, i16 noundef zeroext 768, i32 noundef 0, ptr noundef nonnull %opl3.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %cmp17.i.i = icmp slt i32 %call16.i.i, 0
  br i1 %cmp17.i.i, label %do.end.i.i, label %snd_cmipci_set_bit.exit.i.i.if.end21.i.i_crit_edge

snd_cmipci_set_bit.exit.i.i.if.end21.i.i_crit_edge: ; preds = %snd_cmipci_set_bit.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i.i

do.end.i.i:                                       ; preds = %snd_cmipci_set_bit.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %293 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %24, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %294, i32 0, i32 27
  %295 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %dev.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %296, ptr noundef nonnull @.str.23, i32 noundef %266) #15
  br label %disable_fm.i.i

if.end21.i.i:                                     ; preds = %snd_cmipci_set_bit.exit.i.i.if.end21.i.i_crit_edge, %if.then1.i.i.if.end21.i.i_crit_edge
  %297 = ptrtoint ptr %opl3.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %opl3.i.i, align 4
  %call22.i.i = call i32 @snd_opl3_hwdep_new(ptr noundef %298, i32 noundef 0, i32 noundef 1, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %cmp23.i.i = icmp slt i32 %call22.i.i, 0
  br i1 %cmp23.i.i, label %snd_cmipci_create_fm.exit.i, label %if.end21.i.i.snd_cmipci_create_fm.exit.thread.i_crit_edge

if.end21.i.i.snd_cmipci_create_fm.exit.thread.i_crit_edge: ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_create_fm.exit.thread.i

disable_fm.i.i:                                   ; preds = %do.end.i.i, %if.then5.i.i.disable_fm.i.i_crit_edge, %if.then187.i.disable_fm.i.i_crit_edge
  %299 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %iobase.i, align 4
  %add.i67.i.i = add i32 %300, 20
  %and.i68.i.i = and i32 %add.i67.i.i, 1048575
  %add1.i69.i.i = or i32 %and.i68.i.i, -18874368
  %301 = inttoptr i32 %add1.i69.i.i to ptr
  %302 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %301) #12, !srcloc !393
  %303 = call i32 @llvm.bswap.i32(i32 %302) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  %and3.i.i.i = and i32 %303, -50331649
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i.i.i, i32 %303)
  %cmp.i70.i.i = icmp eq i32 %and3.i.i.i, %303
  br i1 %cmp.i70.i.i, label %disable_fm.i.i.snd_cmipci_clear_bit.exit.i.i_crit_edge, label %do.body.i71.i.i

disable_fm.i.i.snd_cmipci_clear_bit.exit.i.i_crit_edge: ; preds = %disable_fm.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_clear_bit.exit.i.i

do.body.i71.i.i:                                  ; preds = %disable_fm.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  call void @arm_heavy_mb() #12
  %304 = call i32 @llvm.bswap.i32(i32 %and3.i.i.i) #12
  %305 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %iobase.i, align 4
  %add5.i.i.i = add i32 %306, 20
  %and6.i.i.i = and i32 %add5.i.i.i, 1048575
  %add7.i.i.i = or i32 %and6.i.i.i, -18874368
  %307 = inttoptr i32 %add7.i.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %307, i32 %304) #12, !srcloc !397
  br label %snd_cmipci_clear_bit.exit.i.i

snd_cmipci_clear_bit.exit.i.i:                    ; preds = %do.body.i71.i.i, %disable_fm.i.i.snd_cmipci_clear_bit.exit.i.i_crit_edge
  %308 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %iobase.i, align 4
  %add.i74.i.i = add i32 %309, 24
  %and.i75.i.i = and i32 %add.i74.i.i, 1048575
  %add1.i76.i.i = or i32 %and.i75.i.i, -18874368
  %310 = inttoptr i32 %add1.i76.i.i to ptr
  %311 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %310) #12, !srcloc !393
  %312 = call i32 @llvm.bswap.i32(i32 %311) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  %and3.i77.i.i = and i32 %312, -524289
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i77.i.i, i32 %312)
  %cmp.i78.i.i = icmp eq i32 %and3.i77.i.i, %312
  br i1 %cmp.i78.i.i, label %snd_cmipci_clear_bit.exit.i.i.snd_cmipci_create_fm.exit.thread.i_crit_edge, label %do.body.i82.i.i

snd_cmipci_clear_bit.exit.i.i.snd_cmipci_create_fm.exit.thread.i_crit_edge: ; preds = %snd_cmipci_clear_bit.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_create_fm.exit.thread.i

do.body.i82.i.i:                                  ; preds = %snd_cmipci_clear_bit.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  call void @arm_heavy_mb() #12
  %313 = call i32 @llvm.bswap.i32(i32 %and3.i77.i.i) #12
  %314 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %iobase.i, align 4
  %add5.i79.i.i = add i32 %315, 24
  %and6.i80.i.i = and i32 %add5.i79.i.i, 1048575
  %add7.i81.i.i = or i32 %and6.i80.i.i, -18874368
  %316 = inttoptr i32 %add7.i81.i.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %316, i32 %313) #12, !srcloc !397
  br label %snd_cmipci_create_fm.exit.thread.i

snd_cmipci_create_fm.exit.thread.i:               ; preds = %do.body.i82.i.i, %snd_cmipci_clear_bit.exit.i.i.snd_cmipci_create_fm.exit.thread.i_crit_edge, %if.end21.i.i.snd_cmipci_create_fm.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opl3.i.i) #12
  br label %if.end194.i

snd_cmipci_create_fm.exit.i:                      ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %317 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %24, align 4
  %dev29.i.i = getelementptr inbounds %struct.snd_card, ptr %318, i32 0, i32 27
  %319 = ptrtoint ptr %dev29.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %dev29.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %320, ptr noundef nonnull @.str.26) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opl3.i.i) #12
  br label %snd_cmipci_create.exit.thread

if.end194.i:                                      ; preds = %snd_cmipci_create_fm.exit.thread.i, %if.end183.i.if.end194.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !406
  call void @arm_heavy_mb() #12
  %321 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %iobase.i, align 4
  %add.i520.i = add i32 %322, 35
  %and.i521.i = and i32 %add.i520.i, 1048575
  %add1.i522.i = or i32 %and.i521.i, -18874368
  %323 = inttoptr i32 %add1.i522.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %323, i8 0) #12, !srcloc !402
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !407
  call void @arm_heavy_mb() #12
  %324 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %iobase.i, align 4
  %add5.i523.i = add i32 %325, 34
  %and6.i524.i = and i32 %add5.i523.i, 1048575
  %add7.i525.i = or i32 %and6.i524.i, -18874368
  %326 = inttoptr i32 %add7.i525.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %326, i8 0) #12, !srcloc !402
  %327 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %24, align 4
  %call.i.i.i = call i32 @snd_card_rw_proc_new(ptr noundef %328, ptr noundef nonnull @.str.28, ptr noundef %24, ptr noundef nonnull @snd_cmipci_proc_read, ptr noundef null) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i.i) #12
  %329 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i.i, align 4, !annotation !391
  %330 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %24, align 4
  %driver.i.i = getelementptr inbounds %struct.snd_card, ptr %331, i32 0, i32 2
  %call.i526.i = call i32 @snd_pcm_new(ptr noundef %331, ptr noundef %driver.i.i, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %pcm.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i526.i)
  %cmp.i527.i = icmp slt i32 %call.i526.i, 0
  br i1 %cmp.i527.i, label %snd_cmipci_pcm_new.exit.thread.i, label %if.end199.i

snd_cmipci_pcm_new.exit.thread.i:                 ; preds = %if.end194.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i.i) #12
  br label %snd_cmipci_create.exit.thread

if.end199.i:                                      ; preds = %if.end194.i
  %332 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %pcm.i.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %333, i32 noundef 0, ptr noundef nonnull @snd_cmipci_playback_ops) #12
  %334 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %pcm.i.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %335, i32 noundef 1, ptr noundef nonnull @snd_cmipci_capture_ops) #12
  %336 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %pcm.i.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.snd_pcm, ptr %337, i32 0, i32 11
  %338 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store ptr %24, ptr %private_data.i.i, align 8
  %info_flags.i.i = getelementptr inbounds %struct.snd_pcm, ptr %337, i32 0, i32 3
  %339 = ptrtoint ptr %info_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 0, ptr %info_flags.i.i, align 8
  %name.i.i = getelementptr inbounds %struct.snd_pcm, ptr %337, i32 0, i32 7
  %340 = call ptr @memcpy(ptr %name.i.i, ptr @.str.33, i32 20)
  %pcm4.i.i = getelementptr inbounds %struct.cmipci, ptr %24, i32 0, i32 6
  %341 = ptrtoint ptr %pcm4.i.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store ptr %337, ptr %pcm4.i.i, align 4
  %342 = ptrtoint ptr %pci7.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %pci7.i, align 4
  %dev.i528.i = getelementptr inbounds %struct.pci_dev, ptr %343, i32 0, i32 44
  %call5.i.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %337, i32 noundef 2, ptr noundef %dev.i528.i, i32 noundef 65536, i32 noundef 131072) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i531.i) #12
  %344 = ptrtoint ptr %pcm.i531.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i531.i, align 4, !annotation !391
  %345 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %24, align 4
  %driver.i532.i = getelementptr inbounds %struct.snd_card, ptr %346, i32 0, i32 2
  %call.i533.i = call i32 @snd_pcm_new(ptr noundef %346, ptr noundef %driver.i532.i, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %pcm.i531.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i533.i)
  %cmp.i534.i = icmp slt i32 %call.i533.i, 0
  br i1 %cmp.i534.i, label %snd_cmipci_pcm2_new.exit.thread.i, label %if.end204.i

snd_cmipci_pcm2_new.exit.thread.i:                ; preds = %if.end199.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i531.i) #12
  br label %snd_cmipci_create.exit.thread

if.end204.i:                                      ; preds = %if.end199.i
  %347 = ptrtoint ptr %pcm.i531.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %pcm.i531.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %348, i32 noundef 0, ptr noundef nonnull @snd_cmipci_playback2_ops) #12
  %349 = ptrtoint ptr %pcm.i531.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %pcm.i531.i, align 4
  %private_data.i535.i = getelementptr inbounds %struct.snd_pcm, ptr %350, i32 0, i32 11
  %351 = ptrtoint ptr %private_data.i535.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store ptr %24, ptr %private_data.i535.i, align 8
  %info_flags.i536.i = getelementptr inbounds %struct.snd_pcm, ptr %350, i32 0, i32 3
  %352 = ptrtoint ptr %info_flags.i536.i to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 0, ptr %info_flags.i536.i, align 8
  %name.i537.i = getelementptr inbounds %struct.snd_pcm, ptr %350, i32 0, i32 7
  %353 = call ptr @memcpy(ptr %name.i537.i, ptr @.str.47, i32 20)
  %pcm2.i.i = getelementptr inbounds %struct.cmipci, ptr %24, i32 0, i32 7
  %354 = ptrtoint ptr %pcm2.i.i to i32
  call void @__asan_store4_noabort(i32 %354)
  store ptr %350, ptr %pcm2.i.i, align 4
  %355 = ptrtoint ptr %pci7.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %pci7.i, align 4
  %dev.i539.i = getelementptr inbounds %struct.pci_dev, ptr %356, i32 0, i32 44
  %call4.i.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %350, i32 noundef 2, ptr noundef %dev.i539.i, i32 noundef 65536, i32 noundef 131072) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i531.i) #12
  %357 = ptrtoint ptr %do_soft_ac3.i to i32
  call void @__asan_load1_noabort(i32 %357)
  %bf.load206.i = load i8, ptr %do_soft_ac3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load206.i)
  %358 = icmp ult i8 %bf.load206.i, 64
  br i1 %358, label %if.end204.i.if.end222.i_crit_edge, label %if.then216.i

if.end204.i.if.end222.i_crit_edge:                ; preds = %if.end204.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end222.i

if.then216.i:                                     ; preds = %if.end204.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i542.i) #12
  %359 = ptrtoint ptr %pcm.i542.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i542.i, align 4, !annotation !391
  %360 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %24, align 4
  %driver.i543.i = getelementptr inbounds %struct.snd_card, ptr %361, i32 0, i32 2
  %call.i544.i = call i32 @snd_pcm_new(ptr noundef %361, ptr noundef %driver.i543.i, i32 noundef 2, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %pcm.i542.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i544.i)
  %cmp.i545.i = icmp slt i32 %call.i544.i, 0
  br i1 %cmp.i545.i, label %snd_cmipci_pcm_spdif_new.exit.thread.i, label %snd_cmipci_pcm_spdif_new.exit.i

snd_cmipci_pcm_spdif_new.exit.thread.i:           ; preds = %if.then216.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i542.i) #12
  br label %snd_cmipci_create.exit.thread

snd_cmipci_pcm_spdif_new.exit.i:                  ; preds = %if.then216.i
  %362 = ptrtoint ptr %pcm.i542.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %pcm.i542.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %363, i32 noundef 0, ptr noundef nonnull @snd_cmipci_playback_spdif_ops) #12
  %364 = ptrtoint ptr %pcm.i542.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %pcm.i542.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %365, i32 noundef 1, ptr noundef nonnull @snd_cmipci_capture_spdif_ops) #12
  %366 = ptrtoint ptr %pcm.i542.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %pcm.i542.i, align 4
  %private_data.i546.i = getelementptr inbounds %struct.snd_pcm, ptr %367, i32 0, i32 11
  %368 = ptrtoint ptr %private_data.i546.i to i32
  call void @__asan_store4_noabort(i32 %368)
  store ptr %24, ptr %private_data.i546.i, align 8
  %info_flags.i547.i = getelementptr inbounds %struct.snd_pcm, ptr %367, i32 0, i32 3
  %369 = ptrtoint ptr %info_flags.i547.i to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 0, ptr %info_flags.i547.i, align 8
  %name.i548.i = getelementptr inbounds %struct.snd_pcm, ptr %367, i32 0, i32 7
  %370 = call ptr @memcpy(ptr %name.i548.i, ptr @.str.48, i32 19)
  %pcm_spdif.i.i = getelementptr inbounds %struct.cmipci, ptr %24, i32 0, i32 8
  %371 = ptrtoint ptr %pcm_spdif.i.i to i32
  call void @__asan_store4_noabort(i32 %371)
  store ptr %367, ptr %pcm_spdif.i.i, align 4
  %372 = ptrtoint ptr %pci7.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %pci7.i, align 4
  %dev.i550.i = getelementptr inbounds %struct.pci_dev, ptr %373, i32 0, i32 44
  %call4.i551.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %367, i32 noundef 2, ptr noundef %dev.i550.i, i32 noundef 65536, i32 noundef 131072) #12
  %374 = ptrtoint ptr %pcm.i542.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %pcm.i542.i, align 4
  %376 = ptrtoint ptr %max_channels.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %max_channels.i, align 4
  %call5.i553.i = call i32 @snd_pcm_add_chmap_ctls(ptr noundef %375, i32 noundef 0, ptr noundef nonnull @snd_pcm_alt_chmaps, i32 noundef %377, i32 noundef 0, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i542.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i553.i)
  %cmp218.i = icmp slt i32 %call5.i553.i, 0
  br i1 %cmp218.i, label %snd_cmipci_create.exit, label %snd_cmipci_pcm_spdif_new.exit.i.if.end222.i_crit_edge

snd_cmipci_pcm_spdif_new.exit.i.if.end222.i_crit_edge: ; preds = %snd_cmipci_pcm_spdif_new.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end222.i

if.end222.i:                                      ; preds = %snd_cmipci_pcm_spdif_new.exit.i.if.end222.i_crit_edge, %if.end204.i.if.end222.i_crit_edge
  %pcm_spdif_index.0.i = phi i32 [ 2, %snd_cmipci_pcm_spdif_new.exit.i.if.end222.i_crit_edge ], [ 0, %if.end204.i.if.end222.i_crit_edge ]
  %tobool.not.i556.i = icmp eq ptr %24, null
  br i1 %tobool.not.i556.i, label %if.end222.i.do.end.i557.i_crit_edge, label %lor.rhs.i.i

if.end222.i.do.end.i557.i_crit_edge:              ; preds = %if.end222.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i557.i

lor.rhs.i.i:                                      ; preds = %if.end222.i
  %378 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %24, align 4
  %tobool2.not.i.i = icmp eq ptr %379, null
  br i1 %tobool2.not.i.i, label %lor.rhs.i.i.do.end.i557.i_crit_edge, label %if.end25.i.i, !prof !408

lor.rhs.i.i.do.end.i557.i_crit_edge:              ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i557.i

do.end.i557.i:                                    ; preds = %lor.rhs.i.i.do.end.i557.i_crit_edge, %if.end222.i.do.end.i557.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 2648, i32 noundef 9, ptr noundef null) #12
  br label %snd_cmipci_create.exit.thread

if.end25.i.i:                                     ; preds = %lor.rhs.i.i
  %mixername.i.i = getelementptr inbounds %struct.snd_card, ptr %379, i32 0, i32 6
  %380 = call ptr @memcpy(ptr %mixername.i.i, ptr @.str.49, i32 11)
  call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !406
  call void @arm_heavy_mb() #12
  %381 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %iobase.i, align 4
  %add.i.i559.i = add i32 %382, 35
  %and.i.i560.i = and i32 %add.i.i559.i, 1048575
  %add1.i.i561.i = or i32 %and.i.i560.i, -18874368
  %383 = inttoptr i32 %add1.i.i561.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %383, i8 0) #12, !srcloc !402
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !407
  call void @arm_heavy_mb() #12
  %384 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %iobase.i, align 4
  %add5.i.i562.i = add i32 %385, 34
  %and6.i.i563.i = and i32 %add5.i.i562.i, 1048575
  %add7.i.i564.i = or i32 %and6.i.i563.i, -18874368
  %386 = inttoptr i32 %add7.i.i564.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %386, i8 0) #12, !srcloc !402
  call void @_raw_spin_unlock_irq(ptr noundef %reg_lock.i) #12
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end25.i.i
  %idx.0263.i.i = phi i32 [ 0, %if.end25.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %387 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %chip_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %388)
  %cmp28.i.i = icmp eq i32 %388, 68
  br i1 %cmp28.i.i, label %if.then29.i.i, label %for.body.i.i.if.end34.i.i_crit_edge

for.body.i.i.if.end34.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i.i

if.then29.i.i:                                    ; preds = %for.body.i.i
  %name.i566.i = getelementptr [27 x %struct.snd_kcontrol_new], ptr @snd_cmipci_mixers, i32 0, i32 %idx.0263.i.i, i32 3
  %389 = ptrtoint ptr %name.i566.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %name.i566.i, align 4
  %call30.i.i = call i32 @strcmp(ptr noundef %390, ptr noundef nonnull dereferenceable(20) @.str.50) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %tobool31.not.i.i = icmp eq i32 %call30.i.i, 0
  br i1 %tobool31.not.i.i, label %if.then29.i.i.for.inc.i.i_crit_edge, label %if.then29.i.i.if.end34.i.i_crit_edge

if.then29.i.i.if.end34.i.i_crit_edge:             ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i.i

if.then29.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.end34.i.i:                                     ; preds = %if.then29.i.i.if.end34.i.i_crit_edge, %for.body.i.i.if.end34.i.i_crit_edge
  %arrayidx35.i.i = getelementptr [27 x %struct.snd_kcontrol_new], ptr @snd_cmipci_mixers, i32 0, i32 %idx.0263.i.i
  %call36.i.i = call ptr @snd_ctl_new1(ptr noundef %arrayidx35.i.i, ptr noundef nonnull %24) #12
  %call37.i.i = call i32 @snd_ctl_add(ptr noundef nonnull %379, ptr noundef %call36.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i.i)
  %cmp38.i.i = icmp slt i32 %call37.i.i, 0
  br i1 %cmp38.i.i, label %if.end34.i.i.snd_cmipci_create.exit.thread_crit_edge, label %if.end34.i.i.for.inc.i.i_crit_edge

if.end34.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.end34.i.i.snd_cmipci_create.exit.thread_crit_edge: ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_create.exit.thread

for.inc.i.i:                                      ; preds = %if.end34.i.i.for.inc.i.i_crit_edge, %if.then29.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %idx.0263.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 27
  br i1 %exitcond.not.i.i, label %for.body43.preheader.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body43.preheader.i.i:                         ; preds = %for.inc.i.i
  %391 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %24, align 4
  %call45.i.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_cmipci_mixer_switches, ptr noundef nonnull %24) #12
  %call46.i.i = call i32 @snd_ctl_add(ptr noundef %392, ptr noundef %call45.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i.i)
  %cmp47.i.i = icmp slt i32 %call46.i.i, 0
  br i1 %cmp47.i.i, label %for.body43.preheader.i.i.snd_cmipci_create.exit.thread_crit_edge, label %for.inc50.i.i

for.body43.preheader.i.i.snd_cmipci_create.exit.thread_crit_edge: ; preds = %for.body43.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_create.exit.thread

for.inc50.i.i:                                    ; preds = %for.body43.preheader.i.i
  %393 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %24, align 4
  %call45.1.i.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([2 x %struct.snd_kcontrol_new], ptr @snd_cmipci_mixer_switches, i32 0, i32 1), ptr noundef nonnull %24) #12
  %call46.1.i.i = call i32 @snd_ctl_add(ptr noundef %394, ptr noundef %call45.1.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.1.i.i)
  %cmp47.1.i.i = icmp slt i32 %call46.1.i.i, 0
  br i1 %cmp47.1.i.i, label %for.inc50.i.i.snd_cmipci_create.exit.thread_crit_edge, label %for.inc50.1.i.i

for.inc50.i.i.snd_cmipci_create.exit.thread_crit_edge: ; preds = %for.inc50.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_create.exit.thread

for.inc50.1.i.i:                                  ; preds = %for.inc50.i.i
  %395 = ptrtoint ptr %do_soft_ac3.i to i32
  call void @__asan_load1_noabort(i32 %395)
  %bf.load.i567.i = load i8, ptr %do_soft_ac3.i, align 4
  %396 = and i8 %bf.load.i567.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %396)
  %tobool53.not.i.i = icmp eq i8 %396, 0
  br i1 %tobool53.not.i.i, label %if.then54.i.i, label %for.inc50.1.i.i.if.end61.i.i_crit_edge

for.inc50.1.i.i.if.end61.i.i_crit_edge:           ; preds = %for.inc50.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61.i.i

if.then54.i.i:                                    ; preds = %for.inc50.1.i.i
  %397 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %24, align 4
  %call56.i.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_cmipci_nomulti_switch, ptr noundef nonnull %24) #12
  %call57.i.i = call i32 @snd_ctl_add(ptr noundef %398, ptr noundef %call56.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i.i)
  %cmp58.i.i = icmp slt i32 %call57.i.i, 0
  br i1 %cmp58.i.i, label %if.then54.i.i.snd_cmipci_create.exit.thread_crit_edge, label %if.then54.i.i.if.end61.i.i_crit_edge

if.then54.i.i.if.end61.i.i_crit_edge:             ; preds = %if.then54.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61.i.i

if.then54.i.i.snd_cmipci_create.exit.thread_crit_edge: ; preds = %if.then54.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_create.exit.thread

if.end61.i.i:                                     ; preds = %if.then54.i.i.if.end61.i.i_crit_edge, %for.inc50.1.i.i.if.end61.i.i_crit_edge
  %399 = ptrtoint ptr %device5.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %device5.i, align 4
  %.off.i.i = add i32 %400, -273
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  br i1 %switch.i.i, label %for.body68.preheader.i.i, label %if.end61.i.i.if.end123thread-pre-split.i.i_crit_edge

if.end61.i.i.if.end123thread-pre-split.i.i_crit_edge: ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end123thread-pre-split.i.i

for.body68.preheader.i.i:                         ; preds = %if.end61.i.i
  %401 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %24, align 4
  %call70.i.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_cmipci_8738_mixer_switches, ptr noundef nonnull %24) #12
  %call71.i.i = call i32 @snd_ctl_add(ptr noundef %402, ptr noundef %call70.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i.i)
  %cmp72.i.i = icmp slt i32 %call71.i.i, 0
  br i1 %cmp72.i.i, label %for.body68.preheader.i.i.snd_cmipci_create.exit.thread_crit_edge, label %for.inc75.i.i

for.body68.preheader.i.i.snd_cmipci_create.exit.thread_crit_edge: ; preds = %for.body68.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_create.exit.thread

for.inc75.i.i:                                    ; preds = %for.body68.preheader.i.i
  %403 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %24, align 4
  %call70.1.i.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([6 x %struct.snd_kcontrol_new], ptr @snd_cmipci_8738_mixer_switches, i32 0, i32 1), ptr noundef nonnull %24) #12
  %call71.1.i.i = call i32 @snd_ctl_add(ptr noundef %404, ptr noundef %call70.1.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.1.i.i)
  %cmp72.1.i.i = icmp slt i32 %call71.1.i.i, 0
  br i1 %cmp72.1.i.i, label %for.inc75.i.i.snd_cmipci_create.exit.thread_crit_edge, label %for.inc75.1.i.i

for.inc75.i.i.snd_cmipci_create.exit.thread_crit_edge: ; preds = %for.inc75.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_create.exit.thread

for.inc75.1.i.i:                                  ; preds = %for.inc75.i.i
  %405 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %24, align 4
  %call70.2.i.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([6 x %struct.snd_kcontrol_new], ptr @snd_cmipci_8738_mixer_switches, i32 0, i32 2), ptr noundef nonnull %24) #12
  %call71.2.i.i = call i32 @snd_ctl_add(ptr noundef %406, ptr noundef %call70.2.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.2.i.i)
  %cmp72.2.i.i = icmp slt i32 %call71.2.i.i, 0
  br i1 %cmp72.2.i.i, label %for.inc75.1.i.i.snd_cmipci_create.exit.thread_crit_edge, label %for.inc75.2.i.i

for.inc75.1.i.i.snd_cmipci_create.exit.thread_crit_edge: ; preds = %for.inc75.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_create.exit.thread

for.inc75.2.i.i:                                  ; preds = %for.inc75.1.i.i
  %407 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %24, align 4
  %call70.3.i.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([6 x %struct.snd_kcontrol_new], ptr @snd_cmipci_8738_mixer_switches, i32 0, i32 3), ptr noundef nonnull %24) #12
  %call71.3.i.i = call i32 @snd_ctl_add(ptr noundef %408, ptr noundef %call70.3.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.3.i.i)
  %cmp72.3.i.i = icmp slt i32 %call71.3.i.i, 0
  br i1 %cmp72.3.i.i, label %for.inc75.2.i.i.snd_cmipci_create.exit.thread_crit_edge, label %for.inc75.3.i.i

for.inc75.2.i.i.snd_cmipci_create.exit.thread_crit_edge: ; preds = %for.inc75.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_create.exit.thread

for.inc75.3.i.i:                                  ; preds = %for.inc75.2.i.i
  %409 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %24, align 4
  %call70.4.i.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([6 x %struct.snd_kcontrol_new], ptr @snd_cmipci_8738_mixer_switches, i32 0, i32 4), ptr noundef nonnull %24) #12
  %call71.4.i.i = call i32 @snd_ctl_add(ptr noundef %410, ptr noundef %call70.4.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.4.i.i)
  %cmp72.4.i.i = icmp slt i32 %call71.4.i.i, 0
  br i1 %cmp72.4.i.i, label %for.inc75.3.i.i.snd_cmipci_create.exit.thread_crit_edge, label %for.inc75.4.i.i

for.inc75.3.i.i.snd_cmipci_create.exit.thread_crit_edge: ; preds = %for.inc75.3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_create.exit.thread

for.inc75.4.i.i:                                  ; preds = %for.inc75.3.i.i
  %411 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %24, align 4
  %call70.5.i.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([6 x %struct.snd_kcontrol_new], ptr @snd_cmipci_8738_mixer_switches, i32 0, i32 5), ptr noundef nonnull %24) #12
  %call71.5.i.i = call i32 @snd_ctl_add(ptr noundef %412, ptr noundef %call70.5.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.5.i.i)
  %cmp72.5.i.i = icmp slt i32 %call71.5.i.i, 0
  br i1 %cmp72.5.i.i, label %for.inc75.4.i.i.snd_cmipci_create.exit.thread_crit_edge, label %for.inc75.5.i.i

for.inc75.4.i.i.snd_cmipci_create.exit.thread_crit_edge: ; preds = %for.inc75.4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_create.exit.thread

for.inc75.5.i.i:                                  ; preds = %for.inc75.4.i.i
  %413 = ptrtoint ptr %do_soft_ac3.i to i32
  call void @__asan_load1_noabort(i32 %413)
  %bf.load79.i.i = load i8, ptr %do_soft_ac3.i, align 4
  %414 = and i8 %bf.load79.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %414)
  %tobool83.not.i.i = icmp eq i8 %414, 0
  br i1 %tobool83.not.i.i, label %for.inc75.5.i.i.if.end105.i.i_crit_edge, label %if.then84.i.i

for.inc75.5.i.i.if.end105.i.i_crit_edge:          ; preds = %for.inc75.5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end105.i.i

if.then84.i.i:                                    ; preds = %for.inc75.5.i.i
  %call85.i.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_cmipci_spdif_default, ptr noundef nonnull %24) #12
  %call86.i.i = call i32 @snd_ctl_add(ptr noundef nonnull %379, ptr noundef %call85.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i.i)
  %cmp87.i.i = icmp slt i32 %call86.i.i, 0
  br i1 %cmp87.i.i, label %if.then84.i.i.snd_cmipci_create.exit.thread_crit_edge, label %if.end89.i.i

if.then84.i.i.snd_cmipci_create.exit.thread_crit_edge: ; preds = %if.then84.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_create.exit.thread

if.end89.i.i:                                     ; preds = %if.then84.i.i
  %device90.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call85.i.i, i32 0, i32 1, i32 2
  %415 = ptrtoint ptr %device90.i.i to i32
  call void @__asan_store4_noabort(i32 %415)
  store i32 %pcm_spdif_index.0.i, ptr %device90.i.i, align 4
  %call91.i.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_cmipci_spdif_mask, ptr noundef nonnull %24) #12
  %call92.i.i = call i32 @snd_ctl_add(ptr noundef nonnull %379, ptr noundef %call91.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92.i.i)
  %cmp93.i.i = icmp slt i32 %call92.i.i, 0
  br i1 %cmp93.i.i, label %if.end89.i.i.snd_cmipci_create.exit.thread_crit_edge, label %if.end95.i.i

if.end89.i.i.snd_cmipci_create.exit.thread_crit_edge: ; preds = %if.end89.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_create.exit.thread

if.end95.i.i:                                     ; preds = %if.end89.i.i
  %device97.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call91.i.i, i32 0, i32 1, i32 2
  %416 = ptrtoint ptr %device97.i.i to i32
  call void @__asan_store4_noabort(i32 %416)
  store i32 %pcm_spdif_index.0.i, ptr %device97.i.i, align 4
  %call98.i.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_cmipci_spdif_stream, ptr noundef nonnull %24) #12
  %call99.i.i = call i32 @snd_ctl_add(ptr noundef nonnull %379, ptr noundef %call98.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99.i.i)
  %cmp100.i.i = icmp slt i32 %call99.i.i, 0
  br i1 %cmp100.i.i, label %if.end95.i.i.snd_cmipci_create.exit.thread_crit_edge, label %if.end102.i.i

if.end95.i.i.snd_cmipci_create.exit.thread_crit_edge: ; preds = %if.end95.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_create.exit.thread

if.end102.i.i:                                    ; preds = %if.end95.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %device104.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call98.i.i, i32 0, i32 1, i32 2
  %417 = ptrtoint ptr %device104.i.i to i32
  call void @__asan_store4_noabort(i32 %417)
  store i32 %pcm_spdif_index.0.i, ptr %device104.i.i, align 4
  br label %if.end105.i.i

if.end105.i.i:                                    ; preds = %if.end102.i.i, %for.inc75.5.i.i.if.end105.i.i_crit_edge
  %418 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %chip_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %419)
  %cmp107.i.i = icmp slt i32 %419, 38
  br i1 %cmp107.i.i, label %for.body111.preheader.i.i, label %if.end105.i.i.if.end123.i.i_crit_edge

if.end105.i.i.if.end123.i.i_crit_edge:            ; preds = %if.end105.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end123.i.i

for.body111.preheader.i.i:                        ; preds = %if.end105.i.i
  %420 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %24, align 4
  %call113.i.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_cmipci_old_mixer_switches, ptr noundef nonnull %24) #12
  %call114.i.i = call i32 @snd_ctl_add(ptr noundef %421, ptr noundef %call113.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.i.i)
  %cmp115.i.i = icmp slt i32 %call114.i.i, 0
  br i1 %cmp115.i.i, label %for.body111.preheader.i.i.snd_cmipci_create.exit.thread_crit_edge, label %for.inc118.i.i

for.body111.preheader.i.i.snd_cmipci_create.exit.thread_crit_edge: ; preds = %for.body111.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_create.exit.thread

for.inc118.i.i:                                   ; preds = %for.body111.preheader.i.i
  %422 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %24, align 4
  %call113.1.i.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([3 x %struct.snd_kcontrol_new], ptr @snd_cmipci_old_mixer_switches, i32 0, i32 1), ptr noundef nonnull %24) #12
  %call114.1.i.i = call i32 @snd_ctl_add(ptr noundef %423, ptr noundef %call113.1.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.1.i.i)
  %cmp115.1.i.i = icmp slt i32 %call114.1.i.i, 0
  br i1 %cmp115.1.i.i, label %for.inc118.i.i.snd_cmipci_create.exit.thread_crit_edge, label %for.inc118.1.i.i

for.inc118.i.i.snd_cmipci_create.exit.thread_crit_edge: ; preds = %for.inc118.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_create.exit.thread

for.inc118.1.i.i:                                 ; preds = %for.inc118.i.i
  %424 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %24, align 4
  %call113.2.i.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([3 x %struct.snd_kcontrol_new], ptr @snd_cmipci_old_mixer_switches, i32 0, i32 2), ptr noundef nonnull %24) #12
  %call114.2.i.i = call i32 @snd_ctl_add(ptr noundef %425, ptr noundef %call113.2.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.2.i.i)
  %cmp115.2.i.i = icmp slt i32 %call114.2.i.i, 0
  br i1 %cmp115.2.i.i, label %for.inc118.1.i.i.snd_cmipci_create.exit.thread_crit_edge, label %for.inc118.1.i.i.if.end123thread-pre-split.i.i_crit_edge

for.inc118.1.i.i.if.end123thread-pre-split.i.i_crit_edge: ; preds = %for.inc118.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end123thread-pre-split.i.i

for.inc118.1.i.i.snd_cmipci_create.exit.thread_crit_edge: ; preds = %for.inc118.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_create.exit.thread

if.end123thread-pre-split.i.i:                    ; preds = %for.inc118.1.i.i.if.end123thread-pre-split.i.i_crit_edge, %if.end61.i.i.if.end123thread-pre-split.i.i_crit_edge
  %426 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %.pr289.i.i = load i32, ptr %chip_version.i, align 4
  br label %if.end123.i.i

if.end123.i.i:                                    ; preds = %if.end123thread-pre-split.i.i, %if.end105.i.i.if.end123.i.i_crit_edge
  %427 = phi i32 [ %.pr289.i.i, %if.end123thread-pre-split.i.i ], [ %419, %if.end105.i.i.if.end123.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %427)
  %cmp125.i.i = icmp sgt i32 %427, 38
  br i1 %cmp125.i.i, label %for.body129.preheader.i.i, label %if.end123.i.i.if.then143.i.i_crit_edge

if.end123.i.i.if.then143.i.i_crit_edge:           ; preds = %if.end123.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then143.i.i

for.body129.preheader.i.i:                        ; preds = %if.end123.i.i
  %428 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %24, align 4
  %call131.i.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_cmipci_extra_mixer_switches, ptr noundef nonnull %24) #12
  %call132.i.i = call i32 @snd_ctl_add(ptr noundef %429, ptr noundef %call131.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132.i.i)
  %cmp133.i.i = icmp slt i32 %call132.i.i, 0
  br i1 %cmp133.i.i, label %for.body129.preheader.i.i.snd_cmipci_create.exit.thread_crit_edge, label %for.inc136.i.i

for.body129.preheader.i.i.snd_cmipci_create.exit.thread_crit_edge: ; preds = %for.body129.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_create.exit.thread

for.inc136.i.i:                                   ; preds = %for.body129.preheader.i.i
  %430 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %24, align 4
  %call131.1.i.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([3 x %struct.snd_kcontrol_new], ptr @snd_cmipci_extra_mixer_switches, i32 0, i32 1), ptr noundef nonnull %24) #12
  %call132.1.i.i = call i32 @snd_ctl_add(ptr noundef %431, ptr noundef %call131.1.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132.1.i.i)
  %cmp133.1.i.i = icmp slt i32 %call132.1.i.i, 0
  br i1 %cmp133.1.i.i, label %for.inc136.i.i.snd_cmipci_create.exit.thread_crit_edge, label %for.inc136.1.i.i

for.inc136.i.i.snd_cmipci_create.exit.thread_crit_edge: ; preds = %for.inc136.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_create.exit.thread

for.inc136.1.i.i:                                 ; preds = %for.inc136.i.i
  %432 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %24, align 4
  %call131.2.i.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([3 x %struct.snd_kcontrol_new], ptr @snd_cmipci_extra_mixer_switches, i32 0, i32 2), ptr noundef nonnull %24) #12
  %call132.2.i.i = call i32 @snd_ctl_add(ptr noundef %433, ptr noundef %call131.2.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132.2.i.i)
  %cmp133.2.i.i = icmp slt i32 %call132.2.i.i, 0
  br i1 %cmp133.2.i.i, label %for.inc136.1.i.i.snd_cmipci_create.exit.thread_crit_edge, label %for.inc136.2.i.i

for.inc136.1.i.i.snd_cmipci_create.exit.thread_crit_edge: ; preds = %for.inc136.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_create.exit.thread

for.inc136.2.i.i:                                 ; preds = %for.inc136.1.i.i
  %434 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %.pr.i.i = load i32, ptr %chip_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %.pr.i.i)
  %cmp142.i.i = icmp slt i32 %.pr.i.i, 39
  br i1 %cmp142.i.i, label %for.inc136.2.i.i.if.then143.i.i_crit_edge, label %for.inc136.2.i.i.if.end150.i.i_crit_edge

for.inc136.2.i.i.if.end150.i.i_crit_edge:         ; preds = %for.inc136.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end150.i.i

for.inc136.2.i.i.if.then143.i.i_crit_edge:        ; preds = %for.inc136.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then143.i.i

if.then143.i.i:                                   ; preds = %for.inc136.2.i.i.if.then143.i.i_crit_edge, %if.end123.i.i.if.then143.i.i_crit_edge
  %435 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %24, align 4
  %call145.i.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_cmipci_modem_switch, ptr noundef nonnull %24) #12
  %call146.i.i = call i32 @snd_ctl_add(ptr noundef %436, ptr noundef %call145.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i)
  %cmp147.i.i = icmp slt i32 %call146.i.i, 0
  br i1 %cmp147.i.i, label %if.then143.i.i.snd_cmipci_create.exit.thread_crit_edge, label %if.then143.i.i.if.end150.i.i_crit_edge

if.then143.i.i.if.end150.i.i_crit_edge:           ; preds = %if.then143.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end150.i.i

if.then143.i.i.snd_cmipci_create.exit.thread_crit_edge: ; preds = %if.then143.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_create.exit.thread

if.end150.i.i:                                    ; preds = %if.then143.i.i.if.end150.i.i_crit_edge, %for.inc136.2.i.i.if.end150.i.i_crit_edge
  %iface.i.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %elem_id.i.i, i32 0, i32 1
  %name154.i.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %elem_id.i.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %elem_id.i.i) #12
  %437 = call ptr @memset(ptr %elem_id.i.i, i32 0, i32 64)
  %438 = ptrtoint ptr %iface.i.i to i32
  call void @__asan_store4_noabort(i32 %438)
  store i32 2, ptr %iface.i.i, align 4
  %439 = call ptr @memcpy(ptr %name154.i.i, ptr @.str.34, i32 20)
  %440 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %24, align 4
  %call160.i.i = call ptr @snd_ctl_find_id(ptr noundef %441, ptr noundef nonnull %elem_id.i.i) #12
  %tobool161.not.i.i = icmp eq ptr %call160.i.i, null
  br i1 %tobool161.not.i.i, label %if.end150.i.i.if.end164.i.i_crit_edge, label %if.then162.i.i

if.end150.i.i.if.end164.i.i_crit_edge:            ; preds = %if.end150.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end164.i.i

if.then162.i.i:                                   ; preds = %if.end150.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx163.i.i = getelementptr %struct.cmipci, ptr %24, i32 0, i32 19, i32 0
  %442 = ptrtoint ptr %arrayidx163.i.i to i32
  call void @__asan_store4_noabort(i32 %442)
  store ptr %call160.i.i, ptr %arrayidx163.i.i, align 4
  br label %if.end164.i.i

if.end164.i.i:                                    ; preds = %if.then162.i.i, %if.end150.i.i.if.end164.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %elem_id.i.i) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %elem_id.i.i) #12
  %443 = call ptr @memset(ptr %elem_id.i.i, i32 0, i32 64)
  %444 = ptrtoint ptr %iface.i.i to i32
  call void @__asan_store4_noabort(i32 %444)
  store i32 2, ptr %iface.i.i, align 4
  %445 = call ptr @memcpy(ptr %name154.i.i, ptr @.str.35, i32 21)
  %446 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %24, align 4
  %call160.1.i.i = call ptr @snd_ctl_find_id(ptr noundef %447, ptr noundef nonnull %elem_id.i.i) #12
  %tobool161.not.1.i.i = icmp eq ptr %call160.1.i.i, null
  br i1 %tobool161.not.1.i.i, label %if.end164.i.i.if.end164.1.i.i_crit_edge, label %if.then162.1.i.i

if.end164.i.i.if.end164.1.i.i_crit_edge:          ; preds = %if.end164.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end164.1.i.i

if.then162.1.i.i:                                 ; preds = %if.end164.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx163.1.i.i = getelementptr %struct.cmipci, ptr %24, i32 0, i32 19, i32 1
  %448 = ptrtoint ptr %arrayidx163.1.i.i to i32
  call void @__asan_store4_noabort(i32 %448)
  store ptr %call160.1.i.i, ptr %arrayidx163.1.i.i, align 4
  br label %if.end164.1.i.i

if.end164.1.i.i:                                  ; preds = %if.then162.1.i.i, %if.end164.i.i.if.end164.1.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %elem_id.i.i) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %elem_id.i.i) #12
  %449 = call ptr @memset(ptr %elem_id.i.i, i32 0, i32 64)
  %450 = ptrtoint ptr %iface.i.i to i32
  call void @__asan_store4_noabort(i32 %450)
  store i32 2, ptr %iface.i.i, align 4
  %451 = call ptr @memcpy(ptr %name154.i.i, ptr @.str.36, i32 18)
  %452 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %24, align 4
  %call160.2.i.i = call ptr @snd_ctl_find_id(ptr noundef %453, ptr noundef nonnull %elem_id.i.i) #12
  %tobool161.not.2.i.i = icmp eq ptr %call160.2.i.i, null
  br i1 %tobool161.not.2.i.i, label %if.end164.1.i.i.if.end164.2.i.i_crit_edge, label %if.then162.2.i.i

if.end164.1.i.i.if.end164.2.i.i_crit_edge:        ; preds = %if.end164.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end164.2.i.i

if.then162.2.i.i:                                 ; preds = %if.end164.1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx163.2.i.i = getelementptr %struct.cmipci, ptr %24, i32 0, i32 19, i32 2
  %454 = ptrtoint ptr %arrayidx163.2.i.i to i32
  call void @__asan_store4_noabort(i32 %454)
  store ptr %call160.2.i.i, ptr %arrayidx163.2.i.i, align 4
  br label %if.end164.2.i.i

if.end164.2.i.i:                                  ; preds = %if.then162.2.i.i, %if.end164.1.i.i.if.end164.2.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %elem_id.i.i) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %elem_id.i.i) #12
  %455 = call ptr @memset(ptr %elem_id.i.i, i32 0, i32 64)
  %456 = ptrtoint ptr %iface.i.i to i32
  call void @__asan_store4_noabort(i32 %456)
  store i32 2, ptr %iface.i.i, align 4
  %457 = call ptr @memcpy(ptr %name154.i.i, ptr @.str.37, i32 12)
  %458 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %24, align 4
  %call160.3.i.i = call ptr @snd_ctl_find_id(ptr noundef %459, ptr noundef nonnull %elem_id.i.i) #12
  %tobool161.not.3.i.i = icmp eq ptr %call160.3.i.i, null
  br i1 %tobool161.not.3.i.i, label %if.end164.2.i.i.if.end227.i_crit_edge, label %if.then162.3.i.i

if.end164.2.i.i.if.end227.i_crit_edge:            ; preds = %if.end164.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end227.i

if.then162.3.i.i:                                 ; preds = %if.end164.2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx163.3.i.i = getelementptr %struct.cmipci, ptr %24, i32 0, i32 19, i32 3
  %460 = ptrtoint ptr %arrayidx163.3.i.i to i32
  call void @__asan_store4_noabort(i32 %460)
  store ptr %call160.3.i.i, ptr %arrayidx163.3.i.i, align 4
  br label %if.end227.i

if.end227.i:                                      ; preds = %if.then162.3.i.i, %if.end164.2.i.i.if.end227.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %elem_id.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iomidi.3.i)
  %cmp228.i = icmp sgt i32 %iomidi.3.i, 0
  br i1 %cmp228.i, label %if.then230.i, label %if.end227.i.if.end244.i_crit_edge

if.end227.i.if.end244.i_crit_edge:                ; preds = %if.end227.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end244.i

if.then230.i:                                     ; preds = %if.end227.i
  %rmidi.i = getelementptr inbounds %struct.cmipci, ptr %24, i32 0, i32 22
  %call234.i = call i32 @snd_mpu401_uart_new(ptr noundef %21, i32 noundef 0, i16 noundef zeroext 15, i32 noundef %iomidi.3.i, i32 noundef %tobool153.not599.i, i32 noundef -1, ptr noundef %rmidi.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234.i)
  %cmp235.i = icmp slt i32 %call234.i, 0
  br i1 %cmp235.i, label %do.end240.i, label %if.then230.i.if.end244.i_crit_edge

if.then230.i.if.end244.i_crit_edge:               ; preds = %if.then230.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end244.i

do.end240.i:                                      ; preds = %if.then230.i
  call void @__sanitizer_cov_trace_pc() #14
  %461 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %24, align 4
  %dev242.i = getelementptr inbounds %struct.snd_card, ptr %462, i32 0, i32 27
  %463 = ptrtoint ptr %dev242.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %dev242.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %464, ptr noundef nonnull @.str.21, i32 noundef %iomidi.3.i) #15
  br label %if.end244.i

if.end244.i:                                      ; preds = %do.end240.i, %if.then230.i.if.end244.i_crit_edge, %if.end227.i.if.end244.i_crit_edge
  %arrayidx.i.i = getelementptr [32 x i32], ptr @joystick_port, i32 0, i32 %22
  %465 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %arrayidx.i.i, align 4
  %467 = zext i32 %466 to i64
  call void @__sanitizer_cov_trace_switch(i64 %467, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %466, label %if.end14.i.i [
    i32 0, label %if.end244.i.if.then248.i_crit_edge
    i32 1, label %for.cond.preheader.i.i
  ]

if.end244.i.if.then248.i_crit_edge:               ; preds = %if.end244.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then248.i

for.cond.preheader.i.i:                           ; preds = %if.end244.i
  %468 = ptrtoint ptr %pci7.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %pci7.i, align 4
  %dev6.i.i = getelementptr inbounds %struct.pci_dev, ptr %469, i32 0, i32 44
  %call.i570.i = call ptr @__devm_request_region(ptr noundef %dev6.i.i, ptr noundef nonnull @ioport_resource, i32 noundef 513, i32 noundef 1, ptr noundef nonnull @.str.95) #12
  %tobool7.not.i.i = icmp eq ptr %call.i570.i, null
  br i1 %tobool7.not.i.i, label %for.cond.i.i, label %for.cond.preheader.i.i.if.end18.i.i_crit_edge

for.cond.preheader.i.i.if.end18.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i.i

for.cond.i.i:                                     ; preds = %for.cond.preheader.i.i
  %470 = ptrtoint ptr %pci7.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %pci7.i, align 4
  %dev6.1.i.i = getelementptr inbounds %struct.pci_dev, ptr %471, i32 0, i32 44
  %call.1.i.i = call ptr @__devm_request_region(ptr noundef %dev6.1.i.i, ptr noundef nonnull @ioport_resource, i32 noundef 512, i32 noundef 1, ptr noundef nonnull @.str.95) #12
  %tobool7.not.1.i.i = icmp eq ptr %call.1.i.i, null
  br i1 %tobool7.not.1.i.i, label %for.cond.i.i.do.end.i571.i_crit_edge, label %for.cond.i.i.if.end18.i.i_crit_edge

for.cond.i.i.if.end18.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i.i

for.cond.i.i.do.end.i571.i_crit_edge:             ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i571.i

if.end14.i.i:                                     ; preds = %if.end244.i
  %472 = ptrtoint ptr %pci7.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %pci7.i, align 4
  %dev12.i.i = getelementptr inbounds %struct.pci_dev, ptr %473, i32 0, i32 44
  %call13.i.i = call ptr @__devm_request_region(ptr noundef %dev12.i.i, ptr noundef nonnull @ioport_resource, i32 noundef %466, i32 noundef 1, ptr noundef nonnull @.str.95) #12
  %tobool15.not.i.i = icmp eq ptr %call13.i.i, null
  br i1 %tobool15.not.i.i, label %if.end14.i.i.do.end.i571.i_crit_edge, label %if.end14.i.i.if.end18.i.i_crit_edge

if.end14.i.i.if.end18.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i.i

if.end14.i.i.do.end.i571.i_crit_edge:             ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i571.i

do.end.i571.i:                                    ; preds = %if.end14.i.i.do.end.i571.i_crit_edge, %for.cond.i.i.do.end.i571.i_crit_edge
  %474 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %24, align 4
  %dev17.i.i = getelementptr inbounds %struct.snd_card, ptr %475, i32 0, i32 27
  %476 = ptrtoint ptr %dev17.i.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %dev17.i.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %477, ptr noundef nonnull @.str.96) #15
  br label %if.then248.i

if.end18.i.i:                                     ; preds = %if.end14.i.i.if.end18.i.i_crit_edge, %for.cond.i.i.if.end18.i.i_crit_edge, %for.cond.preheader.i.i.if.end18.i.i_crit_edge
  %io_port.165.i.i = phi i32 [ %466, %if.end14.i.i.if.end18.i.i_crit_edge ], [ 513, %for.cond.preheader.i.i.if.end18.i.i_crit_edge ], [ 512, %for.cond.i.i.if.end18.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %478 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %478, i32 noundef 3520, i32 noundef 1248) #17
  %gameport.i.i = getelementptr inbounds %struct.cmipci, ptr %24, i32 0, i32 23
  %479 = ptrtoint ptr %gameport.i.i to i32
  call void @__asan_store4_noabort(i32 %479)
  store ptr %call7.i.i.i.i.i, ptr %gameport.i.i, align 4
  %tobool20.not.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool20.not.i.i, label %do.end24.i.i, label %if.end27.i.i

do.end24.i.i:                                     ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %480 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %24, align 4
  %dev26.i.i = getelementptr inbounds %struct.snd_card, ptr %481, i32 0, i32 27
  %482 = ptrtoint ptr %dev26.i.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %dev26.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %483, ptr noundef nonnull @.str.100) #15
  br label %if.then248.i

if.end27.i.i:                                     ; preds = %if.end18.i.i
  %name1.i.i.i = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %call.i.i572.i = call i32 @strlcpy(ptr noundef %name1.i.i.i, ptr noundef nonnull @.str.102, i32 noundef 32) #12
  %484 = ptrtoint ptr %pci7.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %pci7.i, align 4
  %init_name.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %485, i32 0, i32 44, i32 3
  %486 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %487, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.end27.i.i.pci_name.exit.i.i_crit_edge

if.end27.i.i.pci_name.exit.i.i_crit_edge:         ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %485, i32 0, i32 44
  %488 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %dev.i.i.i, align 4
  br label %pci_name.exit.i.i

pci_name.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end27.i.i.pci_name.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %489, %if.end.i.i.i.i ], [ %487, %if.end27.i.i.pci_name.exit.i.i_crit_edge ]
  call void (ptr, ptr, ...) @gameport_set_phys(ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef nonnull @.str.103, ptr noundef %retval.0.i.i.i.i) #12
  %490 = ptrtoint ptr %pci7.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %pci7.i, align 4
  %dev31.i.i = getelementptr inbounds %struct.pci_dev, ptr %491, i32 0, i32 44
  %parent.i.i = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i.i.i, i32 0, i32 21, i32 1
  %492 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %492)
  store ptr %dev31.i.i, ptr %parent.i.i, align 8
  %io.i.i = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %493 = ptrtoint ptr %io.i.i to i32
  call void @__asan_store4_noabort(i32 %493)
  store i32 %io_port.165.i.i, ptr %io.i.i, align 4
  %494 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %iobase.i, align 4
  %add.i.i574.i = add i32 %495, 4
  %and.i.i575.i = and i32 %add.i.i574.i, 1048575
  %add1.i.i576.i = or i32 %and.i.i575.i, -18874368
  %496 = inttoptr i32 %add1.i.i576.i to ptr
  %497 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %496) #12, !srcloc !393
  %498 = call i32 @llvm.bswap.i32(i32 %497) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  %or.i.i577.i = or i32 %498, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i577.i, i32 %498)
  %cmp.i.i578.i = icmp eq i32 %or.i.i577.i, %498
  br i1 %cmp.i.i578.i, label %pci_name.exit.i.i.snd_cmipci_create_gameport.exit.i_crit_edge, label %do.body.i.i582.i

pci_name.exit.i.i.snd_cmipci_create_gameport.exit.i_crit_edge: ; preds = %pci_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_create_gameport.exit.i

do.body.i.i582.i:                                 ; preds = %pci_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  call void @arm_heavy_mb() #12
  %499 = call i32 @llvm.bswap.i32(i32 %or.i.i577.i) #12
  %500 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %iobase.i, align 4
  %add4.i.i579.i = add i32 %501, 4
  %and5.i.i580.i = and i32 %add4.i.i579.i, 1048575
  %add6.i.i581.i = or i32 %and5.i.i580.i, -18874368
  %502 = inttoptr i32 %add6.i.i581.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %502, i32 %499) #12, !srcloc !397
  br label %snd_cmipci_create_gameport.exit.i

snd_cmipci_create_gameport.exit.i:                ; preds = %do.body.i.i582.i, %pci_name.exit.i.i.snd_cmipci_create_gameport.exit.i_crit_edge
  %503 = ptrtoint ptr %gameport.i.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %gameport.i.i, align 4
  call void @__gameport_register_port(ptr noundef %504, ptr noundef null) #12
  br label %snd_cmipci_create.exit.thread39

if.then248.i:                                     ; preds = %do.end24.i.i, %do.end.i571.i, %if.end244.i.if.then248.i_crit_edge
  %505 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load i32, ptr %iobase.i, align 4
  %add.i586.i = add i32 %506, 4
  %and.i587.i = and i32 %add.i586.i, 1048575
  %add1.i588.i = or i32 %and.i587.i, -18874368
  %507 = inttoptr i32 %add1.i588.i to ptr
  %508 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %507) #12, !srcloc !393
  %509 = call i32 @llvm.bswap.i32(i32 %508) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  %and3.i589.i = and i32 %509, -3
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i589.i, i32 %509)
  %cmp.i590.i = icmp eq i32 %and3.i589.i, %509
  br i1 %cmp.i590.i, label %if.then248.i.snd_cmipci_create.exit.thread39_crit_edge, label %do.body.i594.i

if.then248.i.snd_cmipci_create.exit.thread39_crit_edge: ; preds = %if.then248.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_create.exit.thread39

do.body.i594.i:                                   ; preds = %if.then248.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  call void @arm_heavy_mb() #12
  %510 = call i32 @llvm.bswap.i32(i32 %and3.i589.i) #12
  %511 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load i32, ptr %iobase.i, align 4
  %add5.i591.i = add i32 %512, 4
  %and6.i592.i = and i32 %add5.i591.i, 1048575
  %add7.i593.i = or i32 %and6.i592.i, -18874368
  %513 = inttoptr i32 %add7.i593.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %513, i32 %510) #12, !srcloc !397
  br label %snd_cmipci_create.exit.thread39

snd_cmipci_create.exit.thread:                    ; preds = %if.then143.i.i.snd_cmipci_create.exit.thread_crit_edge, %for.inc136.1.i.i.snd_cmipci_create.exit.thread_crit_edge, %for.inc136.i.i.snd_cmipci_create.exit.thread_crit_edge, %for.body129.preheader.i.i.snd_cmipci_create.exit.thread_crit_edge, %for.inc118.1.i.i.snd_cmipci_create.exit.thread_crit_edge, %for.inc118.i.i.snd_cmipci_create.exit.thread_crit_edge, %for.body111.preheader.i.i.snd_cmipci_create.exit.thread_crit_edge, %if.end95.i.i.snd_cmipci_create.exit.thread_crit_edge, %if.end89.i.i.snd_cmipci_create.exit.thread_crit_edge, %if.then84.i.i.snd_cmipci_create.exit.thread_crit_edge, %for.inc75.4.i.i.snd_cmipci_create.exit.thread_crit_edge, %for.inc75.3.i.i.snd_cmipci_create.exit.thread_crit_edge, %for.inc75.2.i.i.snd_cmipci_create.exit.thread_crit_edge, %for.inc75.1.i.i.snd_cmipci_create.exit.thread_crit_edge, %for.inc75.i.i.snd_cmipci_create.exit.thread_crit_edge, %for.body68.preheader.i.i.snd_cmipci_create.exit.thread_crit_edge, %if.then54.i.i.snd_cmipci_create.exit.thread_crit_edge, %for.inc50.i.i.snd_cmipci_create.exit.thread_crit_edge, %for.body43.preheader.i.i.snd_cmipci_create.exit.thread_crit_edge, %if.end34.i.i.snd_cmipci_create.exit.thread_crit_edge, %do.end.i557.i, %snd_cmipci_pcm_spdif_new.exit.thread.i, %snd_cmipci_pcm2_new.exit.thread.i, %snd_cmipci_pcm_new.exit.thread.i, %snd_cmipci_create_fm.exit.i, %do.end28.i, %do.body.i.snd_cmipci_create.exit.thread_crit_edge, %sw.epilog.snd_cmipci_create.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %do.end.i557.i ], [ %call57.i.i, %if.then54.i.i.snd_cmipci_create.exit.thread_crit_edge ], [ %call86.i.i, %if.then84.i.i.snd_cmipci_create.exit.thread_crit_edge ], [ %call92.i.i, %if.end89.i.i.snd_cmipci_create.exit.thread_crit_edge ], [ %call99.i.i, %if.end95.i.i.snd_cmipci_create.exit.thread_crit_edge ], [ %call146.i.i, %if.then143.i.i.snd_cmipci_create.exit.thread_crit_edge ], [ %call132.i.i, %for.body129.preheader.i.i.snd_cmipci_create.exit.thread_crit_edge ], [ %call132.1.i.i, %for.inc136.i.i.snd_cmipci_create.exit.thread_crit_edge ], [ %call132.2.i.i, %for.inc136.1.i.i.snd_cmipci_create.exit.thread_crit_edge ], [ %call114.i.i, %for.body111.preheader.i.i.snd_cmipci_create.exit.thread_crit_edge ], [ %call114.1.i.i, %for.inc118.i.i.snd_cmipci_create.exit.thread_crit_edge ], [ %call114.2.i.i, %for.inc118.1.i.i.snd_cmipci_create.exit.thread_crit_edge ], [ %call71.i.i, %for.body68.preheader.i.i.snd_cmipci_create.exit.thread_crit_edge ], [ %call71.1.i.i, %for.inc75.i.i.snd_cmipci_create.exit.thread_crit_edge ], [ %call71.2.i.i, %for.inc75.1.i.i.snd_cmipci_create.exit.thread_crit_edge ], [ %call71.3.i.i, %for.inc75.2.i.i.snd_cmipci_create.exit.thread_crit_edge ], [ %call71.4.i.i, %for.inc75.3.i.i.snd_cmipci_create.exit.thread_crit_edge ], [ %call71.5.i.i, %for.inc75.4.i.i.snd_cmipci_create.exit.thread_crit_edge ], [ %call46.i.i, %for.body43.preheader.i.i.snd_cmipci_create.exit.thread_crit_edge ], [ %call46.1.i.i, %for.inc50.i.i.snd_cmipci_create.exit.thread_crit_edge ], [ %call.i544.i, %snd_cmipci_pcm_spdif_new.exit.thread.i ], [ %call.i533.i, %snd_cmipci_pcm2_new.exit.thread.i ], [ %call.i526.i, %snd_cmipci_pcm_new.exit.thread.i ], [ %call22.i.i, %snd_cmipci_create_fm.exit.i ], [ %call16.i, %do.body.i.snd_cmipci_create.exit.thread_crit_edge ], [ %call.i, %sw.epilog.snd_cmipci_create.exit.thread_crit_edge ], [ -16, %do.end28.i ], [ %call37.i.i, %if.end34.i.i.snd_cmipci_create.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %modelstr.i) #12
  br label %cleanup

snd_cmipci_create.exit.thread39:                  ; preds = %do.body.i594.i, %if.then248.i.snd_cmipci_create.exit.thread39_crit_edge, %snd_cmipci_create_gameport.exit.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %modelstr.i) #12
  %514 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %card, align 4
  %call21 = call i32 @snd_card_register(ptr noundef %515) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %snd_cmipci_create.exit.thread39.cleanup_crit_edge, label %if.end25

snd_cmipci_create.exit.thread39.cleanup_crit_edge: ; preds = %snd_cmipci_create.exit.thread39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

snd_cmipci_create.exit:                           ; preds = %snd_cmipci_pcm_spdif_new.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %modelstr.i) #12
  br label %cleanup

if.end25:                                         ; preds = %snd_cmipci_create.exit.thread39
  call void @__sanitizer_cov_trace_pc() #14
  %516 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %518 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %518)
  store ptr %517, ptr %driver_data.i.i, align 4
  %519 = load i32, ptr @snd_cmipci_probe.dev, align 4
  %inc26 = add i32 %519, 1
  store i32 %inc26, ptr @snd_cmipci_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %snd_cmipci_create.exit, %snd_cmipci_create.exit.thread39.cleanup_crit_edge, %snd_cmipci_create.exit.thread, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -2, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ %call5.i553.i, %snd_cmipci_create.exit ], [ %call21, %snd_cmipci_create.exit.thread39.cleanup_crit_edge ], [ %retval.0.i.ph, %snd_cmipci_create.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase.i = getelementptr inbounds %struct.cmipci, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %1, 16
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #12, !srcloc !393
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool.not = icmp sgt i32 %4, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_lock = getelementptr inbounds %struct.cmipci, ptr %dev_id, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #12
  %and1 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %and5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %5 = shl i32 %4, 16
  %6 = and i32 %5, 196608
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase.i, align 4
  %add.i66 = add i32 %8, 12
  %and.i67 = and i32 %add.i66, 1048575
  %add1.i68 = or i32 %and.i67, -18874368
  %9 = inttoptr i32 %add1.i68 to ptr
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #12, !srcloc !393
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  %neg.i = xor i32 %6, -1
  %and3.i = and i32 %11, %neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i, i32 %11)
  %cmp.i = icmp eq i32 %and3.i, %11
  br i1 %cmp.i, label %if.end.snd_cmipci_clear_bit.exit_crit_edge, label %do.body.i

if.end.snd_cmipci_clear_bit.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_clear_bit.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %12 = tail call i32 @llvm.bswap.i32(i32 %and3.i) #12
  %13 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase.i, align 4
  %add5.i = add i32 %14, 12
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %15 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 %12) #12, !srcloc !397
  br label %snd_cmipci_clear_bit.exit

snd_cmipci_clear_bit.exit:                        ; preds = %do.body.i, %if.end.snd_cmipci_clear_bit.exit_crit_edge
  %16 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase.i, align 4
  %add.i70 = add i32 %17, 12
  %and.i71 = and i32 %add.i70, 1048575
  %add1.i72 = or i32 %and.i71, -18874368
  %18 = inttoptr i32 %add1.i72 to ptr
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %18) #12, !srcloc !393
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  %or.i = or i32 %20, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %20)
  %cmp.i73 = icmp eq i32 %or.i, %20
  br i1 %cmp.i73, label %snd_cmipci_clear_bit.exit.snd_cmipci_set_bit.exit_crit_edge, label %do.body.i74

snd_cmipci_clear_bit.exit.snd_cmipci_set_bit.exit_crit_edge: ; preds = %snd_cmipci_clear_bit.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_set_bit.exit

do.body.i74:                                      ; preds = %snd_cmipci_clear_bit.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void @arm_heavy_mb() #12
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %22 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase.i, align 4
  %add4.i = add i32 %23, 12
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %24 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %24, i32 %21) #12, !srcloc !397
  br label %snd_cmipci_set_bit.exit

snd_cmipci_set_bit.exit:                          ; preds = %do.body.i74, %snd_cmipci_clear_bit.exit.snd_cmipci_set_bit.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #12
  %rmidi = getelementptr inbounds %struct.cmipci, ptr %dev_id, i32 0, i32 22
  %25 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmidi, align 4
  %tobool13.not = icmp eq ptr %26, null
  %and14 = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %or.cond = select i1 %tobool13.not, i1 true, i1 %tobool15.not
  br i1 %or.cond, label %snd_cmipci_set_bit.exit.if.end19_crit_edge, label %if.then16

snd_cmipci_set_bit.exit.if.end19_crit_edge:       ; preds = %snd_cmipci_set_bit.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then16:                                        ; preds = %snd_cmipci_set_bit.exit
  call void @__sanitizer_cov_trace_pc() #14
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %private_data, align 4
  %call18 = tail call i32 @snd_mpu401_uart_interrupt(i32 noundef %irq, ptr noundef %28) #12
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %snd_cmipci_set_bit.exit.if.end19_crit_edge
  %pcm = getelementptr inbounds %struct.cmipci, ptr %dev_id, i32 0, i32 6
  %29 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcm, align 4
  %tobool20.not = icmp eq ptr %30, null
  br i1 %tobool20.not, label %if.end19.cleanup_crit_edge, label %if.then21

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then21:                                        ; preds = %if.end19
  br i1 %tobool2.not, label %if.then21.if.end29_crit_edge, label %land.lhs.true24

if.then21.if.end29_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.lhs.true24:                                  ; preds = %if.then21
  %running = getelementptr inbounds %struct.cmipci, ptr %dev_id, i32 0, i32 21, i32 0, i32 1
  %31 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool25.not = icmp eq i8 %32, 0
  br i1 %tobool25.not, label %land.lhs.true24.if.end29_crit_edge, label %if.then26

land.lhs.true24.if.end29_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #14
  %channel = getelementptr inbounds %struct.cmipci, ptr %dev_id, i32 0, i32 21
  %33 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %channel, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %34) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %land.lhs.true24.if.end29_crit_edge, %if.then21.if.end29_crit_edge
  br i1 %tobool6.not, label %if.end29.cleanup_crit_edge, label %land.lhs.true32

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true32:                                  ; preds = %if.end29
  %running35 = getelementptr %struct.cmipci, ptr %dev_id, i32 0, i32 21, i32 1, i32 1
  %35 = ptrtoint ptr %running35 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %running35, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool37.not = icmp eq i8 %36, 0
  br i1 %tobool37.not, label %land.lhs.true32.cleanup_crit_edge, label %if.then38

land.lhs.true32.cleanup_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then38:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx34 = getelementptr %struct.cmipci, ptr %dev_id, i32 0, i32 21, i32 1
  %37 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx34, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %38) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %land.lhs.true32.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end29.cleanup_crit_edge ], [ 1, %land.lhs.true32.cleanup_crit_edge ], [ 1, %if.then38 ], [ 1, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_cmipci_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %iobase.i = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %3, 24
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %4) #12, !srcloc !393
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  %and3.i = and i32 %6, -524289
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i, i32 %6)
  %cmp.i = icmp eq i32 %and3.i, %6
  br i1 %cmp.i, label %entry.snd_cmipci_clear_bit.exit_crit_edge, label %do.body.i

entry.snd_cmipci_clear_bit.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_clear_bit.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %7 = tail call i32 @llvm.bswap.i32(i32 %and3.i) #12
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase.i, align 4
  %add5.i = add i32 %9, 24
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %10 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 %7) #12, !srcloc !397
  br label %snd_cmipci_clear_bit.exit

snd_cmipci_clear_bit.exit:                        ; preds = %do.body.i, %entry.snd_cmipci_clear_bit.exit_crit_edge
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase.i, align 4
  %add.i11 = add i32 %12, 20
  %and.i12 = and i32 %add.i11, 1048575
  %add1.i13 = or i32 %and.i12, -18874368
  %13 = inttoptr i32 %add1.i13 to ptr
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %13) #12, !srcloc !393
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  %and3.i14 = and i32 %15, -8388609
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i14, i32 %15)
  %cmp.i15 = icmp eq i32 %and3.i14, %15
  br i1 %cmp.i15, label %snd_cmipci_clear_bit.exit.snd_cmipci_clear_bit.exit21_crit_edge, label %do.body.i19

snd_cmipci_clear_bit.exit.snd_cmipci_clear_bit.exit21_crit_edge: ; preds = %snd_cmipci_clear_bit.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_clear_bit.exit21

do.body.i19:                                      ; preds = %snd_cmipci_clear_bit.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %16 = tail call i32 @llvm.bswap.i32(i32 %and3.i14) #12
  %17 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase.i, align 4
  %add5.i16 = add i32 %18, 20
  %and6.i17 = and i32 %add5.i16, 1048575
  %add7.i18 = or i32 %and6.i17, -18874368
  %19 = inttoptr i32 %add7.i18 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %19, i32 %16) #12, !srcloc !397
  br label %snd_cmipci_clear_bit.exit21

snd_cmipci_clear_bit.exit21:                      ; preds = %do.body.i19, %snd_cmipci_clear_bit.exit.snd_cmipci_clear_bit.exit21_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %20 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase.i, align 4
  %add.i23 = add i32 %21, 12
  %and.i24 = and i32 %add.i23, 1048575
  %add1.i25 = or i32 %and.i24, -18874368
  %22 = inttoptr i32 %add1.i25 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 0) #12, !srcloc !397
  %ch1.i = getelementptr %struct.cmipci, ptr %1, i32 0, i32 21, i32 0, i32 7
  %23 = ptrtoint ptr %ch1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ch1.i, align 4
  %shl.i = shl i32 262144, %24
  %ctrl.i = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ctrl.i, align 4
  %or.i = or i32 %26, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %27 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %28 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iobase.i, align 4
  %and.i.i = and i32 %29, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %30 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %30, i32 %27) #12, !srcloc !397
  %31 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ctrl.i, align 4
  %neg.i = xor i32 %shl.i, -1
  %and.i26 = and i32 %32, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %33 = tail call i32 @llvm.bswap.i32(i32 %and.i26) #12
  %34 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iobase.i, align 4
  %and.i9.i = and i32 %35, 1048575
  %add1.i10.i = or i32 %and.i9.i, -18874368
  %36 = inttoptr i32 %add1.i10.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %36, i32 %33) #12, !srcloc !397
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 2147480) #12
  %ch1.i27 = getelementptr %struct.cmipci, ptr %1, i32 0, i32 21, i32 1, i32 7
  %38 = ptrtoint ptr %ch1.i27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ch1.i27, align 4
  %shl.i28 = shl i32 262144, %39
  %40 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ctrl.i, align 4
  %or.i30 = or i32 %41, %shl.i28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %42 = tail call i32 @llvm.bswap.i32(i32 %or.i30) #12
  %43 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %iobase.i, align 4
  %and.i.i32 = and i32 %44, 1048575
  %add1.i.i33 = or i32 %and.i.i32, -18874368
  %45 = inttoptr i32 %add1.i.i33 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %45, i32 %42) #12, !srcloc !397
  %46 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ctrl.i, align 4
  %neg.i34 = xor i32 %shl.i28, -1
  %and.i35 = and i32 %47, %neg.i34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %48 = tail call i32 @llvm.bswap.i32(i32 %and.i35) #12
  %49 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %iobase.i, align 4
  %and.i9.i36 = and i32 %50, 1048575
  %add1.i10.i37 = or i32 %and.i9.i36, -18874368
  %51 = inttoptr i32 %add1.i10.i37 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %51, i32 %48) #12, !srcloc !397
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 2147480) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %53 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %iobase.i, align 4
  %and.i39 = and i32 %54, 1048575
  %add1.i40 = or i32 %and.i39, -18874368
  %55 = inttoptr i32 %add1.i40 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %55, i32 0) #12, !srcloc !397
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %56 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %iobase.i, align 4
  %add.i42 = add i32 %57, 4
  %and.i43 = and i32 %add.i42, 1048575
  %add1.i44 = or i32 %and.i43, -18874368
  %58 = inttoptr i32 %add1.i44 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %58, i32 0) #12, !srcloc !397
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !406
  tail call void @arm_heavy_mb() #12
  %59 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %iobase.i, align 4
  %add.i46 = add i32 %60, 35
  %and.i47 = and i32 %add.i46, 1048575
  %add1.i48 = or i32 %and.i47, -18874368
  %61 = inttoptr i32 %add1.i48 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 0) #12, !srcloc !402
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !407
  tail call void @arm_heavy_mb() #12
  %62 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %iobase.i, align 4
  %add5.i49 = add i32 %63, 34
  %and6.i50 = and i32 %add5.i49, 1048575
  %add7.i51 = or i32 %and6.i50, -18874368
  %64 = inttoptr i32 %add7.i51 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %64, i8 0) #12, !srcloc !402
  %gameport.i = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 23
  %65 = ptrtoint ptr %gameport.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %gameport.i, align 4
  %tobool.not.i = icmp eq ptr %66, null
  br i1 %tobool.not.i, label %snd_cmipci_clear_bit.exit21.snd_cmipci_free_gameport.exit_crit_edge, label %if.then.i

snd_cmipci_clear_bit.exit21.snd_cmipci_free_gameport.exit_crit_edge: ; preds = %snd_cmipci_clear_bit.exit21
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_free_gameport.exit

if.then.i:                                        ; preds = %snd_cmipci_clear_bit.exit21
  tail call void @gameport_unregister_port(ptr noundef nonnull %66) #12
  %67 = ptrtoint ptr %gameport.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %gameport.i, align 4
  %68 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %iobase.i, align 4
  %add.i.i = add i32 %69, 4
  %and.i.i53 = and i32 %add.i.i, 1048575
  %add1.i.i54 = or i32 %and.i.i53, -18874368
  %70 = inttoptr i32 %add1.i.i54 to ptr
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %70) #12, !srcloc !393
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  %and3.i.i = and i32 %72, -3
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i.i, i32 %72)
  %cmp.i.i = icmp eq i32 %and3.i.i, %72
  br i1 %cmp.i.i, label %if.then.i.snd_cmipci_free_gameport.exit_crit_edge, label %do.body.i.i

if.then.i.snd_cmipci_free_gameport.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_free_gameport.exit

do.body.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %73 = tail call i32 @llvm.bswap.i32(i32 %and3.i.i) #12
  %74 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %iobase.i, align 4
  %add5.i.i = add i32 %75, 4
  %and6.i.i = and i32 %add5.i.i, 1048575
  %add7.i.i = or i32 %and6.i.i, -18874368
  %76 = inttoptr i32 %add7.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %76, i32 %73) #12, !srcloc !397
  br label %snd_cmipci_free_gameport.exit

snd_cmipci_free_gameport.exit:                    ; preds = %do.body.i.i, %if.then.i.snd_cmipci_free_gameport.exit_crit_edge, %snd_cmipci_clear_bit.exit21.snd_cmipci_free_gameport.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_cmipci_clear_bit(ptr nocapture noundef readonly %cm, i32 noundef %cmd, i32 noundef %flag) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 4
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, %cmd
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #12, !srcloc !393
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  %neg = xor i32 %flag, -1
  %and3 = and i32 %4, %neg
  call void @__sanitizer_cov_trace_cmp4(i32 %and3, i32 %4)
  %cmp = icmp eq i32 %and3, %4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %5 = tail call i32 @llvm.bswap.i32(i32 %and3)
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %add5 = add i32 %7, %cmd
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %8 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %8, i32 %5) #12, !srcloc !397
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_dev_present(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mpu401_uart_new(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mpu401_uart_interrupt(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_opl3_create(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_opl3_hwdep_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_cmipci_proc_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.29, ptr noundef %longname) #12
  %iobase = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %entry
  %i.022 = phi i32 [ 0, %entry ], [ %inc, %if.end10.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %i.022)
  %cmp3 = icmp eq i32 %i.022, 40
  %spec.store.select = select i1 %cmp3, i32 144, i32 %i.022
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %add = add i32 %7, %spec.store.select
  %and = and i32 %add, 1048575
  %add4 = or i32 %and, -18874368
  %8 = inttoptr i32 %add4 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #12, !srcloc !403
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !409
  %conv = zext i8 %9 to i32
  %10 = and i32 %spec.store.select, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp6 = icmp eq i32 %10, 0
  br i1 %cmp6, label %if.then8, label %for.body.if.end10_crit_edge

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %12, ptr noundef nonnull @.str.30, i32 noundef %spec.store.select) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %for.body.if.end10_crit_edge
  %13 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %14, ptr noundef nonnull @.str.31, i32 noundef %conv) #12
  %inc = add nsw i32 %spec.store.select, 1
  %cmp = icmp slt i32 %spec.store.select, 147
  br i1 %cmp, label %if.end10.for.body_crit_edge, label %for.end

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %16, ptr noundef nonnull @.str.32) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_playback_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %open_mutex.i = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %open_mutex.i, i32 noundef 0) #12
  %arrayidx.i = getelementptr %struct.cmipci, ptr %1, i32 0, i32 16, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end, label %open_device_check.exit.thread

open_device_check.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %open_mutex.i) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16, ptr %arrayidx.i, align 4
  %arrayidx4.i = getelementptr %struct.cmipci, ptr %1, i32 0, i32 21, i32 0
  %7 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %substream, ptr %arrayidx4.i, align 4
  tail call void @mutex_unlock(ptr noundef %open_mutex.i) #12
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %8 = call ptr @memcpy(ptr %hw, ptr @snd_cmipci_playback, i32 64)
  %chip_version = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %chip_version to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chip_version, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %10, label %if.end.if.end19_crit_edge [
    i32 68, label %if.end.if.end19.sink.split_crit_edge
    i32 55, label %if.then8
  ]

if.end.if.end19.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.sink.split

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then8:                                         ; preds = %if.end
  %call9 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @hw_constraints_rates) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then8.cleanup_crit_edge, label %if.then8.if.end19.sink.split_crit_edge

if.then8.if.end19.sink.split_crit_edge:           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.sink.split

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19.sink.split:                              ; preds = %if.then8.if.end19.sink.split_crit_edge, %if.end.if.end19.sink.split_crit_edge
  %.sink41 = phi i32 [ 1536, %if.end.if.end19.sink.split_crit_edge ], [ -2147483648, %if.then8.if.end19.sink.split_crit_edge ]
  %.sink = phi i32 [ 96000, %if.end.if.end19.sink.split_crit_edge ], [ 128000, %if.then8.if.end19.sink.split_crit_edge ]
  %rates = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 2
  %12 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rates, align 8
  %or15 = or i32 %13, %.sink41
  store i32 %or15, ptr %rates, align 8
  %rate_max17 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 4
  %14 = ptrtoint ptr %rate_max17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink, ptr %rate_max17, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %if.end.if.end19_crit_edge
  %call20 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 17, i32 noundef 0, i32 noundef 65536) #12
  %dig_status = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 13
  %15 = ptrtoint ptr %dig_status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dig_status, align 4
  %dig_pcm_status = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 14
  %17 = ptrtoint ptr %dig_pcm_status to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %dig_pcm_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then8.cleanup_crit_edge, %open_device_check.exit.thread
  %retval.0 = phi i32 [ 0, %if.end19 ], [ %call9, %if.then8.cleanup_crit_edge ], [ -16, %open_device_check.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_playback_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call fastcc void @close_device_check(ptr noundef %1, i32 noundef 16)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_playback_hw_free(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call fastcc i32 @setup_spdif_playback(ptr noundef %1, ptr noundef %substream, i32 noundef 0, i32 noundef 0)
  %mixer_insensitive.i = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %mixer_insensitive.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %mixer_insensitive.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.restore_mixer_state.exit_crit_edge, label %if.then.i

entry.restore_mixer_state.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %restore_mixer_state.exit

if.then.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 712) #17
  %tobool1.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not.i, label %if.then.i.restore_mixer_state.exit_crit_edge, label %if.end.i

if.then.i.restore_mixer_state.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %restore_mixer_state.exit

if.end.i:                                         ; preds = %if.then.i
  %4 = ptrtoint ptr %mixer_insensitive.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load4.i = load i8, ptr %mixer_insensitive.i, align 4
  %bf.clear.i = and i8 %bf.load4.i, 127
  store i8 %bf.clear.i, ptr %mixer_insensitive.i, align 4
  %value.i = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %call7.i.i, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.cmipci, ptr %1, i32 0, i32 19, i32 0
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool5.not.i = icmp eq ptr %6, null
  br i1 %tobool5.not.i, label %if.end.i.if.end19.i_crit_edge, label %if.then6.i

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.then6.i:                                       ; preds = %if.end.i
  %7 = call ptr @memset(ptr %call7.i.i, i32 0, i32 712)
  %access.i = getelementptr inbounds %struct.snd_kcontrol, ptr %6, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %access.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %access.i, align 4
  %and.i = and i32 %9, -257
  store i32 %and.i, ptr %access.i, align 4
  %get.i = getelementptr inbounds %struct.snd_kcontrol, ptr %6, i32 0, i32 4
  %10 = ptrtoint ptr %get.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get.i, align 4
  %call8.i = tail call i32 %11(ptr noundef nonnull %6, ptr noundef nonnull %call7.i.i) #12
  %12 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value.i, align 8
  %arrayidx10.i = getelementptr %struct.cmipci, ptr %1, i32 0, i32 20, i32 0
  %14 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp11.not.i = icmp eq i32 %13, %15
  br i1 %cmp11.not.i, label %if.then6.i.if.end18.i_crit_edge, label %if.then12.i

if.then6.i.if.end18.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then12.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %value.i, align 8
  %put.i = getelementptr inbounds %struct.snd_kcontrol, ptr %6, i32 0, i32 5
  %17 = ptrtoint ptr %put.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %put.i, align 4
  %call17.i = tail call i32 %18(ptr noundef nonnull %6, ptr noundef nonnull %call7.i.i) #12
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then12.i, %if.then6.i.if.end18.i_crit_edge
  %event.0.i = phi i32 [ 3, %if.then12.i ], [ 2, %if.then6.i.if.end18.i_crit_edge ]
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %id.i = getelementptr inbounds %struct.snd_kcontrol, ptr %6, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %20, i32 noundef %event.0.i, ptr noundef %id.i) #12
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end18.i, %if.end.i.if.end19.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.cmipci, ptr %1, i32 0, i32 19, i32 1
  %21 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool5.not.1.i = icmp eq ptr %22, null
  br i1 %tobool5.not.1.i, label %if.end19.i.if.end19.1.i_crit_edge, label %if.then6.1.i

if.end19.i.if.end19.1.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.1.i

if.then6.1.i:                                     ; preds = %if.end19.i
  %23 = call ptr @memset(ptr %call7.i.i, i32 0, i32 712)
  %access.1.i = getelementptr inbounds %struct.snd_kcontrol, ptr %22, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %access.1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %access.1.i, align 4
  %and.1.i = and i32 %25, -257
  store i32 %and.1.i, ptr %access.1.i, align 4
  %get.1.i = getelementptr inbounds %struct.snd_kcontrol, ptr %22, i32 0, i32 4
  %26 = ptrtoint ptr %get.1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %get.1.i, align 4
  %call8.1.i = tail call i32 %27(ptr noundef nonnull %22, ptr noundef nonnull %call7.i.i) #12
  %28 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %value.i, align 8
  %arrayidx10.1.i = getelementptr %struct.cmipci, ptr %1, i32 0, i32 20, i32 1
  %30 = ptrtoint ptr %arrayidx10.1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx10.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp11.not.1.i = icmp eq i32 %29, %31
  br i1 %cmp11.not.1.i, label %if.then6.1.i.if.end18.1.i_crit_edge, label %if.then12.1.i

if.then6.1.i.if.end18.1.i_crit_edge:              ; preds = %if.then6.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.1.i

if.then12.1.i:                                    ; preds = %if.then6.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %value.i, align 8
  %put.1.i = getelementptr inbounds %struct.snd_kcontrol, ptr %22, i32 0, i32 5
  %33 = ptrtoint ptr %put.1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %put.1.i, align 4
  %call17.1.i = tail call i32 %34(ptr noundef nonnull %22, ptr noundef nonnull %call7.i.i) #12
  br label %if.end18.1.i

if.end18.1.i:                                     ; preds = %if.then12.1.i, %if.then6.1.i.if.end18.1.i_crit_edge
  %event.0.1.i = phi i32 [ 3, %if.then12.1.i ], [ 2, %if.then6.1.i.if.end18.1.i_crit_edge ]
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %id.1.i = getelementptr inbounds %struct.snd_kcontrol, ptr %22, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %36, i32 noundef %event.0.1.i, ptr noundef %id.1.i) #12
  br label %if.end19.1.i

if.end19.1.i:                                     ; preds = %if.end18.1.i, %if.end19.i.if.end19.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.cmipci, ptr %1, i32 0, i32 19, i32 2
  %37 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool5.not.2.i = icmp eq ptr %38, null
  br i1 %tobool5.not.2.i, label %if.end19.1.i.if.end19.2.i_crit_edge, label %if.then6.2.i

if.end19.1.i.if.end19.2.i_crit_edge:              ; preds = %if.end19.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.2.i

if.then6.2.i:                                     ; preds = %if.end19.1.i
  %39 = call ptr @memset(ptr %call7.i.i, i32 0, i32 712)
  %access.2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %38, i32 1, i32 0, i32 1
  %40 = ptrtoint ptr %access.2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %access.2.i, align 4
  %and.2.i = and i32 %41, -257
  store i32 %and.2.i, ptr %access.2.i, align 4
  %get.2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %38, i32 0, i32 4
  %42 = ptrtoint ptr %get.2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %get.2.i, align 4
  %call8.2.i = tail call i32 %43(ptr noundef nonnull %38, ptr noundef nonnull %call7.i.i) #12
  %44 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %value.i, align 8
  %arrayidx10.2.i = getelementptr %struct.cmipci, ptr %1, i32 0, i32 20, i32 2
  %46 = ptrtoint ptr %arrayidx10.2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx10.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp11.not.2.i = icmp eq i32 %45, %47
  br i1 %cmp11.not.2.i, label %if.then6.2.i.if.end18.2.i_crit_edge, label %if.then12.2.i

if.then6.2.i.if.end18.2.i_crit_edge:              ; preds = %if.then6.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.2.i

if.then12.2.i:                                    ; preds = %if.then6.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %value.i, align 8
  %put.2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %38, i32 0, i32 5
  %49 = ptrtoint ptr %put.2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %put.2.i, align 4
  %call17.2.i = tail call i32 %50(ptr noundef nonnull %38, ptr noundef nonnull %call7.i.i) #12
  br label %if.end18.2.i

if.end18.2.i:                                     ; preds = %if.then12.2.i, %if.then6.2.i.if.end18.2.i_crit_edge
  %event.0.2.i = phi i32 [ 3, %if.then12.2.i ], [ 2, %if.then6.2.i.if.end18.2.i_crit_edge ]
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %id.2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %38, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %52, i32 noundef %event.0.2.i, ptr noundef %id.2.i) #12
  br label %if.end19.2.i

if.end19.2.i:                                     ; preds = %if.end18.2.i, %if.end19.1.i.if.end19.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.cmipci, ptr %1, i32 0, i32 19, i32 3
  %53 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.3.i, align 4
  %tobool5.not.3.i = icmp eq ptr %54, null
  br i1 %tobool5.not.3.i, label %if.end19.2.i.if.end19.3.i_crit_edge, label %if.then6.3.i

if.end19.2.i.if.end19.3.i_crit_edge:              ; preds = %if.end19.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.3.i

if.then6.3.i:                                     ; preds = %if.end19.2.i
  %55 = call ptr @memset(ptr %call7.i.i, i32 0, i32 712)
  %access.3.i = getelementptr inbounds %struct.snd_kcontrol, ptr %54, i32 1, i32 0, i32 1
  %56 = ptrtoint ptr %access.3.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %access.3.i, align 4
  %and.3.i = and i32 %57, -257
  store i32 %and.3.i, ptr %access.3.i, align 4
  %get.3.i = getelementptr inbounds %struct.snd_kcontrol, ptr %54, i32 0, i32 4
  %58 = ptrtoint ptr %get.3.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %get.3.i, align 4
  %call8.3.i = tail call i32 %59(ptr noundef nonnull %54, ptr noundef nonnull %call7.i.i) #12
  %60 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %value.i, align 8
  %arrayidx10.3.i = getelementptr %struct.cmipci, ptr %1, i32 0, i32 20, i32 3
  %62 = ptrtoint ptr %arrayidx10.3.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx10.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp11.not.3.i = icmp eq i32 %61, %63
  br i1 %cmp11.not.3.i, label %if.then6.3.i.if.end18.3.i_crit_edge, label %if.then12.3.i

if.then6.3.i.if.end18.3.i_crit_edge:              ; preds = %if.then6.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.3.i

if.then12.3.i:                                    ; preds = %if.then6.3.i
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %value.i, align 8
  %put.3.i = getelementptr inbounds %struct.snd_kcontrol, ptr %54, i32 0, i32 5
  %65 = ptrtoint ptr %put.3.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %put.3.i, align 4
  %call17.3.i = tail call i32 %66(ptr noundef nonnull %54, ptr noundef nonnull %call7.i.i) #12
  br label %if.end18.3.i

if.end18.3.i:                                     ; preds = %if.then12.3.i, %if.then6.3.i.if.end18.3.i_crit_edge
  %event.0.3.i = phi i32 [ 3, %if.then12.3.i ], [ 2, %if.then6.3.i.if.end18.3.i_crit_edge ]
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  %id.3.i = getelementptr inbounds %struct.snd_kcontrol, ptr %54, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %68, i32 noundef %event.0.3.i, ptr noundef %id.3.i) #12
  br label %if.end19.3.i

if.end19.3.i:                                     ; preds = %if.end18.3.i, %if.end19.2.i.if.end19.3.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %restore_mixer_state.exit

restore_mixer_state.exit:                         ; preds = %if.end19.3.i, %if.then.i.restore_mixer_state.exit_crit_edge, %entry.restore_mixer_state.exit_crit_edge
  %channel = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 21
  tail call fastcc void @snd_cmipci_silence_hack(ptr noundef %1, ptr noundef %channel)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_playback_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime, align 4
  %rate1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %rate1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rate1, align 4
  %6 = add i32 %5, -44100
  call void @__sanitizer_cov_trace_const_cmp4(i32 51901, i32 %6)
  %7 = icmp ult i32 %6, 51901
  br i1 %7, label %land.lhs.true3, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true3:                                   ; preds = %entry
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp5 = icmp eq i32 %9, 2
  br i1 %cmp5, label %land.end, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.end:                                         ; preds = %land.lhs.true3
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %10 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp7 = icmp eq i32 %11, 2
  br i1 %cmp7, label %land.lhs.true8, label %land.end.if.end_crit_edge

land.end.if.end_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true8:                                   ; preds = %land.end
  %can_ac3_hw = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %can_ac3_hw to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %can_ac3_hw, align 4
  %13 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool9.not = icmp eq i8 %13, 0
  br i1 %tobool9.not, label %land.lhs.true8.if.end_crit_edge, label %if.then

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  %dig_pcm_status = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 14
  %14 = ptrtoint ptr %dig_pcm_status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dig_pcm_status, align 4
  %and = and i32 %15, 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true8.if.end_crit_edge, %land.end.if.end_crit_edge, %land.lhs.true3.if.end_crit_edge, %entry.if.end_crit_edge
  %land.ext31 = phi i32 [ 1, %if.then ], [ 1, %land.lhs.true8.if.end_crit_edge ], [ 0, %land.end.if.end_crit_edge ], [ 0, %land.lhs.true3.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %do_ac3.0 = phi i32 [ %and, %if.then ], [ 0, %land.lhs.true8.if.end_crit_edge ], [ 0, %land.end.if.end_crit_edge ], [ 0, %land.lhs.true3.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %call = tail call fastcc i32 @setup_spdif_playback(ptr noundef %1, ptr noundef %substream, i32 noundef %land.ext31, i32 noundef %do_ac3.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp10 = icmp slt i32 %call, 0
  br i1 %cmp10, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %channel = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 21
  %call13 = tail call fastcc i32 @snd_cmipci_pcm_prepare(ptr noundef %1, ptr noundef %channel, ptr noundef %substream)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end12 ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_playback_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %channel = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 21
  %call = tail call fastcc i32 @snd_cmipci_pcm_trigger(ptr noundef %1, ptr noundef %channel, i32 noundef %cmd)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_playback_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %channel = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 21
  %call = tail call fastcc i32 @snd_cmipci_pcm_pointer(ptr noundef %1, ptr noundef %channel, ptr noundef %substream)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @open_device_check(ptr noundef %cm, i32 noundef %mode, ptr noundef %subs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mode, 1
  %open_mutex = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #12
  %arrayidx = getelementptr %struct.cmipci, ptr %cm, i32 0, i32 16, i32 %and
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mode, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr %struct.cmipci, ptr %cm, i32 0, i32 21, i32 %and
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %subs, ptr %arrayidx4, align 4
  %and5 = and i32 %mode, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7:                                         ; preds = %if.end
  %is_dac = getelementptr %struct.cmipci, ptr %cm, i32 0, i32 21, i32 %and, i32 3
  %4 = ptrtoint ptr %is_dac to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %is_dac, align 2
  %reg_lock = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 24
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %iobase.i = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 4
  %5 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %6, 24
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add1.i to ptr
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %7) #12, !srcloc !393
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  %and3.i = and i32 %9, -8388609
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i, i32 %9)
  %cmp.i = icmp eq i32 %and3.i, %9
  br i1 %cmp.i, label %if.then7.snd_cmipci_clear_bit.exit_crit_edge, label %do.body.i

if.then7.snd_cmipci_clear_bit.exit_crit_edge:     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_clear_bit.exit

do.body.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %10 = tail call i32 @llvm.bswap.i32(i32 %and3.i) #12
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase.i, align 4
  %add5.i = add i32 %12, 24
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %13 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %13, i32 %10) #12, !srcloc !397
  br label %snd_cmipci_clear_bit.exit

snd_cmipci_clear_bit.exit:                        ; preds = %do.body.i, %if.then7.snd_cmipci_clear_bit.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %snd_cmipci_clear_bit.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ 0, %snd_cmipci_clear_bit.exit ], [ 0, %if.end.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %open_mutex) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @close_device_check(ptr noundef %cm, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mode, 1
  %open_mutex = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #12
  %arrayidx = getelementptr %struct.cmipci, ptr %cm, i32 0, i32 16, i32 %and
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %mode)
  %cmp = icmp eq i32 %1, %mode
  br i1 %cmp, label %if.then, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then:                                          ; preds = %entry
  %arrayidx1 = getelementptr %struct.cmipci, ptr %cm, i32 0, i32 21, i32 %and
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %ch1.i = getelementptr %struct.cmipci, ptr %cm, i32 0, i32 21, i32 %and, i32 7
  %4 = ptrtoint ptr %ch1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ch1.i, align 4
  %shl.i = shl i32 262144, %5
  %ctrl.i = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 5
  %6 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctrl.i, align 4
  %or.i = or i32 %7, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %iobase.i.i = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 4
  %9 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase.i.i, align 4
  %and.i.i = and i32 %10, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %11 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 %8) #12, !srcloc !397
  %12 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctrl.i, align 4
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %13, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %14 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  %15 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase.i.i, align 4
  %and.i9.i = and i32 %16, 1048575
  %add1.i10.i = or i32 %and.i9.i, -18874368
  %17 = inttoptr i32 %add1.i10.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %17, i32 %14) #12, !srcloc !397
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #12
  %running = getelementptr %struct.cmipci, ptr %cm, i32 0, i32 21, i32 %and, i32 1
  %19 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %running, align 4
  %20 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx, align 4
  %is_dac = getelementptr %struct.cmipci, ptr %cm, i32 0, i32 21, i32 %and, i32 3
  %22 = ptrtoint ptr %is_dac to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_dac, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool12.not = icmp eq i8 %23, 0
  br i1 %tobool12.not, label %if.then13, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then13:                                        ; preds = %if.end
  %24 = ptrtoint ptr %is_dac to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %is_dac, align 2
  %reg_lock = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 24
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %iobase.i = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 4
  %25 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %26, 24
  %and.i41 = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i41, -18874368
  %27 = inttoptr i32 %add1.i to ptr
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %27) #12, !srcloc !393
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  %or.i42 = or i32 %29, 8388608
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i42, i32 %29)
  %cmp.i = icmp eq i32 %or.i42, %29
  br i1 %cmp.i, label %if.then13.snd_cmipci_set_bit.exit_crit_edge, label %do.body.i

if.then13.snd_cmipci_set_bit.exit_crit_edge:      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_set_bit.exit

do.body.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void @arm_heavy_mb() #12
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i42) #12
  %31 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iobase.i, align 4
  %add4.i = add i32 %32, 24
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %33 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %33, i32 %30) #12, !srcloc !397
  br label %snd_cmipci_set_bit.exit

snd_cmipci_set_bit.exit:                          ; preds = %do.body.i, %if.then13.snd_cmipci_set_bit.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  br label %if.end19

if.end19:                                         ; preds = %snd_cmipci_set_bit.exit, %if.end.if.end19_crit_edge, %entry.if.end19_crit_edge
  tail call void @mutex_unlock(ptr noundef %open_mutex) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_spdif_playback(ptr noundef %cm, ptr nocapture noundef readonly %subs, i32 noundef %up, i32 noundef %do_ac3) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %rate1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %rate1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_ac3)
  %tobool2.not = icmp eq i32 %do_ac3, 0
  %or.cond = or i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then:                                          ; preds = %entry
  %mixer_insensitive.i = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 18
  %4 = ptrtoint ptr %mixer_insensitive.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %mixer_insensitive.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then.i:                                        ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 712) #17
  %tobool1.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not.i, label %if.then.i.cleanup_crit_edge, label %for.cond.preheader.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.then.i
  %value.i = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %call7.i.i, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.cmipci, ptr %cm, i32 0, i32 19, i32 0
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq ptr %7, null
  br i1 %tobool3.not.i, label %for.cond.preheader.i.if.end21.i_crit_edge, label %if.then4.i

for.cond.preheader.i.if.end21.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

if.then4.i:                                       ; preds = %for.cond.preheader.i
  %8 = call ptr @memset(ptr %call7.i.i, i32 0, i32 712)
  %get.i = getelementptr inbounds %struct.snd_kcontrol, ptr %7, i32 0, i32 4
  %9 = ptrtoint ptr %get.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get.i, align 4
  %call5.i = tail call i32 %10(ptr noundef nonnull %7, ptr noundef nonnull %call7.i.i) #12
  %11 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value.i, align 8
  %arrayidx7.i = getelementptr %struct.cmipci, ptr %cm, i32 0, i32 20, i32 0
  %13 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx7.i, align 4
  store i32 0, ptr %value.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp15.not.i = icmp eq i32 %12, 0
  br i1 %cmp15.not.i, label %if.then4.i.if.end18.i_crit_edge, label %if.then16.i

if.then4.i.if.end18.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then16.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  %put.i = getelementptr inbounds %struct.snd_kcontrol, ptr %7, i32 0, i32 5
  %14 = ptrtoint ptr %put.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %put.i, align 4
  %call17.i = tail call i32 %15(ptr noundef nonnull %7, ptr noundef nonnull %call7.i.i) #12
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %if.then4.i.if.end18.i_crit_edge
  %event.0.i = phi i32 [ 3, %if.then16.i ], [ 2, %if.then4.i.if.end18.i_crit_edge ]
  %access.i = getelementptr inbounds %struct.snd_kcontrol, ptr %7, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %access.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %access.i, align 4
  %or20.i = or i32 %17, 256
  store i32 %or20.i, ptr %access.i, align 4
  %18 = ptrtoint ptr %cm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cm, align 4
  %id.i = getelementptr inbounds %struct.snd_kcontrol, ptr %7, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %19, i32 noundef %event.0.i, ptr noundef %id.i) #12
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end18.i, %for.cond.preheader.i.if.end21.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.cmipci, ptr %cm, i32 0, i32 19, i32 1
  %20 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool3.not.1.i = icmp eq ptr %21, null
  br i1 %tobool3.not.1.i, label %if.end21.i.if.end21.1.i_crit_edge, label %if.then4.1.i

if.end21.i.if.end21.1.i_crit_edge:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.1.i

if.then4.1.i:                                     ; preds = %if.end21.i
  %22 = call ptr @memset(ptr %call7.i.i, i32 0, i32 712)
  %get.1.i = getelementptr inbounds %struct.snd_kcontrol, ptr %21, i32 0, i32 4
  %23 = ptrtoint ptr %get.1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %get.1.i, align 4
  %call5.1.i = tail call i32 %24(ptr noundef nonnull %21, ptr noundef nonnull %call7.i.i) #12
  %25 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %value.i, align 8
  %arrayidx7.1.i = getelementptr %struct.cmipci, ptr %cm, i32 0, i32 20, i32 1
  %27 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx7.1.i, align 4
  store i32 1, ptr %value.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp15.not.1.i = icmp eq i32 %26, 1
  br i1 %cmp15.not.1.i, label %if.then4.1.i.if.end18.1.i_crit_edge, label %if.then16.1.i

if.then4.1.i.if.end18.1.i_crit_edge:              ; preds = %if.then4.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.1.i

if.then16.1.i:                                    ; preds = %if.then4.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %put.1.i = getelementptr inbounds %struct.snd_kcontrol, ptr %21, i32 0, i32 5
  %28 = ptrtoint ptr %put.1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %put.1.i, align 4
  %call17.1.i = tail call i32 %29(ptr noundef nonnull %21, ptr noundef nonnull %call7.i.i) #12
  br label %if.end18.1.i

if.end18.1.i:                                     ; preds = %if.then16.1.i, %if.then4.1.i.if.end18.1.i_crit_edge
  %event.0.1.i = phi i32 [ 3, %if.then16.1.i ], [ 2, %if.then4.1.i.if.end18.1.i_crit_edge ]
  %access.1.i = getelementptr inbounds %struct.snd_kcontrol, ptr %21, i32 1, i32 0, i32 1
  %30 = ptrtoint ptr %access.1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %access.1.i, align 4
  %or20.1.i = or i32 %31, 256
  store i32 %or20.1.i, ptr %access.1.i, align 4
  %32 = ptrtoint ptr %cm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cm, align 4
  %id.1.i = getelementptr inbounds %struct.snd_kcontrol, ptr %21, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %33, i32 noundef %event.0.1.i, ptr noundef %id.1.i) #12
  br label %if.end21.1.i

if.end21.1.i:                                     ; preds = %if.end18.1.i, %if.end21.i.if.end21.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.cmipci, ptr %cm, i32 0, i32 19, i32 2
  %34 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool3.not.2.i = icmp eq ptr %35, null
  br i1 %tobool3.not.2.i, label %if.end21.1.i.if.end21.2.i_crit_edge, label %if.then4.2.i

if.end21.1.i.if.end21.2.i_crit_edge:              ; preds = %if.end21.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.2.i

if.then4.2.i:                                     ; preds = %if.end21.1.i
  %36 = call ptr @memset(ptr %call7.i.i, i32 0, i32 712)
  %get.2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %35, i32 0, i32 4
  %37 = ptrtoint ptr %get.2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %get.2.i, align 4
  %call5.2.i = tail call i32 %38(ptr noundef nonnull %35, ptr noundef nonnull %call7.i.i) #12
  %39 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %value.i, align 8
  %arrayidx7.2.i = getelementptr %struct.cmipci, ptr %cm, i32 0, i32 20, i32 2
  %41 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx7.2.i, align 4
  store i32 0, ptr %value.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp15.not.2.i = icmp eq i32 %40, 0
  br i1 %cmp15.not.2.i, label %if.then4.2.i.if.end18.2.i_crit_edge, label %if.then16.2.i

if.then4.2.i.if.end18.2.i_crit_edge:              ; preds = %if.then4.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.2.i

if.then16.2.i:                                    ; preds = %if.then4.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %put.2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %35, i32 0, i32 5
  %42 = ptrtoint ptr %put.2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %put.2.i, align 4
  %call17.2.i = tail call i32 %43(ptr noundef nonnull %35, ptr noundef nonnull %call7.i.i) #12
  br label %if.end18.2.i

if.end18.2.i:                                     ; preds = %if.then16.2.i, %if.then4.2.i.if.end18.2.i_crit_edge
  %event.0.2.i = phi i32 [ 3, %if.then16.2.i ], [ 2, %if.then4.2.i.if.end18.2.i_crit_edge ]
  %access.2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %35, i32 1, i32 0, i32 1
  %44 = ptrtoint ptr %access.2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %access.2.i, align 4
  %or20.2.i = or i32 %45, 256
  store i32 %or20.2.i, ptr %access.2.i, align 4
  %46 = ptrtoint ptr %cm to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cm, align 4
  %id.2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %35, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %47, i32 noundef %event.0.2.i, ptr noundef %id.2.i) #12
  br label %if.end21.2.i

if.end21.2.i:                                     ; preds = %if.end18.2.i, %if.end21.1.i.if.end21.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.cmipci, ptr %cm, i32 0, i32 19, i32 3
  %48 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.3.i, align 4
  %tobool3.not.3.i = icmp eq ptr %49, null
  br i1 %tobool3.not.3.i, label %if.end21.2.i.if.end21.3.i_crit_edge, label %if.then4.3.i

if.end21.2.i.if.end21.3.i_crit_edge:              ; preds = %if.end21.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.3.i

if.then4.3.i:                                     ; preds = %if.end21.2.i
  %50 = call ptr @memset(ptr %call7.i.i, i32 0, i32 712)
  %get.3.i = getelementptr inbounds %struct.snd_kcontrol, ptr %49, i32 0, i32 4
  %51 = ptrtoint ptr %get.3.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %get.3.i, align 4
  %call5.3.i = tail call i32 %52(ptr noundef nonnull %49, ptr noundef nonnull %call7.i.i) #12
  %53 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %value.i, align 8
  %arrayidx7.3.i = getelementptr %struct.cmipci, ptr %cm, i32 0, i32 20, i32 3
  %55 = ptrtoint ptr %arrayidx7.3.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx7.3.i, align 4
  store i32 0, ptr %value.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp15.not.3.i = icmp eq i32 %54, 0
  br i1 %cmp15.not.3.i, label %if.then4.3.i.if.end18.3.i_crit_edge, label %if.then16.3.i

if.then4.3.i.if.end18.3.i_crit_edge:              ; preds = %if.then4.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.3.i

if.then16.3.i:                                    ; preds = %if.then4.3.i
  call void @__sanitizer_cov_trace_pc() #14
  %put.3.i = getelementptr inbounds %struct.snd_kcontrol, ptr %49, i32 0, i32 5
  %56 = ptrtoint ptr %put.3.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %put.3.i, align 4
  %call17.3.i = tail call i32 %57(ptr noundef nonnull %49, ptr noundef nonnull %call7.i.i) #12
  br label %if.end18.3.i

if.end18.3.i:                                     ; preds = %if.then16.3.i, %if.then4.3.i.if.end18.3.i_crit_edge
  %event.0.3.i = phi i32 [ 3, %if.then16.3.i ], [ 2, %if.then4.3.i.if.end18.3.i_crit_edge ]
  %access.3.i = getelementptr inbounds %struct.snd_kcontrol, ptr %49, i32 1, i32 0, i32 1
  %58 = ptrtoint ptr %access.3.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %access.3.i, align 4
  %or20.3.i = or i32 %59, 256
  store i32 %or20.3.i, ptr %access.3.i, align 4
  %60 = ptrtoint ptr %cm to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cm, align 4
  %id.3.i = getelementptr inbounds %struct.snd_kcontrol, ptr %49, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %61, i32 noundef %event.0.3.i, ptr noundef %id.3.i) #12
  br label %if.end21.3.i

if.end21.3.i:                                     ; preds = %if.end18.3.i, %if.end21.2.i.if.end21.3.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  %62 = ptrtoint ptr %mixer_insensitive.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load23.i = load i8, ptr %mixer_insensitive.i, align 4
  %bf.set.i = or i8 %bf.load23.i, -128
  store i8 %bf.set.i, ptr %mixer_insensitive.i, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end21.3.i, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %reg_lock = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 24
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %spdif_playback_avail = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 11
  %63 = trunc i32 %up to i8
  %64 = ptrtoint ptr %spdif_playback_avail to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load = load i8, ptr %spdif_playback_avail, align 4
  %bf.value = shl i8 %63, 2
  %bf.shl = and i8 %bf.value, 4
  %bf.clear = and i8 %bf.load, -5
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %spdif_playback_avail, align 4
  br i1 %tobool.not, label %if.else25, label %if.then6

if.then6:                                         ; preds = %if.end4
  %65 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool9.not = icmp eq i8 %65, 0
  br i1 %tobool9.not, label %if.then6.if.end12_crit_edge, label %if.then10

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then10:                                        ; preds = %if.then6
  %iobase.i = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 4
  %66 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %67, 4
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %68 = inttoptr i32 %add1.i to ptr
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %68) #12, !srcloc !393
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  %or.i = or i32 %70, 256
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %70)
  %cmp.i = icmp eq i32 %or.i, %70
  br i1 %cmp.i, label %if.then10.if.end12_crit_edge, label %do.body.i

if.then10.if.end12_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

do.body.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void @arm_heavy_mb() #12
  %71 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %72 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %iobase.i, align 4
  %add4.i = add i32 %73, 4
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %74 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %74, i32 %71) #12, !srcloc !397
  br label %if.end12

if.end12:                                         ; preds = %do.body.i, %if.then10.if.end12_crit_edge, %if.then6.if.end12_crit_edge
  tail call fastcc void @setup_ac3(ptr noundef %cm, ptr noundef %subs, i32 noundef %do_ac3, i32 noundef %3)
  %75 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %3, label %if.else [
    i32 48000, label %if.end12.if.then15_crit_edge
    i32 96000, label %if.end12.if.then15_crit_edge122
  ]

if.end12.if.then15_crit_edge122:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

if.end12.if.then15_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

if.then15:                                        ; preds = %if.end12.if.then15_crit_edge, %if.end12.if.then15_crit_edge122
  %iobase.i53 = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 4
  %76 = ptrtoint ptr %iobase.i53 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %iobase.i53, align 4
  %add.i54 = add i32 %77, 24
  %and.i55 = and i32 %add.i54, 1048575
  %add1.i56 = or i32 %and.i55, -18874368
  %78 = inttoptr i32 %add1.i56 to ptr
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %78) #12, !srcloc !393
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  %or.i57 = or i32 %80, 16809984
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i57, i32 %80)
  %cmp.i58 = icmp eq i32 %or.i57, %80
  br i1 %cmp.i58, label %if.then15.if.end18_crit_edge, label %do.body.i62

if.then15.if.end18_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

do.body.i62:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void @arm_heavy_mb() #12
  %81 = tail call i32 @llvm.bswap.i32(i32 %or.i57) #12
  %82 = ptrtoint ptr %iobase.i53 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %iobase.i53, align 4
  %add4.i59 = add i32 %83, 24
  %and5.i60 = and i32 %add4.i59, 1048575
  %add6.i61 = or i32 %and5.i60, -18874368
  %84 = inttoptr i32 %add6.i61 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %84, i32 %81) #12, !srcloc !397
  br label %if.end18

if.else:                                          ; preds = %if.end12
  %iobase.i65 = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 4
  %85 = ptrtoint ptr %iobase.i65 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %iobase.i65, align 4
  %add.i66 = add i32 %86, 24
  %and.i67 = and i32 %add.i66, 1048575
  %add1.i68 = or i32 %and.i67, -18874368
  %87 = inttoptr i32 %add1.i68 to ptr
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %87) #12, !srcloc !393
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  %and3.i = and i32 %89, -16809985
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i, i32 %89)
  %cmp.i69 = icmp eq i32 %and3.i, %89
  br i1 %cmp.i69, label %if.else.if.end18_crit_edge, label %do.body.i70

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

do.body.i70:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %90 = tail call i32 @llvm.bswap.i32(i32 %and3.i) #12
  %91 = ptrtoint ptr %iobase.i65 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %iobase.i65, align 4
  %add5.i = add i32 %92, 24
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %93 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %93, i32 %90) #12, !srcloc !397
  br label %if.end18

if.end18:                                         ; preds = %do.body.i70, %if.else.if.end18_crit_edge, %do.body.i62, %if.then15.if.end18_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %3)
  %cmp19 = icmp sgt i32 %3, 48000
  %iobase.i72 = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 4
  %94 = ptrtoint ptr %iobase.i72 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %iobase.i72, align 4
  %add.i73 = add i32 %95, 8
  %and.i74 = and i32 %add.i73, 1048575
  %add1.i75 = or i32 %and.i74, -18874368
  %96 = inttoptr i32 %add1.i75 to ptr
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %96) #12
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  br i1 %cmp19, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.end18
  %or.i76 = or i32 %98, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i76, i32 %98)
  %cmp.i77 = icmp eq i32 %or.i76, %98
  br i1 %cmp.i77, label %if.then20.if.end28_crit_edge, label %do.body.i81

if.then20.if.end28_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

do.body.i81:                                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void @arm_heavy_mb() #12
  %99 = tail call i32 @llvm.bswap.i32(i32 %or.i76) #12
  %100 = ptrtoint ptr %iobase.i72 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %iobase.i72, align 4
  %add4.i78 = add i32 %101, 8
  %and5.i79 = and i32 %add4.i78, 1048575
  %add6.i80 = or i32 %and5.i79, -18874368
  %102 = inttoptr i32 %add6.i80 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %102, i32 %99) #12, !srcloc !397
  br label %if.end28

if.else22:                                        ; preds = %if.end18
  %and3.i88 = and i32 %98, -65
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i88, i32 %98)
  %cmp.i89 = icmp eq i32 %and3.i88, %98
  br i1 %cmp.i89, label %if.else22.if.end28_crit_edge, label %do.body.i93

if.else22.if.end28_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

do.body.i93:                                      ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %103 = tail call i32 @llvm.bswap.i32(i32 %and3.i88) #12
  %104 = ptrtoint ptr %iobase.i72 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %iobase.i72, align 4
  %add5.i90 = add i32 %105, 8
  %and6.i91 = and i32 %add5.i90, 1048575
  %add7.i92 = or i32 %and6.i91, -18874368
  %106 = inttoptr i32 %add7.i92 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %106, i32 %103) #12, !srcloc !397
  br label %if.end28

if.else25:                                        ; preds = %if.end4
  %iobase.i96 = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 4
  %107 = ptrtoint ptr %iobase.i96 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %iobase.i96, align 4
  %add.i97 = add i32 %108, 8
  %and.i98 = and i32 %add.i97, 1048575
  %add1.i99 = or i32 %and.i98, -18874368
  %109 = inttoptr i32 %add1.i99 to ptr
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %109) #12, !srcloc !393
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  %and3.i100 = and i32 %111, -65
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i100, i32 %111)
  %cmp.i101 = icmp eq i32 %and3.i100, %111
  br i1 %cmp.i101, label %if.else25.snd_cmipci_clear_bit.exit107_crit_edge, label %do.body.i105

if.else25.snd_cmipci_clear_bit.exit107_crit_edge: ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_clear_bit.exit107

do.body.i105:                                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %112 = tail call i32 @llvm.bswap.i32(i32 %and3.i100) #12
  %113 = ptrtoint ptr %iobase.i96 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %iobase.i96, align 4
  %add5.i102 = add i32 %114, 8
  %and6.i103 = and i32 %add5.i102, 1048575
  %add7.i104 = or i32 %and6.i103, -18874368
  %115 = inttoptr i32 %add7.i104 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %115, i32 %112) #12, !srcloc !397
  br label %snd_cmipci_clear_bit.exit107

snd_cmipci_clear_bit.exit107:                     ; preds = %do.body.i105, %if.else25.snd_cmipci_clear_bit.exit107_crit_edge
  %116 = ptrtoint ptr %iobase.i96 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %iobase.i96, align 4
  %add.i109 = add i32 %117, 4
  %and.i110 = and i32 %add.i109, 1048575
  %add1.i111 = or i32 %and.i110, -18874368
  %118 = inttoptr i32 %add1.i111 to ptr
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %118) #12, !srcloc !393
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  %and3.i112 = and i32 %120, -257
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i112, i32 %120)
  %cmp.i113 = icmp eq i32 %and3.i112, %120
  br i1 %cmp.i113, label %snd_cmipci_clear_bit.exit107.snd_cmipci_clear_bit.exit119_crit_edge, label %do.body.i117

snd_cmipci_clear_bit.exit107.snd_cmipci_clear_bit.exit119_crit_edge: ; preds = %snd_cmipci_clear_bit.exit107
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_clear_bit.exit119

do.body.i117:                                     ; preds = %snd_cmipci_clear_bit.exit107
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %121 = tail call i32 @llvm.bswap.i32(i32 %and3.i112) #12
  %122 = ptrtoint ptr %iobase.i96 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %iobase.i96, align 4
  %add5.i114 = add i32 %123, 4
  %and6.i115 = and i32 %add5.i114, 1048575
  %add7.i116 = or i32 %and6.i115, -18874368
  %124 = inttoptr i32 %add7.i116 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %124, i32 %121) #12, !srcloc !397
  br label %snd_cmipci_clear_bit.exit119

snd_cmipci_clear_bit.exit119:                     ; preds = %do.body.i117, %snd_cmipci_clear_bit.exit107.snd_cmipci_clear_bit.exit119_crit_edge
  tail call fastcc void @setup_ac3(ptr noundef %cm, ptr noundef %subs, i32 noundef 0, i32 noundef 0)
  br label %if.end28

if.end28:                                         ; preds = %snd_cmipci_clear_bit.exit119, %do.body.i93, %if.else22.if.end28_crit_edge, %do.body.i81, %if.then20.if.end28_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -12, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_cmipci_silence_hack(ptr noundef %cm, ptr nocapture noundef %rec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rec, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %needs_silencing = getelementptr inbounds %struct.cmipci_pcm, ptr %rec, i32 0, i32 4
  %4 = ptrtoint ptr %needs_silencing to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %needs_silencing, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %tobool2.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.if.end52_crit_edge, label %land.lhs.true3

entry.if.end52_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

land.lhs.true3:                                   ; preds = %entry
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 50
  %6 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_area, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %land.lhs.true3.if.end52_crit_edge, label %if.then

land.lhs.true3.if.end52_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then:                                          ; preds = %land.lhs.true3
  %8 = call ptr @memset(ptr %7, i32 0, i32 4096)
  %ch = getelementptr inbounds %struct.cmipci_pcm, ptr %rec, i32 0, i32 7
  %9 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not = icmp eq i32 %10, 0
  %cond = select i1 %tobool6.not, i32 132, i32 140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %iobase.i = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 4
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %12, %cond
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %13 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %13, i32 -16515327) #12, !srcloc !397
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %14 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp = icmp ugt i32 %15, 2
  br i1 %cmp, label %if.then8, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call fastcc i32 @set_dac_channels(ptr noundef %cm, ptr noundef %rec, i32 noundef 2)
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then.if.end_crit_edge
  %reg_lock = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 24
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %16 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase.i, align 4
  %add.i97 = add i32 %17, 4
  %and.i98 = and i32 %add.i97, 1048575
  %add1.i99 = or i32 %and.i98, -18874368
  %18 = inttoptr i32 %add1.i99 to ptr
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %18) #12, !srcloc !393
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  %21 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ch, align 4
  %mul = mul i32 %22, 3
  %shl = shl i32 7168, %mul
  %neg = xor i32 %shl, -1
  %and = and i32 %20, %neg
  %shl13 = shl i32 4096, %mul
  %or = or i32 %and, %shl13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %23 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %24 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iobase.i, align 4
  %add.i101 = add i32 %25, 4
  %and.i102 = and i32 %add.i101, 1048575
  %add1.i103 = or i32 %and.i102, -18874368
  %26 = inttoptr i32 %add1.i103 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %26, i32 %23) #12, !srcloc !397
  %27 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %iobase.i, align 4
  %add.i105 = add i32 %28, 8
  %and.i106 = and i32 %add.i105, 1048575
  %add1.i107 = or i32 %and.i106, -18874368
  %29 = inttoptr i32 %add1.i107 to ptr
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %29) #12, !srcloc !393
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  %32 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ch, align 4
  %mul16 = shl i32 %33, 1
  %shl17 = shl i32 3, %mul16
  %or23 = or i32 %shl17, %31
  %can_96k = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 11
  %34 = ptrtoint ptr %can_96k to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load = load i8, ptr %can_96k, align 4
  %35 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool24.not = icmp eq i8 %35, 0
  %shl28 = shl i32 768, %mul16
  %neg29 = xor i32 %shl28, -1
  %and30 = select i1 %tobool24.not, i32 -1, i32 %neg29
  %val.0 = and i32 %and30, %or23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %36 = tail call i32 @llvm.bswap.i32(i32 %val.0) #12
  %37 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iobase.i, align 4
  %add.i109 = add i32 %38, 8
  %and.i110 = and i32 %add.i109, 1048575
  %add1.i111 = or i32 %and.i110, -18874368
  %39 = inttoptr i32 %add1.i111 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %39, i32 %36) #12, !srcloc !397
  %40 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ch, align 4
  %shl33 = shl i32 65536, %41
  %ctrl = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 5
  %42 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ctrl, align 4
  %or34 = or i32 %43, %shl33
  store i32 %or34, ptr %ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %44 = tail call i32 @llvm.bswap.i32(i32 %or34) #12
  %45 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %iobase.i, align 4
  %and.i113 = and i32 %46, 1048575
  %add1.i114 = or i32 %and.i113, -18874368
  %47 = inttoptr i32 %add1.i114 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %47, i32 %44) #12, !srcloc !397
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  tail call void @msleep(i32 noundef 1) #12
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %48 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ch, align 4
  %shl39 = shl i32 65536, %49
  %neg40 = xor i32 %shl39, -1
  %50 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ctrl, align 4
  %and42 = and i32 %51, %neg40
  store i32 %and42, ptr %ctrl, align 4
  %52 = load i32, ptr %ch, align 4
  %shl44 = shl i32 262144, %52
  %or46 = or i32 %shl44, %and42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %53 = tail call i32 @llvm.bswap.i32(i32 %or46) #12
  %54 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %iobase.i, align 4
  %and.i116 = and i32 %55, 1048575
  %add1.i117 = or i32 %and.i116, -18874368
  %56 = inttoptr i32 %add1.i117 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %56, i32 %53) #12, !srcloc !397
  %57 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ctrl, align 4
  %neg48 = xor i32 %shl44, -1
  %and49 = and i32 %58, %neg48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %59 = tail call i32 @llvm.bswap.i32(i32 %and49) #12
  %60 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %iobase.i, align 4
  %and.i119 = and i32 %61, 1048575
  %add1.i120 = or i32 %and.i119, -18874368
  %62 = inttoptr i32 %add1.i120 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %62, i32 %59) #12, !srcloc !397
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  %63 = ptrtoint ptr %needs_silencing to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %needs_silencing, align 1
  br label %if.end52

if.end52:                                         ; preds = %if.end, %land.lhs.true3.if.end52_crit_edge, %entry.if.end52_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setup_ac3(ptr nocapture noundef readonly %cm, ptr nocapture noundef readonly %subs, i32 noundef %do_ac3, i32 noundef %rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_ac3)
  %tobool.not = icmp eq i32 %do_ac3, 0
  %iobase.i125 = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 4
  %0 = ptrtoint ptr %iobase.i125 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase.i125, align 4
  %add.i126 = add i32 %1, 8
  %and.i127 = and i32 %add.i126, 1048575
  %add1.i128 = or i32 %and.i127, -18874368
  %2 = inttoptr i32 %add1.i128 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #12
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  br i1 %tobool.not, label %if.else15, label %if.then

if.then:                                          ; preds = %entry
  %or.i = or i32 %4, 1048576
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %4)
  %cmp.i = icmp eq i32 %or.i, %4
  br i1 %cmp.i, label %if.then.snd_cmipci_set_bit.exit_crit_edge, label %do.body.i

if.then.snd_cmipci_set_bit.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_set_bit.exit

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void @arm_heavy_mb() #12
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %6 = ptrtoint ptr %iobase.i125 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase.i125, align 4
  %add4.i = add i32 %7, 8
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %8 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %8, i32 %5) #12, !srcloc !397
  br label %snd_cmipci_set_bit.exit

snd_cmipci_set_bit.exit:                          ; preds = %do.body.i, %if.then.snd_cmipci_set_bit.exit_crit_edge
  %9 = ptrtoint ptr %iobase.i125 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase.i125, align 4
  %add.i59 = add i32 %10, 24
  %and.i60 = and i32 %add.i59, 1048575
  %add1.i61 = or i32 %and.i60, -18874368
  %11 = inttoptr i32 %add1.i61 to ptr
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %11) #12, !srcloc !393
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  %or.i62 = or i32 %13, 262144
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i62, i32 %13)
  %cmp.i63 = icmp eq i32 %or.i62, %13
  br i1 %cmp.i63, label %snd_cmipci_set_bit.exit.snd_cmipci_set_bit.exit69_crit_edge, label %do.body.i67

snd_cmipci_set_bit.exit.snd_cmipci_set_bit.exit69_crit_edge: ; preds = %snd_cmipci_set_bit.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_set_bit.exit69

do.body.i67:                                      ; preds = %snd_cmipci_set_bit.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void @arm_heavy_mb() #12
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i62) #12
  %15 = ptrtoint ptr %iobase.i125 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase.i125, align 4
  %add4.i64 = add i32 %16, 24
  %and5.i65 = and i32 %add4.i64, 1048575
  %add6.i66 = or i32 %and5.i65, -18874368
  %17 = inttoptr i32 %add6.i66 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %17, i32 %14) #12, !srcloc !397
  br label %snd_cmipci_set_bit.exit69

snd_cmipci_set_bit.exit69:                        ; preds = %do.body.i67, %snd_cmipci_set_bit.exit.snd_cmipci_set_bit.exit69_crit_edge
  %can_ac3_hw = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 11
  %18 = ptrtoint ptr %can_ac3_hw to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %can_ac3_hw, align 4
  %19 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool2.not = icmp eq i8 %19, 0
  %20 = ptrtoint ptr %iobase.i125 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase.i125, align 4
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %snd_cmipci_set_bit.exit69
  %add.i71 = add i32 %21, 8
  %and.i72 = and i32 %add.i71, 1048575
  %add1.i73 = or i32 %and.i72, -18874368
  %22 = inttoptr i32 %add1.i73 to ptr
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %22) #12, !srcloc !393
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  %or.i74 = or i32 %24, 131072
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i74, i32 %24)
  %cmp.i75 = icmp eq i32 %or.i74, %24
  br i1 %cmp.i75, label %if.then3.snd_cmipci_set_bit.exit81_crit_edge, label %do.body.i79

if.then3.snd_cmipci_set_bit.exit81_crit_edge:     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_set_bit.exit81

do.body.i79:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void @arm_heavy_mb() #12
  %25 = tail call i32 @llvm.bswap.i32(i32 %or.i74) #12
  %26 = ptrtoint ptr %iobase.i125 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iobase.i125, align 4
  %add4.i76 = add i32 %27, 8
  %and5.i77 = and i32 %add4.i76, 1048575
  %add6.i78 = or i32 %and5.i77, -18874368
  %28 = inttoptr i32 %add6.i78 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %28, i32 %25) #12, !srcloc !397
  br label %snd_cmipci_set_bit.exit81

snd_cmipci_set_bit.exit81:                        ; preds = %do.body.i79, %if.then3.snd_cmipci_set_bit.exit81_crit_edge
  %29 = ptrtoint ptr %iobase.i125 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iobase.i125, align 4
  %add.i83 = add i32 %30, 24
  %and.i84 = and i32 %add.i83, 1048575
  %add1.i85 = or i32 %and.i84, -18874368
  %31 = inttoptr i32 %add1.i85 to ptr
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %31) #12, !srcloc !393
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  %and3.i = and i32 %33, -2097153
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i, i32 %33)
  %cmp.i86 = icmp eq i32 %and3.i, %33
  br i1 %cmp.i86, label %snd_cmipci_set_bit.exit81.if.end39_crit_edge, label %do.body.i87

snd_cmipci_set_bit.exit81.if.end39_crit_edge:     ; preds = %snd_cmipci_set_bit.exit81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

do.body.i87:                                      ; preds = %snd_cmipci_set_bit.exit81
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %34 = tail call i32 @llvm.bswap.i32(i32 %and3.i) #12
  %35 = ptrtoint ptr %iobase.i125 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iobase.i125, align 4
  %add5.i = add i32 %36, 24
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %37 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %37, i32 %34) #12, !srcloc !397
  br label %if.end39

if.else:                                          ; preds = %snd_cmipci_set_bit.exit69
  %add.i90 = add i32 %21, 24
  %and.i91 = and i32 %add.i90, 1048575
  %add1.i92 = or i32 %and.i91, -18874368
  %38 = inttoptr i32 %add1.i92 to ptr
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %38) #12, !srcloc !393
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  %or.i93 = or i32 %40, 2097152
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i93, i32 %40)
  %cmp.i94 = icmp eq i32 %or.i93, %40
  br i1 %cmp.i94, label %if.else.snd_cmipci_set_bit.exit100_crit_edge, label %do.body.i98

if.else.snd_cmipci_set_bit.exit100_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_set_bit.exit100

do.body.i98:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void @arm_heavy_mb() #12
  %41 = tail call i32 @llvm.bswap.i32(i32 %or.i93) #12
  %42 = ptrtoint ptr %iobase.i125 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %iobase.i125, align 4
  %add4.i95 = add i32 %43, 24
  %and5.i96 = and i32 %add4.i95, 1048575
  %add6.i97 = or i32 %and5.i96, -18874368
  %44 = inttoptr i32 %add6.i97 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %44, i32 %41) #12, !srcloc !397
  br label %snd_cmipci_set_bit.exit100

snd_cmipci_set_bit.exit100:                       ; preds = %do.body.i98, %if.else.snd_cmipci_set_bit.exit100_crit_edge
  %chip_version = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 9
  %45 = ptrtoint ptr %chip_version to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %chip_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %46)
  %cmp = icmp eq i32 %46, 33
  br i1 %cmp, label %if.then7, label %snd_cmipci_set_bit.exit100.if.end39_crit_edge

snd_cmipci_set_bit.exit100.if.end39_crit_edge:    ; preds = %snd_cmipci_set_bit.exit100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then7:                                         ; preds = %snd_cmipci_set_bit.exit100
  call void @__sanitizer_cov_trace_const_cmp4(i32 47999, i32 %rate)
  %cmp8 = icmp sgt i32 %rate, 47999
  %47 = ptrtoint ptr %iobase.i125 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %iobase.i125, align 4
  %add.i102 = add i32 %48, 8
  %and.i103 = and i32 %add.i102, 1048575
  %add1.i104 = or i32 %and.i103, -18874368
  %49 = inttoptr i32 %add1.i104 to ptr
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %49) #12
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  br i1 %cmp8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.then7
  %or.i105 = or i32 %51, 512
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i105, i32 %51)
  %cmp.i106 = icmp eq i32 %or.i105, %51
  br i1 %cmp.i106, label %if.then9.if.end39_crit_edge, label %do.body.i110

if.then9.if.end39_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

do.body.i110:                                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void @arm_heavy_mb() #12
  %52 = tail call i32 @llvm.bswap.i32(i32 %or.i105) #12
  %53 = ptrtoint ptr %iobase.i125 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %iobase.i125, align 4
  %add4.i107 = add i32 %54, 8
  %and5.i108 = and i32 %add4.i107, 1048575
  %add6.i109 = or i32 %and5.i108, -18874368
  %55 = inttoptr i32 %add6.i109 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %55, i32 %52) #12, !srcloc !397
  br label %if.end39

if.else11:                                        ; preds = %if.then7
  %and3.i117 = and i32 %51, -513
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i117, i32 %51)
  %cmp.i118 = icmp eq i32 %and3.i117, %51
  br i1 %cmp.i118, label %if.else11.if.end39_crit_edge, label %do.body.i122

if.else11.if.end39_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

do.body.i122:                                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %56 = tail call i32 @llvm.bswap.i32(i32 %and3.i117) #12
  %57 = ptrtoint ptr %iobase.i125 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %iobase.i125, align 4
  %add5.i119 = add i32 %58, 8
  %and6.i120 = and i32 %add5.i119, 1048575
  %add7.i121 = or i32 %and6.i120, -18874368
  %59 = inttoptr i32 %add7.i121 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %59, i32 %56) #12, !srcloc !397
  br label %if.end39

if.else15:                                        ; preds = %entry
  %and3.i129 = and i32 %4, -1048577
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i129, i32 %4)
  %cmp.i130 = icmp eq i32 %and3.i129, %4
  br i1 %cmp.i130, label %if.else15.snd_cmipci_clear_bit.exit136_crit_edge, label %do.body.i134

if.else15.snd_cmipci_clear_bit.exit136_crit_edge: ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_clear_bit.exit136

do.body.i134:                                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %60 = tail call i32 @llvm.bswap.i32(i32 %and3.i129) #12
  %61 = ptrtoint ptr %iobase.i125 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %iobase.i125, align 4
  %add5.i131 = add i32 %62, 8
  %and6.i132 = and i32 %add5.i131, 1048575
  %add7.i133 = or i32 %and6.i132, -18874368
  %63 = inttoptr i32 %add7.i133 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %63, i32 %60) #12, !srcloc !397
  br label %snd_cmipci_clear_bit.exit136

snd_cmipci_clear_bit.exit136:                     ; preds = %do.body.i134, %if.else15.snd_cmipci_clear_bit.exit136_crit_edge
  %64 = ptrtoint ptr %iobase.i125 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %iobase.i125, align 4
  %add.i138 = add i32 %65, 24
  %and.i139 = and i32 %add.i138, 1048575
  %add1.i140 = or i32 %and.i139, -18874368
  %66 = inttoptr i32 %add1.i140 to ptr
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %66) #12, !srcloc !393
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  %and3.i141 = and i32 %68, -262145
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i141, i32 %68)
  %cmp.i142 = icmp eq i32 %and3.i141, %68
  br i1 %cmp.i142, label %snd_cmipci_clear_bit.exit136.snd_cmipci_clear_bit.exit148_crit_edge, label %do.body.i146

snd_cmipci_clear_bit.exit136.snd_cmipci_clear_bit.exit148_crit_edge: ; preds = %snd_cmipci_clear_bit.exit136
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_clear_bit.exit148

do.body.i146:                                     ; preds = %snd_cmipci_clear_bit.exit136
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %69 = tail call i32 @llvm.bswap.i32(i32 %and3.i141) #12
  %70 = ptrtoint ptr %iobase.i125 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %iobase.i125, align 4
  %add5.i143 = add i32 %71, 24
  %and6.i144 = and i32 %add5.i143, 1048575
  %add7.i145 = or i32 %and6.i144, -18874368
  %72 = inttoptr i32 %add7.i145 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %72, i32 %69) #12, !srcloc !397
  br label %snd_cmipci_clear_bit.exit148

snd_cmipci_clear_bit.exit148:                     ; preds = %do.body.i146, %snd_cmipci_clear_bit.exit136.snd_cmipci_clear_bit.exit148_crit_edge
  %can_ac3_hw18 = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 11
  %73 = ptrtoint ptr %can_ac3_hw18 to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load19 = load i8, ptr %can_ac3_hw18, align 4
  %74 = and i8 %bf.load19, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool23.not = icmp eq i8 %74, 0
  br i1 %tobool23.not, label %if.else34, label %if.then24

if.then24:                                        ; preds = %snd_cmipci_clear_bit.exit148
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 11
  %75 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %runtime, align 4
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %76, i32 0, i32 12
  %77 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %format, align 4
  %call25 = tail call i32 @snd_pcm_format_width(i32 noundef %78) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call25)
  %cmp26 = icmp sgt i32 %call25, 16
  %79 = ptrtoint ptr %iobase.i125 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %iobase.i125, align 4
  %add.i150 = add i32 %80, 24
  %and.i151 = and i32 %add.i150, 1048575
  %add1.i152 = or i32 %and.i151, -18874368
  %81 = inttoptr i32 %add1.i152 to ptr
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %81) #12
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  br i1 %cmp26, label %if.then27, label %if.else30

if.then27:                                        ; preds = %if.then24
  %or.i153 = or i32 %83, 2097152
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i153, i32 %83)
  %cmp.i154 = icmp eq i32 %or.i153, %83
  br i1 %cmp.i154, label %if.then27.snd_cmipci_set_bit.exit160_crit_edge, label %do.body.i158

if.then27.snd_cmipci_set_bit.exit160_crit_edge:   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_set_bit.exit160

do.body.i158:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void @arm_heavy_mb() #12
  %84 = tail call i32 @llvm.bswap.i32(i32 %or.i153) #12
  %85 = ptrtoint ptr %iobase.i125 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %iobase.i125, align 4
  %add4.i155 = add i32 %86, 24
  %and5.i156 = and i32 %add4.i155, 1048575
  %add6.i157 = or i32 %and5.i156, -18874368
  %87 = inttoptr i32 %add6.i157 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %87, i32 %84) #12, !srcloc !397
  br label %snd_cmipci_set_bit.exit160

snd_cmipci_set_bit.exit160:                       ; preds = %do.body.i158, %if.then27.snd_cmipci_set_bit.exit160_crit_edge
  %88 = ptrtoint ptr %iobase.i125 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %iobase.i125, align 4
  %add.i162 = add i32 %89, 8
  %and.i163 = and i32 %add.i162, 1048575
  %add1.i164 = or i32 %and.i163, -18874368
  %90 = inttoptr i32 %add1.i164 to ptr
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %90) #12, !srcloc !393
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  %or.i165 = or i32 %92, 131072
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i165, i32 %92)
  %cmp.i166 = icmp eq i32 %or.i165, %92
  br i1 %cmp.i166, label %snd_cmipci_set_bit.exit160.if.end39_crit_edge, label %do.body.i170

snd_cmipci_set_bit.exit160.if.end39_crit_edge:    ; preds = %snd_cmipci_set_bit.exit160
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

do.body.i170:                                     ; preds = %snd_cmipci_set_bit.exit160
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void @arm_heavy_mb() #12
  %93 = tail call i32 @llvm.bswap.i32(i32 %or.i165) #12
  %94 = ptrtoint ptr %iobase.i125 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %iobase.i125, align 4
  %add4.i167 = add i32 %95, 8
  %and5.i168 = and i32 %add4.i167, 1048575
  %add6.i169 = or i32 %and5.i168, -18874368
  %96 = inttoptr i32 %add6.i169 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %96, i32 %93) #12, !srcloc !397
  br label %if.end39

if.else30:                                        ; preds = %if.then24
  %and3.i177 = and i32 %83, -2097153
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i177, i32 %83)
  %cmp.i178 = icmp eq i32 %and3.i177, %83
  br i1 %cmp.i178, label %if.else30.snd_cmipci_clear_bit.exit184_crit_edge, label %do.body.i182

if.else30.snd_cmipci_clear_bit.exit184_crit_edge: ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_clear_bit.exit184

do.body.i182:                                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %97 = tail call i32 @llvm.bswap.i32(i32 %and3.i177) #12
  %98 = ptrtoint ptr %iobase.i125 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %iobase.i125, align 4
  %add5.i179 = add i32 %99, 24
  %and6.i180 = and i32 %add5.i179, 1048575
  %add7.i181 = or i32 %and6.i180, -18874368
  %100 = inttoptr i32 %add7.i181 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %100, i32 %97) #12, !srcloc !397
  br label %snd_cmipci_clear_bit.exit184

snd_cmipci_clear_bit.exit184:                     ; preds = %do.body.i182, %if.else30.snd_cmipci_clear_bit.exit184_crit_edge
  %101 = ptrtoint ptr %iobase.i125 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %iobase.i125, align 4
  %add.i186 = add i32 %102, 8
  %and.i187 = and i32 %add.i186, 1048575
  %add1.i188 = or i32 %and.i187, -18874368
  %103 = inttoptr i32 %add1.i188 to ptr
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %103) #12, !srcloc !393
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  %and3.i189 = and i32 %105, -131073
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i189, i32 %105)
  %cmp.i190 = icmp eq i32 %and3.i189, %105
  br i1 %cmp.i190, label %snd_cmipci_clear_bit.exit184.if.end39_crit_edge, label %do.body.i194

snd_cmipci_clear_bit.exit184.if.end39_crit_edge:  ; preds = %snd_cmipci_clear_bit.exit184
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

do.body.i194:                                     ; preds = %snd_cmipci_clear_bit.exit184
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %106 = tail call i32 @llvm.bswap.i32(i32 %and3.i189) #12
  %107 = ptrtoint ptr %iobase.i125 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %iobase.i125, align 4
  %add5.i191 = add i32 %108, 8
  %and6.i192 = and i32 %add5.i191, 1048575
  %add7.i193 = or i32 %and6.i192, -18874368
  %109 = inttoptr i32 %add7.i193 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %109, i32 %106) #12, !srcloc !397
  br label %if.end39

if.else34:                                        ; preds = %snd_cmipci_clear_bit.exit148
  %110 = ptrtoint ptr %iobase.i125 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %iobase.i125, align 4
  %add.i198 = add i32 %111, 24
  %and.i199 = and i32 %add.i198, 1048575
  %add1.i200 = or i32 %and.i199, -18874368
  %112 = inttoptr i32 %add1.i200 to ptr
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %112) #12, !srcloc !393
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  %and3.i201 = and i32 %114, -2097153
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i201, i32 %114)
  %cmp.i202 = icmp eq i32 %and3.i201, %114
  br i1 %cmp.i202, label %if.else34.snd_cmipci_clear_bit.exit208_crit_edge, label %do.body.i206

if.else34.snd_cmipci_clear_bit.exit208_crit_edge: ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_clear_bit.exit208

do.body.i206:                                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %115 = tail call i32 @llvm.bswap.i32(i32 %and3.i201) #12
  %116 = ptrtoint ptr %iobase.i125 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %iobase.i125, align 4
  %add5.i203 = add i32 %117, 24
  %and6.i204 = and i32 %add5.i203, 1048575
  %add7.i205 = or i32 %and6.i204, -18874368
  %118 = inttoptr i32 %add7.i205 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %118, i32 %115) #12, !srcloc !397
  br label %snd_cmipci_clear_bit.exit208

snd_cmipci_clear_bit.exit208:                     ; preds = %do.body.i206, %if.else34.snd_cmipci_clear_bit.exit208_crit_edge
  %119 = ptrtoint ptr %iobase.i125 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %iobase.i125, align 4
  %add.i210 = add i32 %120, 8
  %and.i211 = and i32 %add.i210, 1048575
  %add1.i212 = or i32 %and.i211, -18874368
  %121 = inttoptr i32 %add1.i212 to ptr
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %121) #12, !srcloc !393
  %123 = tail call i32 @llvm.bswap.i32(i32 %122) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  %and3.i213 = and i32 %123, -131073
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i213, i32 %123)
  %cmp.i214 = icmp eq i32 %and3.i213, %123
  br i1 %cmp.i214, label %snd_cmipci_clear_bit.exit208.snd_cmipci_clear_bit.exit220_crit_edge, label %do.body.i218

snd_cmipci_clear_bit.exit208.snd_cmipci_clear_bit.exit220_crit_edge: ; preds = %snd_cmipci_clear_bit.exit208
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_clear_bit.exit220

do.body.i218:                                     ; preds = %snd_cmipci_clear_bit.exit208
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %124 = tail call i32 @llvm.bswap.i32(i32 %and3.i213) #12
  %125 = ptrtoint ptr %iobase.i125 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %iobase.i125, align 4
  %add5.i215 = add i32 %126, 8
  %and6.i216 = and i32 %add5.i215, 1048575
  %add7.i217 = or i32 %and6.i216, -18874368
  %127 = inttoptr i32 %add7.i217 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %127, i32 %124) #12, !srcloc !397
  br label %snd_cmipci_clear_bit.exit220

snd_cmipci_clear_bit.exit220:                     ; preds = %do.body.i218, %snd_cmipci_clear_bit.exit208.snd_cmipci_clear_bit.exit220_crit_edge
  %128 = ptrtoint ptr %iobase.i125 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %iobase.i125, align 4
  %add.i222 = add i32 %129, 8
  %and.i223 = and i32 %add.i222, 1048575
  %add1.i224 = or i32 %and.i223, -18874368
  %130 = inttoptr i32 %add1.i224 to ptr
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %130) #12, !srcloc !393
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  %and3.i225 = and i32 %132, -513
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i225, i32 %132)
  %cmp.i226 = icmp eq i32 %and3.i225, %132
  br i1 %cmp.i226, label %snd_cmipci_clear_bit.exit220.if.end39_crit_edge, label %do.body.i230

snd_cmipci_clear_bit.exit220.if.end39_crit_edge:  ; preds = %snd_cmipci_clear_bit.exit220
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

do.body.i230:                                     ; preds = %snd_cmipci_clear_bit.exit220
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %133 = tail call i32 @llvm.bswap.i32(i32 %and3.i225) #12
  %134 = ptrtoint ptr %iobase.i125 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %iobase.i125, align 4
  %add5.i227 = add i32 %135, 8
  %and6.i228 = and i32 %add5.i227, 1048575
  %add7.i229 = or i32 %and6.i228, -18874368
  %136 = inttoptr i32 %add7.i229 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %136, i32 %133) #12, !srcloc !397
  br label %if.end39

if.end39:                                         ; preds = %do.body.i230, %snd_cmipci_clear_bit.exit220.if.end39_crit_edge, %do.body.i194, %snd_cmipci_clear_bit.exit184.if.end39_crit_edge, %do.body.i170, %snd_cmipci_set_bit.exit160.if.end39_crit_edge, %do.body.i122, %if.else11.if.end39_crit_edge, %do.body.i110, %if.then9.if.end39_crit_edge, %snd_cmipci_set_bit.exit100.if.end39_crit_edge, %do.body.i87, %snd_cmipci_set_bit.exit81.if.end39_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_dac_channels(ptr noundef %cm, ptr nocapture noundef readonly %rec, i32 noundef %channels) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %channels)
  %cmp = icmp sgt i32 %channels, 2
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then:                                          ; preds = %entry
  %can_multi_ch = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 11
  %0 = ptrtoint ptr %can_multi_ch to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %can_multi_ch, align 4
  %1 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then.return_crit_edge, label %lor.lhs.false

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false:                                    ; preds = %if.then
  %ch = getelementptr inbounds %struct.cmipci_pcm, ptr %rec, i32 0, i32 7
  %2 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %fmt = getelementptr inbounds %struct.cmipci_pcm, ptr %rec, i32 0, i32 2
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fmt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp3.not = icmp eq i8 %5, 3
  br i1 %cmp3.not, label %if.end.if.end7_crit_edge, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %entry.if.end7_crit_edge
  %can_multi_ch8 = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 11
  %6 = ptrtoint ptr %can_multi_ch8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load9 = load i8, ptr %can_multi_ch8, align 4
  %7 = and i8 %bf.load9, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool13.not = icmp eq i8 %7, 0
  br i1 %tobool13.not, label %if.end7.return_crit_edge, label %if.then14

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then14:                                        ; preds = %if.end7
  %reg_lock = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 24
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %iobase.i = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 4
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %9, 20
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %10 = inttoptr i32 %add1.i to ptr
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %10) #12
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  br i1 %cmp, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then14
  %or.i = or i32 %12, -2147483648
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %12)
  %cmp.i = icmp eq i32 %or.i, %12
  br i1 %cmp.i, label %if.then17.snd_cmipci_set_bit.exit_crit_edge, label %do.body.i

if.then17.snd_cmipci_set_bit.exit_crit_edge:      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_set_bit.exit

do.body.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void @arm_heavy_mb() #12
  %13 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %14 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase.i, align 4
  %add4.i = add i32 %15, 20
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %16 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 %13) #12, !srcloc !397
  br label %snd_cmipci_set_bit.exit

snd_cmipci_set_bit.exit:                          ; preds = %do.body.i, %if.then17.snd_cmipci_set_bit.exit_crit_edge
  %17 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase.i, align 4
  %add.i68 = add i32 %18, 24
  %and.i69 = and i32 %add.i68, 1048575
  %add1.i70 = or i32 %and.i69, -18874368
  %19 = inttoptr i32 %add1.i70 to ptr
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %19) #12, !srcloc !393
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  %or.i71 = or i32 %21, 4194304
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i71, i32 %21)
  %cmp.i72 = icmp eq i32 %or.i71, %21
  br i1 %cmp.i72, label %snd_cmipci_set_bit.exit.if.end21_crit_edge, label %do.body.i76

snd_cmipci_set_bit.exit.if.end21_crit_edge:       ; preds = %snd_cmipci_set_bit.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

do.body.i76:                                      ; preds = %snd_cmipci_set_bit.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void @arm_heavy_mb() #12
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i71) #12
  %23 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iobase.i, align 4
  %add4.i73 = add i32 %24, 24
  %and5.i74 = and i32 %add4.i73, 1048575
  %add6.i75 = or i32 %and5.i74, -18874368
  %25 = inttoptr i32 %add6.i75 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %25, i32 %22) #12, !srcloc !397
  br label %if.end21

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %26 = icmp sgt i32 %12, -1
  br i1 %26, label %if.else.snd_cmipci_clear_bit.exit_crit_edge, label %do.body.i84

if.else.snd_cmipci_clear_bit.exit_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_clear_bit.exit

do.body.i84:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %and3.i = and i32 %12, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %27 = tail call i32 @llvm.bswap.i32(i32 %and3.i) #12
  %28 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iobase.i, align 4
  %add5.i = add i32 %29, 20
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %30 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %30, i32 %27) #12, !srcloc !397
  br label %snd_cmipci_clear_bit.exit

snd_cmipci_clear_bit.exit:                        ; preds = %do.body.i84, %if.else.snd_cmipci_clear_bit.exit_crit_edge
  %31 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iobase.i, align 4
  %add.i87 = add i32 %32, 24
  %and.i88 = and i32 %add.i87, 1048575
  %add1.i89 = or i32 %and.i88, -18874368
  %33 = inttoptr i32 %add1.i89 to ptr
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %33) #12, !srcloc !393
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  %and3.i90 = and i32 %35, -4194305
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i90, i32 %35)
  %cmp.i91 = icmp eq i32 %and3.i90, %35
  br i1 %cmp.i91, label %snd_cmipci_clear_bit.exit.if.else26_crit_edge, label %do.body.i95

snd_cmipci_clear_bit.exit.if.else26_crit_edge:    ; preds = %snd_cmipci_clear_bit.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else26

do.body.i95:                                      ; preds = %snd_cmipci_clear_bit.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %36 = tail call i32 @llvm.bswap.i32(i32 %and3.i90) #12
  %37 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iobase.i, align 4
  %add5.i92 = add i32 %38, 24
  %and6.i93 = and i32 %add5.i92, 1048575
  %add7.i94 = or i32 %and6.i93, -18874368
  %39 = inttoptr i32 %add7.i94 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %39, i32 %36) #12, !srcloc !397
  br label %if.else26

if.end21:                                         ; preds = %do.body.i76, %snd_cmipci_set_bit.exit.if.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %channels)
  %cmp22 = icmp eq i32 %channels, 8
  br i1 %cmp22, label %if.then24, label %if.end21.if.else26_crit_edge

if.end21.if.else26_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else26

if.then24:                                        ; preds = %if.end21
  %40 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %iobase.i, align 4
  %add.i99 = add i32 %41, 144
  %and.i100 = and i32 %add.i99, 1048575
  %add1.i101 = or i32 %and.i100, -18874368
  %42 = inttoptr i32 %add1.i101 to ptr
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %42) #12, !srcloc !393
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  %or.i102 = or i32 %44, 2097152
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i102, i32 %44)
  %cmp.i103 = icmp eq i32 %or.i102, %44
  br i1 %cmp.i103, label %if.then24.if.else34_crit_edge, label %do.body.i107

if.then24.if.else34_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else34

do.body.i107:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void @arm_heavy_mb() #12
  %45 = tail call i32 @llvm.bswap.i32(i32 %or.i102) #12
  %46 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %iobase.i, align 4
  %add4.i104 = add i32 %47, 144
  %and5.i105 = and i32 %add4.i104, 1048575
  %add6.i106 = or i32 %and5.i105, -18874368
  %48 = inttoptr i32 %add6.i106 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %48, i32 %45) #12, !srcloc !397
  br label %if.else34

if.else26:                                        ; preds = %if.end21.if.else26_crit_edge, %do.body.i95, %snd_cmipci_clear_bit.exit.if.else26_crit_edge
  %iobase.i110 = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 4
  %49 = ptrtoint ptr %iobase.i110 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %iobase.i110, align 4
  %add.i111 = add i32 %50, 144
  %and.i112 = and i32 %add.i111, 1048575
  %add1.i113 = or i32 %and.i112, -18874368
  %51 = inttoptr i32 %add1.i113 to ptr
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %51) #12, !srcloc !393
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  %and3.i114 = and i32 %53, -2097153
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i114, i32 %53)
  %cmp.i115 = icmp eq i32 %and3.i114, %53
  br i1 %cmp.i115, label %if.else26.if.end28_crit_edge, label %do.body.i119

if.else26.if.end28_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

do.body.i119:                                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %54 = tail call i32 @llvm.bswap.i32(i32 %and3.i114) #12
  %55 = ptrtoint ptr %iobase.i110 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %iobase.i110, align 4
  %add5.i116 = add i32 %56, 144
  %and6.i117 = and i32 %add5.i116, 1048575
  %add7.i118 = or i32 %and6.i117, -18874368
  %57 = inttoptr i32 %add7.i118 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %57, i32 %54) #12, !srcloc !397
  br label %if.end28

if.end28:                                         ; preds = %do.body.i119, %if.else26.if.end28_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %channels)
  %cmp29 = icmp eq i32 %channels, 6
  br i1 %cmp29, label %if.then31, label %if.end28.if.else34_crit_edge

if.end28.if.else34_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else34

if.then31:                                        ; preds = %if.end28
  %58 = ptrtoint ptr %iobase.i110 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %iobase.i110, align 4
  %add.i123 = add i32 %59, 8
  %and.i124 = and i32 %add.i123, 1048575
  %add1.i125 = or i32 %and.i124, -18874368
  %60 = inttoptr i32 %add1.i125 to ptr
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %60) #12, !srcloc !393
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  %or.i126 = or i32 %62, -2147483648
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i126, i32 %62)
  %cmp.i127 = icmp eq i32 %or.i126, %62
  br i1 %cmp.i127, label %if.then31.snd_cmipci_set_bit.exit133_crit_edge, label %do.body.i131

if.then31.snd_cmipci_set_bit.exit133_crit_edge:   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_set_bit.exit133

do.body.i131:                                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void @arm_heavy_mb() #12
  %63 = tail call i32 @llvm.bswap.i32(i32 %or.i126) #12
  %64 = ptrtoint ptr %iobase.i110 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %iobase.i110, align 4
  %add4.i128 = add i32 %65, 8
  %and5.i129 = and i32 %add4.i128, 1048575
  %add6.i130 = or i32 %and5.i129, -18874368
  %66 = inttoptr i32 %add6.i130 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %66, i32 %63) #12, !srcloc !397
  br label %snd_cmipci_set_bit.exit133

snd_cmipci_set_bit.exit133:                       ; preds = %do.body.i131, %if.then31.snd_cmipci_set_bit.exit133_crit_edge
  %67 = ptrtoint ptr %iobase.i110 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %iobase.i110, align 4
  %add.i135 = add i32 %68, 20
  %and.i136 = and i32 %add.i135, 1048575
  %add1.i137 = or i32 %and.i136, -18874368
  %69 = inttoptr i32 %add1.i137 to ptr
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %69) #12, !srcloc !393
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  %or.i138 = or i32 %71, 32768
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i138, i32 %71)
  %cmp.i139 = icmp eq i32 %or.i138, %71
  br i1 %cmp.i139, label %snd_cmipci_set_bit.exit133.if.else42_crit_edge, label %do.body.i143

snd_cmipci_set_bit.exit133.if.else42_crit_edge:   ; preds = %snd_cmipci_set_bit.exit133
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else42

do.body.i143:                                     ; preds = %snd_cmipci_set_bit.exit133
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void @arm_heavy_mb() #12
  %72 = tail call i32 @llvm.bswap.i32(i32 %or.i138) #12
  %73 = ptrtoint ptr %iobase.i110 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %iobase.i110, align 4
  %add4.i140 = add i32 %74, 20
  %and5.i141 = and i32 %add4.i140, 1048575
  %add6.i142 = or i32 %and5.i141, -18874368
  %75 = inttoptr i32 %add6.i142 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %75, i32 %72) #12, !srcloc !397
  br label %if.else42

if.else34:                                        ; preds = %if.end28.if.else34_crit_edge, %do.body.i107, %if.then24.if.else34_crit_edge
  %iobase.i146 = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 4
  %76 = ptrtoint ptr %iobase.i146 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %iobase.i146, align 4
  %add.i147 = add i32 %77, 8
  %and.i148 = and i32 %add.i147, 1048575
  %add1.i149 = or i32 %and.i148, -18874368
  %78 = inttoptr i32 %add1.i149 to ptr
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %78) #12, !srcloc !393
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %80)
  %81 = icmp sgt i32 %80, -1
  br i1 %81, label %if.else34.snd_cmipci_clear_bit.exit157_crit_edge, label %do.body.i155

if.else34.snd_cmipci_clear_bit.exit157_crit_edge: ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_clear_bit.exit157

do.body.i155:                                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #14
  %and3.i150 = and i32 %80, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %82 = tail call i32 @llvm.bswap.i32(i32 %and3.i150) #12
  %83 = ptrtoint ptr %iobase.i146 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %iobase.i146, align 4
  %add5.i152 = add i32 %84, 8
  %and6.i153 = and i32 %add5.i152, 1048575
  %add7.i154 = or i32 %and6.i153, -18874368
  %85 = inttoptr i32 %add7.i154 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %85, i32 %82) #12, !srcloc !397
  br label %snd_cmipci_clear_bit.exit157

snd_cmipci_clear_bit.exit157:                     ; preds = %do.body.i155, %if.else34.snd_cmipci_clear_bit.exit157_crit_edge
  %86 = ptrtoint ptr %iobase.i146 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %iobase.i146, align 4
  %add.i159 = add i32 %87, 20
  %and.i160 = and i32 %add.i159, 1048575
  %add1.i161 = or i32 %and.i160, -18874368
  %88 = inttoptr i32 %add1.i161 to ptr
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %88) #12, !srcloc !393
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  %and3.i162 = and i32 %90, -32769
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i162, i32 %90)
  %cmp.i163 = icmp eq i32 %and3.i162, %90
  br i1 %cmp.i163, label %snd_cmipci_clear_bit.exit157.if.end37_crit_edge, label %do.body.i167

snd_cmipci_clear_bit.exit157.if.end37_crit_edge:  ; preds = %snd_cmipci_clear_bit.exit157
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

do.body.i167:                                     ; preds = %snd_cmipci_clear_bit.exit157
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %91 = tail call i32 @llvm.bswap.i32(i32 %and3.i162) #12
  %92 = ptrtoint ptr %iobase.i146 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %iobase.i146, align 4
  %add5.i164 = add i32 %93, 20
  %and6.i165 = and i32 %add5.i164, 1048575
  %add7.i166 = or i32 %and6.i165, -18874368
  %94 = inttoptr i32 %add7.i166 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %94, i32 %91) #12, !srcloc !397
  br label %if.end37

if.end37:                                         ; preds = %do.body.i167, %snd_cmipci_clear_bit.exit157.if.end37_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %channels)
  %cmp38 = icmp eq i32 %channels, 4
  br i1 %cmp38, label %if.then40, label %if.end37.if.else42_crit_edge

if.end37.if.else42_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else42

if.then40:                                        ; preds = %if.end37
  %95 = ptrtoint ptr %iobase.i146 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %iobase.i146, align 4
  %add.i171 = add i32 %96, 8
  %and.i172 = and i32 %add.i171, 1048575
  %add1.i173 = or i32 %and.i172, -18874368
  %97 = inttoptr i32 %add1.i173 to ptr
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %97) #12, !srcloc !393
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  %or.i174 = or i32 %99, 536870912
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i174, i32 %99)
  %cmp.i175 = icmp eq i32 %or.i174, %99
  br i1 %cmp.i175, label %if.then40.if.end44_crit_edge, label %do.body.i179

if.then40.if.end44_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

do.body.i179:                                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void @arm_heavy_mb() #12
  %100 = tail call i32 @llvm.bswap.i32(i32 %or.i174) #12
  %101 = ptrtoint ptr %iobase.i146 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %iobase.i146, align 4
  %add4.i176 = add i32 %102, 8
  %and5.i177 = and i32 %add4.i176, 1048575
  %add6.i178 = or i32 %and5.i177, -18874368
  %103 = inttoptr i32 %add6.i178 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %103, i32 %100) #12, !srcloc !397
  br label %if.end44

if.else42:                                        ; preds = %if.end37.if.else42_crit_edge, %do.body.i143, %snd_cmipci_set_bit.exit133.if.else42_crit_edge
  %iobase.i182 = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 4
  %104 = ptrtoint ptr %iobase.i182 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %iobase.i182, align 4
  %add.i183 = add i32 %105, 8
  %and.i184 = and i32 %add.i183, 1048575
  %add1.i185 = or i32 %and.i184, -18874368
  %106 = inttoptr i32 %add1.i185 to ptr
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %106) #12, !srcloc !393
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  %and3.i186 = and i32 %108, -536870913
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i186, i32 %108)
  %cmp.i187 = icmp eq i32 %and3.i186, %108
  br i1 %cmp.i187, label %if.else42.if.end44_crit_edge, label %do.body.i191

if.else42.if.end44_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

do.body.i191:                                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %109 = tail call i32 @llvm.bswap.i32(i32 %and3.i186) #12
  %110 = ptrtoint ptr %iobase.i182 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %iobase.i182, align 4
  %add5.i188 = add i32 %111, 8
  %and6.i189 = and i32 %add5.i188, 1048575
  %add7.i190 = or i32 %and6.i189, -18874368
  %112 = inttoptr i32 %add7.i190 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %112, i32 %109) #12, !srcloc !397
  br label %if.end44

if.end44:                                         ; preds = %do.body.i191, %if.else42.if.end44_crit_edge, %do.body.i179, %if.then40.if.end44_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  br label %return

return:                                           ; preds = %if.end44, %if.end7.return_crit_edge, %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %if.then.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ 0, %if.end44 ], [ 0, %if.end7.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_cmipci_pcm_prepare(ptr noundef %cm, ptr nocapture noundef %rec, ptr nocapture noundef readonly %substream) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %fmt = getelementptr inbounds %struct.cmipci_pcm, ptr %rec, i32 0, i32 2
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %fmt, align 1
  %shift = getelementptr inbounds %struct.cmipci_pcm, ptr %rec, i32 0, i32 6
  %3 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %shift, align 4
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %format, align 4
  %call = tail call i32 @snd_pcm_format_width(i32 noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call)
  %cmp = icmp sgt i32 %call, 15
  br i1 %cmp, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fmt, align 1
  %8 = or i8 %7, 2
  store i8 %8, ptr %fmt, align 1
  %9 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %format, align 4
  %call5 = tail call i32 @snd_pcm_format_width(i32 noundef %10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call5)
  %cmp6 = icmp sgt i32 %call5, 16
  br i1 %cmp6, label %if.then8, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %shift, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %shift, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 15
  %13 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp11 = icmp ugt i32 %14, 1
  br i1 %cmp11, label %if.then13, label %if.end10.if.end18_crit_edge

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %fmt to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fmt, align 1
  %17 = or i8 %16, 1
  store i8 %17, ptr %fmt, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end10.if.end18_crit_edge
  %is_dac = getelementptr inbounds %struct.cmipci_pcm, ptr %rec, i32 0, i32 3
  %18 = ptrtoint ptr %is_dac to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_dac, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %if.end18.if.end31_crit_edge, label %land.lhs.true

if.end18.if.end31_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end18
  %20 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channels, align 8
  %call21 = tail call fastcc i32 @set_dac_channels(ptr noundef %cm, ptr noundef %rec, i32 noundef %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %do.body, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_cmipci_pcm_prepare.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_cmipci_pcm_prepare, %if.then29)) #12
          to label %cleanup [label %if.then29], !srcloc !410

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %cm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cm, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_cmipci_pcm_prepare.__UNIQUE_ID_ddebug260, ptr noundef %25, ptr noundef nonnull @.str.39) #12
  br label %cleanup

if.end31:                                         ; preds = %land.lhs.true.if.end31_crit_edge, %if.end18.if.end31_crit_edge
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 51
  %26 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_addr, align 8
  %offset = getelementptr inbounds %struct.cmipci_pcm, ptr %rec, i32 0, i32 8
  %28 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %offset, align 4
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 18
  %29 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buffer_size, align 4
  %31 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %shift, align 4
  %shl = shl i32 %30, %32
  %dma_size = getelementptr inbounds %struct.cmipci_pcm, ptr %rec, i32 0, i32 5
  %33 = ptrtoint ptr %dma_size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %shl, ptr %dma_size, align 4
  %period_size33 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 16
  %34 = ptrtoint ptr %period_size33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %period_size33, align 4
  %shl35 = shl i32 %35, %32
  %36 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp37 = icmp ugt i32 %37, 2
  br i1 %cmp37, label %if.then39, label %if.end31.if.end46_crit_edge

if.end31.if.end46_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then39:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %mul = mul i32 %37, %shl
  %div279 = lshr i32 %mul, 1
  %38 = ptrtoint ptr %dma_size to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %div279, ptr %dma_size, align 4
  %39 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %channels, align 8
  %mul44 = mul i32 %40, %shl35
  %div45280 = lshr i32 %mul44, 1
  br label %if.end46

if.end46:                                         ; preds = %if.then39, %if.end31.if.end46_crit_edge
  %period_size.0 = phi i32 [ %div45280, %if.then39 ], [ %shl35, %if.end31.if.end46_crit_edge ]
  %reg_lock = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 24
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %ch = getelementptr inbounds %struct.cmipci_pcm, ptr %rec, i32 0, i32 7
  %41 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool47.not = icmp eq i32 %42, 0
  %cond = select i1 %tobool47.not, i32 128, i32 136
  %43 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %offset, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #12
  %iobase.i = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 4
  %46 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %47, %cond
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %48 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %48, i32 %45) #12, !srcloc !397
  %49 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool50.not = icmp eq i32 %50, 0
  %cond51 = select i1 %tobool50.not, i32 132, i32 140
  %51 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dma_size, align 4
  %53 = trunc i32 %52 to i16
  %conv53 = add i16 %53, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !411
  tail call void @arm_heavy_mb() #12
  %54 = tail call i16 @llvm.bswap.i16(i16 %conv53) #12
  %55 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %iobase.i, align 4
  %add.i288 = add i32 %56, %cond51
  %and.i289 = and i32 %add.i288, 1048575
  %add1.i290 = or i32 %and.i289, -18874368
  %57 = inttoptr i32 %add1.i290 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %57, i16 %54) #12, !srcloc !412
  %add = or i32 %cond51, 2
  %58 = trunc i32 %period_size.0 to i16
  %conv55 = add i16 %58, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !411
  tail call void @arm_heavy_mb() #12
  %59 = tail call i16 @llvm.bswap.i16(i16 %conv55) #12
  %60 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %iobase.i, align 4
  %add.i292 = add i32 %add, %61
  %and.i293 = and i32 %add.i292, 1048575
  %add1.i294 = or i32 %and.i293, -18874368
  %62 = inttoptr i32 %add1.i294 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %62, i16 %59) #12, !srcloc !412
  %63 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool57.not = icmp eq i32 %64, 0
  %cond58 = select i1 %tobool57.not, i32 1, i32 2
  %65 = ptrtoint ptr %is_dac to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %is_dac, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool60.not = icmp eq i8 %66, 0
  br i1 %tobool60.not, label %if.else, label %if.then61

if.then61:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %neg = xor i32 %cond58, -1
  %ctrl = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 5
  %67 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ctrl, align 4
  %and = and i32 %68, %neg
  store i32 %and, ptr %ctrl, align 4
  br label %if.end64

if.else:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %ctrl62 = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 5
  %69 = ptrtoint ptr %ctrl62 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ctrl62, align 4
  %or63 = or i32 %70, %cond58
  store i32 %or63, ptr %ctrl62, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.else, %if.then61
  %ctrl65 = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 5
  %71 = ptrtoint ptr %ctrl65 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ctrl65, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #12
  %74 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %iobase.i, align 4
  %and.i296 = and i32 %75, 1048575
  %add1.i297 = or i32 %and.i296, -18874368
  %76 = inttoptr i32 %add1.i297 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %76, i32 %73) #12, !srcloc !397
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 14
  %77 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %78)
  %cmp66 = icmp ugt i32 %78, 48000
  br i1 %cmp66, label %if.then68, label %if.else97

if.then68:                                        ; preds = %if.end64
  %79 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %78, label %do.end83 [
    i32 88200, label %if.then68.if.end100_crit_edge
    i32 96000, label %sw.bb70
    i32 128000, label %sw.bb71
  ]

if.then68.if.end100_crit_edge:                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100

sw.bb70:                                          ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100

sw.bb71:                                          ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100

do.end83:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 812, i32 noundef 9, ptr noundef nonnull @.str.40) #12
  br label %if.end100

if.else97:                                        ; preds = %if.end64
  %80 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %78, label %for.inc.7.i [
    i32 5512, label %if.else97.if.end100_crit_edge
    i32 11025, label %cleanup.fold.split.i
    i32 22050, label %cleanup.fold.split25.i
    i32 44100, label %cleanup.fold.split26.i
    i32 8000, label %cleanup.fold.split27.i
    i32 16000, label %cleanup.fold.split28.i
    i32 32000, label %cleanup.fold.split29.i
    i32 48000, label %cleanup.fold.split30.i
  ]

if.else97.if.end100_crit_edge:                    ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100

for.inc.7.i:                                      ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 595, i32 noundef 9, ptr noundef nonnull @.str.40) #12
  br label %if.end100

cleanup.fold.split.i:                             ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100

cleanup.fold.split25.i:                           ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100

cleanup.fold.split26.i:                           ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100

cleanup.fold.split27.i:                           ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100

cleanup.fold.split28.i:                           ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100

cleanup.fold.split29.i:                           ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100

cleanup.fold.split30.i:                           ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100

if.end100:                                        ; preds = %cleanup.fold.split30.i, %cleanup.fold.split29.i, %cleanup.fold.split28.i, %cleanup.fold.split27.i, %cleanup.fold.split26.i, %cleanup.fold.split25.i, %cleanup.fold.split.i, %for.inc.7.i, %if.else97.if.end100_crit_edge, %do.end83, %sw.bb71, %sw.bb70, %if.then68.if.end100_crit_edge
  %freq_ext.0 = phi i32 [ 0, %do.end83 ], [ 768, %sw.bb71 ], [ 512, %sw.bb70 ], [ 256, %if.then68.if.end100_crit_edge ], [ 0, %if.else97.if.end100_crit_edge ], [ 0, %for.inc.7.i ], [ 0, %cleanup.fold.split.i ], [ 0, %cleanup.fold.split25.i ], [ 0, %cleanup.fold.split26.i ], [ 0, %cleanup.fold.split27.i ], [ 0, %cleanup.fold.split28.i ], [ 0, %cleanup.fold.split29.i ], [ 0, %cleanup.fold.split30.i ]
  %freq.0 = phi i32 [ 0, %do.end83 ], [ 0, %sw.bb71 ], [ 0, %sw.bb70 ], [ 0, %if.then68.if.end100_crit_edge ], [ 0, %if.else97.if.end100_crit_edge ], [ 0, %for.inc.7.i ], [ 1, %cleanup.fold.split.i ], [ 2, %cleanup.fold.split25.i ], [ 3, %cleanup.fold.split26.i ], [ 4, %cleanup.fold.split27.i ], [ 5, %cleanup.fold.split28.i ], [ 6, %cleanup.fold.split29.i ], [ 7, %cleanup.fold.split30.i ]
  %81 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %iobase.i, align 4
  %add.i300 = add i32 %82, 4
  %and.i301 = and i32 %add.i300, 1048575
  %add1.i302 = or i32 %and.i301, -18874368
  %83 = inttoptr i32 %add1.i302 to ptr
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %83) #12, !srcloc !393
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  %86 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool103.not = icmp eq i32 %87, 0
  %and105 = and i32 %85, -57345
  %shl106 = shl nuw nsw i32 %freq.0, 13
  %or108 = or i32 %and105, %shl106
  %and110 = and i32 %85, -7169
  %shl111 = shl nuw nsw i32 %freq.0, 10
  %or113 = or i32 %and110, %shl111
  %val.0 = select i1 %tobool103.not, i32 %or113, i32 %or108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %88 = tail call i32 @llvm.bswap.i32(i32 %val.0) #12
  %89 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %iobase.i, align 4
  %add.i304 = add i32 %90, 4
  %and.i305 = and i32 %add.i304, 1048575
  %add1.i306 = or i32 %and.i305, -18874368
  %91 = inttoptr i32 %add1.i306 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %91, i32 %88) #12, !srcloc !397
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_cmipci_pcm_prepare.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_cmipci_pcm_prepare, %if.then127)) #12
          to label %do.end132 [label %if.then127], !srcloc !410

if.then127:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  %92 = ptrtoint ptr %cm to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cm, align 4
  %dev129 = getelementptr inbounds %struct.snd_card, ptr %93, i32 0, i32 27
  %94 = ptrtoint ptr %dev129 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev129, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_cmipci_pcm_prepare.__UNIQUE_ID_ddebug261, ptr noundef %95, ptr noundef nonnull @.str.41, i32 noundef %val.0) #12
  br label %do.end132

do.end132:                                        ; preds = %if.then127, %if.end100
  %96 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %iobase.i, align 4
  %add.i308 = add i32 %97, 8
  %and.i309 = and i32 %add.i308, 1048575
  %add1.i310 = or i32 %and.i309, -18874368
  %98 = inttoptr i32 %add1.i310 to ptr
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %98) #12, !srcloc !393
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  %101 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool135.not = icmp eq i32 %102, 0
  br i1 %tobool135.not, label %if.else142, label %if.then136

if.then136:                                       ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #14
  %and137 = and i32 %100, -13
  %103 = ptrtoint ptr %fmt to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %fmt, align 1
  %conv139 = zext i8 %104 to i32
  %shl140 = shl nuw nsw i32 %conv139, 2
  %or141 = or i32 %shl140, %and137
  br label %if.end148

if.else142:                                       ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #14
  %and143 = and i32 %100, -4
  %105 = ptrtoint ptr %fmt to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %fmt, align 1
  %conv145 = zext i8 %106 to i32
  %or147 = or i32 %and143, %conv145
  br label %if.end148

if.end148:                                        ; preds = %if.else142, %if.then136
  %val.1 = phi i32 [ %or141, %if.then136 ], [ %or147, %if.else142 ]
  %can_96k = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 11
  %107 = ptrtoint ptr %can_96k to i32
  call void @__asan_load1_noabort(i32 %107)
  %bf.load = load i8, ptr %can_96k, align 4
  %108 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool149.not = icmp eq i8 %108, 0
  br i1 %tobool149.not, label %if.end148.if.end160_crit_edge, label %if.then150

if.end148.if.end160_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end160

if.then150:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #14
  %mul152 = shl i32 %102, 1
  %shl153 = shl i32 768, %mul152
  %neg154 = xor i32 %shl153, -1
  %and155 = and i32 %val.1, %neg154
  %shl158 = shl i32 %freq_ext.0, %mul152
  %or159 = or i32 %and155, %shl158
  br label %if.end160

if.end160:                                        ; preds = %if.then150, %if.end148.if.end160_crit_edge
  %val.2 = phi i32 [ %or159, %if.then150 ], [ %val.1, %if.end148.if.end160_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %109 = tail call i32 @llvm.bswap.i32(i32 %val.2) #12
  %110 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %iobase.i, align 4
  %add.i312 = add i32 %111, 8
  %and.i313 = and i32 %add.i312, 1048575
  %add1.i314 = or i32 %and.i313, -18874368
  %112 = inttoptr i32 %add1.i314 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %112, i32 %109) #12, !srcloc !397
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_cmipci_pcm_prepare.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_cmipci_pcm_prepare, %if.then173)) #12
          to label %do.end178 [label %if.then173], !srcloc !410

if.then173:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #14
  %113 = ptrtoint ptr %cm to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cm, align 4
  %dev175 = getelementptr inbounds %struct.snd_card, ptr %114, i32 0, i32 27
  %115 = ptrtoint ptr %dev175 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev175, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_cmipci_pcm_prepare.__UNIQUE_ID_ddebug262, ptr noundef %116, ptr noundef nonnull @.str.42, i32 noundef %val.2) #12
  br label %do.end178

do.end178:                                        ; preds = %if.then173, %if.end160
  %117 = ptrtoint ptr %is_dac to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %is_dac, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool180.not = icmp eq i8 %118, 0
  br i1 %tobool180.not, label %land.lhs.true181, label %do.end178.if.end192_crit_edge

do.end178.if.end192_crit_edge:                    ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end192

land.lhs.true181:                                 ; preds = %do.end178
  %chip_version = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 9
  %119 = ptrtoint ptr %chip_version to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %chip_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool182.not = icmp eq i32 %120, 0
  br i1 %tobool182.not, label %land.lhs.true181.if.end192_crit_edge, label %if.then183

land.lhs.true181.if.end192_crit_edge:             ; preds = %land.lhs.true181
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end192

if.then183:                                       ; preds = %land.lhs.true181
  %121 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44100, i32 %122)
  %cmp185 = icmp ugt i32 %122, 44100
  %123 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %iobase.i, align 4
  %add.i316 = add i32 %124, 144
  %and.i317 = and i32 %add.i316, 1048575
  %add1.i318 = or i32 %and.i317, -18874368
  %125 = inttoptr i32 %add1.i318 to ptr
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %125) #12
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  br i1 %cmp185, label %if.then187, label %if.else189

if.then187:                                       ; preds = %if.then183
  %or.i = or i32 %127, 268435456
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %127)
  %cmp.i = icmp eq i32 %or.i, %127
  br i1 %cmp.i, label %if.then187.if.end192_crit_edge, label %do.body.i

if.then187.if.end192_crit_edge:                   ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end192

do.body.i:                                        ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void @arm_heavy_mb() #12
  %128 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %129 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %iobase.i, align 4
  %add4.i = add i32 %130, 144
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %131 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %131, i32 %128) #12, !srcloc !397
  br label %if.end192

if.else189:                                       ; preds = %if.then183
  %and3.i = and i32 %127, -268435457
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i, i32 %127)
  %cmp.i324 = icmp eq i32 %and3.i, %127
  br i1 %cmp.i324, label %if.else189.if.end192_crit_edge, label %do.body.i325

if.else189.if.end192_crit_edge:                   ; preds = %if.else189
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end192

do.body.i325:                                     ; preds = %if.else189
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %132 = tail call i32 @llvm.bswap.i32(i32 %and3.i) #12
  %133 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %iobase.i, align 4
  %add5.i = add i32 %134, 144
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %135 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %135, i32 %132) #12, !srcloc !397
  br label %if.end192

if.end192:                                        ; preds = %do.body.i325, %if.else189.if.end192_crit_edge, %do.body.i, %if.then187.if.end192_crit_edge, %land.lhs.true181.if.end192_crit_edge, %do.end178.if.end192_crit_edge
  %running = getelementptr inbounds %struct.cmipci_pcm, ptr %rec, i32 0, i32 1
  %136 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %running, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end192, %if.then29, %do.body
  %retval.0 = phi i32 [ 0, %if.end192 ], [ -22, %if.then29 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_cmipci_pcm_trigger(ptr noundef %cm, ptr nocapture noundef %rec, i32 noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ch = getelementptr inbounds %struct.cmipci_pcm, ptr %rec, i32 0, i32 7
  %0 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ch, align 4
  %shl = shl i32 65536, %1
  %shl6 = shl i32 4, %1
  %reg_lock = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 24
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #12
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb12
    i32 3, label %entry.sw.bb21_crit_edge
    i32 5, label %entry.sw.bb21_crit_edge85
    i32 4, label %entry.sw.bb25_crit_edge
    i32 6, label %entry.sw.bb25_crit_edge86
  ]

entry.sw.bb25_crit_edge86:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb25

entry.sw.bb25_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb25

entry.sw.bb21_crit_edge85:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb21

entry.sw.bb21_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb21

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %running = getelementptr inbounds %struct.cmipci_pcm, ptr %rec, i32 0, i32 1
  %3 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %running, align 4
  %iobase.i = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 4
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %5, 12
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #12, !srcloc !393
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  %or.i = or i32 %8, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %8)
  %cmp.i = icmp eq i32 %or.i, %8
  br i1 %cmp.i, label %sw.bb.snd_cmipci_set_bit.exit_crit_edge, label %do.body.i

sw.bb.snd_cmipci_set_bit.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_set_bit.exit

do.body.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void @arm_heavy_mb() #12
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %10 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase.i, align 4
  %add4.i = add i32 %11, 12
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %12 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %12, i32 %9) #12, !srcloc !397
  br label %snd_cmipci_set_bit.exit

snd_cmipci_set_bit.exit:                          ; preds = %do.body.i, %sw.bb.snd_cmipci_set_bit.exit_crit_edge
  %ctrl = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 5
  %13 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ctrl, align 4
  %or = or i32 %14, %shl
  store i32 %or, ptr %ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %15 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %16 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase.i, align 4
  %and.i63 = and i32 %17, 1048575
  %add1.i64 = or i32 %and.i63, -18874368
  %18 = inttoptr i32 %add1.i64 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %18, i32 %15) #12, !srcloc !397
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_cmipci_pcm_trigger.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_cmipci_pcm_trigger, %if.then)) #12
          to label %sw.epilog [label %if.then], !srcloc !410

if.then:                                          ; preds = %snd_cmipci_set_bit.exit
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %cm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cm, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %23 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ctrl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_cmipci_pcm_trigger.__UNIQUE_ID_ddebug263, ptr noundef %22, ptr noundef nonnull @.str.44, i32 noundef %24) #12
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %shl4 = shl i32 262144, %1
  %running13 = getelementptr inbounds %struct.cmipci_pcm, ptr %rec, i32 0, i32 1
  %25 = ptrtoint ptr %running13 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %running13, align 4
  %iobase.i65 = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 4
  %26 = ptrtoint ptr %iobase.i65 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iobase.i65, align 4
  %add.i66 = add i32 %27, 12
  %and.i67 = and i32 %add.i66, 1048575
  %add1.i68 = or i32 %and.i67, -18874368
  %28 = inttoptr i32 %add1.i68 to ptr
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %28) #12, !srcloc !393
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  %neg.i = xor i32 %shl, -1
  %and3.i = and i32 %30, %neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i, i32 %30)
  %cmp.i69 = icmp eq i32 %and3.i, %30
  br i1 %cmp.i69, label %sw.bb12.snd_cmipci_clear_bit.exit_crit_edge, label %do.body.i70

sw.bb12.snd_cmipci_clear_bit.exit_crit_edge:      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_clear_bit.exit

do.body.i70:                                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %31 = tail call i32 @llvm.bswap.i32(i32 %and3.i) #12
  %32 = ptrtoint ptr %iobase.i65 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iobase.i65, align 4
  %add5.i = add i32 %33, 12
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %34 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %34, i32 %31) #12, !srcloc !397
  br label %snd_cmipci_clear_bit.exit

snd_cmipci_clear_bit.exit:                        ; preds = %do.body.i70, %sw.bb12.snd_cmipci_clear_bit.exit_crit_edge
  %ctrl15 = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 5
  %35 = ptrtoint ptr %ctrl15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ctrl15, align 4
  %and = and i32 %36, %neg.i
  store i32 %and, ptr %ctrl15, align 4
  %or17 = or i32 %and, %shl4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %37 = tail call i32 @llvm.bswap.i32(i32 %or17) #12
  %38 = ptrtoint ptr %iobase.i65 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %iobase.i65, align 4
  %and.i73 = and i32 %39, 1048575
  %add1.i74 = or i32 %and.i73, -18874368
  %40 = inttoptr i32 %add1.i74 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %40, i32 %37) #12, !srcloc !397
  %41 = ptrtoint ptr %ctrl15 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ctrl15, align 4
  %neg19 = xor i32 %shl4, -1
  %and20 = and i32 %42, %neg19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %43 = tail call i32 @llvm.bswap.i32(i32 %and20) #12
  %44 = ptrtoint ptr %iobase.i65 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %iobase.i65, align 4
  %and.i76 = and i32 %45, 1048575
  %add1.i77 = or i32 %and.i76, -18874368
  %46 = inttoptr i32 %add1.i77 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %46, i32 %43) #12, !srcloc !397
  %is_dac = getelementptr inbounds %struct.cmipci_pcm, ptr %rec, i32 0, i32 3
  %47 = ptrtoint ptr %is_dac to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %is_dac, align 2
  %needs_silencing = getelementptr inbounds %struct.cmipci_pcm, ptr %rec, i32 0, i32 4
  %49 = ptrtoint ptr %needs_silencing to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %needs_silencing, align 1
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry.sw.bb21_crit_edge, %entry.sw.bb21_crit_edge85
  %ctrl22 = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 5
  %50 = ptrtoint ptr %ctrl22 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ctrl22, align 4
  %or23 = or i32 %51, %shl6
  store i32 %or23, ptr %ctrl22, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %52 = tail call i32 @llvm.bswap.i32(i32 %or23) #12
  %iobase.i78 = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 4
  %53 = ptrtoint ptr %iobase.i78 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %iobase.i78, align 4
  %and.i79 = and i32 %54, 1048575
  %add1.i80 = or i32 %and.i79, -18874368
  %55 = inttoptr i32 %add1.i80 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %55, i32 %52) #12, !srcloc !397
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry.sw.bb25_crit_edge, %entry.sw.bb25_crit_edge86
  %neg26 = xor i32 %shl6, -1
  %ctrl27 = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 5
  %56 = ptrtoint ptr %ctrl27 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ctrl27, align 4
  %and28 = and i32 %57, %neg26
  store i32 %and28, ptr %ctrl27, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %58 = tail call i32 @llvm.bswap.i32(i32 %and28) #12
  %iobase.i81 = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 4
  %59 = ptrtoint ptr %iobase.i81 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %iobase.i81, align 4
  %and.i82 = and i32 %60, 1048575
  %add1.i83 = or i32 %and.i82, -18874368
  %61 = inttoptr i32 %add1.i83 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %61, i32 %58) #12, !srcloc !397
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb25, %sw.bb21, %snd_cmipci_clear_bit.exit, %if.then, %snd_cmipci_set_bit.exit, %entry.sw.epilog_crit_edge
  %result.0 = phi i32 [ 0, %sw.bb25 ], [ 0, %sw.bb21 ], [ 0, %snd_cmipci_clear_bit.exit ], [ 0, %if.then ], [ -22, %entry.sw.epilog_crit_edge ], [ 0, %snd_cmipci_set_bit.exit ]
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #12
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_cmipci_pcm_pointer(ptr nocapture noundef readonly %cm, ptr nocapture noundef readonly %rec, ptr nocapture noundef readonly %substream) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %running = getelementptr inbounds %struct.cmipci_pcm, ptr %rec, i32 0, i32 1
  %0 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ch = getelementptr inbounds %struct.cmipci_pcm, ptr %rec, i32 0, i32 7
  %2 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool1.not, i32 132, i32 140
  %iobase.i = getelementptr inbounds %struct.cmipci, ptr %cm, i32 0, i32 4
  %dma_size = getelementptr inbounds %struct.cmipci_pcm, ptr %rec, i32 0, i32 5
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %5, %cond
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %6) #12, !srcloc !413
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !414
  %conv = zext i16 %8 to i32
  %9 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv)
  %cmp2 = icmp ugt i32 %10, %conv
  br i1 %cmp2, label %if.end.ok_crit_edge, label %for.cond

if.end.ok_crit_edge:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %ok

for.cond:                                         ; preds = %if.end
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase.i, align 4
  %add.i.1 = add i32 %12, %cond
  %and.i.1 = and i32 %add.i.1, 1048575
  %add1.i.1 = or i32 %and.i.1, -18874368
  %13 = inttoptr i32 %add1.i.1 to ptr
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %13) #12, !srcloc !413
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !414
  %conv.1 = zext i16 %15 to i32
  %16 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv.1)
  %cmp2.1 = icmp ugt i32 %17, %conv.1
  br i1 %cmp2.1, label %for.cond.ok_crit_edge, label %for.cond.1

for.cond.ok_crit_edge:                            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %ok

for.cond.1:                                       ; preds = %for.cond
  %18 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase.i, align 4
  %add.i.2 = add i32 %19, %cond
  %and.i.2 = and i32 %add.i.2, 1048575
  %add1.i.2 = or i32 %and.i.2, -18874368
  %20 = inttoptr i32 %add1.i.2 to ptr
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %20) #12, !srcloc !413
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !414
  %conv.2 = zext i16 %22 to i32
  %23 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv.2)
  %cmp2.2 = icmp ugt i32 %24, %conv.2
  br i1 %cmp2.2, label %for.cond.1.ok_crit_edge, label %for.cond.2

for.cond.1.ok_crit_edge:                          ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %ok

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %cm to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cm, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.45, i32 noundef %conv.2) #15
  br label %cleanup

ok:                                               ; preds = %for.cond.1.ok_crit_edge, %for.cond.ok_crit_edge, %if.end.ok_crit_edge
  %conv.lcssa = phi i32 [ %conv, %if.end.ok_crit_edge ], [ %conv.1, %for.cond.ok_crit_edge ], [ %conv.2, %for.cond.1.ok_crit_edge ]
  %.lcssa = phi i32 [ %10, %if.end.ok_crit_edge ], [ %17, %for.cond.ok_crit_edge ], [ %24, %for.cond.1.ok_crit_edge ]
  %add.neg = xor i32 %conv.lcssa, -1
  %sub = add i32 %.lcssa, %add.neg
  %shift = getelementptr inbounds %struct.cmipci_pcm, ptr %rec, i32 0, i32 6
  %29 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %shift, align 4
  %shr = lshr i32 %sub, %30
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %31 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %runtime, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %32, i32 0, i32 15
  %33 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp7 = icmp ugt i32 %34, 2
  br i1 %cmp7, label %if.then9, label %ok.cleanup_crit_edge

ok.cleanup_crit_edge:                             ; preds = %ok
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then9:                                         ; preds = %ok
  call void @__sanitizer_cov_trace_pc() #14
  %mul = shl i32 %shr, 1
  %div = udiv i32 %mul, %34
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %ok.cleanup_crit_edge, %for.cond.2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %for.cond.2 ], [ 0, %entry.cleanup_crit_edge ], [ %div, %if.then9 ], [ %shr, %ok.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_capture_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %call = tail call fastcc i32 @open_device_check(ptr noundef %1, i32 noundef 33, ptr noundef %substream)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %4 = call ptr @memcpy(ptr %hw, ptr @snd_cmipci_capture, i32 64)
  %chip_version = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %chip_version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chip_version, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %6, label %if.end.if.end17_crit_edge [
    i32 68, label %if.then3
    i32 55, label %if.then8
  ]

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %rate_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 3
  %8 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 41000, ptr %rate_min, align 4
  %rates = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 2
  %9 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 192, ptr %rates, align 8
  br label %if.end17

if.then8:                                         ; preds = %if.end
  %call9 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @hw_constraints_rates) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then8.cleanup_crit_edge, label %if.end12

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %rates14 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 2
  %10 = ptrtoint ptr %rates14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rates14, align 8
  %or = or i32 %11, -2147483648
  store i32 %or, ptr %rates14, align 8
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 4
  %12 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 128000, ptr %rate_max, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.end12, %if.then3, %if.end.if.end17_crit_edge
  %call18 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 17, i32 noundef 0, i32 noundef 65536) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ %call, %entry.cleanup_crit_edge ], [ %call9, %if.then8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_capture_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call fastcc void @close_device_check(ptr noundef %1, i32 noundef 33)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_capture_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %arrayidx = getelementptr %struct.cmipci, ptr %1, i32 0, i32 21, i32 1
  %call = tail call fastcc i32 @snd_cmipci_pcm_prepare(ptr noundef %1, ptr noundef %arrayidx, ptr noundef %substream)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_capture_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %arrayidx = getelementptr %struct.cmipci, ptr %1, i32 0, i32 21, i32 1
  %call = tail call fastcc i32 @snd_cmipci_pcm_trigger(ptr noundef %1, ptr noundef %arrayidx, i32 noundef %cmd)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_capture_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %arrayidx = getelementptr %struct.cmipci, ptr %1, i32 0, i32 21, i32 1
  %call = tail call fastcc i32 @snd_cmipci_pcm_pointer(ptr noundef %1, ptr noundef %arrayidx, ptr noundef %substream)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_playback2_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %open_mutex.i = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %open_mutex.i, i32 noundef 0) #12
  %arrayidx.i = getelementptr %struct.cmipci, ptr %1, i32 0, i32 16, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end, label %open_device_check.exit.thread

open_device_check.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %open_mutex.i) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 17, ptr %arrayidx.i, align 4
  %arrayidx4.i = getelementptr %struct.cmipci, ptr %1, i32 0, i32 21, i32 1
  %7 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %substream, ptr %arrayidx4.i, align 4
  tail call void @mutex_unlock(ptr noundef %open_mutex.i) #12
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %8 = call ptr @memcpy(ptr %hw, ptr @snd_cmipci_playback2, i32 64)
  tail call void @mutex_lock_nested(ptr noundef %open_mutex.i, i32 noundef 0) #12
  %opened = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 16
  %9 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %opened, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.then2, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then2:                                         ; preds = %if.end
  %can_multi_ch = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %can_multi_ch to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %can_multi_ch, align 4
  %12 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool3.not = icmp eq i8 %12, 0
  br i1 %tobool3.not, label %if.then2.if.end23_crit_edge, label %if.then4

if.then2.if.end23_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then4:                                         ; preds = %if.then2
  %max_channels = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %max_channels to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_channels, align 4
  %channels_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 6
  %15 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %channels_max, align 8
  %16 = load i32, ptr %max_channels, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %16, label %if.then4.if.end23_crit_edge [
    i32 4, label %if.then4.if.end23.sink.split_crit_edge
    i32 6, label %if.then12
    i32 8, label %if.then17
  ]

if.then4.if.end23.sink.split_crit_edge:           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.sink.split

if.then4.if.end23_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then12:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.sink.split

if.then17:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.sink.split

if.end23.sink.split:                              ; preds = %if.then17, %if.then12, %if.then4.if.end23.sink.split_crit_edge
  %hw_constraints_channels_6.sink = phi ptr [ @hw_constraints_channels_6, %if.then12 ], [ @hw_constraints_channels_8, %if.then17 ], [ @hw_constraints_channels_4, %if.then4.if.end23.sink.split_crit_edge ]
  %call13 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 10, ptr noundef nonnull %hw_constraints_channels_6.sink) #12
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %if.then4.if.end23_crit_edge, %if.then2.if.end23_crit_edge, %if.end.if.end23_crit_edge
  tail call void @mutex_unlock(ptr noundef %open_mutex.i) #12
  %chip_version = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %chip_version to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chip_version, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %19, label %if.end23.if.end43_crit_edge [
    i32 68, label %if.end23.if.end43.sink.split_crit_edge
    i32 55, label %if.then32
  ]

if.end23.if.end43.sink.split_crit_edge:           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43.sink.split

if.end23.if.end43_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then32:                                        ; preds = %if.end23
  %call33 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @hw_constraints_rates) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then32.cleanup_crit_edge, label %if.then32.if.end43.sink.split_crit_edge

if.then32.if.end43.sink.split_crit_edge:          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43.sink.split

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end43.sink.split:                              ; preds = %if.then32.if.end43.sink.split_crit_edge, %if.end23.if.end43.sink.split_crit_edge
  %.sink76 = phi i32 [ 1536, %if.end23.if.end43.sink.split_crit_edge ], [ -2147483648, %if.then32.if.end43.sink.split_crit_edge ]
  %.sink = phi i32 [ 96000, %if.end23.if.end43.sink.split_crit_edge ], [ 128000, %if.then32.if.end43.sink.split_crit_edge ]
  %rates = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 2
  %21 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rates, align 8
  %or39 = or i32 %22, %.sink76
  store i32 %or39, ptr %rates, align 8
  %rate_max41 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 4
  %23 = ptrtoint ptr %rate_max41 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %rate_max41, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.end43.sink.split, %if.end23.if.end43_crit_edge
  %call44 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 17, i32 noundef 0, i32 noundef 65536) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then32.cleanup_crit_edge, %open_device_check.exit.thread
  %retval.0 = phi i32 [ 0, %if.end43 ], [ %call33, %if.then32.cleanup_crit_edge ], [ -16, %open_device_check.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_playback2_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call fastcc void @close_device_check(ptr noundef %1, i32 noundef 17)
  tail call fastcc void @close_device_check(ptr noundef %1, i32 noundef 144)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_playback2_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %open_mutex = getelementptr inbounds %struct.cmipci, ptr %3, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #12
  %opened = getelementptr inbounds %struct.cmipci, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %opened, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %opened to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 144, ptr %opened, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end, %if.then.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end ], [ -16, %if.then.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %open_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_playback2_hw_free(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %arrayidx = getelementptr %struct.cmipci, ptr %1, i32 0, i32 21, i32 1
  tail call fastcc void @snd_cmipci_silence_hack(ptr noundef %1, ptr noundef %arrayidx)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_add_chmap_ctls(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_playback_spdif_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %open_mutex.i = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %open_mutex.i, i32 noundef 0) #12
  %arrayidx.i = getelementptr %struct.cmipci, ptr %1, i32 0, i32 16, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end, label %open_device_check.exit.thread

open_device_check.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %open_mutex.i) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 80, ptr %arrayidx.i, align 4
  %arrayidx4.i = getelementptr %struct.cmipci, ptr %1, i32 0, i32 21, i32 0
  %7 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %substream, ptr %arrayidx4.i, align 4
  tail call void @mutex_unlock(ptr noundef %open_mutex.i) #12
  %can_ac3_hw = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %can_ac3_hw to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %can_ac3_hw, align 4
  %9 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %hw18 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %10 = call ptr @memcpy(ptr %hw18, ptr @snd_cmipci_playback_spdif, i32 64)
  %chip_version = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %chip_version to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chip_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %12)
  %cmp3 = icmp sgt i32 %12, 36
  br i1 %cmp3, label %if.then4, label %if.then2.if.end7_crit_edge

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %formats = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 1
  %13 = ptrtoint ptr %formats to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %formats, align 8
  %or = or i64 %14, 1024
  store i64 %or, ptr %formats, align 8
  %call6 = tail call i32 @snd_pcm_hw_constraint_msbits(ptr noundef %3, i32 noundef 0, i32 noundef 32, i32 noundef 24) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.then2.if.end7_crit_edge
  %15 = ptrtoint ptr %can_ac3_hw to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load8 = load i8, ptr %can_ac3_hw, align 4
  %16 = and i8 %bf.load8, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool12.not = icmp eq i8 %16, 0
  br i1 %tobool12.not, label %if.end7.if.end19_crit_edge, label %if.then13

if.end7.if.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %rates = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 2
  %17 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rates, align 8
  %or15 = or i32 %18, 1536
  store i32 %or15, ptr %rates, align 8
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 4
  %19 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 96000, ptr %rate_max, align 8
  br label %if.end19

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %20 = call ptr @memcpy(ptr %hw18, ptr @snd_cmipci_playback_iec958_subframe, i32 64)
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then13, %if.end7.if.end19_crit_edge
  %call20 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 17, i32 noundef 0, i32 noundef 262144) #12
  %dig_status = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 13
  %21 = ptrtoint ptr %dig_status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dig_status, align 4
  %dig_pcm_status = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 14
  %23 = ptrtoint ptr %dig_pcm_status to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %dig_pcm_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %open_device_check.exit.thread
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -16, %open_device_check.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_playback_spdif_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call fastcc void @close_device_check(ptr noundef %1, i32 noundef 80)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_playback_spdif_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %can_ac3_hw = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %can_ac3_hw to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %can_ac3_hw, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dig_pcm_status = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %dig_pcm_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dig_pcm_status, align 4
  %and = and i32 %5, 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %do_ac3.0 = phi i32 [ %and, %if.then ], [ 1, %entry.if.end_crit_edge ]
  %call = tail call fastcc i32 @setup_spdif_playback(ptr noundef %1, ptr noundef %substream, i32 noundef 1, i32 noundef %do_ac3.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %channel = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 21
  %call3 = tail call fastcc i32 @snd_cmipci_pcm_prepare(ptr noundef %1, ptr noundef %channel, ptr noundef %substream)
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end2 ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_msbits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_capture_spdif_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %call = tail call fastcc i32 @open_device_check(ptr noundef %1, i32 noundef 97, ptr noundef %substream)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %4 = call ptr @memcpy(ptr %hw, ptr @snd_cmipci_capture_spdif, i32 64)
  %can_96k = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %can_96k to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %can_96k, align 4
  %6 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %chip_version = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %chip_version to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chip_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %8)
  %cmp2 = icmp eq i32 %8, 68
  br i1 %cmp2, label %land.lhs.true.if.end6_crit_edge, label %if.then3

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %rates = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 2
  %9 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rates, align 8
  %or = or i32 %10, 1536
  store i32 %or, ptr %rates, align 8
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 4
  %11 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 96000, ptr %rate_max, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %call7 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 17, i32 noundef 0, i32 noundef 262144) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_capture_spdif_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call fastcc void @close_device_check(ptr noundef %1, i32 noundef 97)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_capture_spdif_hw_free(ptr nocapture noundef readonly %subs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %iobase.i = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %3, 4
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %4) #12, !srcloc !393
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  %and3.i = and i32 %6, -513
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i, i32 %6)
  %cmp.i = icmp eq i32 %and3.i, %6
  br i1 %cmp.i, label %entry.snd_cmipci_clear_bit.exit_crit_edge, label %do.body.i

entry.snd_cmipci_clear_bit.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_clear_bit.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %7 = tail call i32 @llvm.bswap.i32(i32 %and3.i) #12
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase.i, align 4
  %add5.i = add i32 %9, 4
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %10 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 %7) #12, !srcloc !397
  br label %snd_cmipci_clear_bit.exit

snd_cmipci_clear_bit.exit:                        ; preds = %do.body.i, %entry.snd_cmipci_clear_bit.exit_crit_edge
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase.i, align 4
  %add.i7 = add i32 %12, 24
  %and.i8 = and i32 %add.i7, 1048575
  %add1.i9 = or i32 %and.i8, -18874368
  %13 = inttoptr i32 %add1.i9 to ptr
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %13) #12, !srcloc !393
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  %and3.i10 = and i32 %15, -2097153
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i10, i32 %15)
  %cmp.i11 = icmp eq i32 %and3.i10, %15
  br i1 %cmp.i11, label %snd_cmipci_clear_bit.exit.snd_cmipci_clear_bit.exit17_crit_edge, label %do.body.i15

snd_cmipci_clear_bit.exit.snd_cmipci_clear_bit.exit17_crit_edge: ; preds = %snd_cmipci_clear_bit.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_clear_bit.exit17

do.body.i15:                                      ; preds = %snd_cmipci_clear_bit.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %16 = tail call i32 @llvm.bswap.i32(i32 %and3.i10) #12
  %17 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase.i, align 4
  %add5.i12 = add i32 %18, 24
  %and6.i13 = and i32 %add5.i12, 1048575
  %add7.i14 = or i32 %and6.i13, -18874368
  %19 = inttoptr i32 %add7.i14 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %19, i32 %16) #12, !srcloc !397
  br label %snd_cmipci_clear_bit.exit17

snd_cmipci_clear_bit.exit17:                      ; preds = %do.body.i15, %snd_cmipci_clear_bit.exit.snd_cmipci_clear_bit.exit17_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_capture_spdif_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %iobase.i = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %3, 4
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %4) #12, !srcloc !393
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  %or.i = or i32 %6, 512
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %6)
  %cmp.i = icmp eq i32 %or.i, %6
  br i1 %cmp.i, label %entry.snd_cmipci_set_bit.exit_crit_edge, label %do.body.i

entry.snd_cmipci_set_bit.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_set_bit.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void @arm_heavy_mb() #12
  %7 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase.i, align 4
  %add4.i = add i32 %9, 4
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %10 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 %7) #12, !srcloc !397
  br label %snd_cmipci_set_bit.exit

snd_cmipci_set_bit.exit:                          ; preds = %do.body.i, %entry.snd_cmipci_set_bit.exit_crit_edge
  %can_96k = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %can_96k to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %can_96k, align 4
  %12 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %snd_cmipci_set_bit.exit.if.end4_crit_edge, label %if.then

snd_cmipci_set_bit.exit.if.end4_crit_edge:        ; preds = %snd_cmipci_set_bit.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then:                                          ; preds = %snd_cmipci_set_bit.exit
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %13 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %runtime, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %16)
  %cmp = icmp ugt i32 %16, 48000
  %17 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase.i, align 4
  %add.i28 = add i32 %18, 8
  %and.i29 = and i32 %add.i28, 1048575
  %add1.i30 = or i32 %and.i29, -18874368
  %19 = inttoptr i32 %add1.i30 to ptr
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %19) #12
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %or.i31 = or i32 %21, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i31, i32 %21)
  %cmp.i32 = icmp eq i32 %or.i31, %21
  br i1 %cmp.i32, label %if.then1.if.end4_crit_edge, label %do.body.i36

if.then1.if.end4_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

do.body.i36:                                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void @arm_heavy_mb() #12
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i31) #12
  %23 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iobase.i, align 4
  %add4.i33 = add i32 %24, 8
  %and5.i34 = and i32 %add4.i33, 1048575
  %add6.i35 = or i32 %and5.i34, -18874368
  %25 = inttoptr i32 %add6.i35 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %25, i32 %22) #12, !srcloc !397
  br label %if.end4

if.else:                                          ; preds = %if.then
  %and3.i = and i32 %21, -65
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i, i32 %21)
  %cmp.i43 = icmp eq i32 %and3.i, %21
  br i1 %cmp.i43, label %if.else.if.end4_crit_edge, label %do.body.i44

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

do.body.i44:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %26 = tail call i32 @llvm.bswap.i32(i32 %and3.i) #12
  %27 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %iobase.i, align 4
  %add5.i = add i32 %28, 8
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %29 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %29, i32 %26) #12, !srcloc !397
  br label %if.end4

if.end4:                                          ; preds = %do.body.i44, %if.else.if.end4_crit_edge, %do.body.i36, %if.then1.if.end4_crit_edge, %snd_cmipci_set_bit.exit.if.end4_crit_edge
  %runtime5 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %30 = ptrtoint ptr %runtime5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %runtime5, align 4
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %format, align 4
  %call6 = tail call i32 @snd_pcm_format_width(i32 noundef %33) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call6)
  %cmp7 = icmp sgt i32 %call6, 16
  %34 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iobase.i, align 4
  %add.i47 = add i32 %35, 24
  %and.i48 = and i32 %add.i47, 1048575
  %add1.i49 = or i32 %and.i48, -18874368
  %36 = inttoptr i32 %add1.i49 to ptr
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %36) #12
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.end4
  %or.i50 = or i32 %38, 2097152
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i50, i32 %38)
  %cmp.i51 = icmp eq i32 %or.i50, %38
  br i1 %cmp.i51, label %if.then8.if.end12_crit_edge, label %do.body.i55

if.then8.if.end12_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

do.body.i55:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void @arm_heavy_mb() #12
  %39 = tail call i32 @llvm.bswap.i32(i32 %or.i50) #12
  %40 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %iobase.i, align 4
  %add4.i52 = add i32 %41, 24
  %and5.i53 = and i32 %add4.i52, 1048575
  %add6.i54 = or i32 %and5.i53, -18874368
  %42 = inttoptr i32 %add6.i54 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %42, i32 %39) #12, !srcloc !397
  br label %if.end12

if.else10:                                        ; preds = %if.end4
  %and3.i62 = and i32 %38, -2097153
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i62, i32 %38)
  %cmp.i63 = icmp eq i32 %and3.i62, %38
  br i1 %cmp.i63, label %if.else10.if.end12_crit_edge, label %do.body.i67

if.else10.if.end12_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

do.body.i67:                                      ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %43 = tail call i32 @llvm.bswap.i32(i32 %and3.i62) #12
  %44 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %iobase.i, align 4
  %add5.i64 = add i32 %45, 24
  %and6.i65 = and i32 %add5.i64, 1048575
  %add7.i66 = or i32 %and6.i65, -18874368
  %46 = inttoptr i32 %add7.i66 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %46, i32 %43) #12, !srcloc !397
  br label %if.end12

if.end12:                                         ; preds = %do.body.i67, %if.else10.if.end12_crit_edge, %do.body.i55, %if.then8.if.end12_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  %arrayidx = getelementptr %struct.cmipci, ptr %1, i32 0, i32 21, i32 1
  %call14 = tail call fastcc i32 @snd_cmipci_pcm_prepare(ptr noundef %1, ptr noundef %arrayidx, ptr noundef %substream)
  ret i32 %call14
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_find_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_cmipci_info_volume(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %shr16.i = lshr i32 %1, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr16.i)
  %cmp = icmp eq i32 %shr16.i, 1
  %cond = select i1 %cmp, i32 1, i32 2
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %type, align 8
  %sum.shift = lshr i32 %1, 23
  %bf.lshr = and i32 %sum.shift, 1
  %narrow = add nuw nsw i32 %bf.lshr, 1
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %3 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %narrow, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr16.i, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_get_volume(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %shr2.i = lshr i32 %3, 16
  %and3.i = and i32 %shr2.i, 7
  %shr16.i = lshr i32 %3, 24
  %reg_lock = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %conv = trunc i32 %3 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !415
  tail call void @arm_heavy_mb() #12
  %iobase.i = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %5, 35
  %and.i36 = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i36, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv) #12, !srcloc !402
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase.i, align 4
  %add3.i = add i32 %8, 34
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %9 = inttoptr i32 %add5.i to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #12, !srcloc !403
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !416
  %conv1 = zext i8 %10 to i32
  %shr = lshr i32 %conv1, %and3.i
  %and = and i32 %shr, %shr16.i
  %11 = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  %sub = sub nsw i32 %shr16.i, %and
  %spec.select = select i1 %tobool.not, i32 %and, i32 %sub
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.select, ptr %value, align 8
  %13 = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not = icmp eq i32 %13, 0
  br i1 %tobool6.not, label %entry.if.end25_crit_edge, label %if.then7

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %shr4.i = lshr i32 %3, 19
  %and5.i = and i32 %shr4.i, 7
  %shr.i = lshr i32 %3, 8
  %conv8 = trunc i32 %shr.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !415
  tail call void @arm_heavy_mb() #12
  %14 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase.i, align 4
  %add.i38 = add i32 %15, 35
  %and.i39 = and i32 %add.i38, 1048575
  %add1.i40 = or i32 %and.i39, -18874368
  %16 = inttoptr i32 %add1.i40 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %conv8) #12, !srcloc !402
  %17 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase.i, align 4
  %add3.i41 = add i32 %18, 34
  %and4.i42 = and i32 %add3.i41, 1048575
  %add5.i43 = or i32 %and4.i42, -18874368
  %19 = inttoptr i32 %add5.i43 to ptr
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #12, !srcloc !403
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !416
  %conv10 = zext i8 %20 to i32
  %shr11 = lshr i32 %conv10, %and5.i
  %and13 = and i32 %shr11, %shr16.i
  %sub21 = sub nsw i32 %shr16.i, %and13
  %spec.select35 = select i1 %tobool.not, i32 %and13, i32 %sub21
  %arrayidx24 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select35, ptr %arrayidx24, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then7, %entry.if.end25_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_put_volume(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %shr.i = lshr i32 %3, 8
  %shr2.i = lshr i32 %3, 16
  %and3.i = and i32 %shr2.i, 7
  %shr4.i = lshr i32 %3, 19
  %and5.i = and i32 %shr4.i, 7
  %shr16.i = lshr i32 %3, 24
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %and = and i32 %5, %shr16.i
  %6 = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %sub = sub nsw i32 %shr16.i, %and
  %spec.select = select i1 %tobool.not, i32 %and, i32 %sub
  %shl = shl nsw i32 %spec.select, %and3.i
  %7 = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %entry.if.end21_crit_edge, label %if.then6

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx8 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx8, align 4
  %and10 = and i32 %9, %shr16.i
  %sub18 = sub nsw i32 %shr16.i, %and10
  %spec.select88 = select i1 %tobool.not, i32 %and10, i32 %sub18
  %shl20 = shl nsw i32 %spec.select88, %and5.i
  br label %if.end21

if.end21:                                         ; preds = %if.then6, %entry.if.end21_crit_edge
  %right.1 = phi i32 [ %shl20, %if.then6 ], [ 0, %entry.if.end21_crit_edge ]
  %reg_lock = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %conv = trunc i32 %3 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !415
  tail call void @arm_heavy_mb() #12
  %iobase.i = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %11, 35
  %and.i89 = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i89, -18874368
  %12 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv) #12, !srcloc !402
  %13 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase.i, align 4
  %add3.i = add i32 %14, 34
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %15 = inttoptr i32 %add5.i to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #12, !srcloc !403
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !416
  %conv22 = zext i8 %16 to i32
  %shl25 = shl nuw nsw i32 %shr16.i, %and3.i
  %neg = xor i32 %shl25, -1
  %and26 = and i32 %conv22, %neg
  %or = or i32 %and26, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv22)
  %cmp = icmp ne i32 %or, %conv22
  br i1 %tobool5.not, label %if.else60, label %if.then34

if.then34:                                        ; preds = %if.end21
  %17 = xor i32 %shr.i, %3
  %18 = and i32 %17, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp36.not = icmp eq i32 %18, 0
  br i1 %cmp36.not, label %if.then34.if.end47_crit_edge, label %if.then38

if.then34.if.end47_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  %.pre = trunc i32 %shr.i to i8
  br label %if.end47

if.then38:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  %conv41 = trunc i32 %or to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !406
  tail call void @arm_heavy_mb() #12
  %19 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iobase.i, align 4
  %add.i91 = add i32 %20, 35
  %and.i92 = and i32 %add.i91, 1048575
  %add1.i93 = or i32 %and.i92, -18874368
  %21 = inttoptr i32 %add1.i93 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %conv) #12, !srcloc !402
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !407
  tail call void @arm_heavy_mb() #12
  %22 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase.i, align 4
  %add5.i94 = add i32 %23, 34
  %and6.i = and i32 %add5.i94, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %24 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %conv41) #12, !srcloc !402
  %conv43 = trunc i32 %shr.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !415
  tail call void @arm_heavy_mb() #12
  %25 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iobase.i, align 4
  %add.i96 = add i32 %26, 35
  %and.i97 = and i32 %add.i96, 1048575
  %add1.i98 = or i32 %and.i97, -18874368
  %27 = inttoptr i32 %add1.i98 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %conv43) #12, !srcloc !402
  %28 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iobase.i, align 4
  %add3.i99 = add i32 %29, 34
  %and4.i100 = and i32 %add3.i99, 1048575
  %add5.i101 = or i32 %and4.i100, -18874368
  %30 = inttoptr i32 %add5.i101 to ptr
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %30) #12, !srcloc !403
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !416
  %conv45 = zext i8 %31 to i32
  br label %if.end47

if.end47:                                         ; preds = %if.then38, %if.then34.if.end47_crit_edge
  %conv58.pre-phi = phi i8 [ %.pre, %if.then34.if.end47_crit_edge ], [ %conv43, %if.then38 ]
  %oright.0 = phi i32 [ %or, %if.then34.if.end47_crit_edge ], [ %conv45, %if.then38 ]
  %shl50 = shl nuw nsw i32 %shr16.i, %and5.i
  %neg51 = xor i32 %shl50, -1
  %and52 = and i32 %oright.0, %neg51
  %or53 = or i32 %and52, %right.1
  call void @__sanitizer_cov_trace_cmp4(i32 %or53, i32 %oright.0)
  %cmp54 = icmp ne i32 %or53, %oright.0
  %or5687 = or i1 %cmp, %cmp54
  %conv59 = trunc i32 %or53 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !406
  tail call void @arm_heavy_mb() #12
  %32 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iobase.i, align 4
  %add.i103 = add i32 %33, 35
  %and.i104 = and i32 %add.i103, 1048575
  %add1.i105 = or i32 %and.i104, -18874368
  %34 = inttoptr i32 %add1.i105 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %conv58.pre-phi) #12, !srcloc !402
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !407
  tail call void @arm_heavy_mb() #12
  %35 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iobase.i, align 4
  %add5.i106 = add i32 %36, 34
  %and6.i107 = and i32 %add5.i106, 1048575
  %add7.i108 = or i32 %and6.i107, -18874368
  %37 = inttoptr i32 %add7.i108 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %conv59) #12, !srcloc !402
  br label %if.end64

if.else60:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %conv63 = trunc i32 %or to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !406
  tail call void @arm_heavy_mb() #12
  %38 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %iobase.i, align 4
  %add.i110 = add i32 %39, 35
  %and.i111 = and i32 %add.i110, 1048575
  %add1.i112 = or i32 %and.i111, -18874368
  %40 = inttoptr i32 %add1.i112 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 %conv) #12, !srcloc !402
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !407
  tail call void @arm_heavy_mb() #12
  %41 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %iobase.i, align 4
  %add5.i113 = add i32 %42, 34
  %and6.i114 = and i32 %add5.i113, 1048575
  %add7.i115 = or i32 %and6.i114, -18874368
  %43 = inttoptr i32 %add7.i115 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 %conv63) #12, !srcloc !402
  br label %if.end64

if.end64:                                         ; preds = %if.else60, %if.end47
  %change.0.in = phi i1 [ %or5687, %if.end47 ], [ %cmp, %if.else60 ]
  %change.0 = zext i1 %change.0.in to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  ret i32 %change.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_cmipci_info_native_mixer(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %shr16.i = lshr i32 %1, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr16.i)
  %cmp = icmp eq i32 %shr16.i, 1
  %cond = select i1 %cmp, i32 1, i32 2
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %type, align 8
  %sum.shift = lshr i32 %1, 23
  %bf.lshr = and i32 %sum.shift, 1
  %narrow = add nuw nsw i32 %bf.lshr, 1
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %3 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %narrow, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr16.i, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_get_native_mixer(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and.i = and i32 %3, 255
  %shr2.i = lshr i32 %3, 16
  %and3.i = and i32 %shr2.i, 7
  %shr16.i = lshr i32 %3, 24
  %reg_lock = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %iobase = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %add = add i32 %5, %and.i
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %6 = inttoptr i32 %add1 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #12, !srcloc !403
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !417
  %conv = zext i8 %7 to i32
  %shr = lshr i32 %conv, %and3.i
  %and3 = and i32 %shr, %shr16.i
  %8 = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %sub = sub nsw i32 %shr16.i, %and3
  %val.0 = select i1 %tobool.not, i32 %and3, i32 %sub
  %conv8 = and i32 %val.0, 255
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv8, ptr %value, align 8
  %10 = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool12.not = icmp eq i32 %10, 0
  br i1 %tobool12.not, label %entry.if.end33_crit_edge, label %if.then13

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %shr4.i = lshr i32 %3, 19
  %and5.i = and i32 %shr4.i, 7
  %shr15 = lshr i32 %conv, %and5.i
  %and17 = and i32 %shr15, %shr16.i
  %sub27 = sub nsw i32 %shr16.i, %and17
  %val.1 = select i1 %tobool.not, i32 %and17, i32 %sub27
  %conv30 = and i32 %val.1, 255
  %arrayidx32 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv30, ptr %arrayidx32, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then13, %entry.if.end33_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_put_native_mixer(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and.i = and i32 %3, 255
  %shr2.i = lshr i32 %3, 16
  %and3.i = and i32 %shr2.i, 7
  %shr16.i = lshr i32 %3, 24
  %reg_lock = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %iobase = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %add = add i32 %5, %and.i
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %6 = inttoptr i32 %add1 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #12, !srcloc !403
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !418
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  %and3 = and i32 %9, %shr16.i
  %10 = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %sub = sub nsw i32 %shr16.i, %and3
  %val.0 = select i1 %tobool.not, i32 %and3, i32 %sub
  %shl = shl nuw nsw i32 %shr16.i, %and3.i
  %11 = trunc i32 %shl to i8
  %12 = xor i8 %11, -1
  %conv10 = and i8 %7, %12
  %shl13 = shl nsw i32 %val.0, %and3.i
  %13 = trunc i32 %shl13 to i8
  %conv15 = or i8 %conv10, %13
  %14 = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool19.not = icmp eq i32 %14, 0
  br i1 %tobool19.not, label %entry.do.body_crit_edge, label %if.then20

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %shr4.i = lshr i32 %3, 19
  %and5.i = and i32 %shr4.i, 7
  %arrayidx22 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx22, align 4
  %and24 = and i32 %16, %shr16.i
  %sub34 = sub nsw i32 %shr16.i, %and24
  %val.1 = select i1 %tobool.not, i32 %and24, i32 %sub34
  %shl38 = shl nuw nsw i32 %shr16.i, %and5.i
  %17 = trunc i32 %shl38 to i8
  %18 = xor i8 %17, -1
  %conv42 = and i8 %conv15, %18
  %shl45 = shl nsw i32 %val.1, %and5.i
  %19 = trunc i32 %shl45 to i8
  %conv48 = or i8 %conv42, %19
  br label %do.body

do.body:                                          ; preds = %if.then20, %entry.do.body_crit_edge
  %nreg.0 = phi i8 [ %conv48, %if.then20 ], [ %conv15, %entry.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !419
  tail call void @arm_heavy_mb() #12
  %20 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase, align 4
  %add52 = add i32 %21, %and.i
  %and53 = and i32 %add52, 1048575
  %add54 = or i32 %and53, -18874368
  %22 = inttoptr i32 %add54 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %nreg.0) #12, !srcloc !402
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  call void @__sanitizer_cov_trace_cmp1(i8 %nreg.0, i8 %7)
  %cmp = icmp ne i8 %nreg.0, %7
  %conv59 = zext i1 %cmp to i32
  ret i32 %conv59
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_get_native_mixer_sensitive(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %private_value.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value.i, align 4
  %and.i.i = and i32 %3, 255
  %shr2.i.i = lshr i32 %3, 16
  %and3.i.i = and i32 %shr2.i.i, 7
  %shr16.i.i = lshr i32 %3, 24
  %reg_lock.i = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i) #12
  %iobase.i = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %5, %and.i.i
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #12, !srcloc !403
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !417
  %conv.i = zext i8 %7 to i32
  %shr.i = lshr i32 %conv.i, %and3.i.i
  %and3.i = and i32 %shr.i, %shr16.i.i
  %8 = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  %sub.i = sub nsw i32 %shr16.i.i, %and3.i
  %val.0.i = select i1 %tobool.not.i, i32 %and3.i, i32 %sub.i
  %conv8.i = and i32 %val.0.i, 255
  %value.i = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv8.i, ptr %value.i, align 8
  %10 = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool12.not.i = icmp eq i32 %10, 0
  br i1 %tobool12.not.i, label %entry.snd_cmipci_get_native_mixer.exit_crit_edge, label %if.then13.i

entry.snd_cmipci_get_native_mixer.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_cmipci_get_native_mixer.exit

if.then13.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %shr4.i.i = lshr i32 %3, 19
  %and5.i.i = and i32 %shr4.i.i, 7
  %shr15.i = lshr i32 %conv.i, %and5.i.i
  %and17.i = and i32 %shr15.i, %shr16.i.i
  %sub27.i = sub nsw i32 %shr16.i.i, %and17.i
  %val.1.i = select i1 %tobool.not.i, i32 %and17.i, i32 %sub27.i
  %conv30.i = and i32 %val.1.i, 255
  %arrayidx32.i = getelementptr [128 x i32], ptr %value.i, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv30.i, ptr %arrayidx32.i, align 4
  br label %snd_cmipci_get_native_mixer.exit

snd_cmipci_get_native_mixer.exit:                 ; preds = %if.then13.i, %entry.snd_cmipci_get_native_mixer.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock.i) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_put_native_mixer_sensitive(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mixer_insensitive = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %mixer_insensitive to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %mixer_insensitive, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @snd_cmipci_put_native_mixer(ptr noundef %kcontrol, ptr noundef %ucontrol)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_cmipci_info_input_sw(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_get_input_sw(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %shr.i = lshr i32 %3, 8
  %shr2.i = lshr i32 %3, 16
  %and3.i = and i32 %shr2.i, 7
  %shr4.i = lshr i32 %3, 19
  %and5.i = and i32 %shr4.i, 7
  %reg_lock = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %conv = trunc i32 %3 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !415
  tail call void @arm_heavy_mb() #12
  %iobase.i = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %5, 35
  %and.i29 = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i29, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv) #12, !srcloc !402
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase.i, align 4
  %add3.i = add i32 %8, 34
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %9 = inttoptr i32 %add5.i to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #12, !srcloc !403
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !416
  %conv1 = zext i8 %10 to i32
  %conv2 = trunc i32 %shr.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !415
  tail call void @arm_heavy_mb() #12
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase.i, align 4
  %add.i31 = add i32 %12, 35
  %and.i32 = and i32 %add.i31, 1048575
  %add1.i33 = or i32 %and.i32, -18874368
  %13 = inttoptr i32 %add1.i33 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv2) #12, !srcloc !402
  %14 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase.i, align 4
  %add3.i34 = add i32 %15, 34
  %and4.i35 = and i32 %add3.i34, 1048575
  %add5.i36 = or i32 %and4.i35, -18874368
  %16 = inttoptr i32 %add5.i36 to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #12, !srcloc !403
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !416
  %conv4 = zext i8 %17 to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  %shr = lshr i32 %conv1, %and3.i
  %and = and i32 %shr, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %18 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and, ptr %value, align 8
  %shr7 = lshr i32 %conv4, %and3.i
  %and8 = and i32 %shr7, 1
  %arrayidx10 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and8, ptr %arrayidx10, align 4
  %shr11 = lshr i32 %conv1, %and5.i
  %and12 = and i32 %shr11, 1
  %arrayidx14 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and12, ptr %arrayidx14, align 8
  %shr16 = lshr i32 %conv4, %and5.i
  %and17 = and i32 %shr16, 1
  %arrayidx19 = getelementptr [128 x i32], ptr %value, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and17, ptr %arrayidx19, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_put_input_sw(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %shr.i = lshr i32 %3, 8
  %shr2.i = lshr i32 %3, 16
  %and3.i = and i32 %shr2.i, 7
  %shr4.i = lshr i32 %3, 19
  %and5.i = and i32 %shr4.i, 7
  %reg_lock = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %conv = trunc i32 %3 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !415
  tail call void @arm_heavy_mb() #12
  %iobase.i = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %5, 35
  %and.i62 = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i62, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv) #12, !srcloc !402
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase.i, align 4
  %add3.i = add i32 %8, 34
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %9 = inttoptr i32 %add5.i to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #12, !srcloc !403
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !416
  %conv1 = zext i8 %10 to i32
  %conv2 = trunc i32 %shr.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !415
  tail call void @arm_heavy_mb() #12
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase.i, align 4
  %add.i64 = add i32 %12, 35
  %and.i65 = and i32 %add.i64, 1048575
  %add1.i66 = or i32 %and.i65, -18874368
  %13 = inttoptr i32 %add1.i66 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv2) #12, !srcloc !402
  %14 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase.i, align 4
  %add3.i67 = add i32 %15, 34
  %and4.i68 = and i32 %add3.i67, 1048575
  %add5.i69 = or i32 %and4.i68, -18874368
  %16 = inttoptr i32 %add5.i69 to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #12, !srcloc !403
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !416
  %conv4 = zext i8 %17 to i32
  %shl = shl nuw nsw i32 1, %and3.i
  %shl5 = shl nuw nsw i32 1, %and5.i
  %or = or i32 %shl, %shl5
  %neg = xor i32 %or, -1
  %and = and i32 %conv1, %neg
  %and12 = and i32 %conv4, %neg
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %18 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %value, align 8
  %and13 = and i32 %19, 1
  %shl15 = shl nuw nsw i32 %and13, %and3.i
  %or16 = or i32 %shl15, %and
  %arrayidx18 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx18, align 4
  %and19 = and i32 %21, 1
  %shl21 = shl nuw nsw i32 %and19, %and3.i
  %or22 = or i32 %shl21, %and12
  %arrayidx24 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx24, align 8
  %and25 = and i32 %23, 1
  %shl27 = shl nuw nsw i32 %and25, %and5.i
  %or28 = or i32 %or16, %shl27
  %arrayidx30 = getelementptr [128 x i32], ptr %value, i32 0, i32 3
  %24 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx30, align 4
  %and31 = and i32 %25, 1
  %shl33 = shl nuw nsw i32 %and31, %and5.i
  %or34 = or i32 %or22, %shl33
  call void @__sanitizer_cov_trace_cmp4(i32 %or28, i32 %conv1)
  %cmp.not = icmp ne i32 %or28, %conv1
  call void @__sanitizer_cov_trace_cmp4(i32 %or34, i32 %conv4)
  %cmp36 = icmp ne i32 %or34, %conv4
  %narrow = select i1 %cmp.not, i1 true, i1 %cmp36
  %26 = zext i1 %narrow to i32
  %conv40 = trunc i32 %or28 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !406
  tail call void @arm_heavy_mb() #12
  %27 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %iobase.i, align 4
  %add.i71 = add i32 %28, 35
  %and.i72 = and i32 %add.i71, 1048575
  %add1.i73 = or i32 %and.i72, -18874368
  %29 = inttoptr i32 %add1.i73 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %conv) #12, !srcloc !402
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !407
  tail call void @arm_heavy_mb() #12
  %30 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %iobase.i, align 4
  %add5.i74 = add i32 %31, 34
  %and6.i = and i32 %add5.i74, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %32 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %conv40) #12, !srcloc !402
  %conv43 = trunc i32 %or34 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !406
  tail call void @arm_heavy_mb() #12
  %33 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iobase.i, align 4
  %add.i76 = add i32 %34, 35
  %and.i77 = and i32 %add.i76, 1048575
  %add1.i78 = or i32 %and.i77, -18874368
  %35 = inttoptr i32 %add1.i78 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 %conv2) #12, !srcloc !402
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !407
  tail call void @arm_heavy_mb() #12
  %36 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iobase.i, align 4
  %add5.i79 = add i32 %37, 34
  %and6.i80 = and i32 %add5.i79, 1048575
  %add7.i81 = or i32 %and6.i80, -18874368
  %38 = inttoptr i32 %add7.i81 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %conv43) #12, !srcloc !402
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_uswitch_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !408

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 2348, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end23:                                         ; preds = %entry
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %3 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data.i, align 4
  %reg_lock.i = getelementptr inbounds %struct.cmipci, ptr %4, i32 0, i32 24
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i) #12
  %ac3_sensitive.i = getelementptr inbounds %struct.cmipci_switch_args, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %ac3_sensitive.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %ac3_sensitive.i, align 4
  %6 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.end23.if.end.i_crit_edge, label %land.lhs.true.i

if.end23.if.end.i_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end23
  %mixer_insensitive.i = getelementptr inbounds %struct.cmipci, ptr %4, i32 0, i32 18
  %7 = ptrtoint ptr %mixer_insensitive.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load1.i = load i8, ptr %mixer_insensitive.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load1.i)
  %tobool4.not.i = icmp sgt i8 %bf.load1.i, -1
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i._snd_cmipci_uswitch_get.exit_crit_edge

land.lhs.true.i._snd_cmipci_uswitch_get.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_snd_cmipci_uswitch_get.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end23.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool9.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool9.not.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %iobase.i = getelementptr inbounds %struct.cmipci, ptr %4, i32 0, i32 4
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase.i, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %2, align 4
  %add.i = add i32 %11, %9
  %and.i = and i32 %add.i, 1048575
  %add11.i = or i32 %and.i, -18874368
  %12 = inttoptr i32 %add11.i to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #12, !srcloc !403
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  %conv.i = zext i8 %13 to i32
  br label %if.end15.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %2, align 4
  %iobase.i.i = getelementptr inbounds %struct.cmipci, ptr %4, i32 0, i32 4
  %16 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase.i.i, align 4
  %add.i.i = add i32 %17, %15
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %18 = inttoptr i32 %add1.i.i to ptr
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %18) #12, !srcloc !393
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.else.i, %if.then10.i
  %val.0.i = phi i32 [ %conv.i, %if.then10.i ], [ %20, %if.else.i ]
  %mask.i = getelementptr inbounds %struct.cmipci_switch_args, ptr %2, i32 0, i32 1
  %21 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mask.i, align 4
  %and16.i = and i32 %22, %val.0.i
  %mask_on.i = getelementptr inbounds %struct.cmipci_switch_args, ptr %2, i32 0, i32 2
  %23 = ptrtoint ptr %mask_on.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mask_on.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and16.i, i32 %24)
  %cmp.i = icmp eq i32 %and16.i, %24
  %cond.i = zext i1 %cmp.i to i32
  br label %_snd_cmipci_uswitch_get.exit

_snd_cmipci_uswitch_get.exit:                     ; preds = %if.end15.i, %land.lhs.true.i._snd_cmipci_uswitch_get.exit_crit_edge
  %cond.sink.i = phi i32 [ %cond.i, %if.end15.i ], [ 0, %land.lhs.true.i._snd_cmipci_uswitch_get.exit_crit_edge ]
  %value18.i = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %25 = ptrtoint ptr %value18.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %cond.sink.i, ptr %value18.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock.i) #12
  br label %cleanup

cleanup:                                          ; preds = %_snd_cmipci_uswitch_get.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %_snd_cmipci_uswitch_get.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_uswitch_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !408

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 2393, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = inttoptr i32 %1 to ptr
  %call = tail call fastcc i32 @_snd_cmipci_uswitch_put(ptr noundef %kcontrol, ptr noundef %ucontrol, ptr noundef nonnull %2)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_line_in_mode_info(ptr nocapture noundef readonly %kcontrol, ptr noundef %uinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %chip_version = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %chip_version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %3)
  %cmp = icmp sgt i32 %3, 38
  %cond = select i1 %cmp, i32 3, i32 2
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef %cond, ptr noundef nonnull @snd_cmipci_line_in_mode_info.texts) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_line_in_mode_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %chip_version.i = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %3)
  %cmp.i = icmp sgt i32 %3, 38
  br i1 %cmp.i, label %if.then.i, label %entry.if.end2.i_crit_edge

entry.if.end2.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2.i

if.then.i:                                        ; preds = %entry
  %iobase.i.i = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase.i.i, align 4
  %add.i.i = add i32 %5, 20
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %6 = inttoptr i32 %add1.i.i to ptr
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #12, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  %8 = and i32 %7, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.then.i.if.end2.i_crit_edge, label %if.then.i.get_line_in_mode.exit_crit_edge

if.then.i.get_line_in_mode.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_line_in_mode.exit

if.then.i.if.end2.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then.i.if.end2.i_crit_edge, %entry.if.end2.i_crit_edge
  %iobase.i11.i = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %iobase.i11.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase.i11.i, align 4
  %add.i12.i = add i32 %10, 36
  %and.i13.i = and i32 %add.i12.i, 1048575
  %add1.i14.i = or i32 %and.i13.i, -18874368
  %11 = inttoptr i32 %add1.i14.i to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #12, !srcloc !403
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !404
  %13 = lshr i8 %12, 5
  %.lobit.i = and i8 %13, 1
  %14 = zext i8 %.lobit.i to i32
  br label %get_line_in_mode.exit

get_line_in_mode.exit:                            ; preds = %if.end2.i, %if.then.i.get_line_in_mode.exit_crit_edge
  %retval.0.i = phi i32 [ 2, %if.then.i.get_line_in_mode.exit_crit_edge ], [ %14, %if.end2.i ]
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i, ptr %value, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_line_in_mode_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  %iobase.i = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %5, 20
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #12
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %or.i = or i32 %8, 24576
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %8)
  %cmp.i = icmp eq i32 %or.i, %8
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %do.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void @arm_heavy_mb() #12
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %10 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase.i, align 4
  %add4.i = add i32 %11, 20
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %12 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %12, i32 %9) #12, !srcloc !397
  br label %if.end

if.else:                                          ; preds = %entry
  %and3.i = and i32 %8, -24577
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i, i32 %8)
  %cmp.i24 = icmp eq i32 %and3.i, %8
  br i1 %cmp.i24, label %if.else.if.end_crit_edge, label %do.body.i25

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body.i25:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %13 = tail call i32 @llvm.bswap.i32(i32 %and3.i) #12
  %14 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase.i, align 4
  %add5.i = add i32 %15, 20
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %16 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 %13) #12, !srcloc !397
  br label %if.end

if.end:                                           ; preds = %do.body.i25, %if.else.if.end_crit_edge, %do.body.i, %if.then.if.end_crit_edge
  %change.0 = phi i32 [ 1, %do.body.i ], [ 0, %if.then.if.end_crit_edge ], [ 1, %do.body.i25 ], [ 0, %if.else.if.end_crit_edge ]
  %17 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp4 = icmp eq i32 %18, 1
  %iobase.i27 = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %iobase.i27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iobase.i27, align 4
  %add.i28 = add i32 %20, 36
  %and.i29 = and i32 %add.i28, 1048575
  %add1.i30 = or i32 %and.i29, -18874368
  %21 = inttoptr i32 %add1.i30 to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  br i1 %cmp4, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.end
  %or18.i = or i8 %22, 32
  call void @__sanitizer_cov_trace_cmp1(i8 %or18.i, i8 %22)
  %cmp.i31 = icmp eq i8 %or18.i, %22
  br i1 %cmp.i31, label %if.then5.if.end10_crit_edge, label %do.body.i32

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

do.body.i32:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  %23 = ptrtoint ptr %iobase.i27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iobase.i27, align 4
  %add9.i = add i32 %24, 36
  %and10.i = and i32 %add9.i, 1048575
  %add11.i = or i32 %and10.i, -18874368
  %25 = inttoptr i32 %add11.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %or18.i) #12, !srcloc !402
  br label %if.end10

if.else7:                                         ; preds = %if.end
  %and4.i = and i8 %22, -33
  call void @__sanitizer_cov_trace_cmp1(i8 %and4.i, i8 %22)
  %cmp.i38 = icmp eq i8 %and4.i, %22
  br i1 %cmp.i38, label %if.else7.if.end10_crit_edge, label %do.body.i39

if.else7.if.end10_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

do.body.i39:                                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  tail call void @arm_heavy_mb() #12
  %26 = ptrtoint ptr %iobase.i27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iobase.i27, align 4
  %add10.i = add i32 %27, 36
  %and11.i = and i32 %add10.i, 1048575
  %add12.i = or i32 %and11.i, -18874368
  %28 = inttoptr i32 %add12.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %and4.i) #12, !srcloc !402
  br label %if.end10

if.end10:                                         ; preds = %do.body.i39, %if.else7.if.end10_crit_edge, %do.body.i32, %if.then5.if.end10_crit_edge
  %call6.pn = phi i32 [ 1, %do.body.i32 ], [ 0, %if.then5.if.end10_crit_edge ], [ 1, %do.body.i39 ], [ 0, %if.else7.if.end10_crit_edge ]
  %change.1 = or i32 %call6.pn, %change.0
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  ret i32 %change.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_snd_cmipci_uswitch_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol, ptr nocapture noundef readonly %args) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %ac3_sensitive = getelementptr inbounds %struct.cmipci_switch_args, ptr %args, i32 0, i32 3
  %2 = ptrtoint ptr %ac3_sensitive to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %ac3_sensitive, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %mixer_insensitive = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %mixer_insensitive to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load1 = load i8, ptr %mixer_insensitive, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load1)
  %tobool4.not = icmp sgt i8 %bf.load1, -1
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool9.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %iobase = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase, align 4
  %7 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %args, align 4
  %add = add i32 %8, %6
  %and = and i32 %add, 1048575
  %add11 = or i32 %and, -18874368
  %9 = inttoptr i32 %add11 to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #12, !srcloc !403
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !423
  %conv = zext i8 %10 to i32
  br label %if.end15

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %args, align 4
  %iobase.i = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %14, %12
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %15 = inttoptr i32 %add1.i to ptr
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %15) #12, !srcloc !393
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then10
  %val.0 = phi i32 [ %conv, %if.then10 ], [ %17, %if.else ]
  %mask = getelementptr inbounds %struct.cmipci_switch_args, ptr %args, i32 0, i32 1
  %18 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mask, align 4
  %and16 = and i32 %19, %val.0
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %20 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool17.not = icmp eq i32 %21, 0
  %mask_on19 = getelementptr inbounds %struct.cmipci_switch_args, ptr %args, i32 0, i32 2
  %22 = ptrtoint ptr %mask_on19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mask_on19, align 4
  br i1 %tobool17.not, label %cond.end, label %cond.end.thread

cond.end:                                         ; preds = %if.end15
  %neg = xor i32 %23, -1
  %and20 = and i32 %19, %neg
  call void @__sanitizer_cov_trace_cmp4(i32 %and16, i32 %and20)
  %cmp.not = icmp eq i32 %and16, %and20
  br i1 %cmp.not, label %cond.end.cleanup_crit_edge, label %if.else32

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.end.thread:                                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_cmp4(i32 %and16, i32 %23)
  %cmp92.not = icmp eq i32 %and16, %23
  br i1 %cmp92.not, label %cond.end.thread.cleanup_crit_edge, label %if.then30

cond.end.thread.cleanup_crit_edge:                ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then30:                                        ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %mask_on19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mask_on19, align 4
  br label %if.end38

if.else32:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %mask_on19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mask_on19, align 4
  %neg35 = xor i32 %27, -1
  %and36 = and i32 %19, %neg35
  br label %if.end38

if.end38:                                         ; preds = %if.else32, %if.then30
  %.pn = phi i32 [ %25, %if.then30 ], [ %and36, %if.else32 ]
  %neg2597.pn = xor i32 %19, -1
  %and26101 = and i32 %val.0, %neg2597.pn
  %val.1 = or i32 %.pn, %and26101
  %28 = ptrtoint ptr %ac3_sensitive to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load40 = load i8, ptr %ac3_sensitive, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load40)
  %tobool43.not = icmp sgt i8 %bf.load40, -1
  br i1 %tobool43.not, label %if.else52, label %do.body

do.body:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !424
  tail call void @arm_heavy_mb() #12
  %conv45 = trunc i32 %val.1 to i8
  %iobase46 = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %iobase46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iobase46, align 4
  %31 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %args, align 4
  %add48 = add i32 %32, %30
  %and49 = and i32 %add48, 1048575
  %add50 = or i32 %and49, -18874368
  %33 = inttoptr i32 %add50 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %conv45) #12, !srcloc !402
  br label %cleanup

if.else52:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %args, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %36 = tail call i32 @llvm.bswap.i32(i32 %val.1) #12
  %iobase.i87 = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 4
  %37 = ptrtoint ptr %iobase.i87 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iobase.i87, align 4
  %add.i88 = add i32 %38, %35
  %and.i89 = and i32 %add.i88, 1048575
  %add1.i90 = or i32 %and.i89, -18874368
  %39 = inttoptr i32 %add1.i90 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %39, i32 %36) #12, !srcloc !397
  br label %cleanup

cleanup:                                          ; preds = %if.else52, %do.body, %cond.end.thread.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %cond.end.thread.cleanup_crit_edge ], [ 1, %do.body ], [ 1, %if.else52 ], [ 0, %cond.end.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_spdout_enable_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %reg_lock.i = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i) #12
  %bf.load.i = load i8, ptr getelementptr inbounds (%struct.cmipci_switch_args, ptr @cmipci_switch_arg_spdif_enable, i32 0, i32 3), align 4
  %2 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %mixer_insensitive.i = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 18
  %3 = ptrtoint ptr %mixer_insensitive.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load1.i = load i8, ptr %mixer_insensitive.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load1.i)
  %tobool4.not.i = icmp sgt i8 %bf.load1.i, -1
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i._snd_cmipci_uswitch_get.exit_crit_edge

land.lhs.true.i._snd_cmipci_uswitch_get.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_snd_cmipci_uswitch_get.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool9.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool9.not.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %iobase.i = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase.i, align 4
  %6 = load i32, ptr @cmipci_switch_arg_spdif_enable, align 4
  %add.i = add i32 %6, %5
  %and.i = and i32 %add.i, 1048575
  %add11.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add11.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #12, !srcloc !403
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  %conv.i = zext i8 %8 to i32
  br label %if.end15.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = load i32, ptr @cmipci_switch_arg_spdif_enable, align 4
  %iobase.i.i = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase.i.i, align 4
  %add.i.i = add i32 %11, %9
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %12 = inttoptr i32 %add1.i.i to ptr
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %12) #12, !srcloc !393
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.else.i, %if.then10.i
  %val.0.i = phi i32 [ %conv.i, %if.then10.i ], [ %14, %if.else.i ]
  %15 = load i32, ptr getelementptr inbounds (%struct.cmipci_switch_args, ptr @cmipci_switch_arg_spdif_enable, i32 0, i32 1), align 4
  %and16.i = and i32 %15, %val.0.i
  %16 = load i32, ptr getelementptr inbounds (%struct.cmipci_switch_args, ptr @cmipci_switch_arg_spdif_enable, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and16.i, i32 %16)
  %cmp.i = icmp eq i32 %and16.i, %16
  %cond.i = zext i1 %cmp.i to i32
  br label %_snd_cmipci_uswitch_get.exit

_snd_cmipci_uswitch_get.exit:                     ; preds = %if.end15.i, %land.lhs.true.i._snd_cmipci_uswitch_get.exit_crit_edge
  %cond.sink.i = phi i32 [ %cond.i, %if.end15.i ], [ 0, %land.lhs.true.i._snd_cmipci_uswitch_get.exit_crit_edge ]
  %value18.i = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %17 = ptrtoint ptr %value18.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond.sink.i, ptr %value18.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock.i) #12
  %18 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private_data.i, align 4
  %reg_lock.i6 = getelementptr inbounds %struct.cmipci, ptr %19, i32 0, i32 24
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i6) #12
  %bf.load.i7 = load i8, ptr getelementptr inbounds (%struct.cmipci_switch_args, ptr @cmipci_switch_arg_spdo2dac, i32 0, i32 3), align 4
  %20 = and i8 %bf.load.i7, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i8 = icmp eq i8 %20, 0
  br i1 %tobool.not.i8, label %_snd_cmipci_uswitch_get.exit.if.end.i14_crit_edge, label %land.lhs.true.i12

_snd_cmipci_uswitch_get.exit.if.end.i14_crit_edge: ; preds = %_snd_cmipci_uswitch_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i14

land.lhs.true.i12:                                ; preds = %_snd_cmipci_uswitch_get.exit
  %mixer_insensitive.i9 = getelementptr inbounds %struct.cmipci, ptr %19, i32 0, i32 18
  %21 = ptrtoint ptr %mixer_insensitive.i9 to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load1.i10 = load i8, ptr %mixer_insensitive.i9, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load1.i10)
  %tobool4.not.i11 = icmp sgt i8 %bf.load1.i10, -1
  br i1 %tobool4.not.i11, label %land.lhs.true.i12.if.end.i14_crit_edge, label %land.lhs.true.i12._snd_cmipci_uswitch_get.exit33_crit_edge

land.lhs.true.i12._snd_cmipci_uswitch_get.exit33_crit_edge: ; preds = %land.lhs.true.i12
  call void @__sanitizer_cov_trace_pc() #14
  br label %_snd_cmipci_uswitch_get.exit33

land.lhs.true.i12.if.end.i14_crit_edge:           ; preds = %land.lhs.true.i12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i14

if.end.i14:                                       ; preds = %land.lhs.true.i12.if.end.i14_crit_edge, %_snd_cmipci_uswitch_get.exit.if.end.i14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i7)
  %tobool9.not.i13 = icmp sgt i8 %bf.load.i7, -1
  br i1 %tobool9.not.i13, label %if.else.i25, label %if.then10.i20

if.then10.i20:                                    ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #14
  %iobase.i15 = getelementptr inbounds %struct.cmipci, ptr %19, i32 0, i32 4
  %22 = ptrtoint ptr %iobase.i15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase.i15, align 4
  %24 = load i32, ptr @cmipci_switch_arg_spdo2dac, align 4
  %add.i16 = add i32 %24, %23
  %and.i17 = and i32 %add.i16, 1048575
  %add11.i18 = or i32 %and.i17, -18874368
  %25 = inttoptr i32 %add11.i18 to ptr
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #12, !srcloc !403
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  %conv.i19 = zext i8 %26 to i32
  br label %if.end15.i30

if.else.i25:                                      ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #14
  %27 = load i32, ptr @cmipci_switch_arg_spdo2dac, align 4
  %iobase.i.i21 = getelementptr inbounds %struct.cmipci, ptr %19, i32 0, i32 4
  %28 = ptrtoint ptr %iobase.i.i21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iobase.i.i21, align 4
  %add.i.i22 = add i32 %29, %27
  %and.i.i23 = and i32 %add.i.i22, 1048575
  %add1.i.i24 = or i32 %and.i.i23, -18874368
  %30 = inttoptr i32 %add1.i.i24 to ptr
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %30) #12, !srcloc !393
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  br label %if.end15.i30

if.end15.i30:                                     ; preds = %if.else.i25, %if.then10.i20
  %val.0.i26 = phi i32 [ %conv.i19, %if.then10.i20 ], [ %32, %if.else.i25 ]
  %33 = load i32, ptr getelementptr inbounds (%struct.cmipci_switch_args, ptr @cmipci_switch_arg_spdo2dac, i32 0, i32 1), align 4
  %and16.i27 = and i32 %33, %val.0.i26
  %34 = load i32, ptr getelementptr inbounds (%struct.cmipci_switch_args, ptr @cmipci_switch_arg_spdo2dac, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and16.i27, i32 %34)
  %cmp.i28 = icmp eq i32 %and16.i27, %34
  %cond.i29 = zext i1 %cmp.i28 to i32
  br label %_snd_cmipci_uswitch_get.exit33

_snd_cmipci_uswitch_get.exit33:                   ; preds = %if.end15.i30, %land.lhs.true.i12._snd_cmipci_uswitch_get.exit33_crit_edge
  %cond.sink.i31 = phi i32 [ %cond.i29, %if.end15.i30 ], [ 0, %land.lhs.true.i12._snd_cmipci_uswitch_get.exit33_crit_edge ]
  %35 = ptrtoint ptr %value18.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cond.sink.i31, ptr %value18.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock.i6) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_spdout_enable_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call fastcc i32 @_snd_cmipci_uswitch_put(ptr noundef %kcontrol, ptr noundef %ucontrol, ptr noundef nonnull @cmipci_switch_arg_spdif_enable)
  %call1 = tail call fastcc i32 @_snd_cmipci_uswitch_put(ptr noundef %kcontrol, ptr noundef %ucontrol, ptr noundef nonnull @cmipci_switch_arg_spdo2dac)
  %or = or i32 %call1, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool.not = icmp eq i32 %or, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then:                                          ; preds = %entry
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  %spdif_playback_avail7 = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %spdif_playback_avail7 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load8 = load i8, ptr %spdif_playback_avail7, align 4
  %5 = and i8 %bf.load8, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool12.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  br i1 %tobool12.not, label %if.then3.if.end17_crit_edge, label %if.then5

if.then3.if.end17_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then5:                                         ; preds = %if.then3
  %iobase.i = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %7, 4
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add1.i to ptr
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %8) #12, !srcloc !393
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  %or.i = or i32 %10, 256
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %10)
  %cmp.i = icmp eq i32 %or.i, %10
  br i1 %cmp.i, label %if.then5.if.end17_crit_edge, label %do.body.i

if.then5.if.end17_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

do.body.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !396
  tail call void @arm_heavy_mb() #12
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase.i, align 4
  %add4.i = add i32 %13, 4
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %14 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %11) #12, !srcloc !397
  br label %if.end17

if.else:                                          ; preds = %if.then
  br i1 %tobool12.not, label %if.else.if.end17_crit_edge, label %if.then13

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then13:                                        ; preds = %if.else
  %iobase.i33 = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %iobase.i33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase.i33, align 4
  %add.i34 = add i32 %16, 4
  %and.i35 = and i32 %add.i34, 1048575
  %add1.i36 = or i32 %and.i35, -18874368
  %17 = inttoptr i32 %add1.i36 to ptr
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %17) #12, !srcloc !393
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  %and3.i = and i32 %19, -257
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i, i32 %19)
  %cmp.i37 = icmp eq i32 %and3.i, %19
  br i1 %cmp.i37, label %if.then13.if.end17_crit_edge, label %do.body.i38

if.then13.if.end17_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

do.body.i38:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  tail call void @arm_heavy_mb() #12
  %20 = tail call i32 @llvm.bswap.i32(i32 %and3.i) #12
  %21 = ptrtoint ptr %iobase.i33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iobase.i33, align 4
  %add5.i = add i32 %22, 4
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %23 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %23, i32 %20) #12, !srcloc !397
  br label %if.end17

if.end17:                                         ; preds = %do.body.i38, %if.then13.if.end17_crit_edge, %if.else.if.end17_crit_edge, %do.body.i, %if.then5.if.end17_crit_edge, %if.then3.if.end17_crit_edge, %entry.if.end17_crit_edge
  %value18 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %24 = ptrtoint ptr %value18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %value18, align 8
  %spdif_playback_enabled = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 11
  %26 = trunc i32 %25 to i8
  %27 = ptrtoint ptr %spdif_playback_enabled to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load20 = load i8, ptr %spdif_playback_enabled, align 4
  %bf.value = shl i8 %26, 1
  %bf.shl = and i8 %bf.value, 2
  %bf.clear21 = and i8 %bf.load20, -3
  %bf.set = or i8 %bf.shl, %bf.clear21
  store i8 %bf.set, ptr %spdif_playback_enabled, align 4
  ret i32 %or
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_cmipci_spdif_default_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_spdif_default_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %dig_status = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 13
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %dig_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dig_status, align 4
  %conv = trunc i32 %3 to i8
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %value, align 1
  %5 = load i32, ptr %dig_status, align 4
  %shr.1 = lshr i32 %5, 8
  %conv.1 = trunc i32 %shr.1 to i8
  %arrayidx.1 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.1, ptr %arrayidx.1, align 1
  %7 = load i32, ptr %dig_status, align 4
  %shr.2 = lshr i32 %7, 16
  %conv.2 = trunc i32 %shr.2 to i8
  %arrayidx.2 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.2, ptr %arrayidx.2, align 1
  %9 = load i32, ptr %dig_status, align 4
  %shr.3 = lshr i32 %9, 24
  %conv.3 = trunc i32 %shr.3 to i8
  %arrayidx.3 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.3, ptr %arrayidx.3, align 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_spdif_default_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %value, align 1
  %conv = zext i8 %3 to i32
  %arrayidx.1 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %5 to i32
  %shl.1 = shl nuw nsw i32 %conv.1, 8
  %or.1 = or i32 %shl.1, %conv
  %arrayidx.2 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %7 to i32
  %shl.2 = shl nuw nsw i32 %conv.2, 16
  %or.2 = or i32 %shl.2, %or.1
  %arrayidx.3 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %9 to i32
  %shl.3 = shl nuw i32 %conv.3, 24
  %or.3 = or i32 %shl.3, %or.2
  %dig_status = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %dig_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dig_status, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or.3, i32 %11)
  %cmp1 = icmp ne i32 %or.3, %11
  %conv2 = zext i1 %cmp1 to i32
  %12 = ptrtoint ptr %dig_status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.3, ptr %dig_status, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  ret i32 %conv2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_cmipci_spdif_mask_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_cmipci_spdif_mask_get(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %ucontrol) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_cmipci_spdif_stream_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_spdif_stream_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %dig_pcm_status = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 14
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %dig_pcm_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dig_pcm_status, align 4
  %conv = trunc i32 %3 to i8
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %value, align 1
  %5 = load i32, ptr %dig_pcm_status, align 4
  %shr.1 = lshr i32 %5, 8
  %conv.1 = trunc i32 %shr.1 to i8
  %arrayidx.1 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.1, ptr %arrayidx.1, align 1
  %7 = load i32, ptr %dig_pcm_status, align 4
  %shr.2 = lshr i32 %7, 16
  %conv.2 = trunc i32 %shr.2 to i8
  %arrayidx.2 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.2, ptr %arrayidx.2, align 1
  %9 = load i32, ptr %dig_pcm_status, align 4
  %shr.3 = lshr i32 %9, 24
  %conv.3 = trunc i32 %shr.3 to i8
  %arrayidx.3 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.3, ptr %arrayidx.3, align 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_spdif_stream_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %value, align 1
  %conv = zext i8 %3 to i32
  %arrayidx.1 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %5 to i32
  %shl.1 = shl nuw nsw i32 %conv.1, 8
  %or.1 = or i32 %shl.1, %conv
  %arrayidx.2 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %7 to i32
  %shl.2 = shl nuw nsw i32 %conv.2, 16
  %or.2 = or i32 %shl.2, %or.1
  %arrayidx.3 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %9 to i32
  %shl.3 = shl nuw i32 %conv.3, 24
  %or.3 = or i32 %shl.3, %or.2
  %dig_pcm_status = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %dig_pcm_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dig_pcm_status, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or.3, i32 %11)
  %cmp1 = icmp ne i32 %or.3, %11
  %conv2 = zext i1 %cmp1 to i32
  %12 = ptrtoint ptr %dig_pcm_status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.3, ptr %dig_pcm_status, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  ret i32 %conv2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_mic_in_mode_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_cmipci_mic_in_mode_info.texts) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_mic_in_mode_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %iobase.i = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %3, 39
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #12, !srcloc !403
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !404
  %6 = lshr i8 %5, 2
  %.lobit = and i8 %6, 1
  %7 = zext i8 %.lobit to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_mic_in_mode_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 24
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #12
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %iobase.i6 = getelementptr inbounds %struct.cmipci, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %iobase.i6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase.i6, align 4
  %add.i7 = add i32 %5, 39
  %and.i8 = and i32 %add.i7, 1048575
  %add1.i9 = or i32 %and.i8, -18874368
  %6 = inttoptr i32 %add1.i9 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %or18.i = or i8 %7, 4
  call void @__sanitizer_cov_trace_cmp1(i8 %or18.i, i8 %7)
  %cmp.i = icmp eq i8 %or18.i, %7
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %do.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  %8 = ptrtoint ptr %iobase.i6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase.i6, align 4
  %add9.i = add i32 %9, 39
  %and10.i = and i32 %add9.i, 1048575
  %add11.i = or i32 %and10.i, -18874368
  %10 = inttoptr i32 %add11.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %or18.i) #12, !srcloc !402
  br label %if.end

if.else:                                          ; preds = %entry
  %and4.i = and i8 %7, -5
  call void @__sanitizer_cov_trace_cmp1(i8 %and4.i, i8 %7)
  %cmp.i10 = icmp eq i8 %and4.i, %7
  br i1 %cmp.i10, label %if.else.if.end_crit_edge, label %do.body.i11

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body.i11:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  tail call void @arm_heavy_mb() #12
  %11 = ptrtoint ptr %iobase.i6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase.i6, align 4
  %add10.i = add i32 %12, 39
  %and11.i = and i32 %add10.i, 1048575
  %add12.i = or i32 %and11.i, -18874368
  %13 = inttoptr i32 %add12.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %and4.i) #12, !srcloc !402
  br label %if.end

if.end:                                           ; preds = %do.body.i11, %if.else.if.end_crit_edge, %do.body.i, %if.then.if.end_crit_edge
  %change.0 = phi i32 [ 1, %do.body.i ], [ 0, %if.then.if.end_crit_edge ], [ 1, %do.body.i11 ], [ 0, %if.else.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #12
  ret i32 %change.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_set_phys(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__gameport_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  %iobase.i = getelementptr inbounds %struct.cmipci, ptr %3, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.033 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [17 x i8], ptr @saved_regs, i32 0, i32 %i.033
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %8, %conv
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %9 = inttoptr i32 %add1.i to ptr
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #12, !srcloc !393
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  %arrayidx2 = getelementptr %struct.cmipci, ptr %3, i32 0, i32 25, i32 %i.033
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx2, align 4
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.body.for.body6_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.body6_crit_edge:                     ; preds = %for.body
  br label %for.body6

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.body.for.body6_crit_edge
  %i.134 = phi i32 [ %inc11, %for.body6.for.body6_crit_edge ], [ 0, %for.body.for.body6_crit_edge ]
  %arrayidx7 = getelementptr [16 x i8], ptr @saved_mixers, i32 0, i32 %i.134
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx7, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !415
  tail call void @arm_heavy_mb() #12
  %15 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase.i, align 4
  %add.i26 = add i32 %16, 35
  %and.i27 = and i32 %add.i26, 1048575
  %add1.i28 = or i32 %and.i27, -18874368
  %17 = inttoptr i32 %add1.i28 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %14) #12, !srcloc !402
  %18 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase.i, align 4
  %add3.i = add i32 %19, 34
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %20 = inttoptr i32 %add5.i to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #12, !srcloc !403
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !416
  %arrayidx9 = getelementptr %struct.cmipci, ptr %3, i32 0, i32 26, i32 %i.134
  %22 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx9, align 1
  %inc11 = add nuw nsw i32 %i.134, 1
  %exitcond35.not = icmp eq i32 %inc11, 16
  br i1 %exitcond35.not, label %for.end12, label %for.body6.for.body6_crit_edge

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body6

for.end12:                                        ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %23 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iobase.i, align 4
  %add.i30 = add i32 %24, 12
  %and.i31 = and i32 %add.i30, 1048575
  %add1.i32 = or i32 %and.i31, -18874368
  %25 = inttoptr i32 %add1.i32 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %25, i32 0) #12, !srcloc !397
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cmipci_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %iobase.i = getelementptr inbounds %struct.cmipci, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %5, 12
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %6, i32 0) #12, !srcloc !397
  %ch1.i = getelementptr %struct.cmipci, ptr %3, i32 0, i32 21, i32 0, i32 7
  %7 = ptrtoint ptr %ch1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ch1.i, align 4
  %shl.i = shl i32 262144, %8
  %ctrl.i = getelementptr inbounds %struct.cmipci, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ctrl.i, align 4
  %or.i = or i32 %10, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase.i, align 4
  %and.i.i = and i32 %13, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %14 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %11) #12, !srcloc !397
  %15 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctrl.i, align 4
  %neg.i = xor i32 %shl.i, -1
  %and.i26 = and i32 %16, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %17 = tail call i32 @llvm.bswap.i32(i32 %and.i26) #12
  %18 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase.i, align 4
  %and.i9.i = and i32 %19, 1048575
  %add1.i10.i = or i32 %and.i9.i, -18874368
  %20 = inttoptr i32 %add1.i10.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 %17) #12, !srcloc !397
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 2147480) #12
  %ch1.i27 = getelementptr %struct.cmipci, ptr %3, i32 0, i32 21, i32 1, i32 7
  %22 = ptrtoint ptr %ch1.i27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ch1.i27, align 4
  %shl.i28 = shl i32 262144, %23
  %24 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ctrl.i, align 4
  %or.i30 = or i32 %25, %shl.i28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i30) #12
  %27 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %iobase.i, align 4
  %and.i.i32 = and i32 %28, 1048575
  %add1.i.i33 = or i32 %and.i.i32, -18874368
  %29 = inttoptr i32 %add1.i.i33 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %29, i32 %26) #12, !srcloc !397
  %30 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ctrl.i, align 4
  %neg.i34 = xor i32 %shl.i28, -1
  %and.i35 = and i32 %31, %neg.i34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %32 = tail call i32 @llvm.bswap.i32(i32 %and.i35) #12
  %33 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iobase.i, align 4
  %and.i9.i36 = and i32 %34, 1048575
  %add1.i10.i37 = or i32 %and.i9.i36, -18874368
  %35 = inttoptr i32 %add1.i10.i37 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %35, i32 %32) #12, !srcloc !397
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 2147480) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !406
  tail call void @arm_heavy_mb() #12
  %37 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iobase.i, align 4
  %add.i39 = add i32 %38, 35
  %and.i40 = and i32 %add.i39, 1048575
  %add1.i41 = or i32 %and.i40, -18874368
  %39 = inttoptr i32 %add1.i41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 0) #12, !srcloc !402
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !407
  tail call void @arm_heavy_mb() #12
  %40 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %iobase.i, align 4
  %add5.i = add i32 %41, 34
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %42 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 0) #12, !srcloc !402
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.053 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [17 x i8], ptr @saved_regs, i32 0, i32 %i.053
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %44 to i32
  %arrayidx1 = getelementptr %struct.cmipci, ptr %3, i32 0, i32 25, i32 %i.053
  %45 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  tail call void @arm_heavy_mb() #12
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #12
  %48 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %iobase.i, align 4
  %add.i43 = add i32 %49, %conv
  %and.i44 = and i32 %add.i43, 1048575
  %add1.i45 = or i32 %and.i44, -18874368
  %50 = inttoptr i32 %add1.i45 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %50, i32 %47) #12, !srcloc !397
  %inc = add nuw nsw i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.body.for.body5_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.body5_crit_edge:                     ; preds = %for.body
  br label %for.body5

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.body.for.body5_crit_edge
  %i.154 = phi i32 [ %inc9, %for.body5.for.body5_crit_edge ], [ 0, %for.body.for.body5_crit_edge ]
  %arrayidx6 = getelementptr [16 x i8], ptr @saved_mixers, i32 0, i32 %i.154
  %51 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx6, align 1
  %arrayidx7 = getelementptr %struct.cmipci, ptr %3, i32 0, i32 26, i32 %i.154
  %53 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx7, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !406
  tail call void @arm_heavy_mb() #12
  %55 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %iobase.i, align 4
  %add.i47 = add i32 %56, 35
  %and.i48 = and i32 %add.i47, 1048575
  %add1.i49 = or i32 %and.i48, -18874368
  %57 = inttoptr i32 %add1.i49 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 %52) #12, !srcloc !402
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !407
  tail call void @arm_heavy_mb() #12
  %58 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %iobase.i, align 4
  %add5.i50 = add i32 %59, 34
  %and6.i51 = and i32 %add5.i50, 1048575
  %add7.i52 = or i32 %and6.i51, -18874368
  %60 = inttoptr i32 %add7.i52 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 %54) #12, !srcloc !402
  %inc9 = add nuw nsw i32 %i.154, 1
  %exitcond55.not = icmp eq i32 %inc9, 16
  br i1 %exitcond55.not, label %for.end10, label %for.body5.for.body5_crit_edge

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body5

for.end10:                                        ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #14
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %61 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 161)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 161)
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
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !93, !94, !96, !97, !98, !99, !100, !101, !102, !104, !106, !108, !110, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !162, !163, !165, !167, !168, !170, !171, !173, !175, !176, !177, !179, !180, !181, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !365, !366, !367, !368, !370, !371, !372, !374, !376, !378, !380}
!llvm.module.flags = !{!382, !383, !384, !385, !386, !387, !388, !389}
!llvm.ident = !{!390}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/cmipci.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/cmipci.c", i32 31, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/cmipci.c", i32 32, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/cmipci.c", i32 48, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype246, !8, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index247, !11, !"__UNIQUE_ID_index247", i1 false, i1 false}
!11 = !{!"../sound/pci/cmipci.c", i32 49, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/cmipci.c", i32 50, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype248, !13, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id249, !16, !"__UNIQUE_ID_id249", i1 false, i1 false}
!16 = !{!"../sound/pci/cmipci.c", i32 51, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/pci/cmipci.c", i32 52, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype250, !18, !"__UNIQUE_ID_enabletype250", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable251, !21, !"__UNIQUE_ID_enable251", i1 false, i1 false}
!21 = !{!"../sound/pci/cmipci.c", i32 53, i32 1}
!22 = !{ptr @__param_mpu_port, !23, !"__param_mpu_port", i1 false, i1 false}
!23 = !{!"../sound/pci/cmipci.c", i32 54, i32 1}
!24 = !{ptr @__UNIQUE_ID_mpu_porttype252, !23, !"__UNIQUE_ID_mpu_porttype252", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_mpu_port253, !26, !"__UNIQUE_ID_mpu_port253", i1 false, i1 false}
!26 = !{!"../sound/pci/cmipci.c", i32 55, i32 1}
!27 = !{ptr @__param_fm_port, !28, !"__param_fm_port", i1 false, i1 false}
!28 = !{!"../sound/pci/cmipci.c", i32 56, i32 1}
!29 = !{ptr @__UNIQUE_ID_fm_porttype254, !28, !"__UNIQUE_ID_fm_porttype254", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_fm_port255, !31, !"__UNIQUE_ID_fm_port255", i1 false, i1 false}
!31 = !{!"../sound/pci/cmipci.c", i32 57, i32 1}
!32 = !{ptr @__param_soft_ac3, !33, !"__param_soft_ac3", i1 false, i1 false}
!33 = !{!"../sound/pci/cmipci.c", i32 58, i32 1}
!34 = !{ptr @__UNIQUE_ID_soft_ac3type256, !33, !"__UNIQUE_ID_soft_ac3type256", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_soft_ac3257, !36, !"__UNIQUE_ID_soft_ac3257", i1 false, i1 false}
!36 = !{!"../sound/pci/cmipci.c", i32 59, i32 1}
!37 = !{ptr @__param_joystick_port, !38, !"__param_joystick_port", i1 false, i1 false}
!38 = !{!"../sound/pci/cmipci.c", i32 61, i32 1}
!39 = !{ptr @__UNIQUE_ID_joystick_porttype258, !38, !"__UNIQUE_ID_joystick_porttype258", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_joystick_port259, !41, !"__UNIQUE_ID_joystick_port259", i1 false, i1 false}
!41 = !{!"../sound/pci/cmipci.c", i32 62, i32 1}
!42 = !{ptr @__initcall__kmod_snd_cmipci__264_3341_cmipci_driver_init6, !43, !"__initcall__kmod_snd_cmipci__264_3341_cmipci_driver_init6", i1 false, i1 false}
!43 = !{!"../sound/pci/cmipci.c", i32 3341, i32 1}
!44 = !{ptr @__exitcall_cmipci_driver_exit, !43, !"__exitcall_cmipci_driver_exit", i1 false, i1 false}
!45 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!46 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!47 = !{ptr @index, !48, !"index", i1 false, i1 false}
!48 = !{!"../sound/pci/cmipci.c", i32 38, i32 12}
!49 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!50 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!51 = !{ptr @id, !52, !"id", i1 false, i1 false}
!52 = !{!"../sound/pci/cmipci.c", i32 39, i32 14}
!53 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!54 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!55 = !{ptr @enable, !56, !"enable", i1 false, i1 false}
!56 = !{!"../sound/pci/cmipci.c", i32 40, i32 13}
!57 = !{ptr @__param_str_mpu_port, !23, !"__param_str_mpu_port", i1 false, i1 false}
!58 = !{ptr @__param_arr_mpu_port, !23, !"__param_arr_mpu_port", i1 false, i1 false}
!59 = !{ptr @mpu_port, !60, !"mpu_port", i1 false, i1 false}
!60 = !{!"../sound/pci/cmipci.c", i32 41, i32 13}
!61 = !{ptr @__param_str_fm_port, !28, !"__param_str_fm_port", i1 false, i1 false}
!62 = !{ptr @__param_arr_fm_port, !28, !"__param_arr_fm_port", i1 false, i1 false}
!63 = !{ptr @fm_port, !64, !"fm_port", i1 false, i1 false}
!64 = !{!"../sound/pci/cmipci.c", i32 42, i32 13}
!65 = !{ptr @__param_str_soft_ac3, !33, !"__param_str_soft_ac3", i1 false, i1 false}
!66 = !{ptr @__param_arr_soft_ac3, !33, !"__param_arr_soft_ac3", i1 false, i1 false}
!67 = !{ptr @soft_ac3, !68, !"soft_ac3", i1 false, i1 false}
!68 = !{!"../sound/pci/cmipci.c", i32 43, i32 13}
!69 = !{ptr @__param_str_joystick_port, !38, !"__param_str_joystick_port", i1 false, i1 false}
!70 = !{ptr @__param_arr_joystick_port, !38, !"__param_arr_joystick_port", i1 false, i1 false}
!71 = !{ptr @joystick_port, !72, !"joystick_port", i1 false, i1 false}
!72 = !{!"../sound/pci/cmipci.c", i32 45, i32 12}
!73 = !{ptr @.str, !43, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @cmipci_driver, !75, !"cmipci_driver", i1 false, i1 false}
!75 = !{!"../sound/pci/cmipci.c", i32 3332, i32 26}
!76 = !{ptr @snd_cmipci_ids, !77, !"snd_cmipci_ids", i1 false, i1 false}
!77 = !{!"../sound/pci/cmipci.c", i32 2779, i32 35}
!78 = !{ptr @snd_cmipci_probe.dev, !79, !"dev", i1 false, i1 false}
!79 = !{!"../sound/pci/cmipci.c", i32 3219, i32 13}
!80 = distinct !{null, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/pci/cmipci.c", i32 3238, i32 24}
!82 = distinct !{null, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/pci/cmipci.c", i32 3242, i32 24}
!84 = !{ptr @.str.3, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/pci/cmipci.c", i32 3245, i32 24}
!86 = !{ptr @snd_cmipci_create.intel_82437vx, !87, !"intel_82437vx", i1 false, i1 false}
!87 = !{!"../sound/pci/cmipci.c", i32 2985, i32 36}
!88 = !{ptr @snd_cmipci_create.__key, !89, !"__key", i1 false, i1 false}
!89 = !{!"../sound/pci/cmipci.c", i32 2994, i32 2}
!90 = !{ptr @.str.4, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @snd_cmipci_create.__key.5, !92, !"__key", i1 false, i1 false}
!92 = !{!"../sound/pci/cmipci.c", i32 2995, i32 2}
!93 = !{ptr @.str.6, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.7, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/pci/cmipci.c", i32 3011, i32 3}
!96 = !{ptr @.str.8, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.9, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.10, !95, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.11, !95, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @snd_cmipci_create._entry, !95, !"_entry", i1 false, i1 false}
!101 = !{ptr @snd_cmipci_create._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.12, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/pci/cmipci.c", i32 3034, i32 4}
!104 = !{ptr @.str.13, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/pci/cmipci.c", i32 3036, i32 55}
!106 = !{ptr @.str.14, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/pci/cmipci.c", i32 3108, i32 27}
!108 = !{ptr @.str.15, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/cmipci.c", i32 3110, i32 21}
!110 = !{ptr @.str.16, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/pci/cmipci.c", i32 3113, i32 26}
!112 = !{ptr @.str.18, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/cmipci.c", i32 3140, i32 5}
!114 = !{ptr @snd_cmipci_create._entry.17, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @snd_cmipci_create._entry_ptr.19, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.21, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/pci/cmipci.c", i32 3191, i32 4}
!118 = !{ptr @snd_cmipci_create._entry.20, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @snd_cmipci_create._entry_ptr.22, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.23, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/pci/cmipci.c", i32 2956, i32 4}
!122 = !{ptr @.str.24, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @snd_cmipci_create_fm._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @snd_cmipci_create_fm._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.26, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/pci/cmipci.c", i32 2964, i32 3}
!127 = !{ptr @snd_cmipci_create_fm._entry.25, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @snd_cmipci_create_fm._entry_ptr.27, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.28, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/pci/cmipci.c", i32 2776, i32 33}
!131 = !{ptr @.str.29, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/pci/cmipci.c", i32 2762, i32 2}
!133 = !{ptr @.str.30, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/pci/cmipci.c", i32 2768, i32 4}
!135 = !{ptr @.str.31, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/pci/cmipci.c", i32 2769, i32 3}
!137 = !{ptr @.str.32, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/pci/cmipci.c", i32 2771, i32 2}
!139 = !{ptr @.str.33, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/pci/cmipci.c", i32 1888, i32 20}
!141 = !{ptr @snd_cmipci_playback_ops, !142, !"snd_cmipci_playback_ops", i1 false, i1 false}
!142 = !{!"../sound/pci/cmipci.c", i32 1825, i32 33}
!143 = !{ptr @snd_cmipci_playback, !144, !"snd_cmipci_playback", i1 false, i1 false}
!144 = !{!"../sound/pci/cmipci.c", i32 1456, i32 38}
!145 = !{ptr @hw_constraints_rates, !146, !"hw_constraints_rates", i1 false, i1 false}
!146 = !{!"../sound/pci/cmipci.c", i32 1578, i32 48}
!147 = !{ptr @rate_constraints, !148, !"rate_constraints", i1 false, i1 false}
!148 = !{!"../sound/pci/cmipci.c", i32 1576, i32 27}
!149 = !{ptr @.str.34, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/pci/cmipci.c", i32 433, i32 3}
!151 = !{ptr @.str.35, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/pci/cmipci.c", i32 434, i32 3}
!153 = !{ptr @.str.36, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/pci/cmipci.c", i32 435, i32 3}
!155 = !{ptr @.str.37, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/pci/cmipci.c", i32 437, i32 3}
!157 = distinct !{null, !158, !"cm_saved_mixer", i1 false, i1 false}
!158 = !{!"../sound/pci/cmipci.c", i32 432, i32 48}
!159 = !{ptr @.str.38, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/pci/cmipci.c", i32 771, i32 3}
!161 = !{ptr @.str.39, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @snd_cmipci_pcm_prepare.__UNIQUE_ID_ddebug260, !160, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!163 = !{ptr @.str.40, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/pci/cmipci.c", i32 812, i32 16}
!165 = !{ptr @.str.41, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/pci/cmipci.c", i32 825, i32 2}
!167 = !{ptr @snd_cmipci_pcm_prepare.__UNIQUE_ID_ddebug261, !166, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!168 = !{ptr @.str.42, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/pci/cmipci.c", i32 841, i32 2}
!170 = !{ptr @snd_cmipci_pcm_prepare.__UNIQUE_ID_ddebug262, !169, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!171 = distinct !{null, !172, !"rates", i1 false, i1 false}
!172 = !{!"../sound/pci/cmipci.c", i32 585, i32 27}
!173 = !{ptr @.str.43, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/pci/cmipci.c", i32 879, i32 3}
!175 = !{ptr @.str.44, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @snd_cmipci_pcm_trigger.__UNIQUE_ID_ddebug263, !174, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!177 = !{ptr @.str.45, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/pci/cmipci.c", i32 927, i32 2}
!179 = !{ptr @.str.46, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @snd_cmipci_pcm_pointer._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @snd_cmipci_pcm_pointer._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @snd_cmipci_capture_ops, !183, !"snd_cmipci_capture_ops", i1 false, i1 false}
!183 = !{!"../sound/pci/cmipci.c", i32 1834, i32 33}
!184 = !{ptr @snd_cmipci_capture, !185, !"snd_cmipci_capture", i1 false, i1 false}
!185 = !{!"../sound/pci/cmipci.c", i32 1476, i32 38}
!186 = !{ptr @.str.47, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/pci/cmipci.c", i32 1910, i32 20}
!188 = !{ptr @snd_cmipci_playback2_ops, !189, !"snd_cmipci_playback2_ops", i1 false, i1 false}
!189 = !{!"../sound/pci/cmipci.c", i32 1842, i32 33}
!190 = !{ptr @snd_cmipci_playback2, !191, !"snd_cmipci_playback2", i1 false, i1 false}
!191 = !{!"../sound/pci/cmipci.c", i32 1496, i32 38}
!192 = !{ptr @hw_constraints_channels_4, !193, !"hw_constraints_channels_4", i1 false, i1 false}
!193 = !{!"../sound/pci/cmipci.c", i32 695, i32 48}
!194 = !{ptr @hw_channels, !195, !"hw_channels", i1 false, i1 false}
!195 = !{!"../sound/pci/cmipci.c", i32 694, i32 27}
!196 = !{ptr @hw_constraints_channels_6, !197, !"hw_constraints_channels_6", i1 false, i1 false}
!197 = !{!"../sound/pci/cmipci.c", i32 700, i32 48}
!198 = !{ptr @hw_constraints_channels_8, !199, !"hw_constraints_channels_8", i1 false, i1 false}
!199 = !{!"../sound/pci/cmipci.c", i32 705, i32 48}
!200 = !{ptr @.str.48, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/pci/cmipci.c", i32 1933, i32 20}
!202 = !{ptr @snd_cmipci_playback_spdif_ops, !203, !"snd_cmipci_playback_spdif_ops", i1 false, i1 false}
!203 = !{!"../sound/pci/cmipci.c", i32 1852, i32 33}
!204 = !{ptr @snd_cmipci_playback_spdif, !205, !"snd_cmipci_playback_spdif", i1 false, i1 false}
!205 = !{!"../sound/pci/cmipci.c", i32 1516, i32 38}
!206 = !{ptr @snd_cmipci_playback_iec958_subframe, !207, !"snd_cmipci_playback_iec958_subframe", i1 false, i1 false}
!207 = !{!"../sound/pci/cmipci.c", i32 1536, i32 38}
!208 = !{ptr @snd_cmipci_capture_spdif_ops, !209, !"snd_cmipci_capture_spdif_ops", i1 false, i1 false}
!209 = !{!"../sound/pci/cmipci.c", i32 1861, i32 33}
!210 = !{ptr @snd_cmipci_capture_spdif, !211, !"snd_cmipci_capture_spdif", i1 false, i1 false}
!211 = !{!"../sound/pci/cmipci.c", i32 1556, i32 38}
!212 = !{ptr @.str.49, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/pci/cmipci.c", i32 2653, i32 26}
!214 = !{ptr @.str.50, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/pci/cmipci.c", i32 2662, i32 5}
!216 = !{ptr @.str.51, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/pci/cmipci.c", i32 2268, i32 2}
!218 = !{ptr @.str.52, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/pci/cmipci.c", i32 2269, i32 2}
!220 = !{ptr @.str.53, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/pci/cmipci.c", i32 2280, i32 2}
!222 = !{ptr @.str.54, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/pci/cmipci.c", i32 2281, i32 2}
!224 = !{ptr @.str.55, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/pci/cmipci.c", i32 2282, i32 2}
!226 = !{ptr @.str.56, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/pci/cmipci.c", i32 2283, i32 2}
!228 = !{ptr @.str.57, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/pci/cmipci.c", i32 2284, i32 2}
!230 = !{ptr @.str.58, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/pci/cmipci.c", i32 2285, i32 2}
!232 = !{ptr @.str.59, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/pci/cmipci.c", i32 2286, i32 2}
!234 = !{ptr @.str.60, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/pci/cmipci.c", i32 2287, i32 2}
!236 = !{ptr @.str.61, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/pci/cmipci.c", i32 2288, i32 2}
!238 = !{ptr @.str.62, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/pci/cmipci.c", i32 2289, i32 2}
!240 = !{ptr @.str.63, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/pci/cmipci.c", i32 2290, i32 2}
!242 = !{ptr @.str.64, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/pci/cmipci.c", i32 2291, i32 2}
!244 = !{ptr @.str.65, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/pci/cmipci.c", i32 2292, i32 2}
!246 = !{ptr @.str.66, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/pci/cmipci.c", i32 2293, i32 2}
!248 = !{ptr @.str.67, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/pci/cmipci.c", i32 2294, i32 2}
!250 = !{ptr @.str.68, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/pci/cmipci.c", i32 2295, i32 2}
!252 = !{ptr @.str.69, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/pci/cmipci.c", i32 2296, i32 2}
!254 = !{ptr @.str.70, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/pci/cmipci.c", i32 2297, i32 2}
!256 = !{ptr @.str.71, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/pci/cmipci.c", i32 2298, i32 2}
!258 = !{ptr @.str.72, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/pci/cmipci.c", i32 2299, i32 2}
!260 = !{ptr @.str.73, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/pci/cmipci.c", i32 2300, i32 2}
!262 = !{ptr @.str.74, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/pci/cmipci.c", i32 2301, i32 2}
!264 = !{ptr @.str.75, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/pci/cmipci.c", i32 2302, i32 2}
!266 = !{ptr @snd_cmipci_mixers, !267, !"snd_cmipci_mixers", i1 false, i1 false}
!267 = !{!"../sound/pci/cmipci.c", i32 2267, i32 38}
!268 = !{ptr @.str.76, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/pci/cmipci.c", i32 2579, i32 2}
!270 = !{ptr @.str.77, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/pci/cmipci.c", i32 2581, i32 11}
!272 = !{ptr @snd_cmipci_mixer_switches, !273, !"snd_cmipci_mixer_switches", i1 false, i1 false}
!273 = !{!"../sound/pci/cmipci.c", i32 2578, i32 38}
!274 = !{ptr @cmipci_switch_arg_fourch, !275, !"cmipci_switch_arg_fourch", i1 false, i1 false}
!275 = !{!"../sound/pci/cmipci.c", i32 2433, i32 1}
!276 = !{ptr @.str.78, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/pci/cmipci.c", i32 2491, i32 3}
!278 = !{ptr @.str.79, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/pci/cmipci.c", i32 2491, i32 14}
!280 = !{ptr @.str.80, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../sound/pci/cmipci.c", i32 2491, i32 29}
!282 = !{ptr @snd_cmipci_line_in_mode_info.texts, !283, !"texts", i1 false, i1 false}
!283 = !{!"../sound/pci/cmipci.c", i32 2490, i32 27}
!284 = !{ptr @.str.81, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/pci/cmipci.c", i32 2591, i32 1}
!286 = !{ptr @snd_cmipci_nomulti_switch, !287, !"snd_cmipci_nomulti_switch", i1 false, i1 false}
!287 = !{!"../sound/pci/cmipci.c", i32 2590, i32 38}
!288 = !{ptr @cmipci_switch_arg_exchange_dac, !289, !"cmipci_switch_arg_exchange_dac", i1 false, i1 false}
!289 = !{!"../sound/pci/cmipci.c", i32 2431, i32 1}
!290 = !{ptr @.str.82, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../sound/pci/cmipci.c", i32 2607, i32 2}
!292 = !{ptr @.str.83, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../sound/pci/cmipci.c", i32 2608, i32 2}
!294 = !{ptr @.str.84, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../sound/pci/cmipci.c", i32 2609, i32 2}
!296 = !{ptr @.str.85, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/pci/cmipci.c", i32 2612, i32 2}
!298 = !{ptr @snd_cmipci_8738_mixer_switches, !299, !"snd_cmipci_8738_mixer_switches", i1 false, i1 false}
!299 = !{!"../sound/pci/cmipci.c", i32 2594, i32 38}
!300 = !{ptr @cmipci_switch_arg_spdif_enable, !301, !"cmipci_switch_arg_spdif_enable", i1 false, i1 false}
!301 = !{!"../sound/pci/cmipci.c", i32 2416, i32 1}
!302 = !{ptr @cmipci_switch_arg_spdo2dac, !303, !"cmipci_switch_arg_spdo2dac", i1 false, i1 false}
!303 = !{!"../sound/pci/cmipci.c", i32 2417, i32 1}
!304 = !{ptr @cmipci_switch_arg_spdi_valid, !305, !"cmipci_switch_arg_spdi_valid", i1 false, i1 false}
!305 = !{!"../sound/pci/cmipci.c", i32 2418, i32 1}
!306 = !{ptr @cmipci_switch_arg_spdif_copyright, !307, !"cmipci_switch_arg_spdif_copyright", i1 false, i1 false}
!307 = !{!"../sound/pci/cmipci.c", i32 2419, i32 1}
!308 = !{ptr @cmipci_switch_arg_spdo_5v, !309, !"cmipci_switch_arg_spdo_5v", i1 false, i1 false}
!309 = !{!"../sound/pci/cmipci.c", i32 2421, i32 1}
!310 = !{ptr @cmipci_switch_arg_spdif_loop, !311, !"cmipci_switch_arg_spdif_loop", i1 false, i1 false}
!311 = !{!"../sound/pci/cmipci.c", i32 2423, i32 1}
!312 = !{ptr @cmipci_switch_arg_spdi_monitor, !313, !"cmipci_switch_arg_spdi_monitor", i1 false, i1 false}
!313 = !{!"../sound/pci/cmipci.c", i32 2424, i32 1}
!314 = !{ptr @.str.86, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../sound/pci/cmipci.c", i32 1023, i32 11}
!316 = !{ptr @snd_cmipci_spdif_default, !317, !"snd_cmipci_spdif_default", i1 false, i1 false}
!317 = !{!"../sound/pci/cmipci.c", i32 1020, i32 38}
!318 = !{ptr @.str.87, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/pci/cmipci.c", i32 1051, i32 11}
!320 = !{ptr @snd_cmipci_spdif_mask, !321, !"snd_cmipci_spdif_mask", i1 false, i1 false}
!321 = !{!"../sound/pci/cmipci.c", i32 1047, i32 38}
!322 = !{ptr @.str.88, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/pci/cmipci.c", i32 1098, i32 11}
!324 = !{ptr @snd_cmipci_spdif_stream, !325, !"snd_cmipci_spdif_stream", i1 false, i1 false}
!325 = !{!"../sound/pci/cmipci.c", i32 1094, i32 38}
!326 = !{ptr @.str.89, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../sound/pci/cmipci.c", i32 2618, i32 2}
!328 = !{ptr @.str.90, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../sound/pci/cmipci.c", i32 2619, i32 2}
!330 = !{ptr @snd_cmipci_old_mixer_switches, !331, !"snd_cmipci_old_mixer_switches", i1 false, i1 false}
!331 = !{!"../sound/pci/cmipci.c", i32 2616, i32 38}
!332 = !{ptr @cmipci_switch_arg_spdif_dac_out, !333, !"cmipci_switch_arg_spdif_dac_out", i1 false, i1 false}
!333 = !{!"../sound/pci/cmipci.c", i32 2420, i32 1}
!334 = !{ptr @cmipci_switch_arg_spdi_phase, !335, !"cmipci_switch_arg_spdi_phase", i1 false, i1 false}
!335 = !{!"../sound/pci/cmipci.c", i32 2426, i32 1}
!336 = !{ptr @cmipci_switch_arg_spdif_in_sel1, !337, !"cmipci_switch_arg_spdif_in_sel1", i1 false, i1 false}
!337 = !{!"../sound/pci/cmipci.c", i32 2414, i32 1}
!338 = !{ptr @.str.91, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/pci/cmipci.c", i32 2627, i32 11}
!340 = !{ptr @snd_cmipci_extra_mixer_switches, !341, !"snd_cmipci_extra_mixer_switches", i1 false, i1 false}
!341 = !{!"../sound/pci/cmipci.c", i32 2623, i32 38}
!342 = !{ptr @cmipci_switch_arg_spdif_in_sel2, !343, !"cmipci_switch_arg_spdif_in_sel2", i1 false, i1 false}
!343 = !{!"../sound/pci/cmipci.c", i32 2415, i32 1}
!344 = !{ptr @cmipci_switch_arg_spdi_phase2, !345, !"cmipci_switch_arg_spdi_phase2", i1 false, i1 false}
!345 = !{!"../sound/pci/cmipci.c", i32 2427, i32 1}
!346 = !{ptr @.str.92, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/pci/cmipci.c", i32 2545, i32 40}
!348 = !{ptr @.str.93, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../sound/pci/cmipci.c", i32 2545, i32 50}
!350 = !{ptr @snd_cmipci_mic_in_mode_info.texts, !351, !"texts", i1 false, i1 false}
!351 = !{!"../sound/pci/cmipci.c", i32 2545, i32 27}
!352 = !{ptr @.str.94, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../sound/pci/cmipci.c", i32 2637, i32 1}
!354 = !{ptr @snd_cmipci_modem_switch, !355, !"snd_cmipci_modem_switch", i1 false, i1 false}
!355 = !{!"../sound/pci/cmipci.c", i32 2636, i32 38}
!356 = !{ptr @cmipci_switch_arg_modem, !357, !"cmipci_switch_arg_modem", i1 false, i1 false}
!357 = !{!"../sound/pci/cmipci.c", i32 2437, i32 1}
!358 = distinct !{null, !359, !"ports", i1 false, i1 false}
!359 = !{!"../sound/pci/cmipci.c", i32 2844, i32 19}
!360 = !{ptr @.str.95, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../sound/pci/cmipci.c", i32 2855, i32 8}
!362 = !{ptr @.str.96, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../sound/pci/cmipci.c", i32 2867, i32 3}
!364 = !{ptr @.str.97, !363, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @.str.98, !363, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @snd_cmipci_create_gameport._entry, !363, !"_entry", i1 false, i1 false}
!367 = !{ptr @snd_cmipci_create_gameport._entry_ptr, !363, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.100, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../sound/pci/cmipci.c", i32 2873, i32 3}
!370 = !{ptr @snd_cmipci_create_gameport._entry.99, !369, !"_entry", i1 false, i1 false}
!371 = !{ptr @snd_cmipci_create_gameport._entry_ptr.101, !369, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.102, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../sound/pci/cmipci.c", i32 2876, i32 24}
!374 = !{ptr @.str.103, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../sound/pci/cmipci.c", i32 2877, i32 24}
!376 = !{ptr @snd_cmipci_pm, !377, !"snd_cmipci_pm", i1 false, i1 false}
!377 = !{!"../sound/pci/cmipci.c", i32 3326, i32 8}
!378 = !{ptr @saved_regs, !379, !"saved_regs", i1 false, i1 false}
!379 = !{!"../sound/pci/cmipci.c", i32 3266, i32 28}
!380 = !{ptr @saved_mixers, !381, !"saved_mixers", i1 false, i1 false}
!381 = !{!"../sound/pci/cmipci.c", i32 3274, i32 28}
!382 = !{i32 1, !"wchar_size", i32 2}
!383 = !{i32 1, !"min_enum_size", i32 4}
!384 = !{i32 8, !"branch-target-enforcement", i32 0}
!385 = !{i32 8, !"sign-return-address", i32 0}
!386 = !{i32 8, !"sign-return-address-all", i32 0}
!387 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!388 = !{i32 7, !"uwtable", i32 1}
!389 = !{i32 7, !"frame-pointer", i32 2}
!390 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!391 = !{!"auto-init"}
!392 = !{i8 0, i8 2}
!393 = !{i64 784927}
!394 = !{i64 2154968152}
!395 = !{i64 2154971288}
!396 = !{i64 2154971541}
!397 = !{i64 784509}
!398 = !{i64 2154972435}
!399 = !{i64 2154972688}
!400 = !{i64 2154967087}
!401 = !{i64 2154970027}
!402 = !{i64 784312}
!403 = !{i64 784707}
!404 = !{i64 2154970614}
!405 = !{i64 2155045034}
!406 = !{i64 2154995386}
!407 = !{i64 2154995734}
!408 = !{!"branch_weights", i32 1, i32 2000}
!409 = !{i64 2155033498}
!410 = !{i64 2148251666, i64 2148251671, i64 2148251684, i64 2148251728, i64 2148251762, i64 2148251783}
!411 = !{i64 2154968575}
!412 = !{i64 783889}
!413 = !{i64 784089}
!414 = !{i64 2154969640}
!415 = !{i64 2154996081}
!416 = !{i64 2154996504}
!417 = !{i64 2154997165}
!418 = !{i64 2154997512}
!419 = !{i64 2154997739}
!420 = !{i64 2155011886}
!421 = !{i64 2154973418}
!422 = !{i64 2154974053}
!423 = !{i64 2155012744}
!424 = !{i64 2155012982}
