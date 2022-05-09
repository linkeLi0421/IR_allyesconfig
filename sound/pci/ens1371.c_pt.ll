; ModuleID = '/llk/IR_all_yes/sound/pci/ens1371.c_pt.bc'
source_filename = "../sound/pci/ens1371.c"
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
%struct.snd_pci_quirk = type { i16, i16, i16, i32, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.89, i32 }
%union.anon.89 = type { ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_chmap_elem = type { i8, [15 x i8] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraint_ratdens = type { i32, ptr }
%struct.snd_ratden = type { i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraint_ratnums = type { i32, ptr }
%struct.snd_ratnum = type { i32, i32, i32, i32 }
%struct.snd_rawmidi_ops = type { ptr, ptr, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.72 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.ensoniq = type { %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.74, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, ptr }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { ptr }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.77, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.77 = type { i32, [28 x i8] }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.88, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.88 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.gameport = type { ptr, [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, i32, %struct.spinlock, i32, ptr, ptr, ptr, ptr, %struct.mutex, %struct.device, %struct.list_head }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.73, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.73 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.83, [128 x i8] }
%union.anon.83 = type { %union.anon.85 }
%union.anon.85 = type { [64 x i64] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.79, [64 x i8] }
%union.anon.79 = type { %struct.anon.82, [40 x i8] }
%struct.anon.82 = type { i32, i32, [64 x i8], i64, i32 }
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
%struct.snd_rawmidi_substream = type { %struct.list_head, i32, i32, i8, i8, i8, i32, i32, i32, i32, ptr, ptr, [32 x i8], ptr, ptr, ptr }

@__UNIQUE_ID_author242 = internal constant [91 x i8] c"snd_ens1371.author=Jaroslav Kysela <perex@perex.cz>, Thomas Sailer <sailer@ife.ee.ethz.ch>\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [39 x i8] c"snd_ens1371.file=sound/pci/snd-ens1371\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [24 x i8] c"snd_ens1371.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description245 = internal constant [58 x i8] c"snd_ens1371.description=Ensoniq/Creative AudioPCI ES1371+\00", section ".modinfo", align 1
@__param_str_index = internal constant [18 x i8] c"snd_ens1371.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [40 x i8] c"snd_ens1371.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [67 x i8] c"snd_ens1371.parm=index:Index value for Ensoniq AudioPCI soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [15 x i8] c"snd_ens1371.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [39 x i8] c"snd_ens1371.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [62 x i8] c"snd_ens1371.parm=id:ID string for Ensoniq AudioPCI soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [19 x i8] c"snd_ens1371.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype250 = internal constant [42 x i8] c"snd_ens1371.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable251 = internal constant [59 x i8] c"snd_ens1371.parm=enable:Enable Ensoniq AudioPCI soundcard.\00", section ".modinfo", align 1
@__param_str_joystick_port = internal constant [26 x i8] c"snd_ens1371.joystick_port\00", align 1
@__param_arr_joystick_port = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @joystick_port }, align 4
@__param_joystick_port = internal constant %struct.kernel_param { ptr @__param_str_joystick_port, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 2, %union.anon.65 { ptr @__param_arr_joystick_port } }, section "__param", align 4
@__UNIQUE_ID_joystick_porttype252 = internal constant [48 x i8] c"snd_ens1371.parmtype=joystick_port:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_joystick_port253 = internal constant [54 x i8] c"snd_ens1371.parm=joystick_port:Joystick port address.\00", section ".modinfo", align 1
@__param_str_spdif = internal constant [18 x i8] c"snd_ens1371.spdif\00", align 1
@__param_arr_spdif = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @spdif }, align 4
@__param_spdif = internal constant %struct.kernel_param { ptr @__param_str_spdif, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_spdif } }, section "__param", align 4
@__UNIQUE_ID_spdiftype254 = internal constant [40 x i8] c"snd_ens1371.parmtype=spdif:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_spdif255 = internal constant [71 x i8] c"snd_ens1371.parm=spdif:S/PDIF output (-1 = none, 0 = auto, 1 = force).\00", section ".modinfo", align 1
@__param_str_lineio = internal constant [19 x i8] c"snd_ens1371.lineio\00", align 1
@__param_arr_lineio = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @lineio }, align 4
@__param_lineio = internal constant %struct.kernel_param { ptr @__param_str_lineio, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_lineio } }, section "__param", align 4
@__UNIQUE_ID_lineiotype256 = internal constant [41 x i8] c"snd_ens1371.parmtype=lineio:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_lineio257 = internal constant [67 x i8] c"snd_ens1371.parm=lineio:Line In to Rear Out (0 = auto, 1 = force).\00", section ".modinfo", align 1
@__initcall__kmod_snd_ens1371__258_2381_ens137x_driver_init6 = internal global ptr @ens137x_driver_init, section ".initcall6.init", align 4
@ens137x_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_audiopci_ids, ptr @snd_audiopci_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_ensoniq_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ens137x_driver_exit = internal global ptr @ens137x_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@joystick_port = internal global { [32 x i32], [32 x i8] } zeroinitializer, align 32
@spdif = internal global { [32 x i32], [32 x i8] } zeroinitializer, align 32
@lineio = internal global { [32 x i32], [32 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd_ens1371\00", [20 x i8] zeroinitializer }, align 32
@snd_audiopci_ids = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4724, i32 4977, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4724, i32 22656, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4354, i32 35128, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_ensoniq_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @snd_ensoniq_suspend, ptr @snd_ensoniq_resume, ptr @snd_ensoniq_suspend, ptr @snd_ensoniq_resume, ptr @snd_ensoniq_suspend, ptr @snd_ensoniq_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@snd_audiopci_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Ensoniq AudioPCI\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s %s at 0x%lx, irq %i\00", [41 x i8] zeroinitializer }, align 32
@snd_ensoniq_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ensoniq->reg_lock\00", [45 x i8] zeroinitializer }, align 32
@snd_ensoniq_create.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ensoniq->src_mutex\00", [44 x i8] zeroinitializer }, align 32
@snd_ensoniq_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 2036, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to grab IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_ensoniq_create\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sound/pci/ens1370.c\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_ensoniq_create._entry_ptr = internal global ptr @snd_ensoniq_create._entry, section ".printk_index", align 4
@es1371_amplifier_hack = internal constant { [5 x %struct.snd_pci_quirk], [48 x i8] } { [5 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4219, i16 8528, i16 -1, i32 0, ptr null }, %struct.snd_pci_quirk { i16 5053, i16 4108, i16 -1, i32 0, ptr null }, %struct.snd_pci_quirk { i16 4354, i16 22840, i16 -1, i32 0, ptr null }, %struct.snd_pci_quirk { i16 4354, i16 -30408, i16 -1, i32 0, ptr null }, %struct.snd_pci_quirk zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@snd_es1371_wait_src_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.9, i32 507, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"wait src ready timeout 0x%lx [0x%x]\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snd_es1371_wait_src_ready\00", [38 x i8] zeroinitializer }, align 32
@snd_es1371_wait_src_ready._entry_ptr = internal global ptr @snd_es1371_wait_src_ready._entry, section ".printk_index", align 4
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"audiopci\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Ensoniq AudioPCI ES1371\0A\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Joystick enable  : %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Joystick port    : 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@snd_ensoniq_1371_mixer.ops = internal constant { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr null, ptr null, ptr @snd_es1371_codec_write, ptr @snd_es1371_codec_read, ptr @snd_es1371_codec_wait, ptr null }, [40 x i8] zeroinitializer }, align 32
@snd_es1371_mixer_spdif = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_es1371_spdif_get, ptr @snd_es1371_spdif_put, %union.anon.89 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.28, i32 0, i32 0, i32 0, ptr @snd_ens1373_spdif_info, ptr @snd_ens1373_spdif_default_get, ptr @snd_ens1373_spdif_default_put, %union.anon.89 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.29, i32 0, i32 1, i32 0, ptr @snd_ens1373_spdif_info, ptr @snd_ens1373_spdif_mask_get, ptr null, %union.anon.89 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.30, i32 0, i32 0, i32 0, ptr @snd_ens1373_spdif_info, ptr @snd_ens1373_spdif_stream_get, ptr @snd_ens1373_spdif_stream_put, %union.anon.89 zeroinitializer, i32 0 }], [32 x i8] zeroinitializer }, align 32
@snd_ens1373_rear = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_es1373_rear_get, ptr @snd_es1373_rear_put, %union.anon.89 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ens1373_line_quirk = internal constant { [3 x %struct.snd_pci_quirk], [48 x i8] } { [3 x %struct.snd_pci_quirk] [%struct.snd_pci_quirk { i16 4724, i16 8192, i16 -1, i32 0, ptr null }, %struct.snd_pci_quirk { i16 5208, i16 -24576, i16 -1, i32 0, ptr null }, %struct.snd_pci_quirk zeroinitializer], [48 x i8] zeroinitializer }, align 32
@snd_ens1373_line = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_es1373_line_get, ptr @snd_es1373_line_put, %union.anon.89 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_es1371_codec_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.9, i32 631, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"codec write timeout at 0x%lx [0x%x]\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_es1371_codec_write\00", [41 x i8] zeroinitializer }, align 32
@snd_es1371_codec_write._entry_ptr = internal global ptr @snd_es1371_codec_write._entry, section ".printk_index", align 4
@snd_es1371_codec_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.9, i32 691, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"codec read timeout (final) at 0x%lx, reg = 0x%x [0x%x]\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_es1371_codec_read\00", [42 x i8] zeroinitializer }, align 32
@snd_es1371_codec_read._entry_ptr = internal global ptr @snd_es1371_codec_read._entry, section ".printk_index", align 4
@snd_es1371_codec_read._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.9, i32 699, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"codec read timeout at 0x%lx [0x%x]\0A\00", [60 x i8] zeroinitializer }, align 32
@snd_es1371_codec_read._entry_ptr.26 = internal global ptr @snd_es1371_codec_read._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IEC958 Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Playback Default\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IEC958 Playback Mask\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IEC958 Playback PCM Stream\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"AC97 2ch->4ch Copy Switch\00", [38 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Line In->Rear Out Switch\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ES1371/1\00", [23 x i8] zeroinitializer }, align 32
@snd_ensoniq_playback1_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_ensoniq_playback1_open, ptr @snd_ensoniq_playback1_close, ptr null, ptr null, ptr null, ptr @snd_ensoniq_playback1_prepare, ptr @snd_ensoniq_trigger, ptr null, ptr @snd_ensoniq_playback1_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_ensoniq_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_ensoniq_capture_open, ptr @snd_ensoniq_capture_close, ptr null, ptr null, ptr null, ptr @snd_ensoniq_capture_prepare, ptr @snd_ensoniq_trigger, ptr null, ptr @snd_ensoniq_capture_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ES1371 DAC2/ADC\00", [16 x i8] zeroinitializer }, align 32
@snd_pcm_std_chmaps = external dso_local constant [0 x %struct.snd_pcm_chmap_elem], align 1
@snd_ensoniq_playback1 = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4784387, i64 6, i32 1073742078, i32 4000, i32 48000, i32 1, i32 2, i32 131072, i32 64, i32 131072, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_es1371_hw_constraints_dac_clock = internal constant { %struct.snd_pcm_hw_constraint_ratdens, [24 x i8] } { %struct.snd_pcm_hw_constraint_ratdens { i32 1, ptr @es1371_dac_clock }, [24 x i8] zeroinitializer }, align 32
@es1371_dac_clock = internal constant { %struct.snd_ratden, [16 x i8] } { %struct.snd_ratden { i32 98304000, i32 1572864000, i32 3000, i32 32768 }, [16 x i8] zeroinitializer }, align 32
@snd_ensoniq_sample_shift = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 1, i32 2], [16 x i8] zeroinitializer }, align 32
@snd_ensoniq_capture = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4260099, i64 6, i32 1073742078, i32 4000, i32 48000, i32 1, i32 2, i32 131072, i32 64, i32 131072, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_es1371_hw_constraints_adc_clock = internal constant { %struct.snd_pcm_hw_constraint_ratnums, [24 x i8] } { %struct.snd_pcm_hw_constraint_ratnums { i32 1, ptr @es1371_adc_clock }, [24 x i8] zeroinitializer }, align 32
@es1371_adc_clock = internal constant { %struct.snd_ratnum, [16 x i8] } { %struct.snd_ratnum { i32 1572864000, i32 32768, i32 393216, i32 1 }, [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ES1371/2\00", [23 x i8] zeroinitializer }, align 32
@snd_ensoniq_playback2_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_ensoniq_playback2_open, ptr @snd_ensoniq_playback2_close, ptr null, ptr null, ptr null, ptr @snd_ensoniq_playback2_prepare, ptr @snd_ensoniq_trigger, ptr null, ptr @snd_ensoniq_playback2_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ES1371 DAC1\00", [20 x i8] zeroinitializer }, align 32
@snd_ensoniq_playback2 = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4784387, i64 6, i32 1073742078, i32 4000, i32 48000, i32 1, i32 2, i32 131072, i32 64, i32 131072, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@surround_map = internal constant { <{ { i8, <{ i8, [14 x i8] }> }, { i8, <{ i8, i8, [13 x i8] }> }, %struct.snd_pcm_chmap_elem }>, [48 x i8] } { <{ { i8, <{ i8, [14 x i8] }> }, { i8, <{ i8, i8, [13 x i8] }> }, %struct.snd_pcm_chmap_elem }> <{ { i8, <{ i8, [14 x i8] }> } { i8 1, <{ i8, [14 x i8] }> <{ i8 2, [14 x i8] zeroinitializer }> }, { i8, <{ i8, i8, [13 x i8] }> } { i8 2, <{ i8, i8, [13 x i8] }> <{ i8 5, i8 6, [13 x i8] zeroinitializer }> }, %struct.snd_pcm_chmap_elem zeroinitializer }>, [48 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ES1370/1\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ES1371\00", [25 x i8] zeroinitializer }, align 32
@snd_ensoniq_midi_output = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @snd_ensoniq_midi_output_open, ptr @snd_ensoniq_midi_output_close, ptr @snd_ensoniq_midi_output_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@snd_ensoniq_midi_input = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @snd_ensoniq_midi_input_open, ptr @snd_ensoniq_midi_input_close, ptr @snd_ensoniq_midi_input_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ens137x: gameport\00", [46 x i8] zeroinitializer }, align 32
@snd_ensoniq_create_gameport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.9, i32 1785, ptr @.str.43, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no gameport ports available\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"snd_ensoniq_create_gameport\00", [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@snd_ensoniq_create_gameport._entry_ptr = internal global ptr @snd_ensoniq_create_gameport._entry, section ".printk_index", align 4
@snd_ensoniq_create_gameport._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.42, ptr @.str.9, i32 1794, ptr @.str.43, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gameport io port %#x in use\0A\00", [35 x i8] zeroinitializer }, align 32
@snd_ensoniq_create_gameport._entry_ptr.46 = internal global ptr @snd_ensoniq_create_gameport._entry.44, section ".printk_index", align 4
@snd_ensoniq_create_gameport._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.42, ptr @.str.9, i32 1803, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cannot allocate memory for gameport\0A\00", [59 x i8] zeroinitializer }, align 32
@snd_ensoniq_create_gameport._entry_ptr.49 = internal global ptr @snd_ensoniq_create_gameport._entry.47, section ".printk_index", align 4
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ES137x\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pci%s/gameport0\00", [16 x i8] zeroinitializer }, align 32
@snd_ensoniq_get_joystick_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.9, i32 1757, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid joystick port %#x\00", [38 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"snd_ensoniq_get_joystick_port\00", [34 x i8] zeroinitializer }, align 32
@snd_ensoniq_get_joystick_port._entry_ptr = internal global ptr @snd_ensoniq_get_joystick_port._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 4977, i64 22656]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 16, i64 4977, i64 22656]
@__sancov_gen_cov_switch_values.55 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 512, i64 520, i64 528, i64 536]
@__sancov_gen_cov_switch_values.56 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 4]
@___asan_gen_ = private constant [23 x i8] c"../sound/pci/ens1371.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [15 x i8] c"ens137x_driver\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 2372, i32 26 }
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 64, i32 12 }
@___asan_gen_.63 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 65, i32 14 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 66, i32 13 }
@___asan_gen_.69 = private unnamed_addr constant [14 x i8] c"joystick_port\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 69, i32 12 }
@___asan_gen_.72 = private unnamed_addr constant [6 x i8] c"spdif\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 75, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"lineio\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 76, i32 12 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 2381, i32 1 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"snd_audiopci_ids\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 427, i32 35 }
@___asan_gen_.84 = private unnamed_addr constant [15 x i8] c"snd_ensoniq_pm\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 2010, i32 8 }
@___asan_gen_.87 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 2310, i32 13 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 2356, i32 26 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 2357, i32 26 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 2025, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 2026, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 2036, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [22 x i8] c"es1371_amplifier_hack\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1890, i32 35 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 506, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1867, i32 38 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1851, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1852, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1860, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1592, i32 39 }
@___asan_gen_.159 = private unnamed_addr constant [23 x i8] c"snd_es1371_mixer_spdif\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1429, i32 38 }
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"snd_ens1373_rear\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1491, i32 38 }
@___asan_gen_.165 = private unnamed_addr constant [19 x i8] c"ens1373_line_quirk\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1579, i32 35 }
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"snd_ens1373_line\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1536, i32 38 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 630, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 688, i32 5 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 698, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1430, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1433, i32 12 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1441, i32 12 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1447, i32 12 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1494, i32 11 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1539, i32 11 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1234, i32 35 }
@___asan_gen_.216 = private unnamed_addr constant [26 x i8] c"snd_ensoniq_playback1_ops\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1197, i32 33 }
@___asan_gen_.219 = private unnamed_addr constant [24 x i8] c"snd_ensoniq_capture_ops\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1213, i32 33 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1247, i32 20 }
@___asan_gen_.225 = private unnamed_addr constant [22 x i8] c"snd_ensoniq_playback1\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1029, i32 38 }
@___asan_gen_.228 = private unnamed_addr constant [36 x i8] c"snd_es1371_hw_constraints_dac_clock\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 472, i32 51 }
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"es1371_dac_clock\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 466, i32 32 }
@___asan_gen_.234 = private unnamed_addr constant [25 x i8] c"snd_ensoniq_sample_shift\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 487, i32 27 }
@___asan_gen_.237 = private unnamed_addr constant [20 x i8] c"snd_ensoniq_capture\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1076, i32 38 }
@___asan_gen_.240 = private unnamed_addr constant [36 x i8] c"snd_es1371_hw_constraints_adc_clock\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 482, i32 51 }
@___asan_gen_.243 = private unnamed_addr constant [17 x i8] c"es1371_adc_clock\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 476, i32 32 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1268, i32 35 }
@___asan_gen_.249 = private unnamed_addr constant [26 x i8] c"snd_ensoniq_playback2_ops\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1205, i32 33 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1279, i32 20 }
@___asan_gen_.255 = private unnamed_addr constant [22 x i8] c"snd_ensoniq_playback2\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1056, i32 38 }
@___asan_gen_.258 = private unnamed_addr constant [13 x i8] c"surround_map\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1221, i32 40 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 2255, i32 39 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 2258, i32 22 }
@___asan_gen_.267 = private unnamed_addr constant [24 x i8] c"snd_ensoniq_midi_output\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 2236, i32 37 }
@___asan_gen_.270 = private unnamed_addr constant [23 x i8] c"snd_ensoniq_midi_input\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 2243, i32 37 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1781, i32 8 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1784, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1792, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1802, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1808, i32 24 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1809, i32 24 }
@___asan_gen_.306 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.313 = private unnamed_addr constant [23 x i8] c"../sound/pci/ens1370.c\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 1756, i32 3 }
@llvm.compiler.used = appending global [120 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_enable251, ptr @__UNIQUE_ID_enabletype250, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_joystick_port253, ptr @__UNIQUE_ID_joystick_porttype252, ptr @__UNIQUE_ID_license244, ptr @__UNIQUE_ID_lineio257, ptr @__UNIQUE_ID_lineiotype256, ptr @__UNIQUE_ID_spdif255, ptr @__UNIQUE_ID_spdiftype254, ptr @__exitcall_ens137x_driver_exit, ptr @__initcall__kmod_snd_ens1371__258_2381_ens137x_driver_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @__param_joystick_port, ptr @__param_lineio, ptr @__param_spdif, ptr @ens137x_driver_exit, ptr @snd_ensoniq_create._entry, ptr @snd_ensoniq_create._entry_ptr, ptr @snd_ensoniq_create_gameport._entry, ptr @snd_ensoniq_create_gameport._entry.44, ptr @snd_ensoniq_create_gameport._entry.47, ptr @snd_ensoniq_create_gameport._entry_ptr, ptr @snd_ensoniq_create_gameport._entry_ptr.46, ptr @snd_ensoniq_create_gameport._entry_ptr.49, ptr @snd_ensoniq_get_joystick_port._entry, ptr @snd_ensoniq_get_joystick_port._entry_ptr, ptr @snd_es1371_codec_read._entry, ptr @snd_es1371_codec_read._entry.24, ptr @snd_es1371_codec_read._entry_ptr, ptr @snd_es1371_codec_read._entry_ptr.26, ptr @snd_es1371_codec_write._entry, ptr @snd_es1371_codec_write._entry_ptr, ptr @snd_es1371_wait_src_ready._entry, ptr @snd_es1371_wait_src_ready._entry_ptr, ptr @ens137x_driver, ptr @index, ptr @id, ptr @enable, ptr @joystick_port, ptr @spdif, ptr @lineio, ptr @.str, ptr @snd_audiopci_ids, ptr @snd_ensoniq_pm, ptr @snd_audiopci_probe.dev, ptr @.str.2, ptr @.str.3, ptr @snd_ensoniq_create.__key, ptr @.str.4, ptr @snd_ensoniq_create.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @es1371_amplifier_hack, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @snd_ensoniq_1371_mixer.ops, ptr @snd_es1371_mixer_spdif, ptr @snd_ens1373_rear, ptr @ens1373_line_quirk, ptr @snd_ens1373_line, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @snd_ensoniq_playback1_ops, ptr @snd_ensoniq_capture_ops, ptr @.str.34, ptr @snd_ensoniq_playback1, ptr @snd_es1371_hw_constraints_dac_clock, ptr @es1371_dac_clock, ptr @snd_ensoniq_sample_shift, ptr @snd_ensoniq_capture, ptr @snd_es1371_hw_constraints_adc_clock, ptr @es1371_adc_clock, ptr @.str.35, ptr @snd_ensoniq_playback2_ops, ptr @.str.36, ptr @snd_ensoniq_playback2, ptr @surround_map, ptr @.str.38, ptr @.str.39, ptr @snd_ensoniq_midi_output, ptr @snd_ensoniq_midi_input, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ens137x_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joystick_port to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lineio to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_audiopci_ids to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_audiopci_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_create.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es1371_amplifier_hack to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1371_wait_src_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_1371_mixer.ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1371_mixer_spdif to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ens1373_rear to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ens1373_line_quirk to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ens1373_line to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1371_codec_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1371_codec_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1371_codec_read._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_playback1_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_playback1 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1371_hw_constraints_dac_clock to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es1371_dac_clock to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_sample_shift to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_capture to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1371_hw_constraints_adc_clock to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es1371_adc_clock to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_playback2_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_playback2 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @surround_map to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_midi_output to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_midi_input to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_create_gameport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_create_gameport._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_create_gameport._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_get_joystick_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ens137x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @ens137x_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ens137x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @ens137x_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_audiopci_probe(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #2 align 64 {
entry:
  %rmidi.i = alloca ptr, align 4
  %pcm.i106 = alloca ptr, align 4
  %pcm.i = alloca ptr, align 4
  %pbus.i = alloca ptr, align 4
  %ac97.i = alloca %struct.snd_ac97_template, align 4
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #11
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !224
  %1 = load i32, ptr @snd_audiopci_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp = icmp sgt i32 %1, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !225
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @snd_audiopci_probe.dev, align 4
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
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %5, ptr noundef %7, ptr noundef null, i32 noundef 268, ptr noundef nonnull %card) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 8
  %call.i = call i32 @pcim_enable_device(ptr noundef %pci) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end7.cleanup_crit_edge, label %do.body.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body.i:                                        ; preds = %if.end7
  call void @__raw_spin_lock_init(ptr noundef %11, ptr noundef nonnull @.str.4, ptr noundef nonnull @snd_ensoniq_create.__key, i16 noundef signext 3) #11
  %src_mutex.i = getelementptr inbounds %struct.ensoniq, ptr %11, i32 0, i32 1
  call void @__mutex_init(ptr noundef %src_mutex.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @snd_ensoniq_create.__key.5) #11
  %card5.i = getelementptr inbounds %struct.ensoniq, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %card5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %card5.i, align 4
  %pci6.i = getelementptr inbounds %struct.ensoniq, ptr %11, i32 0, i32 15
  %13 = ptrtoint ptr %pci6.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pci, ptr %pci6.i, align 4
  %irq.i = getelementptr inbounds %struct.ensoniq, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %irq.i, align 4
  %call7.i = call i32 @pci_request_regions(ptr noundef %pci, ptr noundef nonnull @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %do.body.i.cleanup_crit_edge, label %if.end10.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10.i:                                       ; preds = %do.body.i
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %15 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %resource.i, align 8
  %port.i = getelementptr inbounds %struct.ensoniq, ptr %11, i32 0, i32 6
  %17 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %port.i, align 4
  %irq11.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %18 = ptrtoint ptr %irq11.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq11.i, align 4
  %call.i.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %19, ptr noundef nonnull @snd_audiopci_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end19.i, label %do.end16.i

do.end16.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev17.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %20 = ptrtoint ptr %dev17.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev17.i, align 8
  %22 = ptrtoint ptr %irq11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq11.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.7, i32 noundef %23) #14
  br label %cleanup

if.end19.i:                                       ; preds = %if.end10.i
  %24 = ptrtoint ptr %irq11.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq11.i, align 4
  %26 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %irq.i, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 33
  %27 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %sync_irq.i, align 4
  call void @pci_set_master(ptr noundef %pci) #11
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 12
  %28 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %revision.i, align 4
  %conv.i = zext i8 %29 to i32
  %rev.i = getelementptr inbounds %struct.ensoniq, ptr %11, i32 0, i32 13
  %30 = ptrtoint ptr %rev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv.i, ptr %rev.i, align 4
  %ctrl.i = getelementptr inbounds %struct.ensoniq, ptr %11, i32 0, i32 9
  %31 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %ctrl.i, align 4
  %sctrl.i = getelementptr inbounds %struct.ensoniq, ptr %11, i32 0, i32 10
  %32 = ptrtoint ptr %sctrl.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %sctrl.i, align 4
  %cssr.i = getelementptr inbounds %struct.ensoniq, ptr %11, i32 0, i32 11
  %33 = ptrtoint ptr %cssr.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %cssr.i, align 4
  %call23.i = call ptr @snd_pci_quirk_lookup(ptr noundef %pci, ptr noundef nonnull @es1371_amplifier_hack) #11
  %tobool24.not.i = icmp eq ptr %call23.i, null
  br i1 %tobool24.not.i, label %if.end19.i.if.end27.i_crit_edge, label %if.then25.i

if.end19.i.if.end27.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

if.then25.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ctrl.i, align 4
  %or.i = or i32 %35, 65536
  store i32 %or.i, ptr %ctrl.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %if.end19.i.if.end27.i_crit_edge
  %36 = ptrtoint ptr %pci6.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pci6.i, align 4
  %vendor.i.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vendor.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4724, i16 %39)
  %cmp5.i.i = icmp eq i16 %39, 4724
  br i1 %cmp5.i.i, label %land.lhs.true.i.i, label %if.end27.i.if.end11_crit_edge

