; ModuleID = '/llk/IR_all_yes/sound/pci/ens1370.c_pt.bc'
source_filename = "../sound/pci/ens1370.c"
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.86, i32 }
%union.anon.86 = type { ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraint_ratnums = type { i32, ptr }
%struct.snd_ratnum = type { i32, i32, i32, i32 }
%struct.snd_pcm_chmap_elem = type { i8, [15 x i8] }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.snd_rawmidi_ops = type { ptr, ptr, ptr, ptr }
%struct.snd_ak4531 = type { ptr, ptr, ptr, [32 x i8], %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.72, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.72 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.ensoniq = type { %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.74, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, ptr, ptr }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { i32, ptr }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.gameport = type { ptr, [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, i32, %struct.spinlock, i32, ptr, ptr, ptr, ptr, %struct.mutex, %struct.device, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.73, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.73 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.85, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.85 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.80, [128 x i8] }
%union.anon.80 = type { %union.anon.82 }
%union.anon.82 = type { [64 x i64] }
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
%struct.snd_rawmidi_substream = type { %struct.list_head, i32, i32, i8, i8, i8, i32, i32, i32, i32, ptr, ptr, [32 x i8], ptr, ptr, ptr }

@__UNIQUE_ID_author242 = internal constant [91 x i8] c"snd_ens1370.author=Jaroslav Kysela <perex@perex.cz>, Thomas Sailer <sailer@ife.ee.ethz.ch>\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [39 x i8] c"snd_ens1370.file=sound/pci/snd-ens1370\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [24 x i8] c"snd_ens1370.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description245 = internal constant [48 x i8] c"snd_ens1370.description=Ensoniq AudioPCI ES1370\00", section ".modinfo", align 1
@__param_str_index = internal constant [18 x i8] c"snd_ens1370.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [40 x i8] c"snd_ens1370.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [67 x i8] c"snd_ens1370.parm=index:Index value for Ensoniq AudioPCI soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [15 x i8] c"snd_ens1370.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [39 x i8] c"snd_ens1370.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [62 x i8] c"snd_ens1370.parm=id:ID string for Ensoniq AudioPCI soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [19 x i8] c"snd_ens1370.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype250 = internal constant [42 x i8] c"snd_ens1370.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable251 = internal constant [59 x i8] c"snd_ens1370.parm=enable:Enable Ensoniq AudioPCI soundcard.\00", section ".modinfo", align 1
@__param_str_joystick = internal constant [21 x i8] c"snd_ens1370.joystick\00", align 1
@__param_arr_joystick = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @joystick }, align 4
@__param_joystick = internal constant %struct.kernel_param { ptr @__param_str_joystick, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_joystick } }, section "__param", align 4
@__UNIQUE_ID_joysticktype252 = internal constant [44 x i8] c"snd_ens1370.parmtype=joystick:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_joystick253 = internal constant [43 x i8] c"snd_ens1370.parm=joystick:Enable joystick.\00", section ".modinfo", align 1
@__initcall__kmod_snd_ens1370__254_2381_ens137x_driver_init6 = internal global ptr @ens137x_driver_init, section ".initcall6.init", align 4
@ens137x_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_audiopci_ids, ptr @snd_audiopci_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_ensoniq_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ens137x_driver_exit = internal global ptr @ens137x_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@joystick = internal global { [32 x i8], [32 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd_ens1370\00", [20 x i8] zeroinitializer }, align 32
@snd_audiopci_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4724, i32 20480, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
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
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"audiopci\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Ensoniq AudioPCI ES1370\0A\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Joystick enable  : %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MIC +5V bias     : %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Line In to AOUT  : %s\0A\00", [41 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@snd_es1370_controls = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.21, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ensoniq_control_get, ptr @snd_ensoniq_control_put, %union.anon.86 zeroinitializer, i32 256 }, %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.22, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ensoniq_control_get, ptr @snd_ensoniq_control_put, %union.anon.86 zeroinitializer, i32 1073741824 }], [32 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@snd_es1370_codec_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.9, i32 580, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"codec write timeout, status = 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_es1370_codec_write\00", [41 x i8] zeroinitializer }, align 32
@snd_es1370_codec_write._entry_ptr = internal global ptr @snd_es1370_codec_write._entry, section ".printk_index", align 4
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"PCM 0 Output also on Line-In Jack\00", [62 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Mic +5V bias\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ES1370/1\00", [23 x i8] zeroinitializer }, align 32
@snd_ensoniq_playback2_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_ensoniq_playback2_open, ptr @snd_ensoniq_playback2_close, ptr null, ptr null, ptr null, ptr @snd_ensoniq_playback2_prepare, ptr @snd_ensoniq_trigger, ptr null, ptr @snd_ensoniq_playback2_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_ensoniq_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_ensoniq_capture_open, ptr @snd_ensoniq_capture_close, ptr null, ptr null, ptr null, ptr @snd_ensoniq_capture_prepare, ptr @snd_ensoniq_trigger, ptr null, ptr @snd_ensoniq_capture_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ES1370 DAC2/ADC\00", [16 x i8] zeroinitializer }, align 32
@snd_ensoniq_playback2 = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4784387, i64 6, i32 1073742078, i32 4000, i32 48000, i32 1, i32 2, i32 131072, i32 64, i32 131072, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_es1370_hw_constraints_clock = internal constant { %struct.snd_pcm_hw_constraint_ratnums, [24 x i8] } { %struct.snd_pcm_hw_constraint_ratnums { i32 1, ptr @es1370_clock }, [24 x i8] zeroinitializer }, align 32
@es1370_clock = internal constant { %struct.snd_ratnum, [16 x i8] } { %struct.snd_ratnum { i32 1411200, i32 29, i32 353, i32 1 }, [16 x i8] zeroinitializer }, align 32
@snd_ensoniq_sample_shift = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 1, i32 2], [16 x i8] zeroinitializer }, align 32
@snd_ensoniq_capture = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4260099, i64 6, i32 1073742078, i32 4000, i32 48000, i32 1, i32 2, i32 131072, i32 64, i32 131072, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@surround_map = internal constant { <{ { i8, <{ i8, [14 x i8] }> }, { i8, <{ i8, i8, [13 x i8] }> }, %struct.snd_pcm_chmap_elem }>, [48 x i8] } { <{ { i8, <{ i8, [14 x i8] }> }, { i8, <{ i8, i8, [13 x i8] }> }, %struct.snd_pcm_chmap_elem }> <{ { i8, <{ i8, [14 x i8] }> } { i8 1, <{ i8, [14 x i8] }> <{ i8 2, [14 x i8] zeroinitializer }> }, { i8, <{ i8, i8, [13 x i8] }> } { i8 2, <{ i8, i8, [13 x i8] }> <{ i8 5, i8 6, [13 x i8] zeroinitializer }> }, %struct.snd_pcm_chmap_elem zeroinitializer }>, [48 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ES1370/2\00", [23 x i8] zeroinitializer }, align 32
@snd_ensoniq_playback1_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_ensoniq_playback1_open, ptr @snd_ensoniq_playback1_close, ptr null, ptr null, ptr null, ptr @snd_ensoniq_playback1_prepare, ptr @snd_ensoniq_trigger, ptr null, ptr @snd_ensoniq_playback1_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ES1370 DAC1\00", [20 x i8] zeroinitializer }, align 32
@snd_pcm_std_chmaps = external dso_local constant [0 x %struct.snd_pcm_chmap_elem], align 1
@snd_ensoniq_playback1 = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4784387, i64 6, i32 -2147483564, i32 4000, i32 48000, i32 1, i32 2, i32 131072, i32 64, i32 131072, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_es1370_hw_constraints_rates = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @snd_es1370_fixed_rates, i32 4, i32 0 }, [20 x i8] zeroinitializer }, align 32
@snd_es1370_fixed_rates = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 5512, i32 11025, i32 22050, i32 44100], [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUG?\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ES1370\00", [25 x i8] zeroinitializer }, align 32
@snd_ensoniq_midi_output = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @snd_ensoniq_midi_output_open, ptr @snd_ensoniq_midi_output_close, ptr @snd_ensoniq_midi_output_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@snd_ensoniq_midi_input = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @snd_ensoniq_midi_input_open, ptr @snd_ensoniq_midi_input_close, ptr @snd_ensoniq_midi_input_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ens137x: gameport\00", [46 x i8] zeroinitializer }, align 32
@snd_ensoniq_create_gameport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.9, i32 1785, ptr @.str.33, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no gameport ports available\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"snd_ensoniq_create_gameport\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@snd_ensoniq_create_gameport._entry_ptr = internal global ptr @snd_ensoniq_create_gameport._entry, section ".printk_index", align 4
@snd_ensoniq_create_gameport._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.32, ptr @.str.9, i32 1794, ptr @.str.33, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gameport io port %#x in use\0A\00", [35 x i8] zeroinitializer }, align 32
@snd_ensoniq_create_gameport._entry_ptr.36 = internal global ptr @snd_ensoniq_create_gameport._entry.34, section ".printk_index", align 4
@snd_ensoniq_create_gameport._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.32, ptr @.str.9, i32 1803, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cannot allocate memory for gameport\0A\00", [59 x i8] zeroinitializer }, align 32
@snd_ensoniq_create_gameport._entry_ptr.39 = internal global ptr @snd_ensoniq_create_gameport._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ES137x\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pci%s/gameport0\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.42 = internal global [6 x i64] [i64 4, i64 32, i64 5512, i64 11025, i64 22050, i64 44100]
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"ens137x_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2372, i32 26 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 64, i32 12 }
@___asan_gen_.49 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 65, i32 14 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 66, i32 13 }
@___asan_gen_.55 = private unnamed_addr constant [9 x i8] c"joystick\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 71, i32 13 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2381, i32 1 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"snd_audiopci_ids\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 427, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"snd_ensoniq_pm\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2010, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2310, i32 13 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2356, i32 26 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2357, i32 26 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2025, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2026, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2036, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1867, i32 38 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1851, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1852, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1855, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1857, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [20 x i8] c"snd_es1370_controls\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1696, i32 38 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 579, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1697, i32 1 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1698, i32 1 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1234, i32 35 }
@___asan_gen_.148 = private unnamed_addr constant [26 x i8] c"snd_ensoniq_playback2_ops\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1205, i32 33 }
@___asan_gen_.151 = private unnamed_addr constant [24 x i8] c"snd_ensoniq_capture_ops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1213, i32 33 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1247, i32 20 }
@___asan_gen_.157 = private unnamed_addr constant [22 x i8] c"snd_ensoniq_playback2\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1056, i32 38 }
@___asan_gen_.160 = private unnamed_addr constant [32 x i8] c"snd_es1370_hw_constraints_clock\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 461, i32 51 }
@___asan_gen_.163 = private unnamed_addr constant [13 x i8] c"es1370_clock\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 455, i32 32 }
@___asan_gen_.166 = private unnamed_addr constant [25 x i8] c"snd_ensoniq_sample_shift\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 487, i32 27 }
@___asan_gen_.169 = private unnamed_addr constant [20 x i8] c"snd_ensoniq_capture\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1076, i32 38 }
@___asan_gen_.172 = private unnamed_addr constant [13 x i8] c"surround_map\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1221, i32 40 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1268, i32 35 }
@___asan_gen_.178 = private unnamed_addr constant [26 x i8] c"snd_ensoniq_playback1_ops\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1197, i32 33 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1279, i32 20 }
@___asan_gen_.184 = private unnamed_addr constant [22 x i8] c"snd_ensoniq_playback1\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1029, i32 38 }
@___asan_gen_.187 = private unnamed_addr constant [32 x i8] c"snd_es1370_hw_constraints_rates\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 450, i32 48 }
@___asan_gen_.190 = private unnamed_addr constant [23 x i8] c"snd_es1370_fixed_rates\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 448, i32 27 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 889, i32 11 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2258, i32 22 }
@___asan_gen_.199 = private unnamed_addr constant [24 x i8] c"snd_ensoniq_midi_output\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2236, i32 37 }
@___asan_gen_.202 = private unnamed_addr constant [23 x i8] c"snd_ensoniq_midi_input\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 2243, i32 37 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1781, i32 8 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1784, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1792, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1802, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1808, i32 24 }
@___asan_gen_.235 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.236 = private constant [23 x i8] c"../sound/pci/ens1370.c\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1809, i32 24 }
@llvm.compiler.used = appending global [89 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_enable251, ptr @__UNIQUE_ID_enabletype250, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_joystick253, ptr @__UNIQUE_ID_joysticktype252, ptr @__UNIQUE_ID_license244, ptr @__exitcall_ens137x_driver_exit, ptr @__initcall__kmod_snd_ens1370__254_2381_ens137x_driver_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @__param_joystick, ptr @ens137x_driver_exit, ptr @snd_ensoniq_create._entry, ptr @snd_ensoniq_create._entry_ptr, ptr @snd_ensoniq_create_gameport._entry, ptr @snd_ensoniq_create_gameport._entry.34, ptr @snd_ensoniq_create_gameport._entry.37, ptr @snd_ensoniq_create_gameport._entry_ptr, ptr @snd_ensoniq_create_gameport._entry_ptr.36, ptr @snd_ensoniq_create_gameport._entry_ptr.39, ptr @snd_es1370_codec_write._entry, ptr @snd_es1370_codec_write._entry_ptr, ptr @ens137x_driver, ptr @index, ptr @id, ptr @enable, ptr @joystick, ptr @.str, ptr @snd_audiopci_ids, ptr @snd_ensoniq_pm, ptr @snd_audiopci_probe.dev, ptr @.str.2, ptr @.str.3, ptr @snd_ensoniq_create.__key, ptr @.str.4, ptr @snd_ensoniq_create.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @snd_es1370_controls, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @snd_ensoniq_playback2_ops, ptr @snd_ensoniq_capture_ops, ptr @.str.24, ptr @snd_ensoniq_playback2, ptr @snd_es1370_hw_constraints_clock, ptr @es1370_clock, ptr @snd_ensoniq_sample_shift, ptr @snd_ensoniq_capture, ptr @surround_map, ptr @.str.26, ptr @snd_ensoniq_playback1_ops, ptr @.str.27, ptr @snd_ensoniq_playback1, ptr @snd_es1370_hw_constraints_rates, ptr @snd_es1370_fixed_rates, ptr @.str.28, ptr @.str.29, ptr @snd_ensoniq_midi_output, ptr @snd_ensoniq_midi_input, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ens137x_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joystick to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_audiopci_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_audiopci_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_create.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1370_controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1370_codec_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_playback2_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_playback2 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1370_hw_constraints_clock to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es1370_clock to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_sample_shift to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_capture to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @surround_map to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_playback1_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_playback1 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1370_hw_constraints_rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_es1370_fixed_rates to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_midi_output to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_midi_input to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_create_gameport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_create_gameport._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ensoniq_create_gameport._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ens137x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @ens137x_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ens137x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @ens137x_driver) #10
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
  %pcm.i76 = alloca ptr, align 4
  %pcm.i = alloca ptr, align 4
  %ak4531.i = alloca %struct.snd_ak4531, align 4
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #10
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !167
  %1 = load i32, ptr @snd_audiopci_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp = icmp sgt i32 %1, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
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
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %5, ptr noundef %7, ptr noundef null, i32 noundef 276, ptr noundef nonnull %card) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 8
  %call.i = call i32 @pcim_enable_device(ptr noundef %pci) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end7.cleanup_crit_edge, label %do.body.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.i:                                        ; preds = %if.end7
  call void @__raw_spin_lock_init(ptr noundef %11, ptr noundef nonnull @.str.4, ptr noundef nonnull @snd_ensoniq_create.__key, i16 noundef signext 3) #10
  %src_mutex.i = getelementptr inbounds %struct.ensoniq, ptr %11, i32 0, i32 1
  call void @__mutex_init(ptr noundef %src_mutex.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @snd_ensoniq_create.__key.5) #10
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
  %call7.i = call i32 @pci_request_regions(ptr noundef %pci, ptr noundef nonnull @.str.2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %do.body.i.cleanup_crit_edge, label %if.end10.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
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
  %call.i.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %19, ptr noundef nonnull @snd_audiopci_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end19.i, label %do.end16.i

do.end16.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev17.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %20 = ptrtoint ptr %dev17.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev17.i, align 8
  %22 = ptrtoint ptr %irq11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq11.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.7, i32 noundef %23) #13
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
  %call.i62.i = call ptr @snd_devm_alloc_dir_pages(ptr noundef %dev, i32 noundef 2, i32 noundef 0, i32 noundef 16) #10
  %dma_bug.i = getelementptr inbounds %struct.ensoniq, ptr %11, i32 0, i32 34
  %28 = ptrtoint ptr %dma_bug.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i62.i, ptr %dma_bug.i, align 4
  %tobool26.not.i = icmp eq ptr %call.i62.i, null
  br i1 %tobool26.not.i, label %if.end19.i.cleanup_crit_edge, label %if.end11

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end19.i
  call void @pci_set_master(ptr noundef %pci) #10
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 12
  %29 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %revision.i, align 4
  %conv.i = zext i8 %30 to i32
  %rev.i = getelementptr inbounds %struct.ensoniq, ptr %11, i32 0, i32 13
  %31 = ptrtoint ptr %rev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv.i, ptr %rev.i, align 4
  %ctrl.i = getelementptr inbounds %struct.ensoniq, ptr %11, i32 0, i32 9
  %32 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 11403266, ptr %ctrl.i, align 4
  %sctrl.i = getelementptr inbounds %struct.ensoniq, ptr %11, i32 0, i32 10
  %33 = ptrtoint ptr %sctrl.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %sctrl.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 10
  %34 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @snd_ensoniq_free, ptr %private_free.i, align 4
  call fastcc void @snd_ensoniq_chip_init(ptr noundef %11) #10
  %35 = ptrtoint ptr %card5.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %card5.i, align 4
  %call.i.i.i = call i32 @snd_card_rw_proc_new(ptr noundef %36, ptr noundef nonnull @.str.12, ptr noundef %11, ptr noundef nonnull @snd_ensoniq_proc_read, ptr noundef null) #10
  %37 = ptrtoint ptr %card5.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %card5.i, align 4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %ak4531.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !169
  call void @arm_heavy_mb() #10
  %39 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port.i, align 4
  %add.i = add i32 %40, 16
  %and.i = and i32 %add.i, 1048575
  %add2.i = or i32 %and.i, -18874368
  %41 = inttoptr i32 %add2.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %41, i16 534) #10, !srcloc !170
  %42 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port.i, align 4
  %add4.i = add i32 %43, 16
  %and5.i = and i32 %add4.i, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %44 = inttoptr i32 %add6.i to ptr
  %45 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %44) #10, !srcloc !171
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %46(i32 noundef 21474800) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !173
  call void @arm_heavy_mb() #10
  %47 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port.i, align 4
  %add13.i = add i32 %48, 16
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %49 = inttoptr i32 %add15.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %49, i16 790) #10, !srcloc !170
  %50 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port.i, align 4
  %add19.i = add i32 %51, 16
  %and20.i = and i32 %add19.i, 1048575
  %add21.i = or i32 %and20.i, -18874368
  %52 = inttoptr i32 %add21.i to ptr
  %53 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %52) #10, !srcloc !171
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %54(i32 noundef 21474800) #10
  %55 = getelementptr inbounds i8, ptr %ak4531.i, i32 12
  %56 = call ptr @memset(ptr %55, i32 0, i32 124)
  %57 = ptrtoint ptr %ak4531.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @snd_es1370_codec_write, ptr %ak4531.i, align 4
  %private_data.i67 = getelementptr inbounds %struct.snd_ak4531, ptr %ak4531.i, i32 0, i32 1
  %58 = ptrtoint ptr %private_data.i67 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %11, ptr %private_data.i67, align 4
  %private_free.i68 = getelementptr inbounds %struct.snd_ak4531, ptr %ak4531.i, i32 0, i32 2
  %59 = ptrtoint ptr %private_free.i68 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @snd_ensoniq_mixer_free_ak4531, ptr %private_free.i68, align 4
  %ak453125.i = getelementptr inbounds %struct.ensoniq, ptr %11, i32 0, i32 14, i32 0, i32 1
  %call26.i = call i32 @snd_ak4531_mixer(ptr noundef %38, ptr noundef nonnull %ak4531.i, ptr noundef %ak453125.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp.i69 = icmp slt i32 %call26.i, 0
  br i1 %cmp.i69, label %if.end11.snd_ensoniq_1370_mixer.exit.thread_crit_edge, label %for.body.preheader.i

if.end11.snd_ensoniq_1370_mixer.exit.thread_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_ensoniq_1370_mixer.exit.thread

for.body.preheader.i:                             ; preds = %if.end11
  %call28.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_es1370_controls, ptr noundef %11) #10
  %call29.i = call i32 @snd_ctl_add(ptr noundef %38, ptr noundef %call28.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  br i1 %cmp30.i, label %for.body.preheader.i.snd_ensoniq_1370_mixer.exit.thread_crit_edge, label %snd_ensoniq_1370_mixer.exit

for.body.preheader.i.snd_ensoniq_1370_mixer.exit.thread_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_ensoniq_1370_mixer.exit.thread

snd_ensoniq_1370_mixer.exit.thread:               ; preds = %for.body.preheader.i.snd_ensoniq_1370_mixer.exit.thread_crit_edge, %if.end11.snd_ensoniq_1370_mixer.exit.thread_crit_edge
  %retval.0.i70.ph = phi i32 [ %call29.i, %for.body.preheader.i.snd_ensoniq_1370_mixer.exit.thread_crit_edge ], [ %call26.i, %if.end11.snd_ensoniq_1370_mixer.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %ak4531.i) #10
  br label %cleanup

snd_ensoniq_1370_mixer.exit:                      ; preds = %for.body.preheader.i
  %call28.1.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([2 x %struct.snd_kcontrol_new], ptr @snd_es1370_controls, i32 0, i32 1), ptr noundef %11) #10
  %call29.1.i = call i32 @snd_ctl_add(ptr noundef %38, ptr noundef %call28.1.i) #10
  %60 = call i32 @llvm.smin.i32(i32 %call29.1.i, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %ak4531.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.1.i)
  %cmp13 = icmp slt i32 %call29.1.i, 0
  br i1 %cmp13, label %snd_ensoniq_1370_mixer.exit.cleanup_crit_edge, label %if.end15