if.end27.i.if.end11_crit_edge:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true.i.i:                                ; preds = %if.end27.i
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 8
  %40 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %device.i.i, align 2
  %42 = zext i16 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i16 %41, label %land.lhs.true.i.i.if.end11_crit_edge [
    i16 22656, label %land.lhs.true12.i.i
    i16 4977, label %land.lhs.true12.i.3.i
  ]

land.lhs.true.i.i.if.end11_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true12.i.i:                              ; preds = %land.lhs.true.i.i
  %43 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rev.i, align 4
  %.off = add i32 %44, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %land.lhs.true12.i.i.if.then30.i_crit_edge, label %land.lhs.true12.i.i.if.end11_crit_edge

land.lhs.true12.i.i.if.end11_crit_edge:           ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true12.i.i.if.then30.i_crit_edge:        ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30.i

land.lhs.true12.i.3.i:                            ; preds = %land.lhs.true.i.i
  %45 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %46)
  %cmp15.i.3.i = icmp eq i32 %46, 7
  br i1 %cmp15.i.3.i, label %land.lhs.true12.i.3.i.if.then30.i_crit_edge, label %land.lhs.true12.i.4.i

land.lhs.true12.i.3.i.if.then30.i_crit_edge:      ; preds = %land.lhs.true12.i.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30.i

land.lhs.true12.i.4.i:                            ; preds = %land.lhs.true12.i.3.i
  %47 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %48)
  %cmp15.i.4.i = icmp eq i32 %48, 8
  br i1 %cmp15.i.4.i, label %land.lhs.true12.i.4.i.if.then30.i_crit_edge, label %land.lhs.true12.i.4.i.if.end11_crit_edge

land.lhs.true12.i.4.i.if.end11_crit_edge:         ; preds = %land.lhs.true12.i.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true12.i.4.i.if.then30.i_crit_edge:      ; preds = %land.lhs.true12.i.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then30.i

if.then30.i:                                      ; preds = %land.lhs.true12.i.4.i.if.then30.i_crit_edge, %land.lhs.true12.i.3.i.if.then30.i_crit_edge, %land.lhs.true12.i.i.if.then30.i_crit_edge
  %49 = ptrtoint ptr %cssr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cssr.i, align 4
  %or32.i = or i32 %50, 536870912
  store i32 %or32.i, ptr %cssr.i, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then30.i, %land.lhs.true12.i.4.i.if.end11_crit_edge, %land.lhs.true12.i.i.if.end11_crit_edge, %land.lhs.true.i.i.if.end11_crit_edge, %if.end27.i.if.end11_crit_edge
  %private_free.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 10
  %51 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @snd_ensoniq_free, ptr %private_free.i, align 4
  call fastcc void @snd_ensoniq_chip_init(ptr noundef %11) #11
  %52 = ptrtoint ptr %card5.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %card5.i, align 4
  %call.i.i.i = call i32 @snd_card_rw_proc_new(ptr noundef %53, ptr noundef nonnull @.str.14, ptr noundef %11, ptr noundef nonnull @snd_ensoniq_proc_read, ptr noundef null) #11
  %54 = load i32, ptr @snd_audiopci_probe.dev, align 4
  %arrayidx12 = getelementptr [32 x i32], ptr @spdif, i32 0, i32 %54
  %55 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx12, align 4
  %arrayidx13 = getelementptr [32 x i32], ptr @lineio, i32 0, i32 %54
  %57 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx13, align 4
  %59 = ptrtoint ptr %card5.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %card5.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pbus.i) #11
  %61 = ptrtoint ptr %pbus.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 -1 to ptr), ptr %pbus.i, align 4, !annotation !224
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ac97.i) #11
  %call.i68 = call i32 @snd_ac97_bus(ptr noundef %60, i32 noundef 0, ptr noundef nonnull @snd_ensoniq_1371_mixer.ops, ptr noundef null, ptr noundef nonnull %pbus.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %cmp.i69 = icmp slt i32 %call.i68, 0
  br i1 %cmp.i69, label %if.end11.snd_ensoniq_1371_mixer.exit.thread_crit_edge, label %if.end.i

if.end11.snd_ensoniq_1371_mixer.exit.thread_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_ensoniq_1371_mixer.exit.thread

if.end.i:                                         ; preds = %if.end11
  %62 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 5
  %63 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 2
  %64 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 1
  %65 = getelementptr inbounds i8, ptr %ac97.i, i32 12
  %66 = call ptr @memset(ptr %65, i32 0, i32 12)
  %67 = ptrtoint ptr %ac97.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %11, ptr %ac97.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @snd_ensoniq_mixer_free_ac97, ptr %64, align 4
  %69 = ptrtoint ptr %pci6.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pci6.i, align 4
  %71 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %63, align 4
  %72 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %62, align 4
  %73 = ptrtoint ptr %pbus.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pbus.i, align 4
  %u.i = getelementptr inbounds %struct.ensoniq, ptr %11, i32 0, i32 14
  %call4.i = call i32 @snd_ac97_mixer(ptr noundef %74, ptr noundef nonnull %ac97.i, ptr noundef %u.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge, label %if.end7.i

if.end.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_ensoniq_1371_mixer.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp8.i70 = icmp sgt i32 %56, 0
  br i1 %cmp8.i70, label %if.end7.i.if.then11.i_crit_edge, label %lor.lhs.false.i

if.end7.i.if.then11.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i

lor.lhs.false.i:                                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i71 = icmp eq i32 %56, 0
  br i1 %tobool.not.i71, label %land.lhs.true.i, label %lor.lhs.false.i.if.end35.i_crit_edge

lor.lhs.false.i.if.end35.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %75 = ptrtoint ptr %pci6.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pci6.i, align 4
  %vendor.i.i72 = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 7
  %77 = ptrtoint ptr %vendor.i.i72 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %vendor.i.i72, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4724, i16 %78)
  %cmp5.i.i74 = icmp eq i16 %78, 4724
  br i1 %cmp5.i.i74, label %land.lhs.true.i.i76, label %land.lhs.true.i.if.end35.i_crit_edge

land.lhs.true.i.if.end35.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i

land.lhs.true.i.i76:                              ; preds = %land.lhs.true.i
  %device.i.i73 = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 8
  %79 = ptrtoint ptr %device.i.i73 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %device.i.i73, align 2
  %81 = zext i16 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %80, label %land.lhs.true.i.i76.if.end35.i_crit_edge [
    i16 22656, label %land.lhs.true12.i.i78
    i16 4977, label %land.lhs.true12.i.3.i89
  ]

land.lhs.true.i.i76.if.end35.i_crit_edge:         ; preds = %land.lhs.true.i.i76
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i

land.lhs.true12.i.i78:                            ; preds = %land.lhs.true.i.i76
  %82 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rev.i, align 4
  %.off138 = add i32 %83, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off138)
  %switch139 = icmp ult i32 %.off138, 3
  br i1 %switch139, label %land.lhs.true12.i.i78.if.then11.i_crit_edge, label %land.lhs.true12.i.i78.if.end35.i_crit_edge

land.lhs.true12.i.i78.if.end35.i_crit_edge:       ; preds = %land.lhs.true12.i.i78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i

land.lhs.true12.i.i78.if.then11.i_crit_edge:      ; preds = %land.lhs.true12.i.i78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i

land.lhs.true12.i.3.i89:                          ; preds = %land.lhs.true.i.i76
  %84 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %85)
  %cmp15.i.3.i88 = icmp eq i32 %85, 7
  br i1 %cmp15.i.3.i88, label %land.lhs.true12.i.3.i89.if.then11.i_crit_edge, label %land.lhs.true12.i.4.i93

land.lhs.true12.i.3.i89.if.then11.i_crit_edge:    ; preds = %land.lhs.true12.i.3.i89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i

land.lhs.true12.i.4.i93:                          ; preds = %land.lhs.true12.i.3.i89
  %86 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %87)
  %cmp15.i.4.i92 = icmp eq i32 %87, 8
  br i1 %cmp15.i.4.i92, label %land.lhs.true12.i.4.i93.if.then11.i_crit_edge, label %land.lhs.true12.i.4.i93.if.end35.i_crit_edge

land.lhs.true12.i.4.i93.if.end35.i_crit_edge:     ; preds = %land.lhs.true12.i.4.i93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i

land.lhs.true12.i.4.i93.if.then11.i_crit_edge:    ; preds = %land.lhs.true12.i.4.i93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i

if.then11.i:                                      ; preds = %land.lhs.true12.i.4.i93.if.then11.i_crit_edge, %land.lhs.true12.i.3.i89.if.then11.i_crit_edge, %land.lhs.true12.i.i78.if.then11.i_crit_edge, %if.end7.i.if.then11.i_crit_edge
  %spdif_stream.i = getelementptr inbounds %struct.ensoniq, ptr %11, i32 0, i32 33
  %88 = ptrtoint ptr %spdif_stream.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 33587712, ptr %spdif_stream.i, align 4
  %spdif_default.i = getelementptr inbounds %struct.ensoniq, ptr %11, i32 0, i32 32
  %89 = ptrtoint ptr %spdif_default.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 33587712, ptr %spdif_default.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !226
  call void @arm_heavy_mb() #11
  %90 = ptrtoint ptr %spdif_default.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %spdif_default.i, align 4
  %92 = call i32 @llvm.bswap.i32(i32 %91) #11
  %93 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %port.i, align 4
  %add.i = add i32 %94, 28
  %and.i = and i32 %add.i, 1048575
  %add13.i = or i32 %and.i, -18874368
  %95 = inttoptr i32 %add13.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %95, i32 %92) #11, !srcloc !227
  %96 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %u.i, align 4
  %ext_id.i = getelementptr inbounds %struct.snd_ac97, ptr %97, i32 0, i32 15
  %98 = ptrtoint ptr %ext_id.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %ext_id.i, align 2
  %100 = lshr i16 %99, 2
  %.lobit.i = and i16 %100, 1
  %101 = zext i16 %.lobit.i to i32
  %call23.i95 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_es1371_mixer_spdif, ptr noundef %11) #11
  %tobool24.not.i96 = icmp eq ptr %call23.i95, null
  br i1 %tobool24.not.i96, label %if.then11.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge, label %if.end26.i

if.then11.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_ensoniq_1371_mixer.exit.thread

for.cond.i:                                       ; preds = %if.end26.i
  %call23.1.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([4 x %struct.snd_kcontrol_new], ptr @snd_es1371_mixer_spdif, i32 0, i32 1), ptr noundef %11) #11
  %tobool24.not.1.i = icmp eq ptr %call23.1.i, null
  br i1 %tobool24.not.1.i, label %for.cond.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge, label %if.end26.1.i

for.cond.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_ensoniq_1371_mixer.exit.thread

if.end26.1.i:                                     ; preds = %for.cond.i
  %index.1.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call23.1.i, i32 0, i32 1, i32 5
  %102 = ptrtoint ptr %index.1.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %index.1.i, align 4
  %call27.1.i = call i32 @snd_ctl_add(ptr noundef %60, ptr noundef nonnull %call23.1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.1.i)
  %cmp28.1.i = icmp slt i32 %call27.1.i, 0
  br i1 %cmp28.1.i, label %if.end26.1.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge, label %for.cond.1.i

if.end26.1.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge: ; preds = %if.end26.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_ensoniq_1371_mixer.exit.thread

for.cond.1.i:                                     ; preds = %if.end26.1.i
  %call23.2.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([4 x %struct.snd_kcontrol_new], ptr @snd_es1371_mixer_spdif, i32 0, i32 2), ptr noundef %11) #11
  %tobool24.not.2.i = icmp eq ptr %call23.2.i, null
  br i1 %tobool24.not.2.i, label %for.cond.1.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge, label %if.end26.2.i

for.cond.1.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_ensoniq_1371_mixer.exit.thread

if.end26.2.i:                                     ; preds = %for.cond.1.i
  %index.2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call23.2.i, i32 0, i32 1, i32 5
  %103 = ptrtoint ptr %index.2.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %101, ptr %index.2.i, align 4
  %call27.2.i = call i32 @snd_ctl_add(ptr noundef %60, ptr noundef nonnull %call23.2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.2.i)
  %cmp28.2.i = icmp slt i32 %call27.2.i, 0
  br i1 %cmp28.2.i, label %if.end26.2.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge, label %for.cond.2.i

if.end26.2.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge: ; preds = %if.end26.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_ensoniq_1371_mixer.exit.thread

for.cond.2.i:                                     ; preds = %if.end26.2.i
  %call23.3.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([4 x %struct.snd_kcontrol_new], ptr @snd_es1371_mixer_spdif, i32 0, i32 3), ptr noundef %11) #11
  %tobool24.not.3.i = icmp eq ptr %call23.3.i, null
  br i1 %tobool24.not.3.i, label %for.cond.2.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge, label %if.end26.3.i

for.cond.2.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_ensoniq_1371_mixer.exit.thread

if.end26.3.i:                                     ; preds = %for.cond.2.i
  %index.3.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call23.3.i, i32 0, i32 1, i32 5
  %104 = ptrtoint ptr %index.3.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %101, ptr %index.3.i, align 4
  %call27.3.i = call i32 @snd_ctl_add(ptr noundef %60, ptr noundef nonnull %call23.3.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.3.i)
  %cmp28.3.i = icmp slt i32 %call27.3.i, 0
  br i1 %cmp28.3.i, label %if.end26.3.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge, label %if.end26.3.i.if.end35.i_crit_edge

if.end26.3.i.if.end35.i_crit_edge:                ; preds = %if.end26.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i

if.end26.3.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge: ; preds = %if.end26.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_ensoniq_1371_mixer.exit.thread

if.end26.i:                                       ; preds = %if.then11.i
  %index.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call23.i95, i32 0, i32 1, i32 5
  %105 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %101, ptr %index.i, align 4
  %call27.i = call i32 @snd_ctl_add(ptr noundef %60, ptr noundef nonnull %call23.i95) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp28.i = icmp slt i32 %call27.i, 0
  br i1 %cmp28.i, label %if.end26.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge, label %for.cond.i

if.end26.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_ensoniq_1371_mixer.exit.thread

if.end35.i:                                       ; preds = %if.end26.3.i.if.end35.i_crit_edge, %land.lhs.true12.i.4.i93.if.end35.i_crit_edge, %land.lhs.true12.i.i78.if.end35.i_crit_edge, %land.lhs.true.i.i76.if.end35.i_crit_edge, %land.lhs.true.i.if.end35.i_crit_edge, %lor.lhs.false.i.if.end35.i_crit_edge
  %106 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %u.i, align 4
  %ext_id38.i = getelementptr inbounds %struct.snd_ac97, ptr %107, i32 0, i32 15
  %108 = ptrtoint ptr %ext_id38.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %ext_id38.i, align 2
  %110 = and i16 %109, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %tobool41.not.i = icmp eq i16 %110, 0
  br i1 %tobool41.not.i, label %if.end35.i.if.end51.i_crit_edge, label %if.then42.i

if.end35.i.if.end51.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51.i

if.then42.i:                                      ; preds = %if.end35.i
  %111 = ptrtoint ptr %cssr.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cssr.i, align 4
  %and43.i = and i32 %112, -218103809
  %or.i98 = or i32 %and43.i, 67108864
  store i32 %or.i98, ptr %cssr.i, align 4
  %call45.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ens1373_rear, ptr noundef %11) #11
  %call46.i = call i32 @snd_ctl_add(ptr noundef %60, ptr noundef %call45.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %cmp47.i = icmp slt i32 %call46.i, 0
  br i1 %cmp47.i, label %if.then42.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge, label %if.then42.i.if.end51.i_crit_edge

if.then42.i.if.end51.i_crit_edge:                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51.i

if.then42.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge: ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_ensoniq_1371_mixer.exit.thread

if.end51.i:                                       ; preds = %if.then42.i.if.end51.i_crit_edge, %if.end35.i.if.end51.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp52.i = icmp sgt i32 %58, 0
  br i1 %cmp52.i, label %if.end51.i.if.then58.i_crit_edge, label %lor.lhs.false54.i

if.end51.i.if.then58.i_crit_edge:                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then58.i

lor.lhs.false54.i:                                ; preds = %if.end51.i
  %113 = ptrtoint ptr %pci6.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pci6.i, align 4
  %call56.i = call ptr @snd_pci_quirk_lookup(ptr noundef %114, ptr noundef nonnull @ens1373_line_quirk) #11
  %tobool57.not.i = icmp eq ptr %call56.i, null
  br i1 %tobool57.not.i, label %lor.lhs.false54.i.if.end17_crit_edge, label %lor.lhs.false54.i.if.then58.i_crit_edge

lor.lhs.false54.i.if.then58.i_crit_edge:          ; preds = %lor.lhs.false54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then58.i

lor.lhs.false54.i.if.end17_crit_edge:             ; preds = %lor.lhs.false54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then58.i:                                      ; preds = %lor.lhs.false54.i.if.then58.i_crit_edge, %if.end51.i.if.then58.i_crit_edge
  %call59.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ens1373_line, ptr noundef %11) #11
  %call60.i = call i32 @snd_ctl_add(ptr noundef %60, ptr noundef %call59.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %cmp61.i = icmp slt i32 %call60.i, 0
  br i1 %cmp61.i, label %if.then58.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge, label %if.then58.i.if.end17_crit_edge

if.then58.i.if.end17_crit_edge:                   ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then58.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge: ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_ensoniq_1371_mixer.exit.thread

snd_ensoniq_1371_mixer.exit.thread:               ; preds = %if.then58.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge, %if.then42.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge, %if.end26.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge, %if.end26.3.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge, %for.cond.2.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge, %if.end26.2.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge, %for.cond.1.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge, %if.end26.1.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge, %for.cond.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge, %if.then11.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge, %if.end.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge, %if.end11.snd_ensoniq_1371_mixer.exit.thread_crit_edge
  %retval.1.i.ph = phi i32 [ %call27.3.i, %if.end26.3.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge ], [ -12, %for.cond.2.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge ], [ %call27.2.i, %if.end26.2.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge ], [ -12, %for.cond.1.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge ], [ %call27.1.i, %if.end26.1.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge ], [ -12, %for.cond.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge ], [ -12, %if.then11.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge ], [ %call27.i, %if.end26.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge ], [ %call60.i, %if.then58.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge ], [ %call46.i, %if.then42.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge ], [ %call4.i, %if.end.i.snd_ensoniq_1371_mixer.exit.thread_crit_edge ], [ %call.i68, %if.end11.snd_ensoniq_1371_mixer.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus.i) #11
  br label %cleanup

if.end17:                                         ; preds = %if.then58.i.if.end17_crit_edge, %lor.lhs.false54.i.if.end17_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i) #11
  %115 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i, align 4, !annotation !224
  %116 = ptrtoint ptr %card5.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %card5.i, align 4
  %call.i99 = call i32 @snd_pcm_new(ptr noundef %117, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %pcm.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %cmp.i100 = icmp slt i32 %call.i99, 0
  br i1 %cmp.i100, label %snd_ensoniq_pcm.exit.thread, label %snd_ensoniq_pcm.exit

snd_ensoniq_pcm.exit.thread:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #11
  br label %cleanup

snd_ensoniq_pcm.exit:                             ; preds = %if.end17
  %118 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %119, i32 noundef 0, ptr noundef nonnull @snd_ensoniq_playback1_ops) #11
  %120 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %121, i32 noundef 1, ptr noundef nonnull @snd_ensoniq_capture_ops) #11
  %122 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pcm.i, align 4
  %private_data.i101 = getelementptr inbounds %struct.snd_pcm, ptr %123, i32 0, i32 11
  %124 = ptrtoint ptr %private_data.i101 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %11, ptr %private_data.i101, align 8
  %info_flags.i = getelementptr inbounds %struct.snd_pcm, ptr %123, i32 0, i32 3
  %125 = ptrtoint ptr %info_flags.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %info_flags.i, align 8
  %name.i = getelementptr inbounds %struct.snd_pcm, ptr %123, i32 0, i32 7
  %126 = call ptr @memcpy(ptr %name.i, ptr @.str.34, i32 16)
  %pcm1.i = getelementptr inbounds %struct.ensoniq, ptr %11, i32 0, i32 17
  %127 = ptrtoint ptr %pcm1.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %123, ptr %pcm1.i, align 4
  %128 = ptrtoint ptr %pci6.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pci6.i, align 4
  %dev.i103 = getelementptr inbounds %struct.pci_dev, ptr %129, i32 0, i32 44
  %call2.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %123, i32 noundef 2, ptr noundef %dev.i103, i32 noundef 65536, i32 noundef 131072) #11
  %130 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pcm.i, align 4
  %call3.i = call i32 @snd_pcm_add_chmap_ctls(ptr noundef %131, i32 noundef 0, ptr noundef nonnull @snd_pcm_std_chmaps, i32 noundef 2, i32 noundef 0, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp19 = icmp slt i32 %call3.i, 0
  br i1 %cmp19, label %snd_ensoniq_pcm.exit.cleanup_crit_edge, label %if.end21

snd_ensoniq_pcm.exit.cleanup_crit_edge:           ; preds = %snd_ensoniq_pcm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %snd_ensoniq_pcm.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i106) #11
  %132 = ptrtoint ptr %pcm.i106 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i106, align 4, !annotation !224
  %133 = ptrtoint ptr %card5.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %card5.i, align 4
  %call.i108 = call i32 @snd_pcm_new(ptr noundef %134, ptr noundef nonnull @.str.35, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %pcm.i106) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %cmp.i109 = icmp slt i32 %call.i108, 0
  br i1 %cmp.i109, label %snd_ensoniq_pcm2.exit.thread, label %snd_ensoniq_pcm2.exit

snd_ensoniq_pcm2.exit.thread:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i106) #11
  br label %cleanup

snd_ensoniq_pcm2.exit:                            ; preds = %if.end21
  %135 = ptrtoint ptr %pcm.i106 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pcm.i106, align 4
  call void @snd_pcm_set_ops(ptr noundef %136, i32 noundef 0, ptr noundef nonnull @snd_ensoniq_playback2_ops) #11
  %137 = ptrtoint ptr %pcm.i106 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %pcm.i106, align 4
  %private_data.i110 = getelementptr inbounds %struct.snd_pcm, ptr %138, i32 0, i32 11
  %139 = ptrtoint ptr %private_data.i110 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %11, ptr %private_data.i110, align 8
  %info_flags.i111 = getelementptr inbounds %struct.snd_pcm, ptr %138, i32 0, i32 3
  %140 = ptrtoint ptr %info_flags.i111 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %info_flags.i111, align 8
  %name.i112 = getelementptr inbounds %struct.snd_pcm, ptr %138, i32 0, i32 7
  %141 = call ptr @memcpy(ptr %name.i112, ptr @.str.36, i32 12)
  %pcm2.i = getelementptr inbounds %struct.ensoniq, ptr %11, i32 0, i32 18
  %142 = ptrtoint ptr %pcm2.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %138, ptr %pcm2.i, align 4
  %143 = ptrtoint ptr %pci6.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %pci6.i, align 4
  %dev.i114 = getelementptr inbounds %struct.pci_dev, ptr %144, i32 0, i32 44
  %call2.i115 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %138, i32 noundef 2, ptr noundef %dev.i114, i32 noundef 65536, i32 noundef 131072) #11
  %145 = ptrtoint ptr %pcm.i106 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %pcm.i106, align 4
  %call3.i116 = call i32 @snd_pcm_add_chmap_ctls(ptr noundef %146, i32 noundef 0, ptr noundef nonnull @surround_map, i32 noundef 2, i32 noundef 0, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i106) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i116)
  %cmp23 = icmp slt i32 %call3.i116, 0
  br i1 %cmp23, label %snd_ensoniq_pcm2.exit.cleanup_crit_edge, label %if.end25

snd_ensoniq_pcm2.exit.cleanup_crit_edge:          ; preds = %snd_ensoniq_pcm2.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end25:                                         ; preds = %snd_ensoniq_pcm2.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rmidi.i) #11
  %147 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr inttoptr (i32 -1 to ptr), ptr %rmidi.i, align 4, !annotation !224
  %148 = ptrtoint ptr %card5.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %card5.i, align 4
  %call.i120 = call i32 @snd_rawmidi_new(ptr noundef %149, ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %rmidi.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %cmp.i121 = icmp slt i32 %call.i120, 0
  br i1 %cmp.i121, label %snd_ensoniq_midi.exit.thread, label %if.end29

snd_ensoniq_midi.exit.thread:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi.i) #11
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %150 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %rmidi.i, align 4
  %name.i122 = getelementptr inbounds %struct.snd_rawmidi, ptr %151, i32 0, i32 5
  %152 = call ptr @memcpy(ptr %name.i122, ptr @.str.39, i32 7)
  call void @snd_rawmidi_set_ops(ptr noundef %151, i32 noundef 0, ptr noundef nonnull @snd_ensoniq_midi_output) #11
  %153 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %rmidi.i, align 4
  call void @snd_rawmidi_set_ops(ptr noundef %154, i32 noundef 1, ptr noundef nonnull @snd_ensoniq_midi_input) #11
  %155 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %rmidi.i, align 4
  %info_flags.i123 = getelementptr inbounds %struct.snd_rawmidi, ptr %156, i32 0, i32 3
  %157 = ptrtoint ptr %info_flags.i123 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %info_flags.i123, align 8
  %or.i124 = or i32 %158, 7
  store i32 %or.i124, ptr %info_flags.i123, align 8
  %private_data.i125 = getelementptr inbounds %struct.snd_rawmidi, ptr %156, i32 0, i32 9
  %159 = ptrtoint ptr %private_data.i125 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %11, ptr %private_data.i125, align 4
  %rmidi2.i = getelementptr inbounds %struct.ensoniq, ptr %11, i32 0, i32 28
  %160 = ptrtoint ptr %rmidi2.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %156, ptr %rmidi2.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi.i) #11
  %161 = load i32, ptr @snd_audiopci_probe.dev, align 4
  call fastcc void @snd_ensoniq_create_gameport(ptr noundef %11, i32 noundef %161)
  %162 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %163, i32 0, i32 2
  %164 = ptrtoint ptr %driver to i32
  call void @__asan_storeN_noabort(i32 %164, i32 8)
  store i64 4994020507578216704, ptr %driver, align 1
  %shortname = getelementptr inbounds %struct.snd_card, ptr %163, i32 0, i32 3
  %165 = call ptr @memcpy(ptr %shortname, ptr @.str.2, i32 17)
  %longname = getelementptr inbounds %struct.snd_card, ptr %163, i32 0, i32 4
  %166 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %port.i, align 4
  %168 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %irq.i, align 4
  %call39 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.3, ptr noundef %shortname, ptr noundef %driver, i32 noundef %167, i32 noundef %169)
  %170 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %card, align 4
  %call40 = call i32 @snd_card_register(ptr noundef %171) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.end29.cleanup_crit_edge, label %if.end43

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end43:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %172 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %174 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %173, ptr %driver_data.i.i, align 4
  %175 = load i32, ptr @snd_audiopci_probe.dev, align 4
  %inc44 = add i32 %175, 1
  store i32 %inc44, ptr @snd_audiopci_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end29.cleanup_crit_edge, %snd_ensoniq_midi.exit.thread, %snd_ensoniq_pcm2.exit.cleanup_crit_edge, %snd_ensoniq_pcm2.exit.thread, %snd_ensoniq_pcm.exit.cleanup_crit_edge, %snd_ensoniq_pcm.exit.thread, %snd_ensoniq_1371_mixer.exit.thread, %do.end16.i, %do.body.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end43 ], [ -2, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ %call3.i, %snd_ensoniq_pcm.exit.cleanup_crit_edge ], [ %call3.i116, %snd_ensoniq_pcm2.exit.cleanup_crit_edge ], [ %call40, %if.end29.cleanup_crit_edge ], [ %retval.1.i.ph, %snd_ensoniq_1371_mixer.exit.thread ], [ %call.i99, %snd_ensoniq_pcm.exit.thread ], [ %call.i108, %snd_ensoniq_pcm2.exit.thread ], [ %call.i120, %snd_ensoniq_midi.exit.thread ], [ %call7.i, %do.body.i.cleanup_crit_edge ], [ %call.i, %if.end7.cleanup_crit_edge ], [ -16, %do.end16.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_ensoniq_create_gameport(ptr nocapture noundef %ensoniq, i32 noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr [32 x i32], ptr @joystick_port, i32 0, i32 %dev
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %1, label %snd_ensoniq_get_joystick_port.exit.thread [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %for.body.preheader
    i32 512, label %entry.sw.default_crit_edge
    i32 520, label %entry.sw.default_crit_edge9
    i32 528, label %entry.sw.default_crit_edge10
    i32 536, label %entry.sw.default_crit_edge11
  ]

entry.sw.default_crit_edge11:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default

entry.sw.default_crit_edge10:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default

entry.sw.default_crit_edge9:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %call2 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef 512, i32 noundef 8, ptr noundef nonnull @.str.40, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %for.inc, label %for.body.preheader.sw.epilog_crit_edge

for.body.preheader.sw.epilog_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

snd_ensoniq_get_joystick_port.exit.thread:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %card.i = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 16
  %3 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card.i, align 4
  %dev2.i = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 27
  %5 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev2.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.52, i32 noundef %1) #14
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %call2.1 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef 520, i32 noundef 8, ptr noundef nonnull @.str.40, i32 noundef 0) #11
  %tobool.not.1 = icmp eq ptr %call2.1, null
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.sw.epilog_crit_edge

for.inc.sw.epilog_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.inc.1:                                        ; preds = %for.inc
  %call2.2 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef 528, i32 noundef 8, ptr noundef nonnull @.str.40, i32 noundef 0) #11
  %tobool.not.2 = icmp eq ptr %call2.2, null
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.sw.epilog_crit_edge

for.inc.1.sw.epilog_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.inc.2:                                        ; preds = %for.inc.1
  %call2.3 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef 536, i32 noundef 8, ptr noundef nonnull @.str.40, i32 noundef 0) #11
  %tobool.not.3 = icmp eq ptr %call2.3, null
  br i1 %tobool.not.3, label %for.inc.3, label %for.inc.2.sw.epilog_crit_edge

for.inc.2.sw.epilog_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  %card = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 16
  %7 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card, align 4
  %dev5 = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev5, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.41) #14
  br label %cleanup

sw.default:                                       ; preds = %entry.sw.default_crit_edge, %entry.sw.default_crit_edge9, %entry.sw.default_crit_edge10, %entry.sw.default_crit_edge11
  %call7 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %1, i32 noundef 8, ptr noundef nonnull @.str.40, i32 noundef 0) #11
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end12, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end12:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  %card13 = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 16
  %11 = ptrtoint ptr %card13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card13, align 4
  %dev14 = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev14, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.45, i32 noundef %1) #14
  br label %cleanup

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %for.inc.2.sw.epilog_crit_edge, %for.inc.1.sw.epilog_crit_edge, %for.inc.sw.epilog_crit_edge, %for.body.preheader.sw.epilog_crit_edge
  %io_port.1 = phi i32 [ %1, %sw.default.sw.epilog_crit_edge ], [ 512, %for.body.preheader.sw.epilog_crit_edge ], [ 520, %for.inc.sw.epilog_crit_edge ], [ 528, %for.inc.1.sw.epilog_crit_edge ], [ 536, %for.inc.2.sw.epilog_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 1248) #15
  %gameport = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 34
  %16 = ptrtoint ptr %gameport to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i.i, ptr %gameport, align 4
  %tobool17.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool17.not, label %do.end21, label %if.end24

do.end21:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %card22 = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 16
  %17 = ptrtoint ptr %card22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card22, align 4
  %dev23 = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 27
  %19 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev23, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.48) #14
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %io_port.1, i32 noundef 8) #11
  br label %cleanup

if.end24:                                         ; preds = %sw.epilog
  %name1.i = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 1
  %call.i = tail call i32 @strlcpy(ptr noundef %name1.i, ptr noundef nonnull @.str.50, i32 noundef 32) #11
  %pci = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 15
  %21 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44, i32 3
  %23 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end24.pci_name.exit_crit_edge

if.end24.pci_name.exit_crit_edge:                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end24.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %26, %if.end.i.i ], [ %24, %if.end24.pci_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @gameport_set_phys(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.51, ptr noundef %retval.0.i.i) #11
  %27 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pci, align 4
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %parent = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 21, i32 1
  %29 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dev27, ptr %parent, align 8
  %io = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %io to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %io_port.1, ptr %io, align 4
  %ctrl = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 9
  %31 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ctrl, align 4
  %or = and i32 %32, -50331653
  %33 = shl i32 %io_port.1, 21
  %shl = and i32 %33, 50331648
  %and = or i32 %shl, %or
  %or32 = or i32 %and, 4
  store i32 %or32, ptr %ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !228
  tail call void @arm_heavy_mb() #11
  %34 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ctrl, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %port = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 6
  %37 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %port, align 4
  %and38 = and i32 %38, 1048575
  %add39 = or i32 %and38, -18874368
  %39 = inttoptr i32 %add39 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %39, i32 %36) #11, !srcloc !227
  %40 = ptrtoint ptr %gameport to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %gameport, align 4
  tail call void @__gameport_register_port(ptr noundef %41, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %pci_name.exit, %do.end21, %do.end12, %for.inc.3, %snd_ensoniq_get_joystick_port.exit.thread, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

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
define internal i32 @snd_audiopci_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %byte.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %dev_id, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %port = getelementptr inbounds %struct.ensoniq, ptr %dev_id, i32 0, i32 6
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 4
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #11, !srcloc !229
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !230
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool.not = icmp sgt i32 %4, -1
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @_raw_spin_lock(ptr noundef nonnull %dev_id) #11
  %sctrl6 = getelementptr inbounds %struct.ensoniq, ptr %dev_id, i32 0, i32 10
  %5 = ptrtoint ptr %sctrl6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sctrl6, align 4
  %and7 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %and10 = and i32 %6, -257
  %spec.select = select i1 %tobool8.not, i32 %6, i32 %and10
  %and12 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %and15 = and i32 %spec.select, -513
  %sctrl.1 = select i1 %tobool13.not, i32 %spec.select, i32 %and15
  %and17 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %and20 = and i32 %sctrl.1, -1025
  %sctrl.2 = select i1 %tobool18.not, i32 %sctrl.1, i32 %and20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !231
  tail call void @arm_heavy_mb() #11
  %7 = tail call i32 @llvm.bswap.i32(i32 %sctrl.2)
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %add23 = add i32 %9, 32
  %and24 = and i32 %add23, 1048575
  %add25 = or i32 %and24, -18874368
  %10 = inttoptr i32 %add25 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 %7) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !232
  tail call void @arm_heavy_mb() #11
  %11 = ptrtoint ptr %sctrl6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sctrl6, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 4
  %add32 = add i32 %15, 32
  %and33 = and i32 %add32, 1048575
  %add34 = or i32 %and33, -18874368
  %16 = inttoptr i32 %add34 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 %13) #11, !srcloc !227
  tail call void @_raw_spin_unlock(ptr noundef nonnull %dev_id) #11
  %and37 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end5.if.end40_crit_edge, label %if.then39

if.end5.if.end40_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then39:                                        ; preds = %if.end5
  %rmidi1.i = getelementptr inbounds %struct.ensoniq, ptr %dev_id, i32 0, i32 28
  %17 = ptrtoint ptr %rmidi1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmidi1.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte.i) #11
  %19 = ptrtoint ptr %byte.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %byte.i, align 1, !annotation !224
  %cmp.i = icmp eq ptr %18, null
  br i1 %cmp.i, label %if.then39.snd_ensoniq_midi_interrupt.exit_crit_edge, label %if.end.i

if.then39.snd_ensoniq_midi_interrupt.exit_crit_edge: ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_ensoniq_midi_interrupt.exit

if.end.i:                                         ; preds = %if.then39
  tail call void @_raw_spin_lock(ptr noundef nonnull %dev_id) #11
  %uartm.i = getelementptr inbounds %struct.ensoniq, ptr %dev_id, i32 0, i32 8
  %20 = ptrtoint ptr %uartm.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %uartm.i, align 4
  %22 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool2.not.i = icmp eq i32 %22, 0
  br i1 %tobool2.not.i, label %if.end.i.while.end.i_crit_edge, label %while.body.lr.ph.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end.i
  %midi_input.i = getelementptr inbounds %struct.ensoniq, ptr %dev_id, i32 0, i32 29
  %23 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port, align 4
  %add.i89 = add i32 %24, 9
  %and3.i90 = and i32 %add.i89, 1048575
  %add4.i91 = or i32 %and3.i90, -18874368
  %25 = inttoptr i32 %add4.i91 to ptr
  %26 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #11, !srcloc !233
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !234
  %27 = and i8 %26, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp9.i92 = icmp eq i8 %27, 0
  br i1 %cmp9.i92, label %while.body.lr.ph.i.while.end.i_crit_edge, label %while.body.lr.ph.i.while.body.critedge.i_crit_edge

while.body.lr.ph.i.while.body.critedge.i_crit_edge: ; preds = %while.body.lr.ph.i
  br label %while.body.critedge.i

while.body.lr.ph.i.while.end.i_crit_edge:         ; preds = %while.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.critedge.i:                            ; preds = %while.body.critedge.i.while.body.critedge.i_crit_edge, %while.body.lr.ph.i.while.body.critedge.i_crit_edge
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port, align 4
  %add15.c.i = add i32 %29, 8
  %and16.c.i = and i32 %add15.c.i, 1048575
  %add17.c.i = or i32 %and16.c.i, -18874368
  %30 = inttoptr i32 %add17.c.i to ptr
  %31 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %30) #11, !srcloc !233
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  %32 = ptrtoint ptr %byte.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %byte.i, align 1
  %33 = ptrtoint ptr %midi_input.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %midi_input.i, align 4
  %call21.c.i = call i32 @snd_rawmidi_receive(ptr noundef %34, ptr noundef nonnull %byte.i, i32 noundef 1) #11
  %35 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port, align 4
  %add.i = add i32 %36, 9
  %and3.i = and i32 %add.i, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %37 = inttoptr i32 %add4.i to ptr
  %38 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %37) #11, !srcloc !233
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !234
  %39 = and i8 %38, 1
  %cmp9.i = icmp eq i8 %39, 0
  br i1 %cmp9.i, label %while.body.critedge.i.while.end.i_crit_edge, label %while.body.critedge.i.while.body.critedge.i_crit_edge

while.body.critedge.i.while.body.critedge.i_crit_edge: ; preds = %while.body.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.critedge.i

while.body.critedge.i.while.end.i_crit_edge:      ; preds = %while.body.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.critedge.i.while.end.i_crit_edge, %while.body.lr.ph.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull %dev_id) #11
  call void @_raw_spin_lock(ptr noundef nonnull %dev_id) #11
  %40 = ptrtoint ptr %uartm.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %uartm.i, align 4
  %.tr.i = trunc i32 %41 to i8
  %42 = shl i8 %.tr.i, 1
  %conv28.i = and i8 %42, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv28.i)
  %tobool30.not97.i = icmp eq i8 %conv28.i, 0
  br i1 %tobool30.not97.i, label %while.end.i.while.end71.i_crit_edge, label %while.body31.lr.ph.i

while.end.i.while.end71.i_crit_edge:              ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end71.i

while.body31.lr.ph.i:                             ; preds = %while.end.i
  %midi_output.i = getelementptr inbounds %struct.ensoniq, ptr %dev_id, i32 0, i32 30
  %uartc.i = getelementptr inbounds %struct.ensoniq, ptr %dev_id, i32 0, i32 12
  br label %while.body31.i

while.body31.i:                                   ; preds = %if.end70.i.while.body31.i_crit_edge, %while.body31.lr.ph.i
  %mask.098.i = phi i8 [ %conv28.i, %while.body31.lr.ph.i ], [ %mask.1.i, %if.end70.i.while.body31.i_crit_edge ]
  %43 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port, align 4
  %add34.i = add i32 %44, 9
  %and35.i = and i32 %add34.i, 1048575
  %add36.i = or i32 %and35.i, -18874368
  %45 = inttoptr i32 %add36.i to ptr
  %46 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %45) #11, !srcloc !233
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !236
  %and4296.i = and i8 %46, %mask.098.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and4296.i)
  %cmp43.i = icmp eq i8 %and4296.i, 0
  br i1 %cmp43.i, label %while.body31.i.while.end71.i_crit_edge, label %if.end46.i

while.body31.i.while.end71.i_crit_edge:           ; preds = %while.body31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end71.i

if.end46.i:                                       ; preds = %while.body31.i
  %47 = ptrtoint ptr %midi_output.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %midi_output.i, align 4
  %call47.i = call i32 @snd_rawmidi_transmit(ptr noundef %48, ptr noundef nonnull %byte.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call47.i)
  %cmp48.not.i = icmp eq i32 %call47.i, 1
  br i1 %cmp48.not.i, label %do.body62.i, label %if.then50.i

if.then50.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %uartc.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %uartc.i, align 4
  %and51.i = and i32 %50, -97
  store i32 %and51.i, ptr %uartc.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !237
  call void @arm_heavy_mb() #11
  %51 = ptrtoint ptr %uartc.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %uartc.i, align 4
  %conv53.i = trunc i32 %52 to i8
  %53 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %port, align 4
  %add55.i = add i32 %54, 9
  %and56.i = and i32 %add55.i, 1048575
  %add57.i = or i32 %and56.i, -18874368
  %55 = inttoptr i32 %add57.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %55, i8 %conv53.i) #11, !srcloc !238
  %56 = and i8 %mask.098.i, -3
  br label %if.end70.i

do.body62.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !239
  call void @arm_heavy_mb() #11
  %57 = ptrtoint ptr %byte.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %byte.i, align 1
  %59 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %port, align 4
  %add66.i = add i32 %60, 8
  %and67.i = and i32 %add66.i, 1048575
  %add68.i = or i32 %and67.i, -18874368
  %61 = inttoptr i32 %add68.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 %58) #11, !srcloc !238
  br label %if.end70.i

if.end70.i:                                       ; preds = %do.body62.i, %if.then50.i
  %mask.1.i = phi i8 [ %56, %if.then50.i ], [ %mask.098.i, %do.body62.i ]
  %tobool30.not.i = icmp eq i8 %mask.1.i, 0
  br i1 %tobool30.not.i, label %if.end70.i.while.end71.i_crit_edge, label %if.end70.i.while.body31.i_crit_edge

if.end70.i.while.body31.i_crit_edge:              ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body31.i

if.end70.i.while.end71.i_crit_edge:               ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end71.i

while.end71.i:                                    ; preds = %if.end70.i.while.end71.i_crit_edge, %while.body31.i.while.end71.i_crit_edge, %while.end.i.while.end71.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull %dev_id) #11
  br label %snd_ensoniq_midi_interrupt.exit

snd_ensoniq_midi_interrupt.exit:                  ; preds = %while.end71.i, %if.then39.snd_ensoniq_midi_interrupt.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte.i) #11
  br label %if.end40

if.end40:                                         ; preds = %snd_ensoniq_midi_interrupt.exit, %if.end5.if.end40_crit_edge
  br i1 %tobool13.not, label %if.end40.if.end46_crit_edge, label %land.lhs.true

if.end40.if.end46_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end40
  %playback2_substream = getelementptr inbounds %struct.ensoniq, ptr %dev_id, i32 0, i32 20
  %62 = ptrtoint ptr %playback2_substream to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %playback2_substream, align 4
  %tobool43.not = icmp eq ptr %63, null
  br i1 %tobool43.not, label %land.lhs.true.if.end46_crit_edge, label %if.then44

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then44:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  call void @snd_pcm_period_elapsed(ptr noundef nonnull %63) #11
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %land.lhs.true.if.end46_crit_edge, %if.end40.if.end46_crit_edge
  br i1 %tobool18.not, label %if.end46.if.end53_crit_edge, label %land.lhs.true49

if.end46.if.end53_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

land.lhs.true49:                                  ; preds = %if.end46
  %capture_substream = getelementptr inbounds %struct.ensoniq, ptr %dev_id, i32 0, i32 21
  %64 = ptrtoint ptr %capture_substream to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %capture_substream, align 4
  %tobool50.not = icmp eq ptr %65, null
  br i1 %tobool50.not, label %land.lhs.true49.if.end53_crit_edge, label %if.then51

land.lhs.true49.if.end53_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then51:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #13
  call void @snd_pcm_period_elapsed(ptr noundef nonnull %65) #11
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %land.lhs.true49.if.end53_crit_edge, %if.end46.if.end53_crit_edge
  br i1 %tobool8.not, label %if.end53.cleanup_crit_edge, label %land.lhs.true56

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true56:                                  ; preds = %if.end53
  %playback1_substream = getelementptr inbounds %struct.ensoniq, ptr %dev_id, i32 0, i32 19
  %66 = ptrtoint ptr %playback1_substream to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %playback1_substream, align 4
  %tobool57.not = icmp eq ptr %67, null
  br i1 %tobool57.not, label %land.lhs.true56.cleanup_crit_edge, label %if.then58

land.lhs.true56.cleanup_crit_edge:                ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then58:                                        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #13
  call void @snd_pcm_period_elapsed(ptr noundef nonnull %67) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %land.lhs.true56.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.then58 ], [ 1, %land.lhs.true56.cleanup_crit_edge ], [ 1, %if.end53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_pci_quirk_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ensoniq_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %gameport.i = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %gameport.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gameport.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.snd_ensoniq_free_gameport.exit_crit_edge, label %if.then.i

entry.snd_ensoniq_free_gameport.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_ensoniq_free_gameport.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %io.i = getelementptr inbounds %struct.gameport, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io.i, align 4
  tail call void @gameport_unregister_port(ptr noundef nonnull %3) #11
  %6 = ptrtoint ptr %gameport.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %gameport.i, align 4
  %ctrl.i = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ctrl.i, align 4
  %and.i = and i32 %8, -5
  store i32 %and.i, ptr %ctrl.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !240
  tail call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ctrl.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  %port5.i = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %port5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port5.i, align 4
  %and6.i = and i32 %13, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %14 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %11) #11, !srcloc !227
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %5, i32 noundef 8) #11
  br label %snd_ensoniq_free_gameport.exit

snd_ensoniq_free_gameport.exit:                   ; preds = %if.then.i, %entry.snd_ensoniq_free_gameport.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !241
  tail call void @arm_heavy_mb() #11
  %port = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %and = and i32 %16, 1048575
  %add1 = or i32 %and, -18874368
  %17 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %17, i32 0) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !242
  tail call void @arm_heavy_mb() #11
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add6 = add i32 %19, 32
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %20 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 0) #11, !srcloc !227
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_ensoniq_chip_init(ptr noundef %ensoniq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !243
  tail call void @arm_heavy_mb() #11
  %ctrl = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 9
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctrl, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %port = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 6
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %and = and i32 %4, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %5, i32 %2) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  tail call void @arm_heavy_mb() #11
  %sctrl = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 10
  %6 = ptrtoint ptr %sctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sctrl, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %add6 = add i32 %10, 32
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %11 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 %8) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  tail call void @arm_heavy_mb() #11
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add14 = add i32 %13, 24
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %14 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 0) #11, !srcloc !227
  %rev.i = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 13
  %pci.i = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 15
  %15 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci.i, align 4
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vendor.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4724, i16 %18)
  %cmp5.i = icmp eq i16 %18, 4724
  br i1 %cmp5.i, label %land.lhs.true.i, label %entry.do.body27_crit_edge

entry.do.body27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27