snd_ensoniq_1370_mixer.exit.cleanup_crit_edge:    ; preds = %snd_ensoniq_1370_mixer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %snd_ensoniq_1370_mixer.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i) #10
  %61 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i, align 4, !annotation !167
  %62 = ptrtoint ptr %card5.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %card5.i, align 4
  %call.i71 = call i32 @snd_pcm_new(ptr noundef %63, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %pcm.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %cmp.i72 = icmp slt i32 %call.i71, 0
  br i1 %cmp.i72, label %snd_ensoniq_pcm.exit.thread, label %snd_ensoniq_pcm.exit

snd_ensoniq_pcm.exit.thread:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #10
  br label %cleanup

snd_ensoniq_pcm.exit:                             ; preds = %if.end15
  %64 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %65, i32 noundef 0, ptr noundef nonnull @snd_ensoniq_playback2_ops) #10
  %66 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %67, i32 noundef 1, ptr noundef nonnull @snd_ensoniq_capture_ops) #10
  %68 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pcm.i, align 4
  %private_data.i73 = getelementptr inbounds %struct.snd_pcm, ptr %69, i32 0, i32 11
  %70 = ptrtoint ptr %private_data.i73 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %11, ptr %private_data.i73, align 8
  %info_flags.i = getelementptr inbounds %struct.snd_pcm, ptr %69, i32 0, i32 3
  %71 = ptrtoint ptr %info_flags.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %info_flags.i, align 8
  %name.i = getelementptr inbounds %struct.snd_pcm, ptr %69, i32 0, i32 7
  %72 = call ptr @memcpy(ptr %name.i, ptr @.str.24, i32 16)
  %pcm1.i = getelementptr inbounds %struct.ensoniq, ptr %11, i32 0, i32 17
  %73 = ptrtoint ptr %pcm1.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %69, ptr %pcm1.i, align 4
  %74 = ptrtoint ptr %pci6.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pci6.i, align 4
  %dev.i74 = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 44
  %call2.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %69, i32 noundef 2, ptr noundef %dev.i74, i32 noundef 65536, i32 noundef 131072) #10
  %76 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pcm.i, align 4
  %call3.i = call i32 @snd_pcm_add_chmap_ctls(ptr noundef %77, i32 noundef 0, ptr noundef nonnull @surround_map, i32 noundef 2, i32 noundef 0, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp17 = icmp slt i32 %call3.i, 0
  br i1 %cmp17, label %snd_ensoniq_pcm.exit.cleanup_crit_edge, label %if.end19

snd_ensoniq_pcm.exit.cleanup_crit_edge:           ; preds = %snd_ensoniq_pcm.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %snd_ensoniq_pcm.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i76) #10
  %78 = ptrtoint ptr %pcm.i76 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i76, align 4, !annotation !167
  %79 = ptrtoint ptr %card5.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %card5.i, align 4
  %call.i78 = call i32 @snd_pcm_new(ptr noundef %80, ptr noundef nonnull @.str.26, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %pcm.i76) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %cmp.i79 = icmp slt i32 %call.i78, 0
  br i1 %cmp.i79, label %snd_ensoniq_pcm2.exit.thread, label %snd_ensoniq_pcm2.exit