land.lhs.true.i:                                  ; preds = %entry
  %19 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 22656, i16 %20)
  %cmp10.i = icmp eq i16 %20, 22656
  br i1 %cmp10.i, label %land.lhs.true12.i, label %land.lhs.true.i.land.lhs.true.i.3_crit_edge

land.lhs.true.i.land.lhs.true.i.3_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i.3

land.lhs.true12.i:                                ; preds = %land.lhs.true.i
  %21 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp15.i = icmp eq i32 %22, 2
  br i1 %cmp15.i, label %land.lhs.true12.i.do.body19_crit_edge, label %land.lhs.true12.i.1

land.lhs.true12.i.do.body19_crit_edge:            ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body19

land.lhs.true12.i.1:                              ; preds = %land.lhs.true12.i
  %23 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp15.i.1 = icmp eq i32 %24, 3
  br i1 %cmp15.i.1, label %land.lhs.true12.i.1.do.body19_crit_edge, label %land.lhs.true.i.2

land.lhs.true12.i.1.do.body19_crit_edge:          ; preds = %land.lhs.true12.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body19

land.lhs.true.i.2:                                ; preds = %land.lhs.true12.i.1
  %25 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %.pr = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 22656, i16 %.pr)
  %cmp10.i.2 = icmp eq i16 %.pr, 22656
  br i1 %cmp10.i.2, label %land.lhs.true12.i.2, label %land.lhs.true.i.2.land.lhs.true.i.3_crit_edge

land.lhs.true.i.2.land.lhs.true.i.3_crit_edge:    ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i.3

land.lhs.true12.i.2:                              ; preds = %land.lhs.true.i.2
  %26 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %cmp15.i.2 = icmp eq i32 %27, 4
  br i1 %cmp15.i.2, label %land.lhs.true12.i.2.do.body19_crit_edge, label %land.lhs.true12.i.2.do.body27_crit_edge

land.lhs.true12.i.2.do.body27_crit_edge:          ; preds = %land.lhs.true12.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27

land.lhs.true12.i.2.do.body19_crit_edge:          ; preds = %land.lhs.true12.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body19

land.lhs.true.i.3:                                ; preds = %land.lhs.true.i.2.land.lhs.true.i.3_crit_edge, %land.lhs.true.i.land.lhs.true.i.3_crit_edge
  %28 = phi i16 [ %.pr, %land.lhs.true.i.2.land.lhs.true.i.3_crit_edge ], [ %20, %land.lhs.true.i.land.lhs.true.i.3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 4977, i16 %28)
  %cmp10.i.3 = icmp eq i16 %28, 4977
  br i1 %cmp10.i.3, label %land.lhs.true12.i.3, label %land.lhs.true.i.3.land.lhs.true.i.4_crit_edge

land.lhs.true.i.3.land.lhs.true.i.4_crit_edge:    ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i.4

land.lhs.true12.i.3:                              ; preds = %land.lhs.true.i.3
  %29 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %30)
  %cmp15.i.3 = icmp eq i32 %30, 7
  br i1 %cmp15.i.3, label %land.lhs.true12.i.3.do.body19_crit_edge, label %land.lhs.true12.i.3.land.lhs.true.i.4_crit_edge

land.lhs.true12.i.3.land.lhs.true.i.4_crit_edge:  ; preds = %land.lhs.true12.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i.4

land.lhs.true12.i.3.do.body19_crit_edge:          ; preds = %land.lhs.true12.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body19

land.lhs.true.i.4:                                ; preds = %land.lhs.true12.i.3.land.lhs.true.i.4_crit_edge, %land.lhs.true.i.3.land.lhs.true.i.4_crit_edge
  %31 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %.pr170 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4977, i16 %.pr170)
  %cmp10.i.4 = icmp eq i16 %.pr170, 4977
  br i1 %cmp10.i.4, label %land.lhs.true12.i.4, label %land.lhs.true.i.4.do.body27_crit_edge

land.lhs.true.i.4.do.body27_crit_edge:            ; preds = %land.lhs.true.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27

land.lhs.true12.i.4:                              ; preds = %land.lhs.true.i.4
  %32 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %33)
  %cmp15.i.4 = icmp eq i32 %33, 8
  br i1 %cmp15.i.4, label %land.lhs.true12.i.4.do.body19_crit_edge, label %land.lhs.true12.i.4.do.body27_crit_edge

land.lhs.true12.i.4.do.body27_crit_edge:          ; preds = %land.lhs.true12.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body27

land.lhs.true12.i.4.do.body19_crit_edge:          ; preds = %land.lhs.true12.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body19

do.body19:                                        ; preds = %land.lhs.true12.i.4.do.body19_crit_edge, %land.lhs.true12.i.3.do.body19_crit_edge, %land.lhs.true12.i.2.do.body19_crit_edge, %land.lhs.true12.i.1.do.body19_crit_edge, %land.lhs.true12.i.do.body19_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !246
  tail call void @arm_heavy_mb() #11
  %cssr = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 11
  %34 = ptrtoint ptr %cssr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cssr, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %37 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %port, align 4
  %add23 = add i32 %38, 4
  %and24 = and i32 %add23, 1048575
  %add25 = or i32 %and24, -18874368
  %39 = inttoptr i32 %add25 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %39, i32 %36) #11, !srcloc !227
  tail call void @msleep(i32 noundef 20) #11
  br label %do.body27

do.body27:                                        ; preds = %do.body19, %land.lhs.true12.i.4.do.body27_crit_edge, %land.lhs.true.i.4.do.body27_crit_edge, %land.lhs.true12.i.2.do.body27_crit_edge, %entry.do.body27_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !247
  tail call void @arm_heavy_mb() #11
  %40 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ctrl, align 4
  %or = or i32 %41, 16384
  %42 = tail call i32 @llvm.bswap.i32(i32 %or)
  %43 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port, align 4
  %and33 = and i32 %44, 1048575
  %add34 = or i32 %and33, -18874368
  %45 = inttoptr i32 %add34 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %45, i32 %42) #11, !srcloc !227
  %46 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port, align 4
  %and38 = and i32 %47, 1048575
  %add39 = or i32 %and38, -18874368
  %48 = inttoptr i32 %add39 to ptr
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %48) #11, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !248
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 4294960) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !249
  tail call void @arm_heavy_mb() #11
  %51 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ctrl, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %54 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port, align 4
  %and48 = and i32 %55, 1048575
  %add49 = or i32 %and48, -18874368
  %56 = inttoptr i32 %add49 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %56, i32 %53) #11, !srcloc !227
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i140.for.body.i_crit_edge, %do.body27
  %t.016.i = phi i32 [ 0, %do.body27 ], [ %inc.i, %if.end.i140.for.body.i_crit_edge ]
  %57 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port, align 4
  %add.i = add i32 %58, 16
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %59 = inttoptr i32 %add1.i to ptr
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %59) #11, !srcloc !229
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !250
  %and3.i = and i32 %61, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %cmp4.i = icmp eq i32 %and3.i, 0
  br i1 %cmp4.i, label %for.body.i.snd_es1371_wait_src_ready.exit_crit_edge, label %if.end.i140

for.body.i.snd_es1371_wait_src_ready.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_es1371_wait_src_ready.exit

if.end.i140:                                      ; preds = %for.body.i
  tail call void @__might_resched(ptr noundef nonnull @.str.9, i32 noundef 504, i32 noundef 0) #11
  %call.i.i = tail call i32 @__cond_resched() #11
  %inc.i = add nuw nsw i32 %t.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 40960
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i140.for.body.i_crit_edge

if.end.i140.for.body.i_crit_edge:                 ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #13
  %card.i = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 16
  %62 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %63, i32 0, i32 27
  %64 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i, align 8
  %66 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %port, align 4
  %add8.i = add i32 %67, 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.12, i32 noundef %add8.i, i32 noundef %61) #14
  br label %snd_es1371_wait_src_ready.exit

snd_es1371_wait_src_ready.exit:                   ; preds = %do.end.i, %for.body.i.snd_es1371_wait_src_ready.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !251
  tail call void @arm_heavy_mb() #11
  %68 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port, align 4
  %add56 = add i32 %69, 16
  %and57 = and i32 %add56, 1048575
  %add58 = or i32 %and57, -18874368
  %70 = inttoptr i32 %add58 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %70, i32 16384) #11, !srcloc !227
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %snd_es1371_wait_src_ready.exit
  %idx.0164 = phi i32 [ 0, %snd_es1371_wait_src_ready.exit ], [ %inc, %for.body.for.body_crit_edge ]
  %conv = trunc i32 %idx.0164 to i16
  tail call fastcc void @snd_es1371_src_write(ptr noundef %ensoniq, i16 noundef zeroext %conv, i16 noundef zeroext 0)
  %inc = add nuw nsw i32 %idx.0164, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call fastcc void @snd_es1371_src_write(ptr noundef %ensoniq, i16 noundef zeroext 112, i16 noundef zeroext 256)
  tail call fastcc void @snd_es1371_src_write(ptr noundef %ensoniq, i16 noundef zeroext 113, i16 noundef zeroext 16384)
  tail call fastcc void @snd_es1371_src_write(ptr noundef %ensoniq, i16 noundef zeroext 116, i16 noundef zeroext 256)
  tail call fastcc void @snd_es1371_src_write(ptr noundef %ensoniq, i16 noundef zeroext 117, i16 noundef zeroext 16384)
  tail call fastcc void @snd_es1371_src_write(ptr noundef %ensoniq, i16 noundef zeroext 108, i16 noundef zeroext 4096)
  tail call fastcc void @snd_es1371_src_write(ptr noundef %ensoniq, i16 noundef zeroext 109, i16 noundef zeroext 4096)
  tail call fastcc void @snd_es1371_src_write(ptr noundef %ensoniq, i16 noundef zeroext 124, i16 noundef zeroext 4096)
  tail call fastcc void @snd_es1371_src_write(ptr noundef %ensoniq, i16 noundef zeroext 125, i16 noundef zeroext 4096)
  tail call fastcc void @snd_es1371_src_write(ptr noundef %ensoniq, i16 noundef zeroext 126, i16 noundef zeroext 4096)
  tail call fastcc void @snd_es1371_src_write(ptr noundef %ensoniq, i16 noundef zeroext 127, i16 noundef zeroext 4096)
  %src_mutex.i = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %src_mutex.i, i32 noundef 0) #11
  tail call fastcc void @snd_es1371_src_write(ptr noundef %ensoniq, i16 noundef zeroext 120, i16 noundef zeroext -32656) #11
  %call.i = tail call fastcc i32 @snd_es1371_src_read(ptr noundef %ensoniq, i16 noundef zeroext 121) #11
  %71 = trunc i32 %call.i to i16
  %72 = and i16 %71, 255
  %conv27.i = or i16 %72, 15360
  tail call fastcc void @snd_es1371_src_write(ptr noundef %ensoniq, i16 noundef zeroext 121, i16 noundef zeroext %conv27.i) #11
  tail call fastcc void @snd_es1371_src_write(ptr noundef %ensoniq, i16 noundef zeroext 123, i16 noundef zeroext 7797) #11
  tail call fastcc void @snd_es1371_src_write(ptr noundef %ensoniq, i16 noundef zeroext 108, i16 noundef zeroext 1792) #11
  tail call fastcc void @snd_es1371_src_write(ptr noundef %ensoniq, i16 noundef zeroext 109, i16 noundef zeroext 1792) #11
  tail call void @mutex_unlock(ptr noundef %src_mutex.i) #11
  tail call fastcc void @snd_es1371_dac1_rate(ptr noundef %ensoniq, i32 noundef 22050)
  tail call fastcc void @snd_es1371_dac2_rate(ptr noundef %ensoniq, i32 noundef 22050)
  br label %for.body.i149

for.body.i149:                                    ; preds = %if.end.i153.for.body.i149_crit_edge, %for.end
  %t.016.i143 = phi i32 [ 0, %for.end ], [ %inc.i151, %if.end.i153.for.body.i149_crit_edge ]
  %73 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %port, align 4
  %add.i144 = add i32 %74, 16
  %and.i145 = and i32 %add.i144, 1048575
  %add1.i146 = or i32 %and.i145, -18874368
  %75 = inttoptr i32 %add1.i146 to ptr
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %75) #11, !srcloc !229
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !250
  %and3.i147 = and i32 %77, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i147)
  %cmp4.i148 = icmp eq i32 %and3.i147, 0
  br i1 %cmp4.i148, label %for.body.i149.snd_es1371_wait_src_ready.exit159_crit_edge, label %if.end.i153

for.body.i149.snd_es1371_wait_src_ready.exit159_crit_edge: ; preds = %for.body.i149
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_es1371_wait_src_ready.exit159

if.end.i153:                                      ; preds = %for.body.i149
  tail call void @__might_resched(ptr noundef nonnull @.str.9, i32 noundef 504, i32 noundef 0) #11
  %call.i.i150 = tail call i32 @__cond_resched() #11
  %inc.i151 = add nuw nsw i32 %t.016.i143, 1
  %exitcond.not.i152 = icmp eq i32 %inc.i151, 40960
  br i1 %exitcond.not.i152, label %do.end.i157, label %if.end.i153.for.body.i149_crit_edge

if.end.i153.for.body.i149_crit_edge:              ; preds = %if.end.i153
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i149

do.end.i157:                                      ; preds = %if.end.i153
  call void @__sanitizer_cov_trace_pc() #13
  %card.i154 = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 16
  %78 = ptrtoint ptr %card.i154 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %card.i154, align 4
  %dev.i155 = getelementptr inbounds %struct.snd_card, ptr %79, i32 0, i32 27
  %80 = ptrtoint ptr %dev.i155 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i155, align 8
  %82 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %port, align 4
  %add8.i156 = add i32 %83, 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.12, i32 noundef %add8.i156, i32 noundef %77) #14
  br label %snd_es1371_wait_src_ready.exit159

snd_es1371_wait_src_ready.exit159:                ; preds = %do.end.i157, %for.body.i149.snd_es1371_wait_src_ready.exit159_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !252
  tail call void @arm_heavy_mb() #11
  %84 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %port, align 4
  %add65 = add i32 %85, 16
  %and66 = and i32 %add65, 1048575
  %add67 = or i32 %and66, -18874368
  %86 = inttoptr i32 %add67 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %86, i32 0) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !253
  tail call void @arm_heavy_mb() #11
  %87 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %port, align 4
  %add73 = add i32 %88, 20
  %and74 = and i32 %add73, 1048575
  %add75 = or i32 %and74, -18874368
  %89 = inttoptr i32 %add75 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %89, i32 0) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !254
  tail call void @arm_heavy_mb() #11
  %uartc = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 12
  %90 = ptrtoint ptr %uartc to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %uartc, align 4
  %91 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %port, align 4
  %add81 = add i32 %92, 9
  %and82 = and i32 %add81, 1048575
  %add83 = or i32 %and82, -18874368
  %93 = inttoptr i32 %add83 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %93, i8 0) #11, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !255
  tail call void @arm_heavy_mb() #11
  %94 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %port, align 4
  %add89 = add i32 %95, 10
  %and90 = and i32 %add89, 1048575
  %add91 = or i32 %and90, -18874368
  %96 = inttoptr i32 %add91 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 0) #11, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !256
  tail call void @arm_heavy_mb() #11
  %cssr96 = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 11
  %97 = ptrtoint ptr %cssr96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cssr96, align 4
  %99 = tail call i32 @llvm.bswap.i32(i32 %98)
  %100 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %port, align 4
  %add98 = add i32 %101, 4
  %and99 = and i32 %add98, 1048575
  %add100 = or i32 %and99, -18874368
  %102 = inttoptr i32 %add100 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %102, i32 %99) #11, !srcloc !227
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_receive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_es1371_src_write(ptr nocapture noundef readonly %ensoniq, i16 noundef zeroext %reg, i16 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port.i = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %t.016.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port.i, align 4
  %add.i = add i32 %1, 16
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #11, !srcloc !229
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !250
  %and3.i = and i32 %4, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %cmp4.i = icmp eq i32 %and3.i, 0
  br i1 %cmp4.i, label %snd_es1371_wait_src_ready.exit.loopexit, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  tail call void @__might_resched(ptr noundef nonnull @.str.9, i32 noundef 504, i32 noundef 0) #11
  %call.i.i = tail call i32 @__cond_resched() #11
  %inc.i = add nuw nsw i32 %t.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 40960
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %card.i = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 16
  %5 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port.i, align 4
  %add8.i = add i32 %10, 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.12, i32 noundef %add8.i, i32 noundef %4) #14
  br label %snd_es1371_wait_src_ready.exit

snd_es1371_wait_src_ready.exit.loopexit:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.bo = and i32 %4, 7864320
  br label %snd_es1371_wait_src_ready.exit

snd_es1371_wait_src_ready.exit:                   ; preds = %snd_es1371_wait_src_ready.exit.loopexit, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %phi.bo, %snd_es1371_wait_src_ready.exit.loopexit ]
  %and1 = zext i16 %reg to i32
  %shl = shl i32 %and1, 25
  %conv2 = zext i16 %data to i32
  %or = or i32 %shl, %conv2
  %or5 = or i32 %retval.0.i, %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !257
  tail call void @arm_heavy_mb() #11
  %or6 = or i32 %or5, 16777216
  %11 = tail call i32 @llvm.bswap.i32(i32 %or6)
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i, align 4
  %add = add i32 %13, 16
  %and7 = and i32 %add, 1048575
  %add8 = or i32 %and7, -18874368
  %14 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %11) #11, !srcloc !227
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_es1371_adc_rate(ptr noundef %ensoniq, i32 noundef %rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %src_mutex = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %src_mutex, i32 noundef 0) #11
  %div = udiv i32 %rate, 3000
  %shl = shl nuw i32 1, %div
  %and = and i32 %shl, 43520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %dec = sext i1 %tobool.not to i32
  %spec.select = add nsw i32 %div, %dec
  %mul = mul nsw i32 %spec.select, 21
  %sub = add nsw i32 %mul, -1
  %or = or i32 %sub, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 23999, i32 %rate)
  %cmp = icmp ugt i32 %rate, 23999
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 @llvm.usub.sat.i32(i32 239, i32 %or)
  %shl8 = shl nuw nsw i32 %0, 8
  %shl9 = shl nsw i32 %spec.select, 4
  %or10 = or i32 %shl8, %shl9
  %conv = trunc i32 %or10 to i16
  br label %if.end22

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = tail call i32 @llvm.usub.sat.i32(i32 119, i32 %or)
  %shl17 = shl nuw nsw i32 %1, 8
  %shl19 = shl nsw i32 %spec.select, 4
  %or18 = or i32 %shl17, %shl19
  %2 = trunc i32 %or18 to i16
  %conv21 = or i16 %2, -32768
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then3
  %conv21.sink = phi i16 [ %conv21, %if.else ], [ %conv, %if.then3 ]
  tail call fastcc void @snd_es1371_src_write(ptr noundef %ensoniq, i16 noundef zeroext 120, i16 noundef zeroext %conv21.sink)
  %div1 = udiv i32 1572864000, %rate
  %mul2 = mul i32 %div1, %spec.select
  %call = tail call fastcc i32 @snd_es1371_src_read(ptr noundef %ensoniq, i16 noundef zeroext 121)
  %and23 = and i32 %call, 255
  %shr24 = lshr i32 %mul2, 5
  %and25 = and i32 %shr24, 64512
  %or26 = or i32 %and25, %and23
  %conv27 = trunc i32 %or26 to i16
  tail call fastcc void @snd_es1371_src_write(ptr noundef %ensoniq, i16 noundef zeroext 121, i16 noundef zeroext %conv27)
  %3 = trunc i32 %mul2 to i16
  %conv29 = and i16 %3, 32767
  tail call fastcc void @snd_es1371_src_write(ptr noundef %ensoniq, i16 noundef zeroext 123, i16 noundef zeroext %conv29)
  %n.0.tr = trunc i32 %spec.select to i16
  %conv31 = shl i16 %n.0.tr, 8
  tail call fastcc void @snd_es1371_src_write(ptr noundef %ensoniq, i16 noundef zeroext 108, i16 noundef zeroext %conv31)
  tail call fastcc void @snd_es1371_src_write(ptr noundef %ensoniq, i16 noundef zeroext 109, i16 noundef zeroext %conv31)
  tail call void @mutex_unlock(ptr noundef %src_mutex) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_es1371_dac1_rate(ptr noundef %ensoniq, i32 noundef %rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %src_mutex = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %src_mutex, i32 noundef 0) #11
  %shl = shl i32 %rate, 15
  %add = or i32 %shl, 1496
  %div1 = udiv i32 %add, 3000
  %port.i = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %t.016.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port.i, align 4
  %add.i = add i32 %1, 16
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #11, !srcloc !229
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !250
  %and3.i = and i32 %4, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %cmp4.i = icmp eq i32 %and3.i, 0
  br i1 %cmp4.i, label %snd_es1371_wait_src_ready.exit.loopexit, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  tail call void @__might_resched(ptr noundef nonnull @.str.9, i32 noundef 504, i32 noundef 0) #11
  %call.i.i = tail call i32 @__cond_resched() #11
  %inc.i = add nuw nsw i32 %t.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 40960
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %card.i = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 16
  %5 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port.i, align 4
  %add8.i = add i32 %10, 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.12, i32 noundef %add8.i, i32 noundef %4) #14
  br label %snd_es1371_wait_src_ready.exit

snd_es1371_wait_src_ready.exit.loopexit:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.bo = lshr i32 %4, 8
  %phi.bo58 = and i32 %phi.bo, 22528
  %phi.bo59 = or i32 %phi.bo58, 8192
  br label %snd_es1371_wait_src_ready.exit

snd_es1371_wait_src_ready.exit:                   ; preds = %snd_es1371_wait_src_ready.exit.loopexit, %do.end.i
  %retval.0.i = phi i32 [ 8192, %do.end.i ], [ %phi.bo59, %snd_es1371_wait_src_ready.exit.loopexit ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !258
  tail call void @arm_heavy_mb() #11
  %11 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port.i, align 4
  %add2 = add i32 %12, 16
  %and3 = and i32 %add2, 1048575
  %add4 = or i32 %and3, -18874368
  %13 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %13, i32 %retval.0.i) #11, !srcloc !227
  %call6 = tail call fastcc i32 @snd_es1371_src_read(ptr noundef %ensoniq, i16 noundef zeroext 113)
  %and7 = and i32 %call6, 255
  %shr = lshr i32 %div1, 5
  %and8 = and i32 %shr, 64512
  %or9 = or i32 %and7, %and8
  %conv = trunc i32 %or9 to i16
  tail call fastcc void @snd_es1371_src_write(ptr noundef %ensoniq, i16 noundef zeroext 113, i16 noundef zeroext %conv)
  %14 = trunc i32 %div1 to i16
  %conv11 = and i16 %14, 32767
  tail call fastcc void @snd_es1371_src_write(ptr noundef %ensoniq, i16 noundef zeroext 115, i16 noundef zeroext %conv11)
  br label %for.body.i41

for.body.i41:                                     ; preds = %if.end.i45.for.body.i41_crit_edge, %snd_es1371_wait_src_ready.exit
  %t.016.i35 = phi i32 [ 0, %snd_es1371_wait_src_ready.exit ], [ %inc.i43, %if.end.i45.for.body.i41_crit_edge ]
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port.i, align 4
  %add.i36 = add i32 %16, 16
  %and.i37 = and i32 %add.i36, 1048575
  %add1.i38 = or i32 %and.i37, -18874368
  %17 = inttoptr i32 %add1.i38 to ptr
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %17) #11, !srcloc !229
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !250
  %and3.i39 = and i32 %19, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i39)
  %cmp4.i40 = icmp eq i32 %and3.i39, 0
  br i1 %cmp4.i40, label %snd_es1371_wait_src_ready.exit51.loopexit, label %if.end.i45

if.end.i45:                                       ; preds = %for.body.i41
  tail call void @__might_resched(ptr noundef nonnull @.str.9, i32 noundef 504, i32 noundef 0) #11
  %call.i.i42 = tail call i32 @__cond_resched() #11
  %inc.i43 = add nuw nsw i32 %t.016.i35, 1
  %exitcond.not.i44 = icmp eq i32 %inc.i43, 40960
  br i1 %exitcond.not.i44, label %do.end.i49, label %if.end.i45.for.body.i41_crit_edge

if.end.i45.for.body.i41_crit_edge:                ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i41

do.end.i49:                                       ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #13
  %card.i46 = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 16
  %20 = ptrtoint ptr %card.i46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card.i46, align 4
  %dev.i47 = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %dev.i47 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i47, align 8
  %24 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port.i, align 4
  %add8.i48 = add i32 %25, 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.12, i32 noundef %add8.i48, i32 noundef %19) #14
  br label %snd_es1371_wait_src_ready.exit51

snd_es1371_wait_src_ready.exit51.loopexit:        ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #13
  %phi.bo60 = lshr i32 %19, 8
  %phi.bo61 = and i32 %phi.bo60, 22528
  br label %snd_es1371_wait_src_ready.exit51

snd_es1371_wait_src_ready.exit51:                 ; preds = %snd_es1371_wait_src_ready.exit51.loopexit, %do.end.i49
  %retval.0.i50 = phi i32 [ 0, %do.end.i49 ], [ %phi.bo61, %snd_es1371_wait_src_ready.exit51.loopexit ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !259
  tail call void @arm_heavy_mb() #11
  %26 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port.i, align 4
  %add18 = add i32 %27, 16
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %28 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %28, i32 %retval.0.i50) #11, !srcloc !227
  tail call void @mutex_unlock(ptr noundef %src_mutex) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_es1371_dac2_rate(ptr noundef %ensoniq, i32 noundef %rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %src_mutex = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %src_mutex, i32 noundef 0) #11
  %shl = shl i32 %rate, 15
  %add = or i32 %shl, 1496
  %div1 = udiv i32 %add, 3000
  %port.i = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %t.016.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port.i, align 4
  %add.i = add i32 %1, 16
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #11, !srcloc !229
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !250
  %and3.i = and i32 %4, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %cmp4.i = icmp eq i32 %and3.i, 0
  br i1 %cmp4.i, label %snd_es1371_wait_src_ready.exit.loopexit, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  tail call void @__might_resched(ptr noundef nonnull @.str.9, i32 noundef 504, i32 noundef 0) #11
  %call.i.i = tail call i32 @__cond_resched() #11
  %inc.i = add nuw nsw i32 %t.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 40960
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %card.i = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 16
  %5 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port.i, align 4
  %add8.i = add i32 %10, 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.12, i32 noundef %add8.i, i32 noundef %4) #14
  br label %snd_es1371_wait_src_ready.exit

snd_es1371_wait_src_ready.exit.loopexit:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.bo = lshr i32 %4, 8
  %phi.bo58 = and i32 %phi.bo, 26624
  %phi.bo59 = or i32 %phi.bo58, 4096
  br label %snd_es1371_wait_src_ready.exit

snd_es1371_wait_src_ready.exit:                   ; preds = %snd_es1371_wait_src_ready.exit.loopexit, %do.end.i
  %retval.0.i = phi i32 [ 4096, %do.end.i ], [ %phi.bo59, %snd_es1371_wait_src_ready.exit.loopexit ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !260
  tail call void @arm_heavy_mb() #11
  %11 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port.i, align 4
  %add2 = add i32 %12, 16
  %and3 = and i32 %add2, 1048575
  %add4 = or i32 %and3, -18874368
  %13 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %13, i32 %retval.0.i) #11, !srcloc !227
  %call6 = tail call fastcc i32 @snd_es1371_src_read(ptr noundef %ensoniq, i16 noundef zeroext 117)
  %and7 = and i32 %call6, 255
  %shr = lshr i32 %div1, 5
  %and8 = and i32 %shr, 64512
  %or9 = or i32 %and7, %and8
  %conv = trunc i32 %or9 to i16
  tail call fastcc void @snd_es1371_src_write(ptr noundef %ensoniq, i16 noundef zeroext 117, i16 noundef zeroext %conv)
  %14 = trunc i32 %div1 to i16
  %conv11 = and i16 %14, 32767
  tail call fastcc void @snd_es1371_src_write(ptr noundef %ensoniq, i16 noundef zeroext 119, i16 noundef zeroext %conv11)
  br label %for.body.i41

for.body.i41:                                     ; preds = %if.end.i45.for.body.i41_crit_edge, %snd_es1371_wait_src_ready.exit
  %t.016.i35 = phi i32 [ 0, %snd_es1371_wait_src_ready.exit ], [ %inc.i43, %if.end.i45.for.body.i41_crit_edge ]
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port.i, align 4
  %add.i36 = add i32 %16, 16
  %and.i37 = and i32 %add.i36, 1048575
  %add1.i38 = or i32 %and.i37, -18874368
  %17 = inttoptr i32 %add1.i38 to ptr
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %17) #11, !srcloc !229
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !250
  %and3.i39 = and i32 %19, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i39)
  %cmp4.i40 = icmp eq i32 %and3.i39, 0
  br i1 %cmp4.i40, label %snd_es1371_wait_src_ready.exit51.loopexit, label %if.end.i45

if.end.i45:                                       ; preds = %for.body.i41
  tail call void @__might_resched(ptr noundef nonnull @.str.9, i32 noundef 504, i32 noundef 0) #11
  %call.i.i42 = tail call i32 @__cond_resched() #11
  %inc.i43 = add nuw nsw i32 %t.016.i35, 1
  %exitcond.not.i44 = icmp eq i32 %inc.i43, 40960
  br i1 %exitcond.not.i44, label %do.end.i49, label %if.end.i45.for.body.i41_crit_edge

if.end.i45.for.body.i41_crit_edge:                ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i41

do.end.i49:                                       ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #13
  %card.i46 = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 16
  %20 = ptrtoint ptr %card.i46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card.i46, align 4
  %dev.i47 = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %dev.i47 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i47, align 8
  %24 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port.i, align 4
  %add8.i48 = add i32 %25, 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.12, i32 noundef %add8.i48, i32 noundef %19) #14
  br label %snd_es1371_wait_src_ready.exit51

snd_es1371_wait_src_ready.exit51.loopexit:        ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #13
  %phi.bo60 = lshr i32 %19, 8
  %phi.bo61 = and i32 %phi.bo60, 26624
  br label %snd_es1371_wait_src_ready.exit51

snd_es1371_wait_src_ready.exit51:                 ; preds = %snd_es1371_wait_src_ready.exit51.loopexit, %do.end.i49
  %retval.0.i50 = phi i32 [ 0, %do.end.i49 ], [ %phi.bo61, %snd_es1371_wait_src_ready.exit51.loopexit ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !261
  tail call void @arm_heavy_mb() #11
  %26 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port.i, align 4
  %add18 = add i32 %27, 16
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %28 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %28, i32 %retval.0.i50) #11, !srcloc !227
  tail call void @mutex_unlock(ptr noundef %src_mutex) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_es1371_src_read(ptr nocapture noundef readonly %ensoniq, i16 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port.i = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %t.016.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port.i, align 4
  %add.i = add i32 %1, 16
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #11, !srcloc !229
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !250
  %and3.i = and i32 %4, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %cmp4.i = icmp eq i32 %and3.i, 0
  br i1 %cmp4.i, label %snd_es1371_wait_src_ready.exit.loopexit, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  tail call void @__might_resched(ptr noundef nonnull @.str.9, i32 noundef 504, i32 noundef 0) #11
  %call.i.i = tail call i32 @__cond_resched() #11
  %inc.i = add nuw nsw i32 %t.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 40960
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %card.i = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 16
  %5 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port.i, align 4
  %add8.i = add i32 %10, 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.12, i32 noundef %add8.i, i32 noundef %4) #14
  br label %snd_es1371_wait_src_ready.exit

snd_es1371_wait_src_ready.exit.loopexit:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.bo = and i32 %4, 7864320
  br label %snd_es1371_wait_src_ready.exit

snd_es1371_wait_src_ready.exit:                   ; preds = %snd_es1371_wait_src_ready.exit.loopexit, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %phi.bo, %snd_es1371_wait_src_ready.exit.loopexit ]
  %and1 = zext i16 %reg to i32
  %shl = shl i32 %and1, 25
  %or = or i32 %retval.0.i, %shl
  %or2 = or i32 %or, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !262
  tail call void @arm_heavy_mb() #11
  %11 = tail call i32 @llvm.bswap.i32(i32 %or2)
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i, align 4
  %add = add i32 %13, 16
  %and3 = and i32 %add, 1048575
  %add4 = or i32 %and3, -18874368
  %14 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %11) #11, !srcloc !227
  br label %for.body.i54

for.body.i54:                                     ; preds = %if.end.i58.for.body.i54_crit_edge, %snd_es1371_wait_src_ready.exit
  %t.016.i48 = phi i32 [ 0, %snd_es1371_wait_src_ready.exit ], [ %inc.i56, %if.end.i58.for.body.i54_crit_edge ]
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port.i, align 4
  %add.i49 = add i32 %16, 16
  %and.i50 = and i32 %add.i49, 1048575
  %add1.i51 = or i32 %and.i50, -18874368
  %17 = inttoptr i32 %add1.i51 to ptr
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %17) #11, !srcloc !229
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !250
  %and3.i52 = and i32 %19, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i52)
  %cmp4.i53 = icmp eq i32 %and3.i52, 0
  br i1 %cmp4.i53, label %snd_es1371_wait_src_ready.exit64, label %if.end.i58

if.end.i58:                                       ; preds = %for.body.i54
  tail call void @__might_resched(ptr noundef nonnull @.str.9, i32 noundef 504, i32 noundef 0) #11
  %call.i.i55 = tail call i32 @__cond_resched() #11
  %inc.i56 = add nuw nsw i32 %t.016.i48, 1
  %exitcond.not.i57 = icmp eq i32 %inc.i56, 40960
  br i1 %exitcond.not.i57, label %snd_es1371_wait_src_ready.exit64.thread, label %if.end.i58.for.body.i54_crit_edge

if.end.i58.for.body.i54_crit_edge:                ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i54

snd_es1371_wait_src_ready.exit64.thread:          ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #13
  %card.i59 = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 16
  %20 = ptrtoint ptr %card.i59 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card.i59, align 4
  %dev.i60 = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %dev.i60 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i60, align 8
  %24 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port.i, align 4
  %add8.i61 = add i32 %25, 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.12, i32 noundef %add8.i61, i32 noundef %19) #14
  br label %for.body.preheader

snd_es1371_wait_src_ready.exit64:                 ; preds = %for.body.i54
  %and7 = and i32 %19, 8847360
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %and7)
  %cmp.not = icmp eq i32 %and7, 65536
  br i1 %cmp.not, label %snd_es1371_wait_src_ready.exit64.if.end21_crit_edge, label %snd_es1371_wait_src_ready.exit64.for.body.preheader_crit_edge

snd_es1371_wait_src_ready.exit64.for.body.preheader_crit_edge: ; preds = %snd_es1371_wait_src_ready.exit64
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

snd_es1371_wait_src_ready.exit64.if.end21_crit_edge: ; preds = %snd_es1371_wait_src_ready.exit64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

for.body.preheader:                               ; preds = %snd_es1371_wait_src_ready.exit64.for.body.preheader_crit_edge, %snd_es1371_wait_src_ready.exit64.thread
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.068 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %26 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port.i, align 4
  %add12 = add i32 %27, 16
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %28 = inttoptr i32 %add14 to ptr
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %28) #11, !srcloc !229
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !263
  %and17 = and i32 %30, 8847360
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %and17)
  %cmp18 = icmp eq i32 %and17, 65536
  %inc = add nuw nsw i32 %i.068, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 40960, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 40960
  %or.cond = select i1 %cmp18, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.body.if.end21_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.end21:                                         ; preds = %for.body.if.end21_crit_edge, %snd_es1371_wait_src_ready.exit64.if.end21_crit_edge
  %temp.1 = phi i32 [ %19, %snd_es1371_wait_src_ready.exit64.if.end21_crit_edge ], [ %30, %for.body.if.end21_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !264
  tail call void @arm_heavy_mb() #11
  %31 = tail call i32 @llvm.bswap.i32(i32 %or)
  %32 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port.i, align 4
  %add31 = add i32 %33, 16
  %and32 = and i32 %add31, 1048575
  %add33 = or i32 %and32, -18874368
  %34 = inttoptr i32 %add33 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %34, i32 %31) #11, !srcloc !227
  ret i32 %temp.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ensoniq_proc_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.15) #11
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  %ctrl = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctrl, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.18, ptr @.str.17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond) #11
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %10 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctrl, align 4
  %12 = lshr i32 %11, 21
  %mul = and i32 %12, 24
  %add = or i32 %mul, 512
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.19, i32 noundef %add) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_es1371_codec_write(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pci.i = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30408, i16 %5)
  %cmp.i = icmp eq i16 %5, -30408
  %cond = select i1 %cmp.i, i32 67108864, i32 0
  %src_mutex = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %src_mutex, i32 noundef 0) #11
  %port = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 6
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc70 = add nuw nsw i32 %t.0129, 1
  %exitcond.not = icmp eq i32 %inc70, 40960
  br i1 %exitcond.not, label %for.end71, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %t.0129 = phi i32 [ 0, %entry ], [ %inc70, %for.cond.for.body_crit_edge ]
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %add = add i32 %7, 20
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %8 = inttoptr i32 %add1 to ptr
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %8) #11, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !265
  %10 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %for.body.for.body.i_crit_edge, label %for.cond

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %t.016.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port, align 4
  %add.i = add i32 %12, 16
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %13 = inttoptr i32 %add1.i to ptr
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %13) #11, !srcloc !229
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !250
  %and3.i = and i32 %15, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %cmp4.i = icmp eq i32 %and3.i, 0
  br i1 %cmp4.i, label %for.body.i.snd_es1371_wait_src_ready.exit_crit_edge, label %if.end.i

for.body.i.snd_es1371_wait_src_ready.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_es1371_wait_src_ready.exit

if.end.i:                                         ; preds = %for.body.i
  tail call void @__might_resched(ptr noundef nonnull @.str.9, i32 noundef 504, i32 noundef 0) #11
  %call.i.i = tail call i32 @__cond_resched() #11
  %inc.i = add nuw nsw i32 %t.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 40960
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %card.i = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 16
  %16 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 8
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port, align 4
  %add8.i = add i32 %21, 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.12, i32 noundef %add8.i, i32 noundef %15) #14
  br label %snd_es1371_wait_src_ready.exit

snd_es1371_wait_src_ready.exit:                   ; preds = %do.end.i, %for.body.i.snd_es1371_wait_src_ready.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %15, %for.body.i.snd_es1371_wait_src_ready.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !266
  tail call void @arm_heavy_mb() #11
  %and6 = lshr i32 %retval.0.i, 8
  %or = and i32 %and6, 30720
  %22 = or i32 %or, 256
  %23 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port, align 4
  %add8 = add i32 %24, 16
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %25 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %25, i32 %22) #11, !srcloc !227
  br label %for.body14

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %snd_es1371_wait_src_ready.exit
  %t.1130 = phi i32 [ 0, %snd_es1371_wait_src_ready.exit ], [ %inc, %for.body14.for.body14_crit_edge ]
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port, align 4
  %add17 = add i32 %27, 16
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %28 = inttoptr i32 %add19 to ptr
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %28) #11, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !267
  %30 = and i32 %29, 34560
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp24 = icmp eq i32 %30, 0
  %inc = add nuw nsw i32 %t.1130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 40960, i32 %inc)
  %exitcond134.not = icmp eq i32 %inc, 40960
  %or.cond = select i1 %cmp24, i1 true, i1 %exitcond134.not
  br i1 %or.cond, label %for.body14.for.body28_crit_edge, label %for.body14.for.body14_crit_edge

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body14

for.body14.for.body28_crit_edge:                  ; preds = %for.body14
  br label %for.body28

for.body28:                                       ; preds = %for.body28.for.body28_crit_edge, %for.body14.for.body28_crit_edge
  %t.2131 = phi i32 [ %inc42, %for.body28.for.body28_crit_edge ], [ 0, %for.body14.for.body28_crit_edge ]
  %31 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port, align 4
  %add31 = add i32 %32, 16
  %and32 = and i32 %add31, 1048575
  %add33 = or i32 %and32, -18874368
  %33 = inttoptr i32 %add33 to ptr
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %33) #11, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !268
  %35 = and i32 %34, 34560
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %35)
  %cmp38 = icmp eq i32 %35, 256
  %inc42 = add nuw nsw i32 %t.2131, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 40960, i32 %inc42)
  %exitcond135.not = icmp eq i32 %inc42, 40960
  %or.cond138 = select i1 %cmp38, i1 true, i1 %exitcond135.not
  br i1 %or.cond138, label %do.body44, label %for.body28.for.body28_crit_edge

for.body28.for.body28_crit_edge:                  ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body28

do.body44:                                        ; preds = %for.body28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !269
  tail call void @arm_heavy_mb() #11
  %36 = and i16 %reg, 127
  %and47 = zext i16 %36 to i32
  %shl = shl nuw nsw i32 %and47, 16
  %conv48 = zext i16 %val to i32
  %or51 = or i32 %shl, %conv48
  %or52 = or i32 %cond, %or51
  %37 = tail call i32 @llvm.bswap.i32(i32 %or52)
  %38 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port, align 4
  %add54 = add i32 %39, 20
  %and55 = and i32 %add54, 1048575
  %add56 = or i32 %and55, -18874368
  %40 = inttoptr i32 %add56 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %40, i32 %37) #11, !srcloc !227
  br label %for.body.i116

for.body.i116:                                    ; preds = %if.end.i120.for.body.i116_crit_edge, %do.body44
  %t.016.i110 = phi i32 [ 0, %do.body44 ], [ %inc.i118, %if.end.i120.for.body.i116_crit_edge ]
  %41 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port, align 4
  %add.i111 = add i32 %42, 16
  %and.i112 = and i32 %add.i111, 1048575
  %add1.i113 = or i32 %and.i112, -18874368
  %43 = inttoptr i32 %add1.i113 to ptr
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %43) #11, !srcloc !229
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !250
  %and3.i114 = and i32 %45, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i114)
  %cmp4.i115 = icmp eq i32 %and3.i114, 0
  br i1 %cmp4.i115, label %for.body.i116.snd_es1371_wait_src_ready.exit126_crit_edge, label %if.end.i120

for.body.i116.snd_es1371_wait_src_ready.exit126_crit_edge: ; preds = %for.body.i116
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_es1371_wait_src_ready.exit126

if.end.i120:                                      ; preds = %for.body.i116
  tail call void @__might_resched(ptr noundef nonnull @.str.9, i32 noundef 504, i32 noundef 0) #11
  %call.i.i117 = tail call i32 @__cond_resched() #11
  %inc.i118 = add nuw nsw i32 %t.016.i110, 1
  %exitcond.not.i119 = icmp eq i32 %inc.i118, 40960
  br i1 %exitcond.not.i119, label %do.end.i124, label %if.end.i120.for.body.i116_crit_edge

if.end.i120.for.body.i116_crit_edge:              ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i116

do.end.i124:                                      ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #13
  %card.i121 = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 16
  %46 = ptrtoint ptr %card.i121 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %card.i121, align 4
  %dev.i122 = getelementptr inbounds %struct.snd_card, ptr %47, i32 0, i32 27
  %48 = ptrtoint ptr %dev.i122 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i122, align 8
  %50 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port, align 4
  %add8.i123 = add i32 %51, 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.12, i32 noundef %add8.i123, i32 noundef %45) #14
  br label %snd_es1371_wait_src_ready.exit126

snd_es1371_wait_src_ready.exit126:                ; preds = %do.end.i124, %for.body.i116.snd_es1371_wait_src_ready.exit126_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !270
  tail call void @arm_heavy_mb() #11
  %52 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %53 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %port, align 4
  %add63 = add i32 %54, 16
  %and64 = and i32 %add63, 1048575
  %add65 = or i32 %and64, -18874368
  %55 = inttoptr i32 %add65 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %55, i32 %52) #11, !srcloc !227
  tail call void @mutex_unlock(ptr noundef %src_mutex) #11
  br label %cleanup

for.end71:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %src_mutex) #11
  %card = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 16
  %56 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %57, i32 0, i32 27
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 8
  %60 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port, align 4
  %add77 = add i32 %61, 20
  %and81 = and i32 %add77, 1048575
  %add82 = or i32 %and81, -18874368
  %62 = inttoptr i32 %add82 to ptr
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %62) #11, !srcloc !229
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !271
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.20, i32 noundef %add77, i32 noundef %64) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end71, %snd_es1371_wait_src_ready.exit126
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @snd_es1371_codec_read(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pci.i = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30408, i16 %5)
  %cmp.i = icmp eq i16 %5, -30408
  %cond = select i1 %cmp.i, i32 67108864, i32 0
  %src_mutex = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 1
  %port = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 6
  %card.i = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 16
  %conv = zext i16 %reg to i32
  %and47 = shl nuw i32 %conv, 16
  %shl = and i32 %and47, 8323072
  %or48 = or i32 %shl, %cond
  %or49 = or i32 %or48, 8388608
  %6 = tail call i32 @llvm.bswap.i32(i32 %or49)
  br label %__again

__again:                                          ; preds = %for.end130.__again_crit_edge, %entry
  %fail.0 = phi i32 [ 0, %entry ], [ %inc132, %for.end130.__again_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %src_mutex, i32 noundef 0) #11
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc153 = add nuw nsw i32 %t.0242, 1
  %exitcond.not = icmp eq i32 %inc153, 40960
  br i1 %exitcond.not, label %for.end154, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %__again
  %t.0242 = phi i32 [ 0, %__again ], [ %inc153, %for.cond.for.body_crit_edge ]
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %add = add i32 %8, 20
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %9 = inttoptr i32 %add1 to ptr
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #11, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !272
  %11 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %for.body.for.body.i_crit_edge, label %for.cond

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %t.016.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add.i = add i32 %13, 16
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %14 = inttoptr i32 %add1.i to ptr
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %14) #11, !srcloc !229
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !250
  %and3.i = and i32 %16, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %cmp4.i = icmp eq i32 %and3.i, 0
  br i1 %cmp4.i, label %for.body.i.snd_es1371_wait_src_ready.exit_crit_edge, label %if.end.i

for.body.i.snd_es1371_wait_src_ready.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_es1371_wait_src_ready.exit

if.end.i:                                         ; preds = %for.body.i
  tail call void @__might_resched(ptr noundef nonnull @.str.9, i32 noundef 504, i32 noundef 0) #11
  %call.i.i = tail call i32 @__cond_resched() #11
  %inc.i = add nuw nsw i32 %t.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 40960
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 27
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 8
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port, align 4
  %add8.i = add i32 %22, 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.12, i32 noundef %add8.i, i32 noundef %16) #14
  br label %snd_es1371_wait_src_ready.exit

snd_es1371_wait_src_ready.exit:                   ; preds = %do.end.i, %for.body.i.snd_es1371_wait_src_ready.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %16, %for.body.i.snd_es1371_wait_src_ready.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !273
  tail call void @arm_heavy_mb() #11
  %and6 = lshr i32 %retval.0.i, 8
  %or = and i32 %and6, 30720
  %23 = or i32 %or, 256
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 4
  %add8 = add i32 %25, 16
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %26 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %26, i32 %23) #11, !srcloc !227
  br label %for.body14

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %snd_es1371_wait_src_ready.exit
  %t.1243 = phi i32 [ 0, %snd_es1371_wait_src_ready.exit ], [ %inc, %for.body14.for.body14_crit_edge ]
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %add17 = add i32 %28, 16
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %29 = inttoptr i32 %add19 to ptr
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %29) #11, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !274
  %31 = and i32 %30, 34560
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp24 = icmp ne i32 %31, 0
  %inc = add nuw nsw i32 %t.1243, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 40959, i32 %t.1243)
  %cmp13 = icmp ult i32 %t.1243, 40959
  %or.cond = select i1 %cmp24, i1 %cmp13, i1 false
  br i1 %or.cond, label %for.body14.for.body14_crit_edge, label %for.body14.for.body28_crit_edge

for.body14.for.body28_crit_edge:                  ; preds = %for.body14
  br label %for.body28

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body14

for.body28:                                       ; preds = %for.body28.for.body28_crit_edge, %for.body14.for.body28_crit_edge
  %t.2244 = phi i32 [ %inc42, %for.body28.for.body28_crit_edge ], [ 0, %for.body14.for.body28_crit_edge ]
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port, align 4
  %add31 = add i32 %33, 16
  %and32 = and i32 %add31, 1048575
  %add33 = or i32 %and32, -18874368
  %34 = inttoptr i32 %add33 to ptr
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %34) #11, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !275
  %36 = and i32 %35, 34560
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %36)
  %cmp38 = icmp ne i32 %36, 256
  %inc42 = add nuw nsw i32 %t.2244, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 40959, i32 %t.2244)
  %cmp27 = icmp ult i32 %t.2244, 40959
  %or.cond248 = select i1 %cmp38, i1 %cmp27, i1 false
  br i1 %or.cond248, label %for.body28.for.body28_crit_edge, label %do.body44

for.body28.for.body28_crit_edge:                  ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body28

do.body44:                                        ; preds = %for.body28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !276
  tail call void @arm_heavy_mb() #11
  %37 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %port, align 4
  %add51 = add i32 %38, 20
  %and52 = and i32 %add51, 1048575
  %add53 = or i32 %and52, -18874368
  %39 = inttoptr i32 %add53 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %39, i32 %6) #11, !srcloc !227
  br label %for.body.i220

for.body.i220:                                    ; preds = %if.end.i224.for.body.i220_crit_edge, %do.body44
  %t.016.i214 = phi i32 [ 0, %do.body44 ], [ %inc.i222, %if.end.i224.for.body.i220_crit_edge ]
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port, align 4
  %add.i215 = add i32 %41, 16
  %and.i216 = and i32 %add.i215, 1048575
  %add1.i217 = or i32 %and.i216, -18874368
  %42 = inttoptr i32 %add1.i217 to ptr
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %42) #11, !srcloc !229
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !250
  %and3.i218 = and i32 %44, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i218)
  %cmp4.i219 = icmp eq i32 %and3.i218, 0
  br i1 %cmp4.i219, label %for.body.i220.snd_es1371_wait_src_ready.exit230_crit_edge, label %if.end.i224