snd_ensoniq_pcm2.exit.thread:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i76) #10
  br label %cleanup

snd_ensoniq_pcm2.exit:                            ; preds = %if.end19
  %81 = ptrtoint ptr %pcm.i76 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pcm.i76, align 4
  call void @snd_pcm_set_ops(ptr noundef %82, i32 noundef 0, ptr noundef nonnull @snd_ensoniq_playback1_ops) #10
  %83 = ptrtoint ptr %pcm.i76 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pcm.i76, align 4
  %private_data.i80 = getelementptr inbounds %struct.snd_pcm, ptr %84, i32 0, i32 11
  %85 = ptrtoint ptr %private_data.i80 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %11, ptr %private_data.i80, align 8
  %info_flags.i81 = getelementptr inbounds %struct.snd_pcm, ptr %84, i32 0, i32 3
  %86 = ptrtoint ptr %info_flags.i81 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %info_flags.i81, align 8
  %name.i82 = getelementptr inbounds %struct.snd_pcm, ptr %84, i32 0, i32 7
  %87 = call ptr @memcpy(ptr %name.i82, ptr @.str.27, i32 12)
  %pcm2.i = getelementptr inbounds %struct.ensoniq, ptr %11, i32 0, i32 18
  %88 = ptrtoint ptr %pcm2.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %84, ptr %pcm2.i, align 4
  %89 = ptrtoint ptr %pci6.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pci6.i, align 4
  %dev.i84 = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 44
  %call2.i85 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %84, i32 noundef 2, ptr noundef %dev.i84, i32 noundef 65536, i32 noundef 131072) #10
  %91 = ptrtoint ptr %pcm.i76 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pcm.i76, align 4
  %call3.i86 = call i32 @snd_pcm_add_chmap_ctls(ptr noundef %92, i32 noundef 0, ptr noundef nonnull @snd_pcm_std_chmaps, i32 noundef 2, i32 noundef 0, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i76) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i86)
  %cmp21 = icmp slt i32 %call3.i86, 0
  br i1 %cmp21, label %snd_ensoniq_pcm2.exit.cleanup_crit_edge, label %if.end23

snd_ensoniq_pcm2.exit.cleanup_crit_edge:          ; preds = %snd_ensoniq_pcm2.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %snd_ensoniq_pcm2.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rmidi.i) #10
  %93 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr inttoptr (i32 -1 to ptr), ptr %rmidi.i, align 4, !annotation !167
  %94 = ptrtoint ptr %card5.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %card5.i, align 4
  %call.i90 = call i32 @snd_rawmidi_new(ptr noundef %95, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %rmidi.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %cmp.i91 = icmp slt i32 %call.i90, 0
  br i1 %cmp.i91, label %snd_ensoniq_midi.exit.thread, label %if.end27

snd_ensoniq_midi.exit.thread:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi.i) #10
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %96 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rmidi.i, align 4
  %name.i92 = getelementptr inbounds %struct.snd_rawmidi, ptr %97, i32 0, i32 5
  %98 = call ptr @memcpy(ptr %name.i92, ptr @.str.29, i32 7)
  call void @snd_rawmidi_set_ops(ptr noundef %97, i32 noundef 0, ptr noundef nonnull @snd_ensoniq_midi_output) #10
  %99 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rmidi.i, align 4
  call void @snd_rawmidi_set_ops(ptr noundef %100, i32 noundef 1, ptr noundef nonnull @snd_ensoniq_midi_input) #10
  %101 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rmidi.i, align 4
  %info_flags.i93 = getelementptr inbounds %struct.snd_rawmidi, ptr %102, i32 0, i32 3
  %103 = ptrtoint ptr %info_flags.i93 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %info_flags.i93, align 8
  %or.i = or i32 %104, 7
  store i32 %or.i, ptr %info_flags.i93, align 8
  %private_data.i94 = getelementptr inbounds %struct.snd_rawmidi, ptr %102, i32 0, i32 9
  %105 = ptrtoint ptr %private_data.i94 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %11, ptr %private_data.i94, align 4
  %rmidi2.i = getelementptr inbounds %struct.ensoniq, ptr %11, i32 0, i32 28
  %106 = ptrtoint ptr %rmidi2.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %102, ptr %rmidi2.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi.i) #10
  %107 = load i32, ptr @snd_audiopci_probe.dev, align 4
  call fastcc void @snd_ensoniq_create_gameport(ptr noundef %11, i32 noundef %107)
  %108 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %driver to i32
  call void @__asan_storeN_noabort(i32 %110, i32 8)
  store i64 4994020507578216448, ptr %driver, align 1
  %shortname = getelementptr inbounds %struct.snd_card, ptr %109, i32 0, i32 3
  %111 = call ptr @memcpy(ptr %shortname, ptr @.str.2, i32 17)
  %longname = getelementptr inbounds %struct.snd_card, ptr %109, i32 0, i32 4
  %112 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %port.i, align 4
  %114 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %irq.i, align 4
  %call37 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.3, ptr noundef %shortname, ptr noundef %driver, i32 noundef %113, i32 noundef %115)
  %116 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %card, align 4
  %call38 = call i32 @snd_card_register(ptr noundef %117) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.end27.cleanup_crit_edge, label %if.end41

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end41:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %118 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %120 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %119, ptr %driver_data.i.i, align 4
  %121 = load i32, ptr @snd_audiopci_probe.dev, align 4
  %inc42 = add i32 %121, 1
  store i32 %inc42, ptr @snd_audiopci_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end27.cleanup_crit_edge, %snd_ensoniq_midi.exit.thread, %snd_ensoniq_pcm2.exit.cleanup_crit_edge, %snd_ensoniq_pcm2.exit.thread, %snd_ensoniq_pcm.exit.cleanup_crit_edge, %snd_ensoniq_pcm.exit.thread, %snd_ensoniq_1370_mixer.exit.cleanup_crit_edge, %snd_ensoniq_1370_mixer.exit.thread, %if.end19.i.cleanup_crit_edge, %do.end16.i, %do.body.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end41 ], [ -2, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ %60, %snd_ensoniq_1370_mixer.exit.cleanup_crit_edge ], [ %call3.i, %snd_ensoniq_pcm.exit.cleanup_crit_edge ], [ %call3.i86, %snd_ensoniq_pcm2.exit.cleanup_crit_edge ], [ %call38, %if.end27.cleanup_crit_edge ], [ %retval.0.i70.ph, %snd_ensoniq_1370_mixer.exit.thread ], [ %call.i71, %snd_ensoniq_pcm.exit.thread ], [ %call.i78, %snd_ensoniq_pcm2.exit.thread ], [ %call.i90, %snd_ensoniq_midi.exit.thread ], [ -12, %if.end19.i.cleanup_crit_edge ], [ %call7.i, %do.body.i.cleanup_crit_edge ], [ %call.i, %if.end7.cleanup_crit_edge ], [ -16, %do.end16.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_ensoniq_create_gameport(ptr nocapture noundef %ensoniq, i32 noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr [32 x i8], ptr @joystick, i32 0, i32 %dev
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 512
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %sw.default

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.default:                                       ; preds = %entry
  %call7 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %cond.i, i32 noundef 8, ptr noundef nonnull @.str.30, i32 noundef 0) #10
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end12, label %sw.epilog

do.end12:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %card13 = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 16
  %2 = ptrtoint ptr %card13 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card13, align 4
  %dev14 = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev14, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.35, i32 noundef %cond.i) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.default
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1248) #14
  %gameport = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 35
  %7 = ptrtoint ptr %gameport to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i.i, ptr %gameport, align 4
  %tobool17.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool17.not, label %do.end21, label %if.end24