for.body.i220.snd_es1371_wait_src_ready.exit230_crit_edge: ; preds = %for.body.i220
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_es1371_wait_src_ready.exit230

if.end.i224:                                      ; preds = %for.body.i220
  tail call void @__might_resched(ptr noundef nonnull @.str.9, i32 noundef 504, i32 noundef 0) #11
  %call.i.i221 = tail call i32 @__cond_resched() #11
  %inc.i222 = add nuw nsw i32 %t.016.i214, 1
  %exitcond.not.i223 = icmp eq i32 %inc.i222, 40960
  br i1 %exitcond.not.i223, label %do.end.i228, label %if.end.i224.for.body.i220_crit_edge

if.end.i224.for.body.i220_crit_edge:              ; preds = %if.end.i224
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i220

do.end.i228:                                      ; preds = %if.end.i224
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %card.i, align 4
  %dev.i226 = getelementptr inbounds %struct.snd_card, ptr %46, i32 0, i32 27
  %47 = ptrtoint ptr %dev.i226 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i226, align 8
  %49 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %port, align 4
  %add8.i227 = add i32 %50, 16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.12, i32 noundef %add8.i227, i32 noundef %44) #14
  br label %snd_es1371_wait_src_ready.exit230

snd_es1371_wait_src_ready.exit230:                ; preds = %do.end.i228, %for.body.i220.snd_es1371_wait_src_ready.exit230_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !277
  tail call void @arm_heavy_mb() #11
  %51 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %52 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port, align 4
  %add60 = add i32 %53, 16
  %and61 = and i32 %add60, 1048575
  %add62 = or i32 %and61, -18874368
  %54 = inttoptr i32 %add62 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %54, i32 %51) #11, !srcloc !227
  br label %for.body67

for.body67:                                       ; preds = %for.body67.for.body67_crit_edge, %snd_es1371_wait_src_ready.exit230
  %t.3245 = phi i32 [ 0, %snd_es1371_wait_src_ready.exit230 ], [ %inc81, %for.body67.for.body67_crit_edge ]
  %55 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %port, align 4
  %add70 = add i32 %56, 20
  %and71 = and i32 %add70, 1048575
  %add72 = or i32 %and71, -18874368
  %57 = inttoptr i32 %add72 to ptr
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %57) #11, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !278
  %59 = and i32 %58, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool77.not = icmp ne i32 %59, 0
  %inc81 = add nuw nsw i32 %t.3245, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 40959, i32 %t.3245)
  %cmp65 = icmp ult i32 %t.3245, 40959
  %or.cond249 = select i1 %tobool77.not, i1 %cmp65, i1 false
  br i1 %or.cond249, label %for.body67.for.body67_crit_edge, label %for.body67.for.body86_crit_edge

for.body67.for.body86_crit_edge:                  ; preds = %for.body67
  br label %for.body86

for.body67.for.body67_crit_edge:                  ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body67

for.cond83:                                       ; preds = %for.body86
  %inc129 = add nuw nsw i32 %t.4246, 1
  %exitcond255.not = icmp eq i32 %inc129, 40960
  br i1 %exitcond255.not, label %for.end130, label %for.cond83.for.body86_crit_edge

for.cond83.for.body86_crit_edge:                  ; preds = %for.cond83
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body86

for.body86:                                       ; preds = %for.cond83.for.body86_crit_edge, %for.body67.for.body86_crit_edge
  %t.4246 = phi i32 [ %inc129, %for.cond83.for.body86_crit_edge ], [ 0, %for.body67.for.body86_crit_edge ]
  %60 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port, align 4
  %add89 = add i32 %61, 20
  %and90 = and i32 %add89, 1048575
  %add91 = or i32 %and90, -18874368
  %62 = inttoptr i32 %add91 to ptr
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %62) #11, !srcloc !229
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !279
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %tobool96.not = icmp sgt i32 %64, -1
  br i1 %tobool96.not, label %for.cond83, label %if.then97

if.then97:                                        ; preds = %for.body86
  %65 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pci.i, align 4
  %device.i232 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 8
  %67 = ptrtoint ptr %device.i232 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %device.i232, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30408, i16 %68)
  %cmp.i233 = icmp eq i16 %68, -30408
  br i1 %cmp.i233, label %if.then97.for.body103_crit_edge, label %if.then97.if.end123_crit_edge

if.then97.if.end123_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123

if.then97.for.body103_crit_edge:                  ; preds = %if.then97
  br label %for.body103

for.body103:                                      ; preds = %for.body103.for.body103_crit_edge, %if.then97.for.body103_crit_edge
  %t.5247 = phi i32 [ %inc113, %for.body103.for.body103_crit_edge ], [ 0, %if.then97.for.body103_crit_edge ]
  %69 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %port, align 4
  %and107 = and i32 %70, 1048575
  %add108 = or i32 %and107, -18874368
  %71 = inttoptr i32 %add108 to ptr
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %71) #11, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !280
  %inc113 = add nuw nsw i32 %t.5247, 1
  %exitcond257.not = icmp eq i32 %inc113, 100
  br i1 %exitcond257.not, label %for.end114, label %for.body103.for.body103_crit_edge

for.body103.for.body103_crit_edge:                ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body103

for.end114:                                       ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #13
  %73 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %port, align 4
  %add117 = add i32 %74, 20
  %and118 = and i32 %add117, 1048575
  %add119 = or i32 %and118, -18874368
  %75 = inttoptr i32 %add119 to ptr
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %75) #11, !srcloc !229
  %77 = tail call i32 @llvm.bswap.i32(i32 %76)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !281
  br label %if.end123

if.end123:                                        ; preds = %for.end114, %if.then97.if.end123_crit_edge
  %x.0 = phi i32 [ %77, %for.end114 ], [ %64, %if.then97.if.end123_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %src_mutex) #11
  %conv126 = trunc i32 %x.0 to i16
  br label %cleanup

for.end130:                                       ; preds = %for.cond83
  tail call void @mutex_unlock(ptr noundef %src_mutex) #11
  %inc132 = add nuw nsw i32 %fail.0, 1
  %exitcond256 = icmp eq i32 %inc132, 11
  br i1 %exitcond256, label %do.end138, label %for.end130.__again_crit_edge

for.end130.__again_crit_edge:                     ; preds = %for.end130
  call void @__sanitizer_cov_trace_pc() #13
  br label %__again

do.end138:                                        ; preds = %for.end130
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %card.i, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %79, i32 0, i32 27
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev, align 8
  %82 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %port, align 4
  %add140 = add i32 %83, 20
  %and145 = and i32 %add140, 1048575
  %add146 = or i32 %and145, -18874368
  %84 = inttoptr i32 %add146 to ptr
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %84) #11, !srcloc !229
  %86 = tail call i32 @llvm.bswap.i32(i32 %85)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !282
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.22, i32 noundef %add140, i32 noundef %conv, i32 noundef %86) #14
  br label %cleanup

for.end154:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %src_mutex) #11
  %87 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %card.i, align 4
  %dev160 = getelementptr inbounds %struct.snd_card, ptr %88, i32 0, i32 27
  %89 = ptrtoint ptr %dev160 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev160, align 8
  %91 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %port, align 4
  %add162 = add i32 %92, 20
  %and166 = and i32 %add162, 1048575
  %add167 = or i32 %and166, -18874368
  %93 = inttoptr i32 %add167 to ptr
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %93) #11, !srcloc !229
  %95 = tail call i32 @llvm.bswap.i32(i32 %94)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !283
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.25, i32 noundef %add162, i32 noundef %95) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end154, %do.end138, %if.end123
  %retval.0 = phi i16 [ %conv126, %if.end123 ], [ 0, %do.end138 ], [ 0, %for.end154 ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_es1371_codec_wait(ptr nocapture noundef readonly %ac97) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @msleep(i32 noundef 750) #11
  %call = tail call zeroext i16 @snd_es1371_codec_read(ptr noundef %ac97, i16 noundef zeroext 0)
  %call1 = tail call zeroext i16 @snd_es1371_codec_read(ptr noundef %ac97, i16 noundef zeroext 124)
  %call2 = tail call zeroext i16 @snd_es1371_codec_read(ptr noundef %ac97, i16 noundef zeroext 126)
  tail call void @msleep(i32 noundef 50) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_bus(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_ensoniq_mixer_free_ac97(ptr nocapture noundef readonly %ac97) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %u = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %u, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_mixer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1371_spdif_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %ctrl = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrl, align 4
  %and = lshr i32 %3, 26
  %and.lobit = and i32 %and, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and.lobit, ptr %value, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1371_spdif_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, i32 0, i32 67108864
  %cond4 = select i1 %tobool.not, i32 0, i32 262144
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %ctrl = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctrl, align 4
  %and = and i32 %5, 67108864
  %6 = xor i32 %and, %cond
  %cmp = lshr exact i32 %6, 26
  %and6 = and i32 %5, -67108865
  %or = or i32 %and6, %cond
  store i32 %or, ptr %ctrl, align 4
  %cssr = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %cssr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cssr, align 4
  %and8 = and i32 %8, -262145
  %or10 = or i32 %and8, %cond4
  store i32 %or10, ptr %cssr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !284
  tail call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ctrl, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %port = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %and12 = and i32 %13, 1048575
  %add13 = or i32 %and12, -18874368
  %14 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %11) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !285
  tail call void @arm_heavy_mb() #11
  %15 = ptrtoint ptr %cssr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cssr, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add19 = add i32 %19, 4
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %20 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 %17) #11, !srcloc !227
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  ret i32 %cmp
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_ens1373_spdif_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
define internal i32 @snd_ens1373_spdif_default_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %spdif_default = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %spdif_default to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spdif_default, align 4
  %conv = trunc i32 %3 to i8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %value, align 8
  %5 = load i32, ptr %spdif_default, align 4
  %shr2 = lshr i32 %5, 8
  %conv4 = trunc i32 %shr2 to i8
  %arrayidx7 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv4, ptr %arrayidx7, align 1
  %7 = load i32, ptr %spdif_default, align 4
  %shr9 = lshr i32 %7, 16
  %conv11 = trunc i32 %shr9 to i8
  %arrayidx14 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv11, ptr %arrayidx14, align 2
  %9 = load i32, ptr %spdif_default, align 4
  %shr16 = lshr i32 %9, 24
  %conv18 = trunc i32 %shr16 to i8
  %arrayidx21 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv18, ptr %arrayidx21, align 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ens1373_spdif_default_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %value, align 8
  %conv = zext i8 %3 to i32
  %arrayidx3 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %shl5 = shl nuw nsw i32 %conv4, 8
  %or = or i32 %shl5, %conv
  %arrayidx8 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8, align 2
  %conv9 = zext i8 %7 to i32
  %shl10 = shl nuw nsw i32 %conv9, 16
  %or11 = or i32 %or, %shl10
  %arrayidx14 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %9 to i32
  %shl16 = shl nuw i32 %conv15, 24
  %or17 = or i32 %or11, %shl16
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %spdif_default = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 32
  %10 = ptrtoint ptr %spdif_default to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %spdif_default, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %or17)
  %cmp = icmp ne i32 %11, %or17
  %12 = ptrtoint ptr %spdif_default to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or17, ptr %spdif_default, align 4
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %playback1_substream = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %playback1_substream to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %playback1_substream, align 4
  %cmp20 = icmp eq ptr %14, null
  br i1 %cmp20, label %land.lhs.true22, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true22:                                  ; preds = %land.lhs.true
  %playback2_substream = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 20
  %15 = ptrtoint ptr %playback2_substream to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %playback2_substream, align 4
  %cmp23 = icmp eq ptr %16, null
  br i1 %cmp23, label %do.body, label %land.lhs.true22.if.end_crit_edge

land.lhs.true22.if.end_crit_edge:                 ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body:                                          ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !286
  tail call void @arm_heavy_mb() #11
  %17 = tail call i32 @llvm.bswap.i32(i32 %or17)
  %port = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add = add i32 %19, 28
  %and = and i32 %add, 1048575
  %add25 = or i32 %and, -18874368
  %20 = inttoptr i32 %add25 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 %17) #11, !srcloc !227
  br label %if.end

if.end:                                           ; preds = %do.body, %land.lhs.true22.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %conv18 = zext i1 %cmp to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  ret i32 %conv18
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_ens1373_spdif_mask_get(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %ucontrol) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ens1373_spdif_stream_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %spdif_stream = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %spdif_stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spdif_stream, align 4
  %conv = trunc i32 %3 to i8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %value, align 8
  %5 = load i32, ptr %spdif_stream, align 4
  %shr2 = lshr i32 %5, 8
  %conv4 = trunc i32 %shr2 to i8
  %arrayidx7 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv4, ptr %arrayidx7, align 1
  %7 = load i32, ptr %spdif_stream, align 4
  %shr9 = lshr i32 %7, 16
  %conv11 = trunc i32 %shr9 to i8
  %arrayidx14 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv11, ptr %arrayidx14, align 2
  %9 = load i32, ptr %spdif_stream, align 4
  %shr16 = lshr i32 %9, 24
  %conv18 = trunc i32 %shr16 to i8
  %arrayidx21 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv18, ptr %arrayidx21, align 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ens1373_spdif_stream_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %value, align 8
  %conv = zext i8 %3 to i32
  %arrayidx3 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %shl5 = shl nuw nsw i32 %conv4, 8
  %or = or i32 %shl5, %conv
  %arrayidx8 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8, align 2
  %conv9 = zext i8 %7 to i32
  %shl10 = shl nuw nsw i32 %conv9, 16
  %or11 = or i32 %or, %shl10
  %arrayidx14 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %9 to i32
  %shl16 = shl nuw i32 %conv15, 24
  %or17 = or i32 %or11, %shl16
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %spdif_stream = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 33
  %10 = ptrtoint ptr %spdif_stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %spdif_stream, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %or17)
  %cmp = icmp ne i32 %11, %or17
  %12 = ptrtoint ptr %spdif_stream to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or17, ptr %spdif_stream, align 4
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %playback1_substream = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %playback1_substream to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %playback1_substream, align 4
  %cmp20.not = icmp eq ptr %14, null
  br i1 %cmp20.not, label %lor.lhs.false, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

lor.lhs.false:                                    ; preds = %land.lhs.true
  %playback2_substream = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 20
  %15 = ptrtoint ptr %playback2_substream to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %playback2_substream, align 4
  %cmp22.not = icmp eq ptr %16, null
  br i1 %cmp22.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !287
  tail call void @arm_heavy_mb() #11
  %17 = tail call i32 @llvm.bswap.i32(i32 %or17)
  %port = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add = add i32 %19, 28
  %and = and i32 %add, 1048575
  %add24 = or i32 %and, -18874368
  %20 = inttoptr i32 %add24 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 %17) #11, !srcloc !227
  br label %if.end

if.end:                                           ; preds = %do.body, %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %conv18 = zext i1 %cmp to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  ret i32 %conv18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1373_rear_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %cssr = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %cssr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cssr, align 4
  %and = and i32 %3, 218103808
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %and)
  %cmp = icmp eq i32 %and, 67108864
  %spec.select = zext i1 %cmp to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select, ptr %value, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1373_rear_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, i32 150994944, i32 67108864
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %cssr = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %cssr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cssr, align 4
  %and = and i32 %5, 218103808
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %cond)
  %cmp = icmp ne i32 %and, %cond
  %conv = zext i1 %cmp to i32
  %and2 = and i32 %5, -218103809
  %or = or i32 %and2, %cond
  %6 = ptrtoint ptr %cssr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %cssr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !288
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %cssr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cssr, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %port = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %add = add i32 %11, 4
  %and5 = and i32 %add, 1048575
  %add6 = or i32 %and5, -18874368
  %12 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %12, i32 %9) #11, !srcloc !227
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1373_line_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %ctrl = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrl, align 4
  %and = lshr i32 %3, 18
  %and.lobit = and i32 %and, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and.lobit, ptr %value, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_es1373_line_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %ctrl1 = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrl1, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %and = and i32 %3, -262145
  %masksel = select i1 %tobool.not, i32 0, i32 262144
  %storemerge = or i32 %masksel, %and
  %6 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %storemerge, ptr %ctrl1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %storemerge)
  %cmp = icmp ne i32 %3, %storemerge
  br i1 %cmp, label %do.body, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !289
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ctrl1, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %port = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %and8 = and i32 %11, 1048575
  %add9 = or i32 %and8, -18874368
  %12 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %12, i32 %9) #11, !srcloc !227
  br label %if.end10

if.end10:                                         ; preds = %do.body, %entry.if.end10_crit_edge
  %conv = zext i1 %cmp to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  ret i32 %conv
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
define internal i32 @snd_ensoniq_playback1_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %mode = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %or = or i32 %5, 1
  store i32 %or, ptr %mode, align 4
  %playback1_substream = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %playback1_substream to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %substream, ptr %playback1_substream, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %7 = call ptr @memcpy(ptr %hw, ptr @snd_ensoniq_playback1, i32 64)
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #11
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %spdif = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 31
  %8 = ptrtoint ptr %spdif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %spdif, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %playback2_substream = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %playback2_substream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %playback2_substream, align 4
  %cmp = icmp eq ptr %11, null
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %spdif_default = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 32
  %12 = ptrtoint ptr %spdif_default to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %spdif_default, align 4
  %spdif_stream = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 33
  %14 = ptrtoint ptr %spdif_stream to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %spdif_stream, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  %call = tail call i32 @snd_pcm_hw_constraint_ratdens(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @snd_es1371_hw_constraints_dac_clock) #11
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ensoniq_playback1_close(ptr nocapture noundef readonly %substream) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %playback1_substream = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %playback1_substream to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %playback1_substream, align 4
  %mode = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode, align 4
  %and = and i32 %4, -2
  store i32 %and, ptr %mode, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_playback1_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %p1_dma_size = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %p1_dma_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div1.i.i, ptr %p1_dma_size, align 4
  %9 = load ptr, ptr %runtime1, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i112 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 21
  %12 = ptrtoint ptr %frame_bits.i.i112 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_bits.i.i112, align 8
  %mul.i.i113 = mul i32 %13, %11
  %div1.i.i114 = lshr i32 %mul.i.i113, 3
  %p1_period_size = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 25
  %14 = ptrtoint ptr %p1_period_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div1.i.i114, ptr %p1_period_size, align 4
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %15 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %format, align 4
  %call3 = tail call i32 @snd_pcm_format_width(i32 noundef %16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call3)
  %cmp = icmp eq i32 %call3, 16
  %spec.select = select i1 %cmp, i32 2, i32 0
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %17 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp4 = icmp ugt i32 %18, 1
  %or6 = zext i1 %cmp4 to i32
  %mode.1 = or i32 %spec.select, %or6
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %ctrl = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctrl, align 4
  %and = and i32 %20, -65
  store i32 %and, ptr %ctrl, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %21 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %22)
  %cmp8 = icmp eq i32 %22, 48000
  %and13 = and i32 %20, 2147483583
  %or11 = or i32 %and, -2147483648
  %storemerge = select i1 %cmp8, i32 %or11, i32 %and13
  %23 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %storemerge, ptr %ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !290
  tail call void @arm_heavy_mb() #11
  %24 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ctrl, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %port = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %and16 = and i32 %28, 1048575
  %add17 = or i32 %and16, -18874368
  %29 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %29, i32 %26) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !291
  tail call void @arm_heavy_mb() #11
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port, align 4
  %add23 = add i32 %31, 12
  %and24 = and i32 %add23, 1048575
  %add25 = or i32 %and24, -18874368
  %32 = inttoptr i32 %add25 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %32, i32 201326592) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !292
  tail call void @arm_heavy_mb() #11
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %33 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma_addr, align 8
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port, align 4
  %add31 = add i32 %37, 48
  %and32 = and i32 %add31, 1048575
  %add33 = or i32 %and32, -18874368
  %38 = inttoptr i32 %add33 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %38, i32 %35) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !293
  tail call void @arm_heavy_mb() #11
  %39 = ptrtoint ptr %p1_dma_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %p1_dma_size, align 4
  %shr = lshr i32 %40, 2
  %sub = add nsw i32 %shr, -1
  %41 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port, align 4
  %add40 = add i32 %43, 52
  %and41 = and i32 %add40, 1048575
  %add42 = or i32 %and41, -18874368
  %44 = inttoptr i32 %add42 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %44, i32 %41) #11, !srcloc !227
  %sctrl = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 10
  %45 = ptrtoint ptr %sctrl to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sctrl, align 4
  %and44 = and i32 %46, -10628
  %or46 = or i32 %mode.1, %and44
  %or48 = or i32 %or46, 256
  store i32 %or48, ptr %sctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !294
  tail call void @arm_heavy_mb() #11
  %47 = ptrtoint ptr %sctrl to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sctrl, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %50 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port, align 4
  %add54 = add i32 %51, 32
  %and55 = and i32 %add54, 1048575
  %add56 = or i32 %and55, -18874368
  %52 = inttoptr i32 %add56 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %52, i32 %49) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !295
  tail call void @arm_heavy_mb() #11
  %53 = ptrtoint ptr %p1_period_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %p1_period_size, align 4
  %arrayidx = getelementptr [4 x i32], ptr @snd_ensoniq_sample_shift, i32 0, i32 %mode.1
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx, align 4
  %shr62 = lshr i32 %54, %56
  %sub63 = add i32 %shr62, -1
  %57 = tail call i32 @llvm.bswap.i32(i32 %sub63)
  %58 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %port, align 4
  %add65 = add i32 %59, 36
  %and66 = and i32 %add65, 1048575
  %add67 = or i32 %and66, -18874368
  %60 = inttoptr i32 %add67 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %60, i32 %57) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !296
  tail call void @arm_heavy_mb() #11
  %61 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ctrl, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %64 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %port, align 4
  %and75 = and i32 %65, 1048575
  %add76 = or i32 %and75, -18874368
  %66 = inttoptr i32 %add76 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %66, i32 %63) #11, !srcloc !227
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  %67 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rate, align 4
  tail call fastcc void @snd_es1371_dac1_rate(ptr noundef %1, i32 noundef %68)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_trigger(ptr noundef %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %cmd, label %entry.cleanup89_crit_edge [
    i32 3, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge161
    i32 1, label %entry.sw.bb28_crit_edge
    i32 0, label %entry.sw.bb28_crit_edge162
  ]

entry.sw.bb28_crit_edge162:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb28

entry.sw.bb28_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb28

entry.sw.bb_crit_edge161:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.cleanup89_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup89

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge161
  %group = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 18
  %3 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %group, align 4
  %substreams = getelementptr inbounds %struct.snd_pcm_group, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %substreams to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn138151 = load ptr, ptr %substreams, align 4
  %cmp.not154 = icmp eq ptr %.pn138151, %substreams
  br i1 %cmp.not154, label %sw.bb.for.end_crit_edge, label %for.body.lr.ph

sw.bb.for.end_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %sw.bb
  %playback1_substream = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 19
  %playback2_substream = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 20
  %capture_substream = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn138156 = phi ptr [ %.pn138151, %for.body.lr.ph ], [ %.pn138, %for.inc.for.body_crit_edge ]
  %what.0155 = phi i32 [ 0, %for.body.lr.ph ], [ %what.1, %for.inc.for.body_crit_edge ]
  %s.0157 = getelementptr i8, ptr %.pn138156, i32 -140
  %6 = ptrtoint ptr %playback1_substream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %playback1_substream, align 4
  %cmp3 = icmp eq ptr %s.0157, %7
  br i1 %cmp3, label %for.body.for.inc.sink.split_crit_edge, label %if.else

for.body.for.inc.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

if.else:                                          ; preds = %for.body
  %8 = ptrtoint ptr %playback2_substream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %playback2_substream, align 4
  %cmp4 = icmp eq ptr %s.0157, %9
  br i1 %cmp4, label %if.else.for.inc.sink.split_crit_edge, label %if.else7

if.else.for.inc.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.sink.split

if.else7:                                         ; preds = %if.else
  %10 = ptrtoint ptr %capture_substream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %capture_substream, align 4
  %cmp8 = icmp eq ptr %s.0157, %11
  br i1 %cmp8, label %if.else7.cleanup89_crit_edge, label %if.else7.for.inc_crit_edge

if.else7.for.inc_crit_edge:                       ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.else7.cleanup89_crit_edge:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup89

for.inc.sink.split:                               ; preds = %if.else.for.inc.sink.split_crit_edge, %for.body.for.inc.sink.split_crit_edge
  %.sink = phi i32 [ 2048, %for.body.for.inc.sink.split_crit_edge ], [ 4096, %if.else.for.inc.sink.split_crit_edge ]
  %or = or i32 %what.0155, %.sink
  %runtime.i = getelementptr i8, ptr %.pn138156, i32 -20
  %12 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %runtime.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %substream, ptr %13, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else7.for.inc_crit_edge
  %what.1 = phi i32 [ %what.0155, %if.else7.for.inc_crit_edge ], [ %or, %for.inc.sink.split ]
  %15 = ptrtoint ptr %.pn138156 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn138 = load ptr, ptr %.pn138156, align 4
  %16 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %group, align 4
  %substreams2 = getelementptr inbounds %struct.snd_pcm_group, ptr %17, i32 0, i32 2
  %cmp.not = icmp eq ptr %.pn138, %substreams2
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sw.bb.for.end_crit_edge
  %what.0.lcssa = phi i32 [ 0, %sw.bb.for.end_crit_edge ], [ %what.1, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cmd)
  %cmp17 = icmp eq i32 %cmd, 3
  br i1 %cmp17, label %if.then18, label %if.else20

if.then18:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %sctrl = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %sctrl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sctrl, align 4
  %or19 = or i32 %19, %what.0.lcssa
  store i32 %or19, ptr %sctrl, align 4
  br label %do.body

if.else20:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %neg = xor i32 %what.0.lcssa, -1
  %sctrl21 = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %sctrl21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sctrl21, align 4
  %and = and i32 %21, %neg
  store i32 %and, ptr %sctrl21, align 4
  br label %do.body

do.body:                                          ; preds = %if.else20, %if.then18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !297
  tail call void @arm_heavy_mb() #11
  %sctrl23 = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 10
  %22 = ptrtoint ptr %sctrl23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sctrl23, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %port = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port, align 4
  %add = add i32 %26, 32
  %and24 = and i32 %add, 1048575
  %add25 = or i32 %and24, -18874368
  %27 = inttoptr i32 %add25 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %27, i32 %24) #11, !srcloc !227
  br label %cleanup89.sink.split

sw.bb28:                                          ; preds = %entry.sw.bb28_crit_edge, %entry.sw.bb28_crit_edge162
  %group32 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 18
  %28 = ptrtoint ptr %group32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %group32, align 4
  %substreams33 = getelementptr inbounds %struct.snd_pcm_group, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %substreams33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn144 = load ptr, ptr %substreams33, align 4
  %cmp41.not147 = icmp eq ptr %.pn144, %substreams33
  br i1 %cmp41.not147, label %sw.bb28.for.end67_crit_edge, label %for.body43.lr.ph

sw.bb28.for.end67_crit_edge:                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end67

for.body43.lr.ph:                                 ; preds = %sw.bb28
  %playback1_substream44 = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 19
  %playback2_substream49 = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 20
  %capture_substream54 = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 21
  br label %for.body43

for.body43:                                       ; preds = %for.inc61.for.body43_crit_edge, %for.body43.lr.ph
  %.pn149 = phi ptr [ %.pn144, %for.body43.lr.ph ], [ %.pn, %for.inc61.for.body43_crit_edge ]
  %what29.0148 = phi i32 [ 0, %for.body43.lr.ph ], [ %what29.1, %for.inc61.for.body43_crit_edge ]
  %s30.0150 = getelementptr i8, ptr %.pn149, i32 -140
  %31 = ptrtoint ptr %playback1_substream44 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %playback1_substream44, align 4
  %cmp45 = icmp eq ptr %s30.0150, %32
  br i1 %cmp45, label %for.body43.for.inc61.sink.split_crit_edge, label %if.else48

for.body43.for.inc61.sink.split_crit_edge:        ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc61.sink.split

if.else48:                                        ; preds = %for.body43
  %33 = ptrtoint ptr %playback2_substream49 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %playback2_substream49, align 4
  %cmp50 = icmp eq ptr %s30.0150, %34
  br i1 %cmp50, label %if.else48.for.inc61.sink.split_crit_edge, label %if.else53

if.else48.for.inc61.sink.split_crit_edge:         ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc61.sink.split

if.else53:                                        ; preds = %if.else48
  %35 = ptrtoint ptr %capture_substream54 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %capture_substream54, align 4
  %cmp55 = icmp eq ptr %s30.0150, %36
  br i1 %cmp55, label %if.else53.for.inc61.sink.split_crit_edge, label %if.else53.for.inc61_crit_edge

if.else53.for.inc61_crit_edge:                    ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc61

if.else53.for.inc61.sink.split_crit_edge:         ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc61.sink.split

for.inc61.sink.split:                             ; preds = %if.else53.for.inc61.sink.split_crit_edge, %if.else48.for.inc61.sink.split_crit_edge, %for.body43.for.inc61.sink.split_crit_edge
  %.sink160 = phi i32 [ 64, %for.body43.for.inc61.sink.split_crit_edge ], [ 32, %if.else48.for.inc61.sink.split_crit_edge ], [ 16, %if.else53.for.inc61.sink.split_crit_edge ]
  %or47 = or i32 %what29.0148, %.sink160
  %runtime.i140 = getelementptr i8, ptr %.pn149, i32 -20
  %37 = ptrtoint ptr %runtime.i140 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %runtime.i140, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %substream, ptr %38, align 8
  br label %for.inc61

for.inc61:                                        ; preds = %for.inc61.sink.split, %if.else53.for.inc61_crit_edge
  %what29.1 = phi i32 [ %what29.0148, %if.else53.for.inc61_crit_edge ], [ %or47, %for.inc61.sink.split ]
  %40 = ptrtoint ptr %.pn149 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn = load ptr, ptr %.pn149, align 4
  %41 = ptrtoint ptr %group32 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %group32, align 4
  %substreams40 = getelementptr inbounds %struct.snd_pcm_group, ptr %42, i32 0, i32 2
  %cmp41.not = icmp eq ptr %.pn, %substreams40
  br i1 %cmp41.not, label %for.inc61.for.end67_crit_edge, label %for.inc61.for.body43_crit_edge

for.inc61.for.body43_crit_edge:                   ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body43

for.inc61.for.end67_crit_edge:                    ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end67

for.end67:                                        ; preds = %for.inc61.for.end67_crit_edge, %sw.bb28.for.end67_crit_edge
  %what29.0.lcssa = phi i32 [ 0, %sw.bb28.for.end67_crit_edge ], [ %what29.1, %for.inc61.for.end67_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cmd)
  %cmp69 = icmp eq i32 %cmd, 1
  br i1 %cmp69, label %if.then70, label %if.else72

if.then70:                                        ; preds = %for.end67
  call void @__sanitizer_cov_trace_pc() #13
  %ctrl = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 9
  %43 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ctrl, align 4
  %or71 = or i32 %44, %what29.0.lcssa
  store i32 %or71, ptr %ctrl, align 4
  br label %do.body77

if.else72:                                        ; preds = %for.end67
  call void @__sanitizer_cov_trace_pc() #13
  %neg73 = xor i32 %what29.0.lcssa, -1
  %ctrl74 = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 9
  %45 = ptrtoint ptr %ctrl74 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ctrl74, align 4
  %and75 = and i32 %46, %neg73
  store i32 %and75, ptr %ctrl74, align 4
  br label %do.body77

do.body77:                                        ; preds = %if.else72, %if.then70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !298
  tail call void @arm_heavy_mb() #11
  %ctrl80 = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 9
  %47 = ptrtoint ptr %ctrl80 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ctrl80, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %port81 = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 6
  %50 = ptrtoint ptr %port81 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port81, align 4
  %and83 = and i32 %51, 1048575
  %add84 = or i32 %and83, -18874368
  %52 = inttoptr i32 %add84 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %52, i32 %49) #11, !srcloc !227
  br label %cleanup89.sink.split

cleanup89.sink.split:                             ; preds = %do.body77, %do.body
  tail call void @_raw_spin_unlock(ptr noundef %1) #11
  br label %cleanup89

cleanup89:                                        ; preds = %cleanup89.sink.split, %if.else7.cleanup89_crit_edge, %entry.cleanup89_crit_edge
  %retval.1 = phi i32 [ -22, %entry.cleanup89_crit_edge ], [ 0, %cleanup89.sink.split ], [ -22, %if.else7.cleanup89_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_playback1_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #11
  %port = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %and = and i32 %3, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %4) #11, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !299
  %6 = and i32 %5, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !300
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %add5 = add i32 %8, 12
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %9 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 201326592) #11, !srcloc !227
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %add11 = add i32 %11, 52
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %12 = inttoptr i32 %add13 to ptr
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %12) #11, !srcloc !229
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !301
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %15 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %runtime, align 4
  %17 = lshr i32 %14, 11
  %mul.i = and i32 %17, 2097120
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 21
  %18 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %19
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %ptr.0 = phi i32 [ %div.i, %do.body ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %1) #11
  ret i32 %ptr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_ratdens(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_capture_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %mode = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %or = or i32 %5, 4
  store i32 %or, ptr %mode, align 4
  %capture_substream = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %capture_substream to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %substream, ptr %capture_substream, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %7 = call ptr @memcpy(ptr %hw, ptr @snd_ensoniq_capture, i32 64)
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #11
  %call = tail call i32 @snd_pcm_hw_constraint_ratnums(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @snd_es1371_hw_constraints_adc_clock) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_capture_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %capture_substream = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %capture_substream to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %capture_substream, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %mode = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode, align 4
  %and = and i32 %4, -5
  store i32 %and, ptr %mode, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_capture_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %c_dma_size = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 24
  %8 = ptrtoint ptr %c_dma_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div1.i.i, ptr %c_dma_size, align 4
  %9 = load ptr, ptr %runtime1, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i101 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 21
  %12 = ptrtoint ptr %frame_bits.i.i101 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_bits.i.i101, align 8
  %mul.i.i102 = mul i32 %13, %11
  %div1.i.i103 = lshr i32 %mul.i.i102, 3
  %c_period_size = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 27
  %14 = ptrtoint ptr %c_period_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div1.i.i103, ptr %c_period_size, align 4
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %15 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %format, align 4
  %call3 = tail call i32 @snd_pcm_format_width(i32 noundef %16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call3)
  %cmp = icmp eq i32 %call3, 16
  %spec.select = select i1 %cmp, i32 2, i32 0
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %17 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp4 = icmp ugt i32 %18, 1
  %or6 = zext i1 %cmp4 to i32
  %mode.1 = or i32 %spec.select, %or6
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %ctrl = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctrl, align 4
  %and = and i32 %20, -17
  store i32 %and, ptr %ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !302
  tail call void @arm_heavy_mb() #11
  %21 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ctrl, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %port = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 4
  %and9 = and i32 %25, 1048575
  %add10 = or i32 %and9, -18874368
  %26 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %26, i32 %23) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !303
  tail call void @arm_heavy_mb() #11
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %add16 = add i32 %28, 12
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %29 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %29, i32 218103808) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !304
  tail call void @arm_heavy_mb() #11
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %30 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_addr, align 8
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port, align 4
  %add24 = add i32 %34, 48
  %and25 = and i32 %add24, 1048575
  %add26 = or i32 %and25, -18874368
  %35 = inttoptr i32 %add26 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %35, i32 %32) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !305
  tail call void @arm_heavy_mb() #11
  %36 = ptrtoint ptr %c_dma_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %c_dma_size, align 4
  %shr = lshr i32 %37, 2
  %sub = add nsw i32 %shr, -1
  %38 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %39 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port, align 4
  %add33 = add i32 %40, 52
  %and34 = and i32 %add33, 1048575
  %add35 = or i32 %and34, -18874368
  %41 = inttoptr i32 %add35 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %41, i32 %38) #11, !srcloc !227
  %sctrl = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 10
  %42 = ptrtoint ptr %sctrl to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sctrl, align 4
  %and37 = and i32 %43, -33841
  %and38 = shl nuw nsw i32 %mode.1, 4
  %or39 = or i32 %and38, 1024
  %or41 = or i32 %and37, %or39
  store i32 %or41, ptr %sctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !306
  tail call void @arm_heavy_mb() #11
  %44 = ptrtoint ptr %sctrl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sctrl, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %47 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port, align 4
  %add47 = add i32 %48, 32
  %and48 = and i32 %add47, 1048575
  %add49 = or i32 %and48, -18874368
  %49 = inttoptr i32 %add49 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %49, i32 %46) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !307
  tail call void @arm_heavy_mb() #11
  %50 = ptrtoint ptr %c_period_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %c_period_size, align 4
  %arrayidx = getelementptr [4 x i32], ptr @snd_ensoniq_sample_shift, i32 0, i32 %mode.1
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx, align 4
  %shr55 = lshr i32 %51, %53
  %sub56 = add i32 %shr55, -1
  %54 = tail call i32 @llvm.bswap.i32(i32 %sub56)
  %55 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %port, align 4
  %add58 = add i32 %56, 44
  %and59 = and i32 %add58, 1048575
  %add60 = or i32 %and59, -18874368
  %57 = inttoptr i32 %add60 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %57, i32 %54) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !308
  tail call void @arm_heavy_mb() #11
  %58 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ctrl, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %61 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %port, align 4
  %and68 = and i32 %62, 1048575
  %add69 = or i32 %and68, -18874368
  %63 = inttoptr i32 %add69 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %63, i32 %60) #11, !srcloc !227
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %64 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rate, align 4
  tail call fastcc void @snd_es1371_adc_rate(ptr noundef %1, i32 noundef %65)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_capture_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #11
  %port = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %and = and i32 %3, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %4) #11, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !309
  %6 = and i32 %5, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !310
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %add5 = add i32 %8, 12
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %9 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 218103808) #11, !srcloc !227
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %add11 = add i32 %11, 52
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %12 = inttoptr i32 %add13 to ptr
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %12) #11, !srcloc !229
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !311
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %15 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %runtime, align 4
  %17 = lshr i32 %14, 11
  %mul.i = and i32 %17, 2097120
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 21
  %18 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %19
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %ptr.0 = phi i32 [ %div.i, %do.body ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %1) #11
  ret i32 %ptr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_ratnums(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_playback2_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %mode = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %or = or i32 %5, 2
  store i32 %or, ptr %mode, align 4
  %playback2_substream = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %playback2_substream to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %substream, ptr %playback2_substream, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %7 = call ptr @memcpy(ptr %hw, ptr @snd_ensoniq_playback2, i32 64)
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #11
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %spdif = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 31
  %8 = ptrtoint ptr %spdif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %spdif, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %playback1_substream = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %playback1_substream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %playback1_substream, align 4
  %cmp = icmp eq ptr %11, null
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %spdif_default = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 32
  %12 = ptrtoint ptr %spdif_default to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %spdif_default, align 4
  %spdif_stream = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 33
  %14 = ptrtoint ptr %spdif_stream to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %spdif_stream, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  %call = tail call i32 @snd_pcm_hw_constraint_ratdens(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @snd_es1371_hw_constraints_dac_clock) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_playback2_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %playback2_substream = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %playback2_substream to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %playback2_substream, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %mode = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode, align 4
  %and = and i32 %4, -3
  store i32 %and, ptr %mode, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_playback2_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %p2_dma_size = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 23
  %8 = ptrtoint ptr %p2_dma_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div1.i.i, ptr %p2_dma_size, align 4
  %9 = load ptr, ptr %runtime1, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i107 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 21
  %12 = ptrtoint ptr %frame_bits.i.i107 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_bits.i.i107, align 8
  %mul.i.i108 = mul i32 %13, %11
  %div1.i.i109 = lshr i32 %mul.i.i108, 3
  %p2_period_size = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 26
  %14 = ptrtoint ptr %p2_period_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div1.i.i109, ptr %p2_period_size, align 4
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %15 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %format, align 4
  %call3 = tail call i32 @snd_pcm_format_width(i32 noundef %16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call3)
  %cmp = icmp eq i32 %call3, 16
  %spec.select = select i1 %cmp, i32 2, i32 0
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %17 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp4 = icmp ugt i32 %18, 1
  %or6 = zext i1 %cmp4 to i32
  %mode.1 = or i32 %spec.select, %or6
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %ctrl = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctrl, align 4
  %and = and i32 %20, -33
  store i32 %and, ptr %ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !312
  tail call void @arm_heavy_mb() #11
  %21 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ctrl, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %port = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 4
  %and9 = and i32 %25, 1048575
  %add10 = or i32 %and9, -18874368
  %26 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %26, i32 %23) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !313
  tail call void @arm_heavy_mb() #11
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %add16 = add i32 %28, 12
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %29 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %29, i32 201326592) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !314
  tail call void @arm_heavy_mb() #11
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %30 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_addr, align 8
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port, align 4
  %add24 = add i32 %34, 56
  %and25 = and i32 %add24, 1048575
  %add26 = or i32 %and25, -18874368
  %35 = inttoptr i32 %add26 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %35, i32 %32) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !315
  tail call void @arm_heavy_mb() #11
  %36 = ptrtoint ptr %p2_dma_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %p2_dma_size, align 4
  %shr = lshr i32 %37, 2
  %sub = add nsw i32 %shr, -1
  %38 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %39 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port, align 4
  %add33 = add i32 %40, 60
  %and34 = and i32 %add33, 1048575
  %add35 = or i32 %and34, -18874368
  %41 = inttoptr i32 %add35 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %41, i32 %38) #11, !srcloc !227
  %sctrl = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 10
  %42 = ptrtoint ptr %sctrl to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sctrl, align 4
  %and37 = and i32 %43, -4149837
  %and38 = shl nuw nsw i32 %mode.1, 2
  %cond = select i1 %cmp, i32 1048576, i32 524288
  %or39 = or i32 %and38, %cond
  %or43 = or i32 %or39, 512
  %or46 = or i32 %and37, %or43
  store i32 %or46, ptr %sctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !316
  tail call void @arm_heavy_mb() #11
  %44 = ptrtoint ptr %sctrl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sctrl, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %47 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port, align 4
  %add52 = add i32 %48, 32
  %and53 = and i32 %add52, 1048575
  %add54 = or i32 %and53, -18874368
  %49 = inttoptr i32 %add54 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %49, i32 %46) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !317
  tail call void @arm_heavy_mb() #11
  %50 = ptrtoint ptr %p2_period_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %p2_period_size, align 4
  %arrayidx = getelementptr [4 x i32], ptr @snd_ensoniq_sample_shift, i32 0, i32 %mode.1
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx, align 4
  %shr60 = lshr i32 %51, %53
  %sub61 = add i32 %shr60, -1
  %54 = tail call i32 @llvm.bswap.i32(i32 %sub61)
  %55 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %port, align 4
  %add63 = add i32 %56, 40
  %and64 = and i32 %add63, 1048575
  %add65 = or i32 %and64, -18874368
  %57 = inttoptr i32 %add65 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %57, i32 %54) #11, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !318
  tail call void @arm_heavy_mb() #11
  %58 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ctrl, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %61 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %port, align 4
  %and73 = and i32 %62, 1048575
  %add74 = or i32 %and73, -18874368
  %63 = inttoptr i32 %add74 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %63, i32 %60) #11, !srcloc !227
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %64 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rate, align 4
  tail call fastcc void @snd_es1371_dac2_rate(ptr noundef %1, i32 noundef %65)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_playback2_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #11
  %port = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %and = and i32 %3, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %4) #11, !srcloc !229
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !319
  %6 = and i32 %5, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !320
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %add5 = add i32 %8, 12
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %9 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 201326592) #11, !srcloc !227
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %add11 = add i32 %11, 60
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %12 = inttoptr i32 %add13 to ptr
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %12) #11, !srcloc !229
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !321
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %15 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %runtime, align 4
  %17 = lshr i32 %14, 11
  %mul.i = and i32 %17, 2097120
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 21
  %18 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %19
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %ptr.0 = phi i32 [ %div.i, %do.body ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %1) #11
  ret i32 %ptr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_rawmidi_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_midi_output_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #11
  %uartm = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %uartm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uartm, align 4
  %or = or i32 %5, 1
  store i32 %or, ptr %uartm, align 4
  %midi_output = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 30
  %6 = ptrtoint ptr %midi_output to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %substream, ptr %midi_output, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !322
  tail call void @arm_heavy_mb() #11
  %port = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %add = add i32 %8, 9
  %and2 = and i32 %add, 1048575
  %add3 = or i32 %and2, -18874368
  %9 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 3) #11, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !323
  tail call void @arm_heavy_mb() #11
  %uartc = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 12
  %10 = ptrtoint ptr %uartc to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %uartc, align 4
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port, align 4
  %add8 = add i32 %12, 9
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %13 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 0) #11, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !324
  tail call void @arm_heavy_mb() #11
  %ctrl = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 9
  %14 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ctrl, align 4
  %or15 = or i32 %15, 8
  store i32 %or15, ptr %ctrl, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %or15)
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port, align 4
  %and18 = and i32 %18, 1048575
  %add19 = or i32 %and18, -18874368
  %19 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %19, i32 %16) #11, !srcloc !227
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %3) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_midi_output_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #11
  %uartm = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %uartm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uartm, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %uartc = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 12
  br i1 %tobool.not, label %do.body, label %do.body12

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %uartc to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %uartc, align 4
  %port = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %add = add i32 %8, 9
  %and1 = and i32 %add, 1048575
  %add2 = or i32 %and1, -18874368
  %9 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 0) #11, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !325
  tail call void @arm_heavy_mb() #11
  %ctrl = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 9
  %10 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctrl, align 4
  %and6 = and i32 %11, -9
  store i32 %and6, ptr %ctrl, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %and6)
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port, align 4
  %and9 = and i32 %14, 1048575
  %add10 = or i32 %and9, -18874368
  %15 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 %12) #11, !srcloc !227
  br label %if.end

do.body12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %uartc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %uartc, align 4
  %and16 = and i32 %17, -97
  store i32 %and16, ptr %uartc, align 4
  %conv = trunc i32 %and16 to i8
  %port17 = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %port17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port17, align 4
  %add18 = add i32 %19, 9
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %20 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv) #11, !srcloc !238
  br label %if.end

if.end:                                           ; preds = %do.body12, %do.body
  %midi_output = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 30
  %21 = ptrtoint ptr %midi_output to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %midi_output, align 4
  %22 = ptrtoint ptr %uartm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %uartm, align 4
  %and23 = and i32 %23, -2
  store i32 %and23, ptr %uartm, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %3) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ensoniq_midi_output_trigger(ptr noundef %substream, i32 noundef %up) #2 align 64 {
entry:
  %byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte) #11
  %4 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %byte, align 1, !annotation !224
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  %uartc48 = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 12
  %5 = ptrtoint ptr %uartc48 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %uartc48, align 4
  %7 = and i32 %6, 96
  br i1 %tobool.not, label %if.else47, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5 = icmp eq i32 %7, 0
  br i1 %cmp5, label %if.then7, label %if.then.if.end67_crit_edge

if.then.if.end67_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

if.then7:                                         ; preds = %if.then
  %or = or i32 %6, 32
  %8 = ptrtoint ptr %uartc48 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %uartc48, align 4
  %port = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 6
  %9 = and i32 %or, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %9)
  %cmp1283 = icmp eq i32 %9, 32
  br i1 %cmp1283, label %if.then7.land.rhs_crit_edge, label %if.then7.do.body36_crit_edge

if.then7.do.body36_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36

if.then7.land.rhs_crit_edge:                      ; preds = %if.then7
  br label %land.rhs

land.rhs:                                         ; preds = %if.end.land.rhs_crit_edge, %if.then7.land.rhs_crit_edge
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %add = add i32 %11, 9
  %and14 = and i32 %add, 1048575
  %add15 = or i32 %and14, -18874368
  %12 = inttoptr i32 %add15 to ptr
  %13 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #11, !srcloc !233
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !326
  %14 = and i8 %13, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool21.not = icmp eq i8 %14, 0
  br i1 %tobool21.not, label %land.rhs.do.body36_crit_edge, label %while.body

land.rhs.do.body36_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36

while.body:                                       ; preds = %land.rhs
  %call22 = call i32 @snd_rawmidi_transmit(ptr noundef %substream, ptr noundef nonnull %byte, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 1
  br i1 %cmp23.not, label %do.body28, label %if.then25

if.then25:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %uartc48 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %uartc48, align 4
  %and27 = and i32 %16, -97
  store i32 %and27, ptr %uartc48, align 4
  br label %if.end

do.body28:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !327
  call void @arm_heavy_mb() #11
  %17 = ptrtoint ptr %byte to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %byte, align 1
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port, align 4
  %add32 = add i32 %20, 8
  %and33 = and i32 %add32, 1048575
  %add34 = or i32 %and33, -18874368
  %21 = inttoptr i32 %add34 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %18) #11, !srcloc !238
  br label %if.end

if.end:                                           ; preds = %do.body28, %if.then25
  %22 = ptrtoint ptr %uartc48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %uartc48, align 4
  %24 = and i32 %23, 96
  %cmp12 = icmp eq i32 %24, 32
  br i1 %cmp12, label %if.end.land.rhs_crit_edge, label %if.end.do.body36_crit_edge

if.end.do.body36_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

do.body36:                                        ; preds = %if.end.do.body36_crit_edge, %land.rhs.do.body36_crit_edge, %if.then7.do.body36_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !328
  call void @arm_heavy_mb() #11
  %25 = ptrtoint ptr %uartc48 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %uartc48, align 4
  %conv40 = trunc i32 %26 to i8
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %add42 = add i32 %28, 9
  %and43 = and i32 %add42, 1048575
  %add44 = or i32 %and43, -18874368
  %29 = inttoptr i32 %add44 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %conv40) #11, !srcloc !238
  br label %if.end67

if.else47:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %7)
  %cmp51 = icmp eq i32 %7, 32
  br i1 %cmp51, label %if.then53, label %if.else47.if.end67_crit_edge

if.else47.if.end67_crit_edge:                     ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