do.end21:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %card22 = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 16
  %8 = ptrtoint ptr %card22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card22, align 4
  %dev23 = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev23, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.38) #13
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef 512, i32 noundef 8) #10
  br label %cleanup

if.end24:                                         ; preds = %sw.epilog
  %name1.i = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 1
  %call.i = tail call i32 @strlcpy(ptr noundef %name1.i, ptr noundef nonnull @.str.40, i32 noundef 32) #10
  %pci = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 15
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44, i32 3
  %14 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end24.pci_name.exit_crit_edge

if.end24.pci_name.exit_crit_edge:                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end24.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %17, %if.end.i.i ], [ %15, %if.end24.pci_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @gameport_set_phys(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.41, ptr noundef %retval.0.i.i) #10
  %18 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci, align 4
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %parent = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 21, i32 1
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev27, ptr %parent, align 8
  %io = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %io to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 512, ptr %io, align 4
  %ctrl = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 9
  %22 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ctrl, align 4
  %or = or i32 %23, 4
  store i32 %or, ptr %ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !175
  tail call void @arm_heavy_mb() #10
  %24 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ctrl, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %port = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 6
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %and = and i32 %28, 1048575
  %add34 = or i32 %and, -18874368
  %29 = inttoptr i32 %add34 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %29, i32 %26) #10, !srcloc !176
  %30 = ptrtoint ptr %gameport to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gameport, align 4
  tail call void @__gameport_register_port(ptr noundef %31, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %pci_name.exit, %do.end21, %do.end12, %entry.cleanup_crit_edge
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
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %dev_id, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #10, !srcloc !177
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !178
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool.not = icmp sgt i32 %4, -1
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @_raw_spin_lock(ptr noundef nonnull %dev_id) #10
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !179
  tail call void @arm_heavy_mb() #10
  %7 = tail call i32 @llvm.bswap.i32(i32 %sctrl.2)
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %add23 = add i32 %9, 32
  %and24 = and i32 %add23, 1048575
  %add25 = or i32 %and24, -18874368
  %10 = inttoptr i32 %add25 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 %7) #10, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  tail call void @arm_heavy_mb() #10
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 %13) #10, !srcloc !176
  tail call void @_raw_spin_unlock(ptr noundef nonnull %dev_id) #10
  %and37 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end5.if.end40_crit_edge, label %if.then39

if.end5.if.end40_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then39:                                        ; preds = %if.end5
  %rmidi1.i = getelementptr inbounds %struct.ensoniq, ptr %dev_id, i32 0, i32 28
  %17 = ptrtoint ptr %rmidi1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmidi1.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte.i) #10
  %19 = ptrtoint ptr %byte.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %byte.i, align 1, !annotation !167
  %cmp.i = icmp eq ptr %18, null
  br i1 %cmp.i, label %if.then39.snd_ensoniq_midi_interrupt.exit_crit_edge, label %if.end.i

if.then39.snd_ensoniq_midi_interrupt.exit_crit_edge: ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_ensoniq_midi_interrupt.exit

if.end.i:                                         ; preds = %if.then39
  tail call void @_raw_spin_lock(ptr noundef nonnull %dev_id) #10
  %uartm.i = getelementptr inbounds %struct.ensoniq, ptr %dev_id, i32 0, i32 8
  %20 = ptrtoint ptr %uartm.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %uartm.i, align 4
  %22 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool2.not.i = icmp eq i32 %22, 0
  br i1 %tobool2.not.i, label %if.end.i.while.end.i_crit_edge, label %while.body.lr.ph.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
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
  %26 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #10, !srcloc !181
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !182
  %27 = and i8 %26, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp9.i92 = icmp eq i8 %27, 0
  br i1 %cmp9.i92, label %while.body.lr.ph.i.while.end.i_crit_edge, label %while.body.lr.ph.i.while.body.critedge.i_crit_edge

while.body.lr.ph.i.while.body.critedge.i_crit_edge: ; preds = %while.body.lr.ph.i
  br label %while.body.critedge.i

while.body.lr.ph.i.while.end.i_crit_edge:         ; preds = %while.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.critedge.i:                            ; preds = %while.body.critedge.i.while.body.critedge.i_crit_edge, %while.body.lr.ph.i.while.body.critedge.i_crit_edge
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port, align 4
  %add15.c.i = add i32 %29, 8
  %and16.c.i = and i32 %add15.c.i, 1048575
  %add17.c.i = or i32 %and16.c.i, -18874368
  %30 = inttoptr i32 %add17.c.i to ptr
  %31 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %30) #10, !srcloc !181
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !183
  %32 = ptrtoint ptr %byte.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %byte.i, align 1
  %33 = ptrtoint ptr %midi_input.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %midi_input.i, align 4
  %call21.c.i = call i32 @snd_rawmidi_receive(ptr noundef %34, ptr noundef nonnull %byte.i, i32 noundef 1) #10
  %35 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port, align 4
  %add.i = add i32 %36, 9
  %and3.i = and i32 %add.i, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %37 = inttoptr i32 %add4.i to ptr
  %38 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %37) #10, !srcloc !181
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !182
  %39 = and i8 %38, 1
  %cmp9.i = icmp eq i8 %39, 0
  br i1 %cmp9.i, label %while.body.critedge.i.while.end.i_crit_edge, label %while.body.critedge.i.while.body.critedge.i_crit_edge

while.body.critedge.i.while.body.critedge.i_crit_edge: ; preds = %while.body.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.critedge.i

while.body.critedge.i.while.end.i_crit_edge:      ; preds = %while.body.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.critedge.i.while.end.i_crit_edge, %while.body.lr.ph.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull %dev_id) #10
  call void @_raw_spin_lock(ptr noundef nonnull %dev_id) #10
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
  call void @__sanitizer_cov_trace_pc() #12
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
  %46 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %45) #10, !srcloc !181
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !184
  %and4296.i = and i8 %46, %mask.098.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and4296.i)
  %cmp43.i = icmp eq i8 %and4296.i, 0
  br i1 %cmp43.i, label %while.body31.i.while.end71.i_crit_edge, label %if.end46.i

while.body31.i.while.end71.i_crit_edge:           ; preds = %while.body31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end71.i

if.end46.i:                                       ; preds = %while.body31.i
  %47 = ptrtoint ptr %midi_output.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %midi_output.i, align 4
  %call47.i = call i32 @snd_rawmidi_transmit(ptr noundef %48, ptr noundef nonnull %byte.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call47.i)
  %cmp48.not.i = icmp eq i32 %call47.i, 1
  br i1 %cmp48.not.i, label %do.body62.i, label %if.then50.i

if.then50.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %uartc.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %uartc.i, align 4
  %and51.i = and i32 %50, -97
  store i32 %and51.i, ptr %uartc.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  call void @arm_heavy_mb() #10
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
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %55, i8 %conv53.i) #10, !srcloc !186
  %56 = and i8 %mask.098.i, -3
  br label %if.end70.i

do.body62.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !187
  call void @arm_heavy_mb() #10
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
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 %58) #10, !srcloc !186
  br label %if.end70.i

if.end70.i:                                       ; preds = %do.body62.i, %if.then50.i
  %mask.1.i = phi i8 [ %56, %if.then50.i ], [ %mask.098.i, %do.body62.i ]
  %tobool30.not.i = icmp eq i8 %mask.1.i, 0
  br i1 %tobool30.not.i, label %if.end70.i.while.end71.i_crit_edge, label %if.end70.i.while.body31.i_crit_edge

if.end70.i.while.body31.i_crit_edge:              ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body31.i

if.end70.i.while.end71.i_crit_edge:               ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end71.i

while.end71.i:                                    ; preds = %if.end70.i.while.end71.i_crit_edge, %while.body31.i.while.end71.i_crit_edge, %while.end.i.while.end71.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull %dev_id) #10
  br label %snd_ensoniq_midi_interrupt.exit

snd_ensoniq_midi_interrupt.exit:                  ; preds = %while.end71.i, %if.then39.snd_ensoniq_midi_interrupt.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte.i) #10
  br label %if.end40

if.end40:                                         ; preds = %snd_ensoniq_midi_interrupt.exit, %if.end5.if.end40_crit_edge
  br i1 %tobool13.not, label %if.end40.if.end46_crit_edge, label %land.lhs.true

if.end40.if.end46_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end40
  %playback2_substream = getelementptr inbounds %struct.ensoniq, ptr %dev_id, i32 0, i32 20
  %62 = ptrtoint ptr %playback2_substream to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %playback2_substream, align 4
  %tobool43.not = icmp eq ptr %63, null
  br i1 %tobool43.not, label %land.lhs.true.if.end46_crit_edge, label %if.then44

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then44:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call void @snd_pcm_period_elapsed(ptr noundef nonnull %63) #10
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %land.lhs.true.if.end46_crit_edge, %if.end40.if.end46_crit_edge
  br i1 %tobool18.not, label %if.end46.if.end53_crit_edge, label %land.lhs.true49

if.end46.if.end53_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

land.lhs.true49:                                  ; preds = %if.end46
  %capture_substream = getelementptr inbounds %struct.ensoniq, ptr %dev_id, i32 0, i32 21
  %64 = ptrtoint ptr %capture_substream to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %capture_substream, align 4
  %tobool50.not = icmp eq ptr %65, null
  br i1 %tobool50.not, label %land.lhs.true49.if.end53_crit_edge, label %if.then51

land.lhs.true49.if.end53_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then51:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #12
  call void @snd_pcm_period_elapsed(ptr noundef nonnull %65) #10
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %land.lhs.true49.if.end53_crit_edge, %if.end46.if.end53_crit_edge
  br i1 %tobool8.not, label %if.end53.cleanup_crit_edge, label %land.lhs.true56

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true56:                                  ; preds = %if.end53
  %playback1_substream = getelementptr inbounds %struct.ensoniq, ptr %dev_id, i32 0, i32 19
  %66 = ptrtoint ptr %playback1_substream to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %playback1_substream, align 4
  %tobool57.not = icmp eq ptr %67, null
  br i1 %tobool57.not, label %land.lhs.true56.cleanup_crit_edge, label %if.then58

land.lhs.true56.cleanup_crit_edge:                ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then58:                                        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #12
  call void @snd_pcm_period_elapsed(ptr noundef nonnull %67) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %land.lhs.true56.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.then58 ], [ 1, %land.lhs.true56.cleanup_crit_edge ], [ 1, %if.end53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ensoniq_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %gameport.i = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %gameport.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gameport.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.snd_ensoniq_free_gameport.exit_crit_edge, label %if.then.i

entry.snd_ensoniq_free_gameport.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_ensoniq_free_gameport.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %io.i = getelementptr inbounds %struct.gameport, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io.i, align 4
  tail call void @gameport_unregister_port(ptr noundef nonnull %3) #10
  %6 = ptrtoint ptr %gameport.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %gameport.i, align 4
  %ctrl.i = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ctrl.i, align 4
  %and.i = and i32 %8, -5
  store i32 %and.i, ptr %ctrl.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ctrl.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #10
  %port5.i = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %port5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port5.i, align 4
  %and6.i = and i32 %13, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %14 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %11) #10, !srcloc !176
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %5, i32 noundef 8) #10
  br label %snd_ensoniq_free_gameport.exit

snd_ensoniq_free_gameport.exit:                   ; preds = %if.then.i, %entry.snd_ensoniq_free_gameport.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !189
  tail call void @arm_heavy_mb() #10
  %port = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %and = and i32 %16, 1048575
  %add1 = or i32 %and, -18874368
  %17 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %17, i32 16777216) #10, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !190
  tail call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add6 = add i32 %19, 32
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %20 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 0) #10, !srcloc !176
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_ensoniq_chip_init(ptr nocapture noundef %ensoniq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %5, i32 %2) #10, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %sctrl = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 10
  %6 = ptrtoint ptr %sctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sctrl, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %add5 = add i32 %10, 32
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %11 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 %8) #10, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !193
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add12 = add i32 %13, 12
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %14 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 218103808) #10, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %dma_bug = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 34
  %15 = ptrtoint ptr %dma_bug to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma_bug, align 4
  %addr = getelementptr inbounds %struct.snd_dma_buffer, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port, align 4
  %add19 = add i32 %21, 56
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %22 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 %19) #10, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  %23 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port, align 4
  %add26 = add i32 %24, 60
  %and27 = and i32 %add26, 1048575
  %add28 = or i32 %and27, -18874368
  %25 = inttoptr i32 %add28 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %25, i32 0) #10, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %uartc = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 12
  %26 = ptrtoint ptr %uartc to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %uartc, align 4
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %add33 = add i32 %28, 9
  %and34 = and i32 %add33, 1048575
  %add35 = or i32 %and34, -18874368
  %29 = inttoptr i32 %add35 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 0) #10, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port, align 4
  %add40 = add i32 %31, 10
  %and41 = and i32 %add40, 1048575
  %add42 = or i32 %and41, -18874368
  %32 = inttoptr i32 %add42 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 0) #10, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  tail call void @arm_heavy_mb() #10
  %cssr = getelementptr inbounds %struct.ensoniq, ptr %ensoniq, i32 0, i32 11
  %33 = ptrtoint ptr %cssr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cssr, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port, align 4
  %add47 = add i32 %37, 4
  %and48 = and i32 %add47, 1048575
  %add49 = or i32 %and48, -18874368
  %38 = inttoptr i32 %add49 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %38, i32 %35) #10, !srcloc !176
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
declare dso_local ptr @snd_devm_alloc_dir_pages(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ensoniq_proc_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.13) #10
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
  %cond = select i1 %tobool.not, ptr @.str.16, ptr @.str.15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.14, ptr noundef nonnull %cond) #10
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %10 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctrl, align 4
  %and6 = and i32 %11, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %cond8 = select i1 %tobool7.not, ptr @.str.16, ptr @.str.15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.17, ptr noundef nonnull %cond8) #10
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer, align 4
  %14 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ctrl, align 4
  %and11 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %cond13 = select i1 %tobool12.not, ptr @.str.16, ptr @.str.15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef nonnull @.str.18, ptr noundef nonnull %cond13) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_es1370_codec_write(ptr nocapture noundef readonly %ak4531, i16 noundef zeroext %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ak4531, ptr %ak4531, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %port = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 6
  %add.neg = sub i32 -10, %2
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %add1 = add i32 %4, 4
  %and = and i32 %add1, 1048575
  %add2 = or i32 %and, -18874368
  %5 = inttoptr i32 %add2 to ptr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %5) #10, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  %7 = and i32 %6, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.body5, label %if.end

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !200
  tail call void @arm_heavy_mb() #10
  %8 = shl i16 %reg, 8
  %9 = and i16 %val, 255
  %or35 = or i16 %9, %8
  %10 = tail call i16 @llvm.bswap.i16(i16 %or35)
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port, align 4
  %add12 = add i32 %12, 16
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %13 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 %10) #10, !srcloc !170
  br label %cleanup

if.end:                                           ; preds = %do.body
  %call16 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %14
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.do.body_crit_edge, label %do.end22

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %card = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 16
  %15 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port, align 4
  %add25 = add i32 %20, 4
  %and26 = and i32 %add25, 1048575
  %add27 = or i32 %and26, -18874368
  %21 = inttoptr i32 %add27 to ptr
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %21) #10, !srcloc !177
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !201
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.19, i32 noundef %23) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %do.body5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_ensoniq_mixer_free_ak4531(ptr nocapture noundef readonly %ak4531) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ak4531, ptr %ak4531, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ak45311 = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 14, i32 0, i32 1
  %2 = ptrtoint ptr %ak45311 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ak45311, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ak4531_mixer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_control_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
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
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %ctrl = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctrl, align 4
  %and = and i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %cond = zext i1 %tobool.not to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %value, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_control_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %3
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %ctrl = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctrl, align 4
  %and = and i32 %7, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %spec.select)
  %cmp = icmp ne i32 %and, %spec.select
  %conv = zext i1 %cmp to i32
  %neg = xor i32 %3, -1
  %and2 = and i32 %7, %neg
  %or = or i32 %and2, %spec.select
  %8 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !202
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ctrl, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %port = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %and5 = and i32 %13, 1048575
  %add6 = or i32 %and5, -18874368
  %14 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %11) #10, !srcloc !176
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_add_chmap_ctls(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_playback2_open(ptr noundef %substream) #2 align 64 {
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
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #10
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %spdif = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 31
  %8 = ptrtoint ptr %spdif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %spdif, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %playback1_substream = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %playback1_substream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %playback1_substream, align 4
  %cmp = icmp eq ptr %11, null
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  %call = tail call i32 @snd_pcm_hw_constraint_ratnums(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @snd_es1370_hw_constraints_clock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_playback2_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %playback2_substream = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %playback2_substream to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %playback2_substream, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %u = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %u, align 4
  %and = and i32 %4, -3
  store i32 %and, ptr %u, align 4
  %mode = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 4
  %and1 = and i32 %6, -3
  store i32 %and1, ptr %mode, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_playback2_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
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
  %p2_dma_size = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 23
  %8 = ptrtoint ptr %p2_dma_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div1.i.i, ptr %p2_dma_size, align 4
  %9 = load ptr, ptr %runtime1, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i124 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 21
  %12 = ptrtoint ptr %frame_bits.i.i124 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_bits.i.i124, align 8
  %mul.i.i125 = mul i32 %13, %11
  %div1.i.i126 = lshr i32 %mul.i.i125, 3
  %p2_period_size = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 26
  %14 = ptrtoint ptr %p2_period_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div1.i.i126, ptr %p2_period_size, align 4
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %15 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %format, align 4
  %call3 = tail call i32 @snd_pcm_format_width(i32 noundef %16) #10
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
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %ctrl = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctrl, align 4
  %and = and i32 %20, -33
  store i32 %and, ptr %ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !203
  tail call void @arm_heavy_mb() #10
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %26, i32 %23) #10, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !204
  tail call void @arm_heavy_mb() #10
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %add16 = add i32 %28, 12
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %29 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %29, i32 201326592) #10, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !205
  tail call void @arm_heavy_mb() #10
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %35, i32 %32) #10, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !206
  tail call void @arm_heavy_mb() #10
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %41, i32 %38) #10, !srcloc !176
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !207
  tail call void @arm_heavy_mb() #10
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %49, i32 %46) #10, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  tail call void @arm_heavy_mb() #10
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %57, i32 %54) #10, !srcloc !176
  %u = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 14
  %58 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %u, align 4
  %and67 = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.then69, label %entry.do.body81_crit_edge

entry.do.body81_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body81

if.then69:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ctrl, align 4
  %and71 = and i32 %61, -536805377
  store i32 %and71, ptr %ctrl, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %62 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rate, align 4
  %div = udiv i32 1411200, %63
  %sub72 = shl i32 %div, 16
  %and73 = add i32 %sub72, 536739840
  %shl74 = and i32 %and73, 536805376
  %or76 = or i32 %shl74, %and71
  store i32 %or76, ptr %ctrl, align 4
  %or79 = or i32 %59, 2
  %64 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or79, ptr %u, align 4
  br label %do.body81