if.then53:                                        ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #13
  %and55 = and i32 %6, -97
  %30 = ptrtoint ptr %uartc48 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and55, ptr %uartc48, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !329
  tail call void @arm_heavy_mb() #11
  %31 = ptrtoint ptr %uartc48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %uartc48, align 4
  %conv60 = trunc i32 %32 to i8
  %port61 = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 6
  %33 = ptrtoint ptr %port61 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port61, align 4
  %add62 = add i32 %34, 9
  %and63 = and i32 %add62, 1048575
  %add64 = or i32 %and63, -18874368
  %35 = inttoptr i32 %add64 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 %conv60) #11, !srcloc !238
  br label %if.end67

if.end67:                                         ; preds = %if.then53, %if.else47.if.end67_crit_edge, %do.body36, %if.then.if.end67_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call2) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_midi_input_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #11
  %uartm = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %uartm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uartm, align 4
  %or = or i32 %5, 2
  store i32 %or, ptr %uartm, align 4
  %midi_input = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 29
  %6 = ptrtoint ptr %midi_input to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %substream, ptr %midi_input, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !330
  tail call void @arm_heavy_mb() #11
  %port = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %add = add i32 %8, 9
  %and2 = and i32 %add, 1048575
  %add3 = or i32 %and2, -18874368
  %9 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 3) #11, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !331
  tail call void @arm_heavy_mb() #11
  %uartc = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 12
  %10 = ptrtoint ptr %uartc to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %uartc, align 4
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port, align 4
  %add8 = add i32 %12, 9
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %13 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 0) #11, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !332
  tail call void @arm_heavy_mb() #11
  %ctrl = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 9
  %14 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ctrl, align 4
  %or15 = or i32 %15, 8
  store i32 %or15, ptr %ctrl, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %or15)
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port, align 4
  %and18 = and i32 %18, 1048575
  %add19 = or i32 %and18, -18874368
  %19 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %19, i32 %16) #11, !srcloc !227
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %3) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_midi_input_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #11
  %uartm = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %uartm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uartm, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %uartc = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 12
  br i1 %tobool.not, label %do.body, label %do.body12

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %uartc to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %uartc, align 4
  %port = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %add = add i32 %8, 9
  %and1 = and i32 %add, 1048575
  %add2 = or i32 %and1, -18874368
  %9 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 0) #11, !srcloc !238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !333
  tail call void @arm_heavy_mb() #11
  %ctrl = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 9
  %10 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctrl, align 4
  %and6 = and i32 %11, -9
  store i32 %and6, ptr %ctrl, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %and6)
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port, align 4
  %and9 = and i32 %14, 1048575
  %add10 = or i32 %and9, -18874368
  %15 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 %12) #11, !srcloc !227
  br label %if.end

do.body12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %uartc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %uartc, align 4
  %and16 = and i32 %17, -129
  store i32 %and16, ptr %uartc, align 4
  %conv = trunc i32 %and16 to i8
  %port17 = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %port17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port17, align 4
  %add18 = add i32 %19, 9
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %20 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv) #11, !srcloc !238
  br label %if.end

if.end:                                           ; preds = %do.body12, %do.body
  %midi_input = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 29
  %21 = ptrtoint ptr %midi_input to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %midi_input, align 4
  %22 = ptrtoint ptr %uartm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %uartm, align 4
  %and23 = and i32 %23, -3
  store i32 %and23, ptr %uartm, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %3) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ensoniq_midi_input_trigger(ptr nocapture noundef readonly %substream, i32 noundef %up) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  %uartc26 = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %uartc26 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uartc26, align 4
  %and27 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool28.not, label %for.cond.preheader, label %if.then.if.end43_crit_edge

if.then.if.end43_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

for.cond.preheader:                               ; preds = %if.then
  %port = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %idx.056 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %add = add i32 %7, 8
  %and10 = and i32 %add, 1048575
  %add11 = or i32 %and10, -18874368
  %8 = inttoptr i32 %add11 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #11, !srcloc !233
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !334
  %inc = add nuw nsw i32 %idx.056, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %uartc26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uartc26, align 4
  %or = or i32 %11, 128
  store i32 %or, ptr %uartc26, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !335
  tail call void @arm_heavy_mb() #11
  %12 = ptrtoint ptr %uartc26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %uartc26, align 4
  %conv20 = trunc i32 %13 to i8
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 4
  %add22 = add i32 %15, 9
  %and23 = and i32 %add22, 1048575
  %add24 = or i32 %and23, -18874368
  %16 = inttoptr i32 %add24 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %conv20) #11, !srcloc !238
  br label %if.end43

if.else:                                          ; preds = %entry
  br i1 %tobool28.not, label %if.else.if.end43_crit_edge, label %if.then29

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %and31 = and i32 %5, -129
  %17 = ptrtoint ptr %uartc26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and31, ptr %uartc26, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !336
  tail call void @arm_heavy_mb() #11
  %18 = ptrtoint ptr %uartc26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %uartc26, align 4
  %conv36 = trunc i32 %19 to i8
  %port37 = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 6
  %20 = ptrtoint ptr %port37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port37, align 4
  %add38 = add i32 %21, 9
  %and39 = and i32 %add38, 1048575
  %add40 = or i32 %and39, -18874368
  %22 = inttoptr i32 %add40 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %conv36) #11, !srcloc !238
  br label %if.end43

if.end43:                                         ; preds = %if.then29, %if.else.if.end43_crit_edge, %for.end, %if.then.if.end43_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_set_phys(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__gameport_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %u = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 14
  %5 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %u, align 4
  tail call void @snd_ac97_suspend(ptr noundef %6) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  tail call fastcc void @snd_ensoniq_chip_init(ptr noundef %3)
  %u = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %u, align 4
  tail call void @snd_ac97_resume(ptr noundef %5) #11
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %6 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
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
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !67, !69, !71, !73, !75, !77, !79, !80, !82, !83, !85, !86, !87, !88, !89, !90, !91, !93, !95, !97, !98, !99, !100, !102, !104, !106, !107, !108, !110, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !193, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !208, !210, !211, !212, !213}
!llvm.module.flags = !{!215, !216, !217, !218, !219, !220, !221, !222}
!llvm.ident = !{!223}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/ens1370.c", i32 51, i32 1}
!2 = !{ptr @__UNIQUE_ID_file243, !3, !"__UNIQUE_ID_file243", i1 false, i1 false}
!3 = !{!"../sound/pci/ens1370.c", i32 52, i32 1}
!4 = !{ptr @__UNIQUE_ID_license244, !3, !"__UNIQUE_ID_license244", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description245, !6, !"__UNIQUE_ID_description245", i1 false, i1 false}
!6 = !{!"../sound/pci/ens1370.c", i32 57, i32 1}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/ens1370.c", i32 79, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype246, !8, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index247, !11, !"__UNIQUE_ID_index247", i1 false, i1 false}
!11 = !{!"../sound/pci/ens1370.c", i32 80, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/ens1370.c", i32 81, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype248, !13, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id249, !16, !"__UNIQUE_ID_id249", i1 false, i1 false}
!16 = !{!"../sound/pci/ens1370.c", i32 82, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/pci/ens1370.c", i32 83, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype250, !18, !"__UNIQUE_ID_enabletype250", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable251, !21, !"__UNIQUE_ID_enable251", i1 false, i1 false}
!21 = !{!"../sound/pci/ens1370.c", i32 84, i32 1}
!22 = !{ptr @__param_joystick_port, !23, !"__param_joystick_port", i1 false, i1 false}
!23 = !{!"../sound/pci/ens1370.c", i32 87, i32 1}
!24 = !{ptr @__UNIQUE_ID_joystick_porttype252, !23, !"__UNIQUE_ID_joystick_porttype252", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_joystick_port253, !26, !"__UNIQUE_ID_joystick_port253", i1 false, i1 false}
!26 = !{!"../sound/pci/ens1370.c", i32 88, i32 1}
!27 = !{ptr @__param_spdif, !28, !"__param_spdif", i1 false, i1 false}
!28 = !{!"../sound/pci/ens1370.c", i32 95, i32 1}
!29 = !{ptr @__UNIQUE_ID_spdiftype254, !28, !"__UNIQUE_ID_spdiftype254", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_spdif255, !31, !"__UNIQUE_ID_spdif255", i1 false, i1 false}
!31 = !{!"../sound/pci/ens1370.c", i32 96, i32 1}
!32 = !{ptr @__param_lineio, !33, !"__param_lineio", i1 false, i1 false}
!33 = !{!"../sound/pci/ens1370.c", i32 97, i32 1}
!34 = !{ptr @__UNIQUE_ID_lineiotype256, !33, !"__UNIQUE_ID_lineiotype256", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_lineio257, !36, !"__UNIQUE_ID_lineio257", i1 false, i1 false}
!36 = !{!"../sound/pci/ens1370.c", i32 98, i32 1}
!37 = !{ptr @__initcall__kmod_snd_ens1371__258_2381_ens137x_driver_init6, !38, !"__initcall__kmod_snd_ens1371__258_2381_ens137x_driver_init6", i1 false, i1 false}
!38 = !{!"../sound/pci/ens1370.c", i32 2381, i32 1}
!39 = !{ptr @__exitcall_ens137x_driver_exit, !38, !"__exitcall_ens137x_driver_exit", i1 false, i1 false}
!40 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!41 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!42 = !{ptr @index, !43, !"index", i1 false, i1 false}
!43 = !{!"../sound/pci/ens1370.c", i32 64, i32 12}
!44 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!45 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!46 = !{ptr @id, !47, !"id", i1 false, i1 false}
!47 = !{!"../sound/pci/ens1370.c", i32 65, i32 14}
!48 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!49 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!50 = !{ptr @enable, !51, !"enable", i1 false, i1 false}
!51 = !{!"../sound/pci/ens1370.c", i32 66, i32 13}
!52 = !{ptr @__param_str_joystick_port, !23, !"__param_str_joystick_port", i1 false, i1 false}
!53 = !{ptr @__param_arr_joystick_port, !23, !"__param_arr_joystick_port", i1 false, i1 false}
!54 = !{ptr @joystick_port, !55, !"joystick_port", i1 false, i1 false}
!55 = !{!"../sound/pci/ens1370.c", i32 69, i32 12}
!56 = !{ptr @__param_str_spdif, !28, !"__param_str_spdif", i1 false, i1 false}
!57 = !{ptr @__param_arr_spdif, !28, !"__param_arr_spdif", i1 false, i1 false}
!58 = !{ptr @spdif, !59, !"spdif", i1 false, i1 false}
!59 = !{!"../sound/pci/ens1370.c", i32 75, i32 12}
!60 = !{ptr @__param_str_lineio, !33, !"__param_str_lineio", i1 false, i1 false}
!61 = !{ptr @__param_arr_lineio, !33, !"__param_arr_lineio", i1 false, i1 false}
!62 = !{ptr @lineio, !63, !"lineio", i1 false, i1 false}
!63 = !{!"../sound/pci/ens1370.c", i32 76, i32 12}
!64 = !{ptr @.str, !38, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @ens137x_driver, !66, !"ens137x_driver", i1 false, i1 false}
!66 = !{!"../sound/pci/ens1370.c", i32 2372, i32 26}
!67 = !{ptr @snd_audiopci_ids, !68, !"snd_audiopci_ids", i1 false, i1 false}
!68 = !{!"../sound/pci/ens1370.c", i32 427, i32 35}
!69 = !{ptr @snd_audiopci_probe.dev, !70, !"dev", i1 false, i1 false}
!70 = !{!"../sound/pci/ens1370.c", i32 2310, i32 13}
!71 = distinct !{null, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/pci/ens1370.c", i32 2354, i32 23}
!73 = !{ptr @.str.2, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/pci/ens1370.c", i32 2356, i32 26}
!75 = !{ptr @.str.3, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/pci/ens1370.c", i32 2357, i32 26}
!77 = !{ptr @snd_ensoniq_create.__key, !78, !"__key", i1 false, i1 false}
!78 = !{!"../sound/pci/ens1370.c", i32 2025, i32 2}
!79 = !{ptr @.str.4, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @snd_ensoniq_create.__key.5, !81, !"__key", i1 false, i1 false}
!81 = !{!"../sound/pci/ens1370.c", i32 2026, i32 2}
!82 = !{ptr @.str.6, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.7, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/pci/ens1370.c", i32 2036, i32 3}
!85 = !{ptr @.str.8, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.9, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.10, !84, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.11, !84, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @snd_ensoniq_create._entry, !84, !"_entry", i1 false, i1 false}
!90 = !{ptr @snd_ensoniq_create._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @es1371_amplifier_hack, !92, !"es1371_amplifier_hack", i1 false, i1 false}
!92 = !{!"../sound/pci/ens1370.c", i32 1890, i32 35}
!93 = distinct !{null, !94, !"es1371_ac97_reset_hack", i1 false, i1 false}
!94 = !{!"../sound/pci/ens1370.c", i32 1898, i32 34}
!95 = !{ptr @.str.12, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/pci/ens1370.c", i32 506, i32 2}
!97 = !{ptr @.str.13, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @snd_es1371_wait_src_ready._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @snd_es1371_wait_src_ready._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.14, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/pci/ens1370.c", i32 1867, i32 38}
!102 = !{ptr @.str.15, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/pci/ens1370.c", i32 1851, i32 2}
!104 = !{ptr @.str.16, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/pci/ens1370.c", i32 1852, i32 2}
!106 = !{ptr @.str.17, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.18, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.19, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/ens1370.c", i32 1860, i32 2}
!110 = !{ptr @snd_ensoniq_1371_mixer.ops, !111, !"ops", i1 false, i1 false}
!111 = !{!"../sound/pci/ens1370.c", i32 1592, i32 39}
!112 = !{ptr @.str.20, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/ens1370.c", i32 630, i32 2}
!114 = !{ptr @.str.21, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @snd_es1371_codec_write._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @snd_es1371_codec_write._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.22, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/pci/ens1370.c", i32 688, i32 5}
!119 = !{ptr @.str.23, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @snd_es1371_codec_read._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @snd_es1371_codec_read._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.25, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/pci/ens1370.c", i32 698, i32 2}
!124 = !{ptr @snd_es1371_codec_read._entry.24, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @snd_es1371_codec_read._entry_ptr.26, !123, !"_entry_ptr", i1 false, i1 false}
!126 = distinct !{null, !127, !"es1371_spdif_present", i1 false, i1 false}
!127 = !{!"../sound/pci/ens1370.c", i32 1570, i32 34}
!128 = !{ptr @.str.27, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/pci/ens1370.c", i32 1430, i32 2}
!130 = !{ptr @.str.28, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/pci/ens1370.c", i32 1433, i32 12}
!132 = !{ptr @.str.29, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/pci/ens1370.c", i32 1441, i32 12}
!134 = !{ptr @.str.30, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/pci/ens1370.c", i32 1447, i32 12}
!136 = !{ptr @snd_es1371_mixer_spdif, !137, !"snd_es1371_mixer_spdif", i1 false, i1 false}
!137 = !{!"../sound/pci/ens1370.c", i32 1429, i32 38}
!138 = !{ptr @.str.31, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/pci/ens1370.c", i32 1494, i32 11}
!140 = !{ptr @snd_ens1373_rear, !141, !"snd_ens1373_rear", i1 false, i1 false}
!141 = !{!"../sound/pci/ens1370.c", i32 1491, i32 38}
!142 = !{ptr @ens1373_line_quirk, !143, !"ens1373_line_quirk", i1 false, i1 false}
!143 = !{!"../sound/pci/ens1370.c", i32 1579, i32 35}
!144 = !{ptr @.str.32, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/pci/ens1370.c", i32 1539, i32 11}
!146 = !{ptr @snd_ens1373_line, !147, !"snd_ens1373_line", i1 false, i1 false}
!147 = !{!"../sound/pci/ens1370.c", i32 1536, i32 38}
!148 = !{ptr @.str.33, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/pci/ens1370.c", i32 1234, i32 35}
!150 = !{ptr @.str.34, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/pci/ens1370.c", i32 1247, i32 20}
!152 = !{ptr @snd_ensoniq_playback1_ops, !153, !"snd_ensoniq_playback1_ops", i1 false, i1 false}
!153 = !{!"../sound/pci/ens1370.c", i32 1197, i32 33}
!154 = !{ptr @snd_ensoniq_playback1, !155, !"snd_ensoniq_playback1", i1 false, i1 false}
!155 = !{!"../sound/pci/ens1370.c", i32 1029, i32 38}
!156 = !{ptr @snd_es1371_hw_constraints_dac_clock, !157, !"snd_es1371_hw_constraints_dac_clock", i1 false, i1 false}
!157 = !{!"../sound/pci/ens1370.c", i32 472, i32 51}
!158 = !{ptr @es1371_dac_clock, !159, !"es1371_dac_clock", i1 false, i1 false}
!159 = !{!"../sound/pci/ens1370.c", i32 466, i32 32}
!160 = !{ptr @snd_ensoniq_sample_shift, !161, !"snd_ensoniq_sample_shift", i1 false, i1 false}
!161 = !{!"../sound/pci/ens1370.c", i32 487, i32 27}
!162 = !{ptr @snd_ensoniq_capture_ops, !163, !"snd_ensoniq_capture_ops", i1 false, i1 false}
!163 = !{!"../sound/pci/ens1370.c", i32 1213, i32 33}
!164 = !{ptr @snd_ensoniq_capture, !165, !"snd_ensoniq_capture", i1 false, i1 false}
!165 = !{!"../sound/pci/ens1370.c", i32 1076, i32 38}
!166 = !{ptr @snd_es1371_hw_constraints_adc_clock, !167, !"snd_es1371_hw_constraints_adc_clock", i1 false, i1 false}
!167 = !{!"../sound/pci/ens1370.c", i32 482, i32 51}
!168 = !{ptr @es1371_adc_clock, !169, !"es1371_adc_clock", i1 false, i1 false}
!169 = !{!"../sound/pci/ens1370.c", i32 476, i32 32}
!170 = !{ptr @.str.35, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/pci/ens1370.c", i32 1268, i32 35}
!172 = !{ptr @.str.36, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/pci/ens1370.c", i32 1279, i32 20}
!174 = !{ptr @snd_ensoniq_playback2_ops, !175, !"snd_ensoniq_playback2_ops", i1 false, i1 false}
!175 = !{!"../sound/pci/ens1370.c", i32 1205, i32 33}
!176 = !{ptr @snd_ensoniq_playback2, !177, !"snd_ensoniq_playback2", i1 false, i1 false}
!177 = !{!"../sound/pci/ens1370.c", i32 1056, i32 38}
!178 = !{ptr @surround_map, !179, !"surround_map", i1 false, i1 false}
!179 = !{!"../sound/pci/ens1370.c", i32 1221, i32 40}
!180 = !{ptr @.str.38, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/pci/ens1370.c", i32 2255, i32 39}
!182 = !{ptr @.str.39, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/pci/ens1370.c", i32 2258, i32 22}
!184 = !{ptr @snd_ensoniq_midi_output, !185, !"snd_ensoniq_midi_output", i1 false, i1 false}
!185 = !{!"../sound/pci/ens1370.c", i32 2236, i32 37}
!186 = !{ptr @snd_ensoniq_midi_input, !187, !"snd_ensoniq_midi_input", i1 false, i1 false}
!187 = !{!"../sound/pci/ens1370.c", i32 2243, i32 37}
!188 = !{ptr @.str.40, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/pci/ens1370.c", i32 1781, i32 8}
!190 = !{ptr @.str.41, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/pci/ens1370.c", i32 1784, i32 4}
!192 = !{ptr @.str.42, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.43, !191, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @snd_ensoniq_create_gameport._entry, !191, !"_entry", i1 false, i1 false}
!195 = !{ptr @snd_ensoniq_create_gameport._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.45, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/pci/ens1370.c", i32 1792, i32 4}
!198 = !{ptr @snd_ensoniq_create_gameport._entry.44, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @snd_ensoniq_create_gameport._entry_ptr.46, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.48, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/pci/ens1370.c", i32 1802, i32 3}
!202 = !{ptr @snd_ensoniq_create_gameport._entry.47, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @snd_ensoniq_create_gameport._entry_ptr.49, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.50, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/pci/ens1370.c", i32 1808, i32 24}
!206 = !{ptr @.str.51, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/pci/ens1370.c", i32 1809, i32 24}
!208 = !{ptr @.str.52, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/pci/ens1370.c", i32 1756, i32 3}
!210 = !{ptr @.str.53, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @snd_ensoniq_get_joystick_port._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @snd_ensoniq_get_joystick_port._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @snd_ensoniq_pm, !214, !"snd_ensoniq_pm", i1 false, i1 false}
!214 = !{!"../sound/pci/ens1370.c", i32 2010, i32 8}
!215 = !{i32 1, !"wchar_size", i32 2}
!216 = !{i32 1, !"min_enum_size", i32 4}
!217 = !{i32 8, !"branch-target-enforcement", i32 0}
!218 = !{i32 8, !"sign-return-address", i32 0}
!219 = !{i32 8, !"sign-return-address-all", i32 0}
!220 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!221 = !{i32 7, !"uwtable", i32 1}
!222 = !{i32 7, !"frame-pointer", i32 2}
!223 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!224 = !{!"auto-init"}
!225 = !{i8 0, i8 2}
!226 = !{i64 2154911744}
!227 = !{i64 760409}
!228 = !{i64 2154919927}
!229 = !{i64 760827}
!230 = !{i64 2154951547}
!231 = !{i64 2154951929}
!232 = !{i64 2154952504}
!233 = !{i64 760607}
!234 = !{i64 2154938767}
!235 = !{i64 2154939153}
!236 = !{i64 2154939557}
!237 = !{i64 2154939883}
!238 = !{i64 760212}
!239 = !{i64 2154940326}
!240 = !{i64 2154920625}
!241 = !{i64 2154921683}
!242 = !{i64 2154922237}
!243 = !{i64 2154923662}
!244 = !{i64 2154924253}
!245 = !{i64 2154924843}
!246 = !{i64 2154925409}
!247 = !{i64 2154926019}
!248 = !{i64 2154927075}
!249 = !{i64 2154927958}
!250 = !{i64 2154840398}
!251 = !{i64 2154928562}
!252 = !{i64 2154929210}
!253 = !{i64 2154929852}
!254 = !{i64 2154930480}
!255 = !{i64 2154930914}
!256 = !{i64 2154931389}
!257 = !{i64 2154844843}
!258 = !{i64 2154866728}
!259 = !{i64 2154867348}
!260 = !{i64 2154868307}
!261 = !{i64 2154868927}
!262 = !{i64 2154842762}
!263 = !{i64 2154843791}
!264 = !{i64 2154844183}
!265 = !{i64 2154846112}
!266 = !{i64 2154846550}
!267 = !{i64 2154847697}
!268 = !{i64 2154848499}
!269 = !{i64 2154848929}
!270 = !{i64 2154849595}
!271 = !{i64 2154852530}
!272 = !{i64 2154853383}
!273 = !{i64 2154853821}
!274 = !{i64 2154854968}
!275 = !{i64 2154855770}
!276 = !{i64 2154856193}
!277 = !{i64 2154856835}
!278 = !{i64 2154857860}
!279 = !{i64 2154858666}
!280 = !{i64 2154859459}
!281 = !{i64 2154860250}
!282 = !{i64 2154863175}
!283 = !{i64 2154865874}
!284 = !{i64 2154903119}
!285 = !{i64 2154903709}
!286 = !{i64 2154901755}
!287 = !{i64 2154902427}
!288 = !{i64 2154909558}
!289 = !{i64 2154910340}
!290 = !{i64 2154878172}
!291 = !{i64 2154878799}
!292 = !{i64 2154879415}
!293 = !{i64 2154880037}
!294 = !{i64 2154880725}
!295 = !{i64 2154881375}
!296 = !{i64 2154882067}
!297 = !{i64 2154873226}
!298 = !{i64 2154877516}
!299 = !{i64 2154892254}
!300 = !{i64 2154892637}
!301 = !{i64 2154894003}
!302 = !{i64 2154887311}
!303 = !{i64 2154887938}
!304 = !{i64 2154888552}
!305 = !{i64 2154889171}
!306 = !{i64 2154889843}
!307 = !{i64 2154890490}
!308 = !{i64 2154891180}
!309 = !{i64 2154897418}
!310 = !{i64 2154897801}
!311 = !{i64 2154899165}
!312 = !{i64 2154882704}
!313 = !{i64 2154883331}
!314 = !{i64 2154883947}
!315 = !{i64 2154884569}
!316 = !{i64 2154885332}
!317 = !{i64 2154885982}
!318 = !{i64 2154886674}
!319 = !{i64 2154894836}
!320 = !{i64 2154895219}
!321 = !{i64 2154896585}
!322 = !{i64 2154943973}
!323 = !{i64 2154944429}
!324 = !{i64 2154944923}
!325 = !{i64 2154946017}
!326 = !{i64 2154949312}
!327 = !{i64 2154949629}
!328 = !{i64 2154950081}
!329 = !{i64 2154950574}
!330 = !{i64 2154940813}
!331 = !{i64 2154941269}
!332 = !{i64 2154941763}
!333 = !{i64 2154942857}
!334 = !{i64 2154947549}
!335 = !{i64 2154947872}
!336 = !{i64 2154948338}