do.body81:                                        ; preds = %if.then69, %entry.do.body81_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !209
  tail call void @arm_heavy_mb() #10
  %65 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ctrl, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  %68 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port, align 4
  %and87 = and i32 %69, 1048575
  %add88 = or i32 %and87, -18874368
  %70 = inttoptr i32 %add88 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %70, i32 %67) #10, !srcloc !176
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_trigger(ptr noundef %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup89_crit_edge [
    i32 3, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge161
    i32 1, label %entry.sw.bb28_crit_edge
    i32 0, label %entry.sw.bb28_crit_edge162
  ]

entry.sw.bb28_crit_edge162:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb28

entry.sw.bb28_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb28

entry.sw.bb_crit_edge161:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.cleanup89_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split

if.else:                                          ; preds = %for.body
  %8 = ptrtoint ptr %playback2_substream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %playback2_substream, align 4
  %cmp4 = icmp eq ptr %s.0157, %9
  br i1 %cmp4, label %if.else.for.inc.sink.split_crit_edge, label %if.else7

if.else.for.inc.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split

if.else7:                                         ; preds = %if.else
  %10 = ptrtoint ptr %capture_substream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %capture_substream, align 4
  %cmp8 = icmp eq ptr %s.0157, %11
  br i1 %cmp8, label %if.else7.cleanup89_crit_edge, label %if.else7.for.inc_crit_edge

if.else7.for.inc_crit_edge:                       ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else7.cleanup89_crit_edge:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sw.bb.for.end_crit_edge
  %what.0.lcssa = phi i32 [ 0, %sw.bb.for.end_crit_edge ], [ %what.1, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cmd)
  %cmp17 = icmp eq i32 %cmd, 3
  br i1 %cmp17, label %if.then18, label %if.else20

if.then18:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %sctrl = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %sctrl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sctrl, align 4
  %or19 = or i32 %19, %what.0.lcssa
  store i32 %or19, ptr %sctrl, align 4
  br label %do.body

if.else20:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %neg = xor i32 %what.0.lcssa, -1
  %sctrl21 = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %sctrl21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sctrl21, align 4
  %and = and i32 %21, %neg
  store i32 %and, ptr %sctrl21, align 4
  br label %do.body

do.body:                                          ; preds = %if.else20, %if.then18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !210
  tail call void @arm_heavy_mb() #10
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %27, i32 %24) #10, !srcloc !176
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc61.sink.split

if.else48:                                        ; preds = %for.body43
  %33 = ptrtoint ptr %playback2_substream49 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %playback2_substream49, align 4
  %cmp50 = icmp eq ptr %s30.0150, %34
  br i1 %cmp50, label %if.else48.for.inc61.sink.split_crit_edge, label %if.else53

if.else48.for.inc61.sink.split_crit_edge:         ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc61.sink.split

if.else53:                                        ; preds = %if.else48
  %35 = ptrtoint ptr %capture_substream54 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %capture_substream54, align 4
  %cmp55 = icmp eq ptr %s30.0150, %36
  br i1 %cmp55, label %if.else53.for.inc61.sink.split_crit_edge, label %if.else53.for.inc61_crit_edge

if.else53.for.inc61_crit_edge:                    ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc61

if.else53.for.inc61.sink.split_crit_edge:         ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body43

for.inc61.for.end67_crit_edge:                    ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end67

for.end67:                                        ; preds = %for.inc61.for.end67_crit_edge, %sw.bb28.for.end67_crit_edge
  %what29.0.lcssa = phi i32 [ 0, %sw.bb28.for.end67_crit_edge ], [ %what29.1, %for.inc61.for.end67_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cmd)
  %cmp69 = icmp eq i32 %cmd, 1
  br i1 %cmp69, label %if.then70, label %if.else72

if.then70:                                        ; preds = %for.end67
  call void @__sanitizer_cov_trace_pc() #12
  %ctrl = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 9
  %43 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ctrl, align 4
  %or71 = or i32 %44, %what29.0.lcssa
  store i32 %or71, ptr %ctrl, align 4
  br label %do.body77

if.else72:                                        ; preds = %for.end67
  call void @__sanitizer_cov_trace_pc() #12
  %neg73 = xor i32 %what29.0.lcssa, -1
  %ctrl74 = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 9
  %45 = ptrtoint ptr %ctrl74 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ctrl74, align 4
  %and75 = and i32 %46, %neg73
  store i32 %and75, ptr %ctrl74, align 4
  br label %do.body77

do.body77:                                        ; preds = %if.else72, %if.then70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  tail call void @arm_heavy_mb() #10
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %52, i32 %49) #10, !srcloc !176
  br label %cleanup89.sink.split

cleanup89.sink.split:                             ; preds = %do.body77, %do.body
  tail call void @_raw_spin_unlock(ptr noundef %1) #10
  br label %cleanup89

cleanup89:                                        ; preds = %cleanup89.sink.split, %if.else7.cleanup89_crit_edge, %entry.cleanup89_crit_edge
  %retval.1 = phi i32 [ -22, %entry.cleanup89_crit_edge ], [ 0, %cleanup89.sink.split ], [ -22, %if.else7.cleanup89_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_playback2_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #10
  %port = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %and = and i32 %3, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %4) #10, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !212
  %6 = and i32 %5, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  tail call void @arm_heavy_mb() #10
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %add5 = add i32 %8, 12
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %9 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 201326592) #10, !srcloc !176
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %add11 = add i32 %11, 60
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %12 = inttoptr i32 %add13 to ptr
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %12) #10, !srcloc !177
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
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
  tail call void @_raw_spin_unlock(ptr noundef %1) #10
  ret i32 %ptr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_ratnums(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_capture_open(ptr noundef %substream) #2 align 64 {
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
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #10
  %call = tail call i32 @snd_pcm_hw_constraint_ratnums(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @snd_es1370_hw_constraints_clock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_capture_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %capture_substream = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %capture_substream to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %capture_substream, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %u = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %u, align 4
  %and = and i32 %4, -5
  store i32 %and, ptr %u, align 4
  %mode = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 4
  %and1 = and i32 %6, -5
  store i32 %and1, ptr %mode, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_capture_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
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
  %c_dma_size = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 24
  %8 = ptrtoint ptr %c_dma_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div1.i.i, ptr %c_dma_size, align 4
  %9 = load ptr, ptr %runtime1, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i117 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 21
  %12 = ptrtoint ptr %frame_bits.i.i117 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_bits.i.i117, align 8
  %mul.i.i118 = mul i32 %13, %11
  %div1.i.i119 = lshr i32 %mul.i.i118, 3
  %c_period_size = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 27
  %14 = ptrtoint ptr %c_period_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div1.i.i119, ptr %c_period_size, align 4
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %15 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %format, align 4
  %call3 = tail call i32 @snd_pcm_format_width(i32 noundef %16) #10
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
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %ctrl = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctrl, align 4
  %and = and i32 %20, -17
  store i32 %and, ptr %ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %26, i32 %23) #10, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !216
  tail call void @arm_heavy_mb() #10
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %add16 = add i32 %28, 12
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %29 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %29, i32 218103808) #10, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @arm_heavy_mb() #10
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %35, i32 %32) #10, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  tail call void @arm_heavy_mb() #10
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %41, i32 %38) #10, !srcloc !176
  %sctrl = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 10
  %42 = ptrtoint ptr %sctrl to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sctrl, align 4
  %and37 = and i32 %43, -33841
  %and38 = shl nuw nsw i32 %mode.1, 4
  %or39 = or i32 %and38, 1024
  %or41 = or i32 %and37, %or39
  store i32 %or41, ptr %sctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %49, i32 %46) #10, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !220
  tail call void @arm_heavy_mb() #10
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %57, i32 %54) #10, !srcloc !176
  %u = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 14
  %58 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %u, align 4
  %and62 = and i32 %59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool.not = icmp eq i32 %and62, 0
  br i1 %tobool.not, label %if.then63, label %entry.do.body75_crit_edge

entry.do.body75_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body75

if.then63:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ctrl, align 4
  %and65 = and i32 %61, -536805377
  store i32 %and65, ptr %ctrl, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %62 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rate, align 4
  %div = udiv i32 1411200, %63
  %sub66 = shl i32 %div, 16
  %and67 = add i32 %sub66, 536739840
  %shl68 = and i32 %and67, 536805376
  %or70 = or i32 %shl68, %and65
  store i32 %or70, ptr %ctrl, align 4
  %or73 = or i32 %59, 4
  %64 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or73, ptr %u, align 4
  br label %do.body75

do.body75:                                        ; preds = %if.then63, %entry.do.body75_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !221
  tail call void @arm_heavy_mb() #10
  %65 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ctrl, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  %68 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port, align 4
  %and81 = and i32 %69, 1048575
  %add82 = or i32 %and81, -18874368
  %70 = inttoptr i32 %add82 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %70, i32 %67) #10, !srcloc !176
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_capture_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #10
  %port = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %and = and i32 %3, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %4) #10, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  %6 = and i32 %5, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !223
  tail call void @arm_heavy_mb() #10
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %add5 = add i32 %8, 12
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %9 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 218103808) #10, !srcloc !176
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %add11 = add i32 %11, 52
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %12 = inttoptr i32 %add13 to ptr
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %12) #10, !srcloc !177
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !224
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
  tail call void @_raw_spin_unlock(ptr noundef %1) #10
  ret i32 %ptr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_playback1_open(ptr noundef %substream) #2 align 64 {
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
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #10
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %spdif = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 31
  %8 = ptrtoint ptr %spdif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %spdif, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %playback2_substream = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %playback2_substream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %playback2_substream, align 4
  %cmp = icmp eq ptr %11, null
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  %call = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @snd_es1370_hw_constraints_rates) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ensoniq_playback1_close(ptr nocapture noundef readonly %substream) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %p1_dma_size = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %p1_dma_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div1.i.i, ptr %p1_dma_size, align 4
  %9 = load ptr, ptr %runtime1, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i138 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 21
  %12 = ptrtoint ptr %frame_bits.i.i138 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_bits.i.i138, align 8
  %mul.i.i139 = mul i32 %13, %11
  %div1.i.i140 = lshr i32 %mul.i.i139, 3
  %p1_period_size = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 25
  %14 = ptrtoint ptr %p1_period_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div1.i.i140, ptr %p1_period_size, align 4
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %15 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %format, align 4
  %call3 = tail call i32 @snd_pcm_format_width(i32 noundef %16) #10
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
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #10
  %ctrl = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctrl, align 4
  %and = and i32 %20, -65
  store i32 %and, ptr %ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !225
  tail call void @arm_heavy_mb() #10
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %26, i32 %23) #10, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !226
  tail call void @arm_heavy_mb() #10
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %add16 = add i32 %28, 12
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %29 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %29, i32 201326592) #10, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !227
  tail call void @arm_heavy_mb() #10
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %35, i32 %32) #10, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !228
  tail call void @arm_heavy_mb() #10
  %36 = ptrtoint ptr %p1_dma_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %p1_dma_size, align 4
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %41, i32 %38) #10, !srcloc !176
  %sctrl = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 10
  %42 = ptrtoint ptr %sctrl to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sctrl, align 4
  %and37 = and i32 %43, -10628
  %or39 = or i32 %mode.1, %and37
  %or41 = or i32 %or39, 256
  store i32 %or41, ptr %sctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  tail call void @arm_heavy_mb() #10
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %49, i32 %46) #10, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  tail call void @arm_heavy_mb() #10
  %50 = ptrtoint ptr %p1_period_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %p1_period_size, align 4
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
  %add58 = add i32 %56, 36
  %and59 = and i32 %add58, 1048575
  %add60 = or i32 %and59, -18874368
  %57 = inttoptr i32 %add60 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %57, i32 %54) #10, !srcloc !176
  %58 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ctrl, align 4
  %and63 = and i32 %59, -12289
  store i32 %and63, ptr %ctrl, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %60 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rate, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %61, label %do.end81 [
    i32 5512, label %entry.do.body94_crit_edge
    i32 11025, label %sw.bb66
    i32 22050, label %sw.bb69
    i32 44100, label %sw.bb72
  ]

entry.do.body94_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body94

sw.bb66:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or68 = or i32 %and63, 4096
  %63 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or68, ptr %ctrl, align 4
  br label %do.body94

sw.bb69:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or71 = or i32 %and63, 8192
  %64 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or71, ptr %ctrl, align 4
  br label %do.body94

sw.bb72:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or74 = or i32 %59, 12288
  %65 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or74, ptr %ctrl, align 4
  br label %do.body94

do.end81:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 889, i32 noundef 9, ptr noundef nonnull @.str.28) #10
  br label %do.body94

do.body94:                                        ; preds = %do.end81, %sw.bb72, %sw.bb69, %sw.bb66, %entry.do.body94_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !231
  tail call void @arm_heavy_mb() #10
  %66 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ctrl, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  %69 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %port, align 4
  %and100 = and i32 %70, 1048575
  %add101 = or i32 %and100, -18874368
  %71 = inttoptr i32 %add101 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %71, i32 %68) #10, !srcloc !176
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_playback1_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #10
  %port = getelementptr inbounds %struct.ensoniq, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %and = and i32 %3, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %4) #10, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  %6 = and i32 %5, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  tail call void @arm_heavy_mb() #10
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %add5 = add i32 %8, 12
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %9 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 201326592) #10, !srcloc !176
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %add11 = add i32 %11, 52
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %12 = inttoptr i32 %add13 to ptr
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %12) #10, !srcloc !177
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !234
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
  tail call void @_raw_spin_unlock(ptr noundef %1) #10
  ret i32 %ptr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_rawmidi_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_midi_output_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !235
  tail call void @arm_heavy_mb() #10
  %port = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %add = add i32 %8, 9
  %and2 = and i32 %add, 1048575
  %add3 = or i32 %and2, -18874368
  %9 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 3) #10, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
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
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 0) #10, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !237
  tail call void @arm_heavy_mb() #10
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %19, i32 %16) #10, !srcloc !176
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_midi_output_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #10
  %uartm = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %uartm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uartm, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %uartc = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 12
  br i1 %tobool.not, label %do.body, label %do.body12

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 0) #10, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !238
  tail call void @arm_heavy_mb() #10
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 %12) #10, !srcloc !176
  br label %if.end

do.body12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv) #10, !srcloc !186
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
  tail call void @_raw_spin_unlock_irq(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ensoniq_midi_output_trigger(ptr noundef %substream, i32 noundef %up) #2 align 64 {
entry:
  %byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte) #10
  %4 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %byte, align 1, !annotation !167
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  %13 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #10, !srcloc !181
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  %14 = and i8 %13, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool21.not = icmp eq i8 %14, 0
  br i1 %tobool21.not, label %land.rhs.do.body36_crit_edge, label %while.body

land.rhs.do.body36_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body36

while.body:                                       ; preds = %land.rhs
  %call22 = call i32 @snd_rawmidi_transmit(ptr noundef %substream, ptr noundef nonnull %byte, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 1
  br i1 %cmp23.not, label %do.body28, label %if.then25

if.then25:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %uartc48 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %uartc48, align 4
  %and27 = and i32 %16, -97
  store i32 %and27, ptr %uartc48, align 4
  br label %if.end

do.body28:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !240
  call void @arm_heavy_mb() #10
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
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %18) #10, !srcloc !186
  br label %if.end

if.end:                                           ; preds = %do.body28, %if.then25
  %22 = ptrtoint ptr %uartc48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %uartc48, align 4
  %24 = and i32 %23, 96
  %cmp12 = icmp eq i32 %24, 32
  br i1 %cmp12, label %if.end.land.rhs_crit_edge, label %if.end.do.body36_crit_edge

if.end.do.body36_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body36

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

do.body36:                                        ; preds = %if.end.do.body36_crit_edge, %land.rhs.do.body36_crit_edge, %if.then7.do.body36_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  call void @arm_heavy_mb() #10
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
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %conv40) #10, !srcloc !186
  br label %if.end67

if.else47:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %7)
  %cmp51 = icmp eq i32 %7, 32
  br i1 %cmp51, label %if.then53, label %if.else47.if.end67_crit_edge

if.else47.if.end67_crit_edge:                     ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then53:                                        ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #12
  %and55 = and i32 %6, -97
  %30 = ptrtoint ptr %uartc48 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and55, ptr %uartc48, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !242
  tail call void @arm_heavy_mb() #10
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
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 %conv60) #10, !srcloc !186
  br label %if.end67

if.end67:                                         ; preds = %if.then53, %if.else47.if.end67_crit_edge, %do.body36, %if.then.if.end67_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call2) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_midi_input_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !243
  tail call void @arm_heavy_mb() #10
  %port = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %add = add i32 %8, 9
  %and2 = and i32 %add, 1048575
  %add3 = or i32 %and2, -18874368
  %9 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 3) #10, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !244
  tail call void @arm_heavy_mb() #10
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
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 0) #10, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  tail call void @arm_heavy_mb() #10
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %19, i32 %16) #10, !srcloc !176
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_midi_input_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #10
  %uartm = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %uartm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uartm, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %uartc = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 12
  br i1 %tobool.not, label %do.body, label %do.body12

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 0) #10, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  tail call void @arm_heavy_mb() #10
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 %12) #10, !srcloc !176
  br label %if.end

do.body12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv) #10, !srcloc !186
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
  tail call void @_raw_spin_unlock_irq(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ensoniq_midi_input_trigger(ptr nocapture noundef readonly %substream, i32 noundef %up) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
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
  call void @__sanitizer_cov_trace_pc() #12
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
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #10, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !247
  %inc = add nuw nsw i32 %idx.056, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %uartc26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uartc26, align 4
  %or = or i32 %11, 128
  store i32 %or, ptr %uartc26, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !248
  tail call void @arm_heavy_mb() #10
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
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %conv20) #10, !srcloc !186
  br label %if.end43

if.else:                                          ; preds = %entry
  br i1 %tobool28.not, label %if.else.if.end43_crit_edge, label %if.then29

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %and31 = and i32 %5, -129
  %17 = ptrtoint ptr %uartc26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and31, ptr %uartc26, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  tail call void @arm_heavy_mb() #10
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
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %conv36) #10, !srcloc !186
  br label %if.end43

if.end43:                                         ; preds = %if.then29, %if.else.if.end43_crit_edge, %for.end, %if.then.if.end43_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call2) #10
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
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  tail call void @arm_heavy_mb() #10
  %port = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port, align 4
  %add = add i32 %6, 16
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %7 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %7, i16 534) #10, !srcloc !170
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %add4 = add i32 %9, 16
  %and5 = and i32 %add4, 1048575
  %add6 = or i32 %and5, -18874368
  %10 = inttoptr i32 %add6 to ptr
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %10) #10, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 21474800) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !252
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port, align 4
  %add13 = add i32 %14, 16
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %15 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %15, i16 790) #10, !srcloc !170
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port, align 4
  %add19 = add i32 %17, 16
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %18 = inttoptr i32 %add21 to ptr
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %18) #10, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !253
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 21474800) #10
  %ak4531 = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 14, i32 0, i32 1
  %21 = ptrtoint ptr %ak4531 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ak4531, align 4
  tail call void @snd_ak4531_suspend(ptr noundef %22) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ensoniq_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  tail call fastcc void @snd_ensoniq_chip_init(ptr noundef %3)
  %ak4531 = getelementptr inbounds %struct.ensoniq, ptr %3, i32 0, i32 14, i32 0, i32 1
  %4 = ptrtoint ptr %ak4531 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ak4531, align 4
  tail call void @snd_ak4531_resume(ptr noundef %5) #10
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %6 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ak4531_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ak4531_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
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
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !49, !51, !53, !55, !57, !59, !61, !62, !64, !65, !67, !68, !69, !70, !71, !72, !73, !75, !77, !79, !80, !81, !83, !85, !87, !88, !89, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !141, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !156}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/ens1370.c", i32 51, i32 1}
!2 = !{ptr @__UNIQUE_ID_file243, !3, !"__UNIQUE_ID_file243", i1 false, i1 false}
!3 = !{!"../sound/pci/ens1370.c", i32 52, i32 1}
!4 = !{ptr @__UNIQUE_ID_license244, !3, !"__UNIQUE_ID_license244", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description245, !6, !"__UNIQUE_ID_description245", i1 false, i1 false}
!6 = !{!"../sound/pci/ens1370.c", i32 54, i32 1}
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
!22 = !{ptr @__param_joystick, !23, !"__param_joystick", i1 false, i1 false}
!23 = !{!"../sound/pci/ens1370.c", i32 90, i32 1}
!24 = !{ptr @__UNIQUE_ID_joysticktype252, !23, !"__UNIQUE_ID_joysticktype252", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_joystick253, !26, !"__UNIQUE_ID_joystick253", i1 false, i1 false}
!26 = !{!"../sound/pci/ens1370.c", i32 91, i32 1}
!27 = !{ptr @__initcall__kmod_snd_ens1370__254_2381_ens137x_driver_init6, !28, !"__initcall__kmod_snd_ens1370__254_2381_ens137x_driver_init6", i1 false, i1 false}
!28 = !{!"../sound/pci/ens1370.c", i32 2381, i32 1}
!29 = !{ptr @__exitcall_ens137x_driver_exit, !28, !"__exitcall_ens137x_driver_exit", i1 false, i1 false}
!30 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!31 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!32 = !{ptr @index, !33, !"index", i1 false, i1 false}
!33 = !{!"../sound/pci/ens1370.c", i32 64, i32 12}
!34 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!35 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!36 = !{ptr @id, !37, !"id", i1 false, i1 false}
!37 = !{!"../sound/pci/ens1370.c", i32 65, i32 14}
!38 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!39 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!40 = !{ptr @enable, !41, !"enable", i1 false, i1 false}
!41 = !{!"../sound/pci/ens1370.c", i32 66, i32 13}
!42 = !{ptr @__param_str_joystick, !23, !"__param_str_joystick", i1 false, i1 false}
!43 = !{ptr @__param_arr_joystick, !23, !"__param_arr_joystick", i1 false, i1 false}
!44 = !{ptr @joystick, !45, !"joystick", i1 false, i1 false}
!45 = !{!"../sound/pci/ens1370.c", i32 71, i32 13}
!46 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ens137x_driver, !48, !"ens137x_driver", i1 false, i1 false}
!48 = !{!"../sound/pci/ens1370.c", i32 2372, i32 26}
!49 = !{ptr @snd_audiopci_ids, !50, !"snd_audiopci_ids", i1 false, i1 false}
!50 = !{!"../sound/pci/ens1370.c", i32 427, i32 35}
!51 = !{ptr @snd_audiopci_probe.dev, !52, !"dev", i1 false, i1 false}
!52 = !{!"../sound/pci/ens1370.c", i32 2310, i32 13}
!53 = distinct !{null, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/pci/ens1370.c", i32 2354, i32 23}
!55 = !{ptr @.str.2, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/pci/ens1370.c", i32 2356, i32 26}
!57 = !{ptr @.str.3, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/pci/ens1370.c", i32 2357, i32 26}
!59 = !{ptr @snd_ensoniq_create.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../sound/pci/ens1370.c", i32 2025, i32 2}
!61 = !{ptr @.str.4, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @snd_ensoniq_create.__key.5, !63, !"__key", i1 false, i1 false}
!63 = !{!"../sound/pci/ens1370.c", i32 2026, i32 2}
!64 = !{ptr @.str.6, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.7, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/pci/ens1370.c", i32 2036, i32 3}
!67 = !{ptr @.str.8, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.9, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.10, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.11, !66, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @snd_ensoniq_create._entry, !66, !"_entry", i1 false, i1 false}
!72 = !{ptr @snd_ensoniq_create._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.12, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/pci/ens1370.c", i32 1867, i32 38}
!75 = !{ptr @.str.13, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/pci/ens1370.c", i32 1851, i32 2}
!77 = !{ptr @.str.14, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/pci/ens1370.c", i32 1852, i32 2}
!79 = !{ptr @.str.15, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.16, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.17, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/pci/ens1370.c", i32 1855, i32 2}
!83 = !{ptr @.str.18, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/pci/ens1370.c", i32 1857, i32 2}
!85 = !{ptr @.str.19, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/pci/ens1370.c", i32 579, i32 2}
!87 = !{ptr @.str.20, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @snd_es1370_codec_write._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @snd_es1370_codec_write._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.21, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/pci/ens1370.c", i32 1697, i32 1}
!92 = !{ptr @.str.22, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/pci/ens1370.c", i32 1698, i32 1}
!94 = !{ptr @snd_es1370_controls, !95, !"snd_es1370_controls", i1 false, i1 false}
!95 = !{!"../sound/pci/ens1370.c", i32 1696, i32 38}
!96 = !{ptr @.str.23, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/pci/ens1370.c", i32 1234, i32 35}
!98 = !{ptr @.str.24, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/pci/ens1370.c", i32 1247, i32 20}
!100 = !{ptr @snd_ensoniq_playback2_ops, !101, !"snd_ensoniq_playback2_ops", i1 false, i1 false}
!101 = !{!"../sound/pci/ens1370.c", i32 1205, i32 33}
!102 = !{ptr @snd_ensoniq_playback2, !103, !"snd_ensoniq_playback2", i1 false, i1 false}
!103 = !{!"../sound/pci/ens1370.c", i32 1056, i32 38}
!104 = !{ptr @snd_es1370_hw_constraints_clock, !105, !"snd_es1370_hw_constraints_clock", i1 false, i1 false}
!105 = !{!"../sound/pci/ens1370.c", i32 461, i32 51}
!106 = !{ptr @es1370_clock, !107, !"es1370_clock", i1 false, i1 false}
!107 = !{!"../sound/pci/ens1370.c", i32 455, i32 32}
!108 = !{ptr @snd_ensoniq_sample_shift, !109, !"snd_ensoniq_sample_shift", i1 false, i1 false}
!109 = !{!"../sound/pci/ens1370.c", i32 487, i32 27}
!110 = !{ptr @snd_ensoniq_capture_ops, !111, !"snd_ensoniq_capture_ops", i1 false, i1 false}
!111 = !{!"../sound/pci/ens1370.c", i32 1213, i32 33}
!112 = !{ptr @snd_ensoniq_capture, !113, !"snd_ensoniq_capture", i1 false, i1 false}
!113 = !{!"../sound/pci/ens1370.c", i32 1076, i32 38}
!114 = !{ptr @surround_map, !115, !"surround_map", i1 false, i1 false}
!115 = !{!"../sound/pci/ens1370.c", i32 1221, i32 40}
!116 = !{ptr @.str.26, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/pci/ens1370.c", i32 1268, i32 35}
!118 = !{ptr @.str.27, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/ens1370.c", i32 1279, i32 20}
!120 = !{ptr @snd_ensoniq_playback1_ops, !121, !"snd_ensoniq_playback1_ops", i1 false, i1 false}
!121 = !{!"../sound/pci/ens1370.c", i32 1197, i32 33}
!122 = !{ptr @snd_ensoniq_playback1, !123, !"snd_ensoniq_playback1", i1 false, i1 false}
!123 = !{!"../sound/pci/ens1370.c", i32 1029, i32 38}
!124 = !{ptr @snd_es1370_hw_constraints_rates, !125, !"snd_es1370_hw_constraints_rates", i1 false, i1 false}
!125 = !{!"../sound/pci/ens1370.c", i32 450, i32 48}
!126 = !{ptr @snd_es1370_fixed_rates, !127, !"snd_es1370_fixed_rates", i1 false, i1 false}
!127 = !{!"../sound/pci/ens1370.c", i32 448, i32 27}
!128 = !{ptr @.str.28, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/pci/ens1370.c", i32 889, i32 11}
!130 = !{ptr @.str.29, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/pci/ens1370.c", i32 2258, i32 22}
!132 = !{ptr @snd_ensoniq_midi_output, !133, !"snd_ensoniq_midi_output", i1 false, i1 false}
!133 = !{!"../sound/pci/ens1370.c", i32 2236, i32 37}
!134 = !{ptr @snd_ensoniq_midi_input, !135, !"snd_ensoniq_midi_input", i1 false, i1 false}
!135 = !{!"../sound/pci/ens1370.c", i32 2243, i32 37}
!136 = !{ptr @.str.30, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/pci/ens1370.c", i32 1781, i32 8}
!138 = !{ptr @.str.31, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/pci/ens1370.c", i32 1784, i32 4}
!140 = !{ptr @.str.32, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.33, !139, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @snd_ensoniq_create_gameport._entry, !139, !"_entry", i1 false, i1 false}
!143 = !{ptr @snd_ensoniq_create_gameport._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.35, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/pci/ens1370.c", i32 1792, i32 4}
!146 = !{ptr @snd_ensoniq_create_gameport._entry.34, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @snd_ensoniq_create_gameport._entry_ptr.36, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.38, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/pci/ens1370.c", i32 1802, i32 3}
!150 = !{ptr @snd_ensoniq_create_gameport._entry.37, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @snd_ensoniq_create_gameport._entry_ptr.39, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.40, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/pci/ens1370.c", i32 1808, i32 24}
!154 = !{ptr @.str.41, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/pci/ens1370.c", i32 1809, i32 24}
!156 = !{ptr @snd_ensoniq_pm, !157, !"snd_ensoniq_pm", i1 false, i1 false}
!157 = !{!"../sound/pci/ens1370.c", i32 2010, i32 8}
!158 = !{i32 1, !"wchar_size", i32 2}
!159 = !{i32 1, !"min_enum_size", i32 4}
!160 = !{i32 8, !"branch-target-enforcement", i32 0}
!161 = !{i32 8, !"sign-return-address", i32 0}
!162 = !{i32 8, !"sign-return-address-all", i32 0}
!163 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!164 = !{i32 7, !"uwtable", i32 1}
!165 = !{i32 7, !"frame-pointer", i32 2}
!166 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!167 = !{!"auto-init"}
!168 = !{i8 0, i8 2}
!169 = !{i64 2154841252}
!170 = !{i64 759750}
!171 = !{i64 759950}
!172 = !{i64 2154842354}
!173 = !{i64 2154843328}
!174 = !{i64 2154844430}
!175 = !{i64 2154851155}
!176 = !{i64 760370}
!177 = !{i64 760788}
!178 = !{i64 2154882461}
!179 = !{i64 2154882843}
!180 = !{i64 2154883418}
!181 = !{i64 760568}
!182 = !{i64 2154869681}
!183 = !{i64 2154870067}
!184 = !{i64 2154870471}
!185 = !{i64 2154870797}
!186 = !{i64 760173}
!187 = !{i64 2154871240}
!188 = !{i64 2154851853}
!189 = !{i64 2154853039}
!190 = !{i64 2154853603}
!191 = !{i64 2154854171}
!192 = !{i64 2154854762}
!193 = !{i64 2154855391}
!194 = !{i64 2154856018}
!195 = !{i64 2154856628}
!196 = !{i64 2154857178}
!197 = !{i64 2154857612}
!198 = !{i64 2154858087}
!199 = !{i64 2154803216}
!200 = !{i64 2154803641}
!201 = !{i64 2154806849}
!202 = !{i64 2154839990}
!203 = !{i64 2154820955}
!204 = !{i64 2154821582}
!205 = !{i64 2154822198}
!206 = !{i64 2154822820}
!207 = !{i64 2154823583}
!208 = !{i64 2154824233}
!209 = !{i64 2154825051}
!210 = !{i64 2154810921}
!211 = !{i64 2154815211}
!212 = !{i64 2154833339}
!213 = !{i64 2154833722}
!214 = !{i64 2154835088}
!215 = !{i64 2154825688}
!216 = !{i64 2154826315}
!217 = !{i64 2154826929}
!218 = !{i64 2154827548}
!219 = !{i64 2154828220}
!220 = !{i64 2154828867}
!221 = !{i64 2154829683}
!222 = !{i64 2154835921}
!223 = !{i64 2154836304}
!224 = !{i64 2154837668}
!225 = !{i64 2154815851}
!226 = !{i64 2154816478}
!227 = !{i64 2154817094}
!228 = !{i64 2154817716}
!229 = !{i64 2154818404}
!230 = !{i64 2154819054}
!231 = !{i64 2154820318}
!232 = !{i64 2154830757}
!233 = !{i64 2154831140}
!234 = !{i64 2154832506}
!235 = !{i64 2154874887}
!236 = !{i64 2154875343}
!237 = !{i64 2154875837}
!238 = !{i64 2154876931}
!239 = !{i64 2154880226}
!240 = !{i64 2154880543}
!241 = !{i64 2154880995}
!242 = !{i64 2154881488}
!243 = !{i64 2154871727}
!244 = !{i64 2154872183}
!245 = !{i64 2154872677}
!246 = !{i64 2154873771}
!247 = !{i64 2154878463}
!248 = !{i64 2154878786}
!249 = !{i64 2154879252}
!250 = !{i64 2154858799}
!251 = !{i64 2154859901}
!252 = !{i64 2154860875}
!253 = !{i64 2154861977}
