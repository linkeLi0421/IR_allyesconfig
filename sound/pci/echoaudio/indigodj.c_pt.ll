; ModuleID = '/llk/IR_all_yes/sound/pci/echoaudio/indigodj.c_pt.bc'
source_filename = "../sound/pci/echoaudio/indigodj.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.echoaudio = type { %struct.spinlock, [32 x ptr], %struct.mutex, i16, [6 x i16], i16, [10 x i16], i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, %struct.timer_list, i8, i8, i8, i8, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [32 x i8], [32 x i8], [32 x i8], [32 x [32 x i8]], [32 x [32 x i8]], i16, i16, i16, i16, i16, ptr, i16, i16, i32, ptr, i32, [8 x ptr] }
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
%struct.comm_page = type { i32, i32, i32, i32, i32, i32, i32, i32, [32 x i16], [32 x %struct.sg_entry], [32 x i32], [32 x i8], [32 x i8], [16 x i8], [16 x i8], [384 x i8], [168 x i32], [192 x i32], [256 x i16], i8, i8, i8, i8, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, [24 x i8], [64 x i8], [32 x i8] }
%struct.sg_entry = type { i32, i32 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.audiopipe = type { ptr, i32, i32, i32, i16, i16, %struct.snd_dma_buffer, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraint_list, i16, i8 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.audioformat = type { i8, i8, i8, i8 }
%struct.snd_pcm_hw_rule = type { i32, i32, [5 x i32], ptr, ptr }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.74, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.74 = type { %struct.anon.77, [40 x i8] }
%struct.anon.77 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.83, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.83 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.78, [128 x i8] }
%union.anon.78 = type { %union.anon.80 }
%union.anon.80 = type { [64 x i64] }

@__UNIQUE_ID_firmware242 = internal constant [39 x i8] c"snd_indigodj.firmware=ea/loader_dsp.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware243 = internal constant [42 x i8] c"snd_indigodj.firmware=ea/indigo_dj_dsp.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [56 x i8] c"snd_indigodj.author=Giuliano Pochini <pochini@shiny.it>\00", section ".modinfo", align 1
@__UNIQUE_ID_file255 = internal constant [51 x i8] c"snd_indigodj.file=sound/pci/echoaudio/snd-indigodj\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [28 x i8] c"snd_indigodj.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description257 = internal constant [63 x i8] c"snd_indigodj.description=Echoaudio Indigo DJ soundcards driver\00", section ".modinfo", align 1
@__param_str_index = internal constant [19 x i8] c"snd_indigodj.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype258 = internal constant [41 x i8] c"snd_indigodj.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index259 = internal constant [61 x i8] c"snd_indigodj.parm=index:Index value for Indigo DJ soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [16 x i8] c"snd_indigodj.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype260 = internal constant [40 x i8] c"snd_indigodj.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id261 = internal constant [56 x i8] c"snd_indigodj.parm=id:ID string for Indigo DJ soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [20 x i8] c"snd_indigodj.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype262 = internal constant [43 x i8] c"snd_indigodj.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable263 = internal constant [53 x i8] c"snd_indigodj.parm=enable:Enable Indigo DJ soundcard.\00", section ".modinfo", align 1
@__initcall__kmod_snd_indigodj__278_2255_echo_driver_init6 = internal global ptr @echo_driver_init, section ".initcall6.init", align 4
@echo_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_echo_ids, ptr @snd_echo_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_echo_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_echo_driver_exit = internal global ptr @echo_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"snd_indigodj\00", [19 x i8] zeroinitializer }, align 32
@snd_echo_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4183, i32 13328, i32 60608, i32 176, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_echo_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @snd_echo_suspend, ptr @snd_echo_resume, ptr @snd_echo_suspend, ptr @snd_echo_resume, ptr @snd_echo_suspend, ptr @snd_echo_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@snd_echo_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Echo_Indigo DJ\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"56301\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"56361\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s rev.%d (DSP%s) at 0x%lx irq %i\00", [62 x i8] zeroinitializer }, align 32
@snd_echo_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 2014, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"new pcm error %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_echo_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sound/pci/echoaudio/echoaudio.c\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_echo_probe._entry_ptr = internal global ptr @snd_echo_probe._entry, section ".printk_index", align 4
@snd_echo_vmixer = internal global { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.139, i32 0, i32 19, i32 0, ptr @snd_echo_vmixer_info, ptr @snd_echo_vmixer_get, ptr @snd_echo_vmixer_put, %union.anon.84 { ptr @db_scale_output_gain }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_echo_vumeters_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.140, i32 0, i32 2, i32 0, ptr @snd_ctl_boolean_mono_info, ptr null, ptr @snd_echo_vumeters_switch_put, %union.anon.84 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_echo_vumeters = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.141, i32 0, i32 21, i32 0, ptr @snd_echo_vumeters_info, ptr @snd_echo_vumeters_get, ptr null, %union.anon.84 { ptr @db_scale_output_gain }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_echo_channels_info = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 1, i32 0, i32 0, ptr @.str.142, i32 0, i32 5, i32 0, ptr @snd_echo_channels_info_info, ptr @snd_echo_channels_info_get, ptr null, %union.anon.84 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_echo_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 2135, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Card registered: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@snd_echo_probe._entry_ptr.13 = internal global ptr @snd_echo_probe._entry.10, section ".printk_index", align 4
@snd_echo_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->lock\00", [20 x i8] zeroinitializer }, align 32
@snd_echo_create.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&chip->mode_mutex\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Indigo DJ\00", [22 x i8] zeroinitializer }, align 32
@snd_echo_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.7, i32 1935, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ioremap failed\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_echo_create\00", [16 x i8] zeroinitializer }, align 32
@snd_echo_create._entry_ptr = internal global ptr @snd_echo_create._entry, section ".printk_index", align 4
@snd_echo_create._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.7, i32 1941, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cannot grab irq\0A\00", [47 x i8] zeroinitializer }, align 32
@snd_echo_create._entry_ptr.22 = internal global ptr @snd_echo_create._entry.20, section ".printk_index", align 4
@snd_echo_create.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.7, ptr @.str.23, i8 1, i8 -26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"pci=%p irq=%d subdev=%04x Init hardware...\0A\00", [52 x i8] zeroinitializer }, align 32
@snd_echo_create._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.19, ptr @.str.7, i32 1965, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"init_hw err=%d\0A\00", [16 x i8] zeroinitializer }, align 32
@snd_echo_create._entry_ptr.26 = internal global ptr @snd_echo_create._entry.24, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@send_vector._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.29, i32 83, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"timeout on send_vector\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"send_vector\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sound/pci/echoaudio/echoaudio_dsp.c\00", [60 x i8] zeroinitializer }, align 32
@send_vector._entry_ptr = internal global ptr @send_vector._entry, section ".printk_index", align 4
@stop_transport.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.29, ptr @.str.31, i8 0, i8 -24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stop_transport\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"stop_transport: No pipes to stop!\0A\00", [61 x i8] zeroinitializer }, align 32
@wait_handshake._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.29, i32 56, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"wait_handshake(): Timeout waiting for DSP\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wait_handshake\00", [17 x i8] zeroinitializer }, align 32
@wait_handshake._entry_ptr = internal global ptr @wait_handshake._entry, section ".printk_index", align 4
@free_firmware_cache.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.7, ptr @.str.35, i8 0, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"free_firmware_cache\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"release_firmware(%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sound/pci/echoaudio/indigodj_dsp.c\00", [61 x i8] zeroinitializer }, align 32
@init_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.36, i32 47, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"init_hw - could not initialize DSP comm page\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"init_hw\00", [24 x i8] zeroinitializer }, align 32
@init_hw._entry_ptr = internal global ptr @init_hw._entry, section ".printk_index", align 4
@get_firmware.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.7, ptr @.str.40, i8 0, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_firmware\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"firmware requested: %s is cached\0A\00", [62 x i8] zeroinitializer }, align 32
@card_fw = internal constant { [2 x %struct.firmware], [40 x i8] } { [2 x %struct.firmware] [%struct.firmware { i32 0, ptr @.str.44, ptr null }, %struct.firmware { i32 0, ptr @.str.45, ptr null }], [40 x i8] zeroinitializer }, align 32
@get_firmware.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.7, ptr @.str.41, i8 0, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"firmware requested: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ea/%s\00", [26 x i8] zeroinitializer }, align 32
@get_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.39, ptr @.str.7, i32 53, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"get_firmware(): Firmware not available (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@get_firmware._entry_ptr = internal global ptr @get_firmware._entry, section ".printk_index", align 4
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"loader_dsp.fw\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"indigo_dj_dsp.fw\00", [47 x i8] zeroinitializer }, align 32
@load_dsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.29, i32 341, ptr @.str.48, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DSP is already loaded!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"load_dsp\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@load_dsp._entry_ptr = internal global ptr @load_dsp._entry, section ".printk_index", align 4
@load_dsp.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.29, ptr @.str.49, i8 0, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"load_dsp: Set bad_board to true\0A\00", [63 x i8] zeroinitializer }, align 32
@load_dsp._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.47, ptr @.str.29, i32 360, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"LoadDsp: send_vector DSP_VC_RESET failed, Critical Failure\0A\00", [36 x i8] zeroinitializer }, align 32
@load_dsp._entry_ptr.52 = internal global ptr @load_dsp._entry.50, section ".printk_index", align 4
@load_dsp._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.47, ptr @.str.29, i32 376, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"load_dsp: Timeout waiting for CHI32_STATUS_REG_HF3\0A\00", [44 x i8] zeroinitializer }, align 32
@load_dsp._entry_ptr.55 = internal global ptr @load_dsp._entry.53, section ".printk_index", align 4
@load_dsp._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.47, ptr @.str.29, i32 414, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"load_dsp: failed to write number of DSP words\0A\00", [49 x i8] zeroinitializer }, align 32
@load_dsp._entry_ptr.58 = internal global ptr @load_dsp._entry.56, section ".printk_index", align 4
@load_dsp._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.47, ptr @.str.29, i32 419, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"load_dsp: failed to write DSP address\0A\00", [57 x i8] zeroinitializer }, align 32
@load_dsp._entry_ptr.61 = internal global ptr @load_dsp._entry.59, section ".printk_index", align 4
@load_dsp._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.47, ptr @.str.29, i32 424, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"load_dsp: failed to write DSP memory type\0A\00", [53 x i8] zeroinitializer }, align 32
@load_dsp._entry_ptr.64 = internal global ptr @load_dsp._entry.62, section ".printk_index", align 4
@load_dsp._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.47, ptr @.str.29, i32 432, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"load_dsp: failed to write DSP data\0A\00", [60 x i8] zeroinitializer }, align 32
@load_dsp._entry_ptr.67 = internal global ptr @load_dsp._entry.65, section ".printk_index", align 4
@load_dsp._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.47, ptr @.str.29, i32 440, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"load_dsp: Failed to write final zero\0A\00", [58 x i8] zeroinitializer }, align 32
@load_dsp._entry_ptr.70 = internal global ptr @load_dsp._entry.68, section ".printk_index", align 4
@load_dsp._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.47, ptr @.str.29, i32 454, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"load_dsp: Failed to write DSP_FNC_SET_COMMPAGE_ADDR\0A\00", [43 x i8] zeroinitializer }, align 32
@load_dsp._entry_ptr.73 = internal global ptr @load_dsp._entry.71, section ".printk_index", align 4
@load_dsp._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.47, ptr @.str.29, i32 460, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"load_dsp: Failed to write comm page address\0A\00", [51 x i8] zeroinitializer }, align 32
@load_dsp._entry_ptr.76 = internal global ptr @load_dsp._entry.74, section ".printk_index", align 4
@load_dsp._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.47, ptr @.str.29, i32 470, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"load_dsp: Failed to read serial number\0A\00", [56 x i8] zeroinitializer }, align 32
@load_dsp._entry_ptr.79 = internal global ptr @load_dsp._entry.77, section ".printk_index", align 4
@load_dsp._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.47, ptr @.str.29, i32 482, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"load_dsp: DSP load timed out waiting for HF4\0A\00", [50 x i8] zeroinitializer }, align 32
@load_dsp._entry_ptr.82 = internal global ptr @load_dsp._entry.80, section ".printk_index", align 4
@install_resident_loader.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.29, ptr @.str.84, i8 0, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"install_resident_loader\00", [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Resident loader already installed; status is 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@install_resident_loader._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.29, i32 252, ptr @.str.48, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Firmware not found !\0A\00", [42 x i8] zeroinitializer }, align 32
@install_resident_loader._entry_ptr = internal global ptr @install_resident_loader._entry, section ".printk_index", align 4
@install_resident_loader._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.83, ptr @.str.29, i32 288, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"install_resident_loader: Failed to write word count!\0A\00", [42 x i8] zeroinitializer }, align 32
@install_resident_loader._entry_ptr.88 = internal global ptr @install_resident_loader._entry.86, section ".printk_index", align 4
@install_resident_loader._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.83, ptr @.str.29, i32 294, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"install_resident_loader: Failed to write DSP address!\0A\00", [41 x i8] zeroinitializer }, align 32
@install_resident_loader._entry_ptr.91 = internal global ptr @install_resident_loader._entry.89, section ".printk_index", align 4
@install_resident_loader._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.83, ptr @.str.29, i32 304, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"install_resident_loader: Failed to write DSP code\0A\00", [45 x i8] zeroinitializer }, align 32
@install_resident_loader._entry_ptr.94 = internal global ptr @install_resident_loader._entry.92, section ".printk_index", align 4
@install_resident_loader._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.83, ptr @.str.29, i32 319, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Resident loader failed to set HF5\0A\00", [61 x i8] zeroinitializer }, align 32
@install_resident_loader._entry_ptr.97 = internal global ptr @install_resident_loader._entry.95, section ".printk_index", align 4
@install_resident_loader.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.29, ptr @.str.98, i8 0, i8 80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Resident loader successfully installed\0A\00", [56 x i8] zeroinitializer }, align 32
@write_dsp.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.99, ptr @.str.29, ptr @.str.100, i8 0, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"write_dsp\00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"write_dsp: Set bad_board to true\0A\00", [62 x i8] zeroinitializer }, align 32
@read_sn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.29, i32 153, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to read serial number\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"read_sn\00", [24 x i8] zeroinitializer }, align 32
@read_sn._entry_ptr = internal global ptr @read_sn._entry, section ".printk_index", align 4
@read_sn.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.29, ptr @.str.103, i8 0, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Read serial number %08x %08x %08x %08x %08x\0A\00", [51 x i8] zeroinitializer }, align 32
@read_dsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.29, i32 130, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"read_dsp: Set bad_board to true\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"read_dsp\00", [23 x i8] zeroinitializer }, align 32
@read_dsp._entry_ptr = internal global ptr @read_dsp._entry, section ".printk_index", align 4
@free_firmware.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.106, ptr @.str.7, ptr @.str.107, i8 0, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"free_firmware\00", [18 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"firmware not released (kept in cache)\0A\00", [57 x i8] zeroinitializer }, align 32
@set_vmixer_gain.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.36, ptr @.str.109, i8 0, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"set_vmixer_gain\00", [16 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"set_vmixer_gain: pipe %d, out %d = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@set_sample_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.36, i32 114, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"set_sample_rate: %d invalid!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"set_sample_rate\00", [16 x i8] zeroinitializer }, align 32
@set_sample_rate._entry_ptr = internal global ptr @set_sample_rate._entry, section ".printk_index", align 4
@.str.112 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCM\00", [28 x i8] zeroinitializer }, align 32
@analog_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @pcm_analog_out_open, ptr @pcm_close, ptr null, ptr @pcm_analog_out_hw_params, ptr @pcm_hw_free, ptr @pcm_prepare, ptr @pcm_trigger, ptr null, ptr @pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@analog_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @pcm_analog_in_open, ptr @pcm_close, ptr null, ptr @pcm_analog_in_hw_params, ptr @pcm_hw_free, ptr @pcm_prepare, ptr @pcm_trigger, ptr null, ptr @pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@pcm_hardware_skel = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4784387, i64 4294970374, i32 1760, i32 32000, i32 96000, i32 1, i32 4, i32 262144, i32 32, i32 131072, i32 2, i32 220, i32 0 }, [32 x i8] zeroinitializer }, align 32
@pcm_open.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.7, ptr @.str.114, i8 0, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcm_open\00", [23 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max_channels=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@channels_list = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 1, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 999999], [56 x i8] zeroinitializer }, align 32
@pcm_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.113, ptr @.str.7, i32 340, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"s-g list allocation failed\0A\00", [36 x i8] zeroinitializer }, align 32
@pcm_open._entry_ptr = internal global ptr @pcm_open._entry, section ".printk_index", align 4
@pcm_open.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.7, ptr @.str.116, i8 0, i8 87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"pcm_open opencount=%d can_set_rate=%d, rate_set=%d\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pcm_close.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.117, ptr @.str.7, ptr @.str.116, i8 0, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pcm_close\00", [22 x i8] zeroinitializer }, align 32
@init_engine.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.118, ptr @.str.7, ptr @.str.119, i8 0, i8 -118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"init_engine\00", [20 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hwp_ie free(%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@init_engine._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.118, ptr @.str.7, i32 562, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"allocate_pipes(%d) err=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@init_engine._entry_ptr = internal global ptr @init_engine._entry, section ".printk_index", align 4
@init_engine.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.118, ptr @.str.7, ptr @.str.121, i8 0, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"allocate_pipes()=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@init_engine.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.118, ptr @.str.7, ptr @.str.122, i8 0, i8 -114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"pcm_hw_params (bufsize=%dB periods=%d persize=%dB)\0A\00", [44 x i8] zeroinitializer }, align 32
@allocate_pipes.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.29, ptr @.str.124, i8 1, i8 9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"allocate_pipes\00", [17 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"allocate_pipes: ch=%d int=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@allocate_pipes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.123, ptr @.str.29, i32 1070, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"allocate_pipes: channel already open\0A\00", [58 x i8] zeroinitializer }, align 32
@allocate_pipes._entry_ptr = internal global ptr @allocate_pipes._entry, section ".printk_index", align 4
@sglist_add_mapping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.29, i32 1138, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SGlist: too many fragments\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sglist_add_mapping\00", [45 x i8] zeroinitializer }, align 32
@sglist_add_mapping._entry_ptr = internal global ptr @sglist_add_mapping._entry, section ".printk_index", align 4
@pcm_hw_free.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.128, ptr @.str.7, ptr @.str.129, i8 0, i8 -87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcm_hw_free\00", [20 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pcm_hw_free(%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@pcm_prepare.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.130, ptr @.str.7, ptr @.str.131, i8 0, i8 -82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcm_prepare\00", [20 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Prepare rate=%d format=%d channels=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@pcm_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.130, ptr @.str.7, i32 722, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Prepare error: unsupported format %d\0A\00", [58 x i8] zeroinitializer }, align 32
@pcm_prepare._entry_ptr = internal global ptr @pcm_prepare._entry, section ".printk_index", align 4
@set_audio_format.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.133, ptr @.str.29, ptr @.str.134, i8 0, i8 -44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"set_audio_format\00", [47 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"set_audio_format[%d] = %x\0A\00", [37 x i8] zeroinitializer }, align 32
@start_transport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.29, i32 879, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"start_transport: No pipes to start!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"start_transport\00", [16 x i8] zeroinitializer }, align 32
@start_transport._entry_ptr = internal global ptr @start_transport._entry, section ".printk_index", align 4
@pause_transport.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.137, ptr @.str.29, ptr @.str.138, i8 0, i8 -30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pause_transport\00", [16 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"pause_transport: No pipes to stop!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"VMixer Volume\00", [18 x i8] zeroinitializer }, align 32
@db_scale_output_gain = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -12800, i32 65636], [16 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"VU-meters Switch\00", [47 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VU-meters\00", [22 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Channels info\00", [18 x i8] zeroinitializer }, align 32
@snd_echo_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.7, i32 2192, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"resume init_hw err=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_echo_resume\00", [16 x i8] zeroinitializer }, align 32
@snd_echo_resume._entry_ptr = internal global ptr @snd_echo_resume._entry, section ".printk_index", align 4
@snd_echo_resume._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.144, ptr @.str.7, i32 2218, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@snd_echo_resume._entry_ptr.146 = internal global ptr @snd_echo_resume._entry.145, section ".printk_index", align 4
@snd_echo_resume.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.144, ptr @.str.7, ptr @.str.147, i8 2, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.147 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"resume irq=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.149 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 10, i64 11, i64 32]
@__sancov_gen_cov_switch_values.150 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 64, i64 2, i64 2048]
@__sancov_gen_cov_switch_values.153 = internal global [5 x i64] [i64 3, i64 8, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.154 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 2048]
@___asan_gen_.156 = private unnamed_addr constant [12 x i8] c"echo_driver\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 2246, i32 26 }
@___asan_gen_.159 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 15, i32 12 }
@___asan_gen_.162 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 16, i32 14 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 17, i32 13 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 2255, i32 1 }
@___asan_gen_.171 = private unnamed_addr constant [13 x i8] c"snd_echo_ids\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 59, i32 35 }
@___asan_gen_.174 = private unnamed_addr constant [12 x i8] c"snd_echo_pm\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 2235, i32 8 }
@___asan_gen_.177 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 1976, i32 13 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 2001, i32 23 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 2004, i32 8 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 2006, i32 9 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 2008, i32 26 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 2014, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [16 x i8] c"snd_echo_vmixer\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 1389, i32 32 }
@___asan_gen_.213 = private unnamed_addr constant [25 x i8] c"snd_echo_vumeters_switch\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 1715, i32 38 }
@___asan_gen_.216 = private unnamed_addr constant [18 x i8] c"snd_echo_vumeters\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 1746, i32 38 }
@___asan_gen_.219 = private unnamed_addr constant [23 x i8] c"snd_echo_channels_info\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 1799, i32 38 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 2135, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 1915, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 1920, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 1924, i32 33 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 1935, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 1941, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 1946, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 1965, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 83, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 931, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 56, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 83, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 41, i32 6 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 46, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 39, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant [8 x i8] c"card_fw\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 54, i32 30 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 47, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 49, i32 31 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 52, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 55, i32 6 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 56, i32 6 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 341, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 348, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 359, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 375, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 413, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 418, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 423, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 431, i32 5 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 439, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 453, i32 5 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 459, i32 5 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 469, i32 5 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 481, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 244, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 252, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 287, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 293, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 303, i32 4 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 319, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 323, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 107, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 152, i32 4 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 157, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 130, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 67, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 152, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant [38 x i8] c"../sound/pci/echoaudio/indigodj_dsp.c\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.508, i32 113, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 924, i32 32 }
@___asan_gen_.513 = private unnamed_addr constant [20 x i8] c"analog_playback_ops\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 849, i32 33 }
@___asan_gen_.516 = private unnamed_addr constant [19 x i8] c"analog_capture_ops\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 858, i32 33 }
@___asan_gen_.519 = private unnamed_addr constant [18 x i8] c"pcm_hardware_skel\00", align 1
@___asan_gen_.520 = private constant [34 x i8] c"../sound/pci/echoaudio/indigodj.c\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 64, i32 38 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 286, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant [14 x i8] c"channels_list\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 26, i32 27 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 340, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 348, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 514, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 552, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 561, i32 3 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 566, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 568, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1060, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1069, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 1138, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 679, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 698, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 720, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 848, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 879, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant [39 x i8] c"../sound/pci/echoaudio/echoaudio_dsp.c\00", align 1
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.619, i32 905, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 1390, i32 10 }
@___asan_gen_.624 = private unnamed_addr constant [21 x i8] c"db_scale_output_gain\00", align 1
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 27, i32 14 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 1716, i32 10 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 1747, i32 10 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 1800, i32 10 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 2192, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 2218, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.649 = private unnamed_addr constant [35 x i8] c"../sound/pci/echoaudio/echoaudio.c\00", align 1
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 2223, i32 2 }
@llvm.compiler.used = appending global [220 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description257, ptr @__UNIQUE_ID_enable263, ptr @__UNIQUE_ID_enabletype262, ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_firmware242, ptr @__UNIQUE_ID_firmware243, ptr @__UNIQUE_ID_id261, ptr @__UNIQUE_ID_idtype260, ptr @__UNIQUE_ID_index259, ptr @__UNIQUE_ID_indextype258, ptr @__UNIQUE_ID_license256, ptr @__exitcall_echo_driver_exit, ptr @__initcall__kmod_snd_indigodj__278_2255_echo_driver_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @allocate_pipes._entry, ptr @allocate_pipes._entry_ptr, ptr @echo_driver_exit, ptr @get_firmware._entry, ptr @get_firmware._entry_ptr, ptr @init_engine._entry, ptr @init_engine._entry_ptr, ptr @init_hw._entry, ptr @init_hw._entry_ptr, ptr @install_resident_loader._entry, ptr @install_resident_loader._entry.86, ptr @install_resident_loader._entry.89, ptr @install_resident_loader._entry.92, ptr @install_resident_loader._entry.95, ptr @install_resident_loader._entry_ptr, ptr @install_resident_loader._entry_ptr.88, ptr @install_resident_loader._entry_ptr.91, ptr @install_resident_loader._entry_ptr.94, ptr @install_resident_loader._entry_ptr.97, ptr @load_dsp._entry, ptr @load_dsp._entry.50, ptr @load_dsp._entry.53, ptr @load_dsp._entry.56, ptr @load_dsp._entry.59, ptr @load_dsp._entry.62, ptr @load_dsp._entry.65, ptr @load_dsp._entry.68, ptr @load_dsp._entry.71, ptr @load_dsp._entry.74, ptr @load_dsp._entry.77, ptr @load_dsp._entry.80, ptr @load_dsp._entry_ptr, ptr @load_dsp._entry_ptr.52, ptr @load_dsp._entry_ptr.55, ptr @load_dsp._entry_ptr.58, ptr @load_dsp._entry_ptr.61, ptr @load_dsp._entry_ptr.64, ptr @load_dsp._entry_ptr.67, ptr @load_dsp._entry_ptr.70, ptr @load_dsp._entry_ptr.73, ptr @load_dsp._entry_ptr.76, ptr @load_dsp._entry_ptr.79, ptr @load_dsp._entry_ptr.82, ptr @pcm_open._entry, ptr @pcm_open._entry_ptr, ptr @pcm_prepare._entry, ptr @pcm_prepare._entry_ptr, ptr @read_dsp._entry, ptr @read_dsp._entry_ptr, ptr @read_sn._entry, ptr @read_sn._entry_ptr, ptr @send_vector._entry, ptr @send_vector._entry_ptr, ptr @set_sample_rate._entry, ptr @set_sample_rate._entry_ptr, ptr @sglist_add_mapping._entry, ptr @sglist_add_mapping._entry_ptr, ptr @snd_echo_create._entry, ptr @snd_echo_create._entry.20, ptr @snd_echo_create._entry.24, ptr @snd_echo_create._entry_ptr, ptr @snd_echo_create._entry_ptr.22, ptr @snd_echo_create._entry_ptr.26, ptr @snd_echo_probe._entry, ptr @snd_echo_probe._entry.10, ptr @snd_echo_probe._entry_ptr, ptr @snd_echo_probe._entry_ptr.13, ptr @snd_echo_resume._entry, ptr @snd_echo_resume._entry.145, ptr @snd_echo_resume._entry_ptr, ptr @snd_echo_resume._entry_ptr.146, ptr @start_transport._entry, ptr @start_transport._entry_ptr, ptr @wait_handshake._entry, ptr @wait_handshake._entry_ptr, ptr @echo_driver, ptr @index, ptr @id, ptr @enable, ptr @.str, ptr @snd_echo_ids, ptr @snd_echo_pm, ptr @snd_echo_probe.dev, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @snd_echo_vmixer, ptr @snd_echo_vumeters_switch, ptr @snd_echo_vumeters, ptr @snd_echo_channels_info, ptr @.str.11, ptr @.str.12, ptr @snd_echo_create.__key, ptr @.str.14, ptr @snd_echo_create.__key.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @card_fw, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @analog_playback_ops, ptr @analog_capture_ops, ptr @pcm_hardware_skel, ptr @.str.113, ptr @.str.114, ptr @channels_list, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @db_scale_output_gain, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.147], section "llvm.metadata"
@0 = internal global [165 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @echo_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_vmixer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_vumeters_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_vumeters to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_channels_info to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_create.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_create._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_create._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_vector._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_handshake._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card_fw to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_dsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_dsp._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_dsp._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_dsp._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_dsp._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_dsp._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_dsp._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_dsp._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_dsp._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_dsp._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_dsp._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_dsp._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @install_resident_loader._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @install_resident_loader._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @install_resident_loader._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @install_resident_loader._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @install_resident_loader._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_sn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_dsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_sample_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analog_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analog_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_hardware_skel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channels_list to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_engine._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_pipes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sglist_add_mapping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_transport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_output_gain to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_resume._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @echo_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @echo_driver, ptr noundef null, ptr noundef nonnull @.str) #16
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @echo_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @pci_unregister_driver(ptr noundef nonnull @echo_driver) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_echo_probe(ptr noundef %pci, ptr nocapture noundef readonly %pci_id) #2 align 64 {
entry:
  %pcm.i = alloca ptr, align 4
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #16
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !364
  %1 = load i32, ptr @snd_echo_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp = icmp sgt i32 %1, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @snd_echo_probe.dev, align 4
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
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %5, ptr noundef %7, ptr noundef null, i32 noundef 2636, ptr noundef nonnull %card) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 8
  %call8 = call fastcc i32 @snd_echo_create(ptr noundef %9, ptr noundef %pci)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 2
  %14 = call ptr @memcpy(ptr %driver, ptr @.str.1, i32 15)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 3
  %card_name = getelementptr inbounds %struct.echoaudio, ptr %11, i32 0, i32 12
  %15 = ptrtoint ptr %card_name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card_name, align 4
  %call14 = call ptr @strcpy(ptr noundef %shortname, ptr noundef %16) #19
  %device = getelementptr inbounds %struct.pci_device_id, ptr %pci_id, i32 0, i32 1
  %17 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %device, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13328, i32 %18)
  %cmp15 = icmp eq i32 %18, 13328
  %spec.store.select = select i1 %cmp15, ptr @.str.3, ptr @.str.2
  %longname = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 4
  %subdevice = getelementptr inbounds %struct.pci_device_id, ptr %pci_id, i32 0, i32 3
  %19 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %subdevice, align 4
  %and = and i32 %20, 15
  %dsp_registers_phys = getelementptr inbounds %struct.echoaudio, ptr %11, i32 0, i32 14
  %21 = ptrtoint ptr %dsp_registers_phys to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dsp_registers_phys, align 4
  %irq = getelementptr inbounds %struct.echoaudio, ptr %11, i32 0, i32 17
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  %call21 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.4, ptr noundef %shortname, i32 noundef %and, ptr noundef nonnull %spec.store.select, i32 noundef %22, i32 noundef %24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i) #16
  %25 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i, align 4, !annotation !364
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %11, i32 0, i32 11
  %26 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card.i, align 4
  %call2.i = call i32 @snd_pcm_new(ptr noundef %27, ptr noundef nonnull @.str.112, i32 noundef 0, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %pcm.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.end, label %if.end.i

if.end.i:                                         ; preds = %if.end11
  %28 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pcm.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %11, ptr %private_data.i, align 8
  %analog_pcm.i = getelementptr inbounds %struct.echoaudio, ptr %11, i32 0, i32 9
  %31 = ptrtoint ptr %analog_pcm.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %analog_pcm.i, align 4
  %name.i = getelementptr inbounds %struct.snd_pcm, ptr %29, i32 0, i32 7
  %32 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %card.i, align 4
  %shortname.i = getelementptr inbounds %struct.snd_card, ptr %33, i32 0, i32 3
  %call5.i = call ptr @strcpy(ptr noundef %name.i, ptr noundef %shortname.i) #20
  call void @snd_pcm_set_ops(ptr noundef %29, i32 noundef 0, ptr noundef nonnull @analog_playback_ops) #16
  %34 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %35, i32 noundef 1, ptr noundef nonnull @analog_capture_ops) #16
  %36 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pcm.i, align 4
  %pci.i = getelementptr inbounds %struct.echoaudio, ptr %11, i32 0, i32 13
  %38 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %substream.i.i = getelementptr %struct.snd_pcm, ptr %37, i32 0, i32 8, i32 0, i32 4
  %40 = ptrtoint ptr %substream.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %ss.011.i.i = load ptr, ptr %substream.i.i, align 4
  %tobool.not12.i.i = icmp eq ptr %ss.011.i.i, null
  br i1 %tobool.not12.i.i, label %if.end.i.for.inc4.i.i_crit_edge, label %if.end.i.for.body2.i.i_crit_edge

if.end.i.for.body2.i.i_crit_edge:                 ; preds = %if.end.i
  br label %for.body2.i.i

if.end.i.for.inc4.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc4.i.i

for.body2.i.i:                                    ; preds = %for.body2.i.i.for.body2.i.i_crit_edge, %if.end.i.for.body2.i.i_crit_edge
  %ss.013.i.i = phi ptr [ %ss.0.i.i, %for.body2.i.i.for.body2.i.i_crit_edge ], [ %ss.011.i.i, %if.end.i.for.body2.i.i_crit_edge ]
  %number.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss.013.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %number.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool3.not.i.i = icmp eq i32 %42, 0
  %cond.i.i = select i1 %tobool3.not.i.i, i32 131072, i32 0
  %call.i.i = call i32 @snd_pcm_set_managed_buffer(ptr noundef nonnull %ss.013.i.i, i32 noundef 2, ptr noundef %dev.i, i32 noundef %cond.i.i, i32 noundef 262144) #16
  %next.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss.013.i.i, i32 0, i32 15
  %43 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %ss.0.i.i = load ptr, ptr %next.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %ss.0.i.i, null
  br i1 %tobool.not.i.i, label %for.body2.i.i.for.inc4.i.i_crit_edge, label %for.body2.i.i.for.body2.i.i_crit_edge

for.body2.i.i.for.body2.i.i_crit_edge:            ; preds = %for.body2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body2.i.i

for.body2.i.i.for.inc4.i.i_crit_edge:             ; preds = %for.body2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc4.i.i

for.inc4.i.i:                                     ; preds = %for.body2.i.i.for.inc4.i.i_crit_edge, %if.end.i.for.inc4.i.i_crit_edge
  %substream.1.i.i = getelementptr %struct.snd_pcm, ptr %37, i32 0, i32 8, i32 1, i32 4
  %44 = ptrtoint ptr %substream.1.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %ss.011.1.i.i = load ptr, ptr %substream.1.i.i, align 4
  %tobool.not12.1.i.i = icmp eq ptr %ss.011.1.i.i, null
  br i1 %tobool.not12.1.i.i, label %for.inc4.i.i.if.end27_crit_edge, label %for.inc4.i.i.for.body2.1.i.i_crit_edge

for.inc4.i.i.for.body2.1.i.i_crit_edge:           ; preds = %for.inc4.i.i
  br label %for.body2.1.i.i

for.inc4.i.i.if.end27_crit_edge:                  ; preds = %for.inc4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

for.body2.1.i.i:                                  ; preds = %for.body2.1.i.i.for.body2.1.i.i_crit_edge, %for.inc4.i.i.for.body2.1.i.i_crit_edge
  %ss.013.1.i.i = phi ptr [ %ss.0.1.i.i, %for.body2.1.i.i.for.body2.1.i.i_crit_edge ], [ %ss.011.1.i.i, %for.inc4.i.i.for.body2.1.i.i_crit_edge ]
  %number.1.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss.013.1.i.i, i32 0, i32 3
  %45 = ptrtoint ptr %number.1.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %number.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool3.not.1.i.i = icmp eq i32 %46, 0
  %cond.1.i.i = select i1 %tobool3.not.1.i.i, i32 131072, i32 0
  %call.1.i.i = call i32 @snd_pcm_set_managed_buffer(ptr noundef nonnull %ss.013.1.i.i, i32 noundef 2, ptr noundef %dev.i, i32 noundef %cond.1.i.i, i32 noundef 262144) #16
  %next.1.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss.013.1.i.i, i32 0, i32 15
  %47 = ptrtoint ptr %next.1.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %ss.0.1.i.i = load ptr, ptr %next.1.i.i, align 4
  %tobool.not.1.i.i = icmp eq ptr %ss.0.1.i.i, null
  br i1 %tobool.not.1.i.i, label %for.body2.1.i.i.if.end27_crit_edge, label %for.body2.1.i.i.for.body2.1.i.i_crit_edge

for.body2.1.i.i.for.body2.1.i.i_crit_edge:        ; preds = %for.body2.1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body2.1.i.i

for.body2.1.i.i.if.end27_crit_edge:               ; preds = %for.body2.1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #16
  %48 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %card.i, align 4
  %dev26 = getelementptr inbounds %struct.snd_card, ptr %49, i32 0, i32 27
  %50 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev26, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.5, i32 noundef %call2.i) #21
  br label %cleanup

if.end27:                                         ; preds = %for.body2.1.i.i.if.end27_crit_edge, %for.inc4.i.i.if.end27_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #16
  store i32 32, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @snd_echo_vmixer, i32 0, i32 6), align 4
  %52 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %card.i, align 4
  %call31 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_echo_vmixer, ptr noundef %11) #16
  %call32 = call i32 @snd_ctl_add(ptr noundef %53, ptr noundef %call31) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end27.cleanup_crit_edge, label %if.end35

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end35:                                         ; preds = %if.end27
  %54 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %card.i, align 4
  %call37 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_echo_vumeters_switch, ptr noundef %11) #16
  %call38 = call i32 @snd_ctl_add(ptr noundef %55, ptr noundef %call37) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.end35.cleanup_crit_edge, label %if.end41

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end41:                                         ; preds = %if.end35
  %56 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %card.i, align 4
  %call43 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_echo_vumeters, ptr noundef %11) #16
  %call44 = call i32 @snd_ctl_add(ptr noundef %57, ptr noundef %call43) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.end41.cleanup_crit_edge, label %if.end47

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end47:                                         ; preds = %if.end41
  %58 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %card.i, align 4
  %call49 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_echo_channels_info, ptr noundef %11) #16
  %call50 = call i32 @snd_ctl_add(ptr noundef %59, ptr noundef %call49) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.end47.cleanup_crit_edge, label %if.end53

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end53:                                         ; preds = %if.end47
  %60 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %card, align 4
  %call54 = call i32 @snd_card_register(ptr noundef %61) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end53.cleanup_crit_edge, label %do.end60

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end60:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #18
  %62 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %card, align 4
  %dev61 = getelementptr inbounds %struct.snd_card, ptr %63, i32 0, i32 27
  %64 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev61, align 8
  %longname62 = getelementptr inbounds %struct.snd_card, ptr %63, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %65, ptr noundef nonnull @.str.11, ptr noundef %longname62) #21
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %66 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %11, ptr %driver_data.i.i, align 4
  %67 = load i32, ptr @snd_echo_probe.dev, align 4
  %inc64 = add i32 %67, 1
  store i32 %inc64, ptr @snd_echo_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end60, %if.end53.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %do.end, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.i, %do.end ], [ 0, %do.end60 ], [ -2, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ %call32, %if.end27.cleanup_crit_edge ], [ %call38, %if.end35.cleanup_crit_edge ], [ %call44, %if.end41.cleanup_crit_edge ], [ %call50, %if.end47.cleanup_crit_edge ], [ %call54, %if.end53.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #16
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_echo_create(ptr noundef %card, ptr noundef %pci) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %call = tail call i32 @pci_write_config_byte(ptr noundef %pci, i32 noundef 13, i8 noundef zeroext -64) #16
  %call1 = tail call i32 @pcim_enable_device(ptr noundef %pci) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pci_set_master(ptr noundef %pci) #16
  tail call void @__raw_spin_lock_init(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @snd_echo_create.__key, i16 noundef signext 3) #16
  %card3 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %card3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %card, ptr %card3, align 4
  %pci4 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %pci4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pci, ptr %pci4, align 4
  %irq = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %irq, align 4
  %opencount = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %opencount to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %opencount, align 4
  %mode_mutex = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mode_mutex, ptr noundef nonnull @.str.16, ptr noundef nonnull @snd_echo_create.__key.15) #16
  %can_set_rate = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %can_set_rate to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %can_set_rate, align 2
  %call8 = tail call i32 @pci_request_regions(ptr noundef %pci, ptr noundef nonnull @.str.17) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %7 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %resource, align 8
  %dsp_registers_phys = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 14
  %9 = ptrtoint ptr %dsp_registers_phys to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %dsp_registers_phys, align 4
  %end = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 0, i32 1
  %10 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp14 = icmp eq i32 %11, 0
  br i1 %cmp14, label %if.end11.cond.end_crit_edge, label %cond.false

if.end11.cond.end_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

cond.false:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resource, align 8
  %sub = add i32 %11, 1
  %add = sub i32 %sub, %13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end11.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end11.cond.end_crit_edge ]
  %14 = tail call i32 @llvm.umin.i32(i32 %cond, i32 4096)
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %call25 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %8, i32 noundef %14) #16
  %dsp_registers = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 57
  %15 = ptrtoint ptr %dsp_registers to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call25, ptr %dsp_registers, align 4
  %tobool.not = icmp eq ptr %call25, null
  br i1 %tobool.not, label %do.end30, label %if.end33

do.end30:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %card3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card3, align 4
  %dev32 = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev32, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.18) #21
  br label %cleanup

if.end33:                                         ; preds = %cond.end
  %irq34 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %20 = ptrtoint ptr %irq34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq34, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %21, ptr noundef nonnull @snd_echo_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool36.not = icmp eq i32 %call.i, 0
  br i1 %tobool36.not, label %if.end43, label %do.end40

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  %22 = ptrtoint ptr %card3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card3, align 4
  %dev42 = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev42, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.21) #21
  br label %cleanup

if.end43:                                         ; preds = %if.end33
  %26 = ptrtoint ptr %irq34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq34, align 4
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %irq, align 4
  %sync_irq = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 33
  %29 = ptrtoint ptr %sync_irq to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %27, ptr %sync_irq, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_echo_create.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_echo_create, %if.then52)) #16
          to label %do.end59 [label %if.then52], !srcloc !366

if.then52:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  %dev53 = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 27
  %30 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev53, align 8
  %32 = ptrtoint ptr %pci4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pci4, align 4
  %34 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq, align 4
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 10
  %36 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %subsystem_device, align 2
  %conv = zext i16 %37 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_echo_create.__UNIQUE_ID_ddebug276, ptr noundef %31, ptr noundef nonnull @.str.23, ptr noundef %33, i32 noundef %35, i32 noundef %conv) #16
  br label %do.end59

do.end59:                                         ; preds = %if.then52, %if.end43
  %private_free = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 10
  %38 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @snd_echo_free, ptr %private_free, align 4
  %call.i140 = tail call ptr @snd_devm_alloc_dir_pages(ptr noundef %dev, i32 noundef 2, i32 noundef 0, i32 noundef 3072) #16
  %commpage_dma_buf = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 16
  %39 = ptrtoint ptr %commpage_dma_buf to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i140, ptr %commpage_dma_buf, align 4
  %tobool63.not = icmp eq ptr %call.i140, null
  br i1 %tobool63.not, label %do.end59.cleanup_crit_edge, label %if.end65

do.end59.cleanup_crit_edge:                       ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end65:                                         ; preds = %do.end59
  %addr = getelementptr inbounds %struct.snd_dma_buffer, ptr %call.i140, i32 0, i32 2
  %40 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %addr, align 4
  %comm_page_phys = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 56
  %42 = ptrtoint ptr %comm_page_phys to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %comm_page_phys, align 4
  %area = getelementptr inbounds %struct.snd_dma_buffer, ptr %call.i140, i32 0, i32 1
  %43 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %area, align 4
  %comm_page = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 23
  %45 = ptrtoint ptr %comm_page to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %comm_page, align 4
  %46 = ptrtoint ptr %pci4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pci4, align 4
  %subsystem_device70 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 10
  %48 = ptrtoint ptr %subsystem_device70 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %subsystem_device70, align 2
  %50 = and i16 %49, -16
  call void @__sanitizer_cov_trace_const_cmp2(i16 176, i16 %50)
  %cmp.not.i = icmp eq i16 %50, 176
  br i1 %cmp.not.i, label %if.end22.i, label %do.end.i, !prof !367

do.end.i:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 41, i32 noundef 9, ptr noundef null) #16
  br label %do.end82

if.end22.i:                                       ; preds = %if.end65
  %device = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 8
  %51 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %device, align 2
  %card_name.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 12
  %53 = ptrtoint ptr %card_name.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.17, ptr %card_name.i.i, align 4
  %bad_board.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 34
  %dsp_code.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 53
  %54 = ptrtoint ptr %dsp_code.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %dsp_code.i.i, align 4
  %asic_loaded.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 33
  %55 = call ptr @memset(ptr %44, i32 0, i32 3072)
  %56 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %comm_page, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 786432, ptr %57, align 4
  %59 = load ptr, ptr %comm_page, align 4
  %handshake.i.i = getelementptr inbounds %struct.comm_page, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %handshake.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %handshake.i.i, align 4
  %61 = load ptr, ptr %comm_page, align 4
  %midi_out_free_count.i.i = getelementptr inbounds %struct.comm_page, ptr %61, i32 0, i32 29
  %62 = ptrtoint ptr %midi_out_free_count.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1073741824, ptr %midi_out_free_count.i.i, align 4
  %63 = load ptr, ptr %comm_page, align 4
  %sample_rate.i.i = getelementptr inbounds %struct.comm_page, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %sample_rate.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1152122880, ptr %sample_rate.i.i, align 4
  %65 = load ptr, ptr %comm_page, align 4
  %monitors.i.i = getelementptr inbounds %struct.comm_page, ptr %65, i32 0, i32 15
  %66 = call ptr @memset(ptr %monitors.i.i, i32 128, i32 384)
  %67 = load ptr, ptr %comm_page, align 4
  %vmixer.i.i = getelementptr inbounds %struct.comm_page, ptr %67, i32 0, i32 34
  %68 = call ptr @memset(ptr %vmixer.i.i, i32 128, i32 64)
  %device_id29.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 51
  %69 = ptrtoint ptr %device_id29.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %52, ptr %device_id29.i, align 2
  %subdevice_id30.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 52
  %70 = ptrtoint ptr %subdevice_id30.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %49, ptr %subdevice_id30.i, align 4
  %71 = ptrtoint ptr %bad_board.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %bad_board.i.i, align 1
  %dsp_code_to_load.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 54
  %72 = ptrtoint ptr %dsp_code_to_load.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 1, ptr %dsp_code_to_load.i, align 4
  %73 = ptrtoint ptr %asic_loaded.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %asic_loaded.i.i, align 2
  %input_clock_types.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 49
  %74 = ptrtoint ptr %input_clock_types.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 1, ptr %input_clock_types.i, align 2
  %call31.i = tail call fastcc i32 @load_firmware(ptr noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  br i1 %cmp32.i, label %if.end22.i.do.end82_crit_edge, label %if.end76

if.end22.i.do.end82_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end82

if.end76:                                         ; preds = %if.end22.i
  %75 = ptrtoint ptr %bad_board.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %bad_board.i.i, align 1
  %input_gain.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 44
  %input_clock.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 30
  %76 = call ptr @memset(ptr %input_gain.i.i, i32 128, i32 2112)
  %77 = ptrtoint ptr %input_clock.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %input_clock.i.i, align 1
  %output_clock.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 31
  %78 = ptrtoint ptr %output_clock.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %output_clock.i.i, align 4
  %sample_rate.i.i142 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 26
  %79 = ptrtoint ptr %sample_rate.i.i142 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 44100, ptr %sample_rate.i.i142, align 4
  %call.i.i = tail call fastcc i32 @restore_dsp_rettings(ptr noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp77 = icmp slt i32 %call.i.i, 0
  br i1 %cmp77, label %if.end76.do.end82_crit_edge, label %if.end76.cleanup_crit_edge

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end76.do.end82_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end82

do.end82:                                         ; preds = %if.end76.do.end82_crit_edge, %if.end22.i.do.end82_crit_edge, %do.end.i
  %err.0148 = phi i32 [ %call.i.i, %if.end76.do.end82_crit_edge ], [ %call31.i, %if.end22.i.do.end82_crit_edge ], [ -19, %do.end.i ]
  %dev83 = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 27
  %80 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev83, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.25, i32 noundef %err.0148) #21
  br label %cleanup

cleanup:                                          ; preds = %do.end82, %if.end76.cleanup_crit_edge, %do.end59.cleanup_crit_edge, %do.end40, %do.end30, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end40 ], [ %err.0148, %do.end82 ], [ -12, %do.end30 ], [ %call1, %entry.cleanup_crit_edge ], [ %call8, %if.end.cleanup_crit_edge ], [ -12, %do.end59.cleanup_crit_edge ], [ 0, %if.end76.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_echo_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %dev_id) #16
  %dsp_registers.i.i = getelementptr inbounds %struct.echoaudio, ptr %dev_id, i32 0, i32 57
  %0 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %1, i32 5
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #16, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  %3 = and i32 %2, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %comm_page.i = getelementptr inbounds %struct.echoaudio, ptr %dev_id, i32 0, i32 23
  %4 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %comm_page.i, align 4
  %midi_input.i = getelementptr inbounds %struct.comm_page, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %midi_input.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %midi_input.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !370
  tail call void @arm_heavy_mb() #16
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.then.i
  %i.09.i.i = phi i32 [ 0, %if.then.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %7 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %8, i32 6
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i.i) #16, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !371
  tail call void @arm_heavy_mb() #16
  %11 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i8.i.i = getelementptr i32, ptr %12, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i.i, i32 -176160768) #16, !srcloc !372
  br label %for.body.preheader

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #16
  %inc.i.i = add nuw nsw i32 %i.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 100000
  br i1 %exitcond.not.i.i, label %do.end3.i.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

do.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %card.i.i = getelementptr inbounds %struct.echoaudio, ptr %dev_id, i32 0, i32 11
  %14 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.27) #21
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end3.i.i, %if.then.i.i
  br label %for.body

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %for.body.preheader
  %ss.026 = phi i32 [ %inc, %if.end8.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.echoaudio, ptr %dev_id, i32 0, i32 1, i32 %ss.026
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %for.body.if.end8_crit_edge, label %land.lhs.true

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

land.lhs.true:                                    ; preds = %for.body
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %runtime1.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 44
  %22 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %private_data.i, align 8
  %state.i = getelementptr inbounds %struct.audiopipe, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %cmp.not.i = icmp eq i8 %25, 2
  br i1 %cmp.not.i, label %if.end.i, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.end.i:                                         ; preds = %land.lhs.true
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 16
  %26 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 21
  %28 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %29, %27
  %div1.i.i = lshr i32 %mul.i.i, 3
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %23, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #16
  %last_period.i = getelementptr inbounds %struct.audiopipe, ptr %23, i32 0, i32 1
  %35 = ptrtoint ptr %last_period.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %last_period.i, align 4
  %sub.i = sub i32 %34, %36
  %rem.i = urem i32 %sub.i, %div1.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %rem.i)
  %cmp4.i = icmp eq i32 %sub.i, %rem.i
  br i1 %cmp4.i, label %if.end.i.if.end8_crit_edge, label %if.then5

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then5:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub3.i = sub i32 %36, %rem.i
  %add.i = add i32 %sub3.i, %sub.i
  %37 = ptrtoint ptr %last_period.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add.i, ptr %last_period.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #16
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %19) #16
  tail call void @_raw_spin_lock(ptr noundef %dev_id) #16
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.i.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge, %for.body.if.end8_crit_edge
  %inc = add nuw nsw i32 %ss.026, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %if.end8.cleanup_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end8.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_echo_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %comm_page = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %comm_page, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %active_mask.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 58
  %4 = ptrtoint ptr %active_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %active_mask.i, align 4
  %call.i = tail call fastcc i32 @stop_transport(ptr noundef %1, i32 noundef %5) #16
  %meters_enabled5.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %meters_enabled5.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %meters_enabled5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool7.not.i.i, label %if.then.set_meters_on.exit.i_crit_edge, label %if.then8.i.i

if.then.set_meters_on.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_meters_on.exit.i

if.then8.i.i:                                     ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !370
  tail call void @arm_heavy_mb() #16
  %dsp_registers.i.i22.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 57
  br label %for.body.i26.i.i

for.body.i26.i.i:                                 ; preds = %if.end.i31.i.i.for.body.i26.i.i_crit_edge, %if.then8.i.i
  %i.09.i23.i.i = phi i32 [ 0, %if.then8.i.i ], [ %inc.i29.i.i, %if.end.i31.i.i.for.body.i26.i.i_crit_edge ]
  %8 = ptrtoint ptr %dsp_registers.i.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dsp_registers.i.i22.i.i, align 4
  %arrayidx.i.i24.i.i = getelementptr i32, ptr %9, i32 6
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i24.i.i) #16, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i25.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i25.i.i, label %if.then.i28.i.i, label %if.end.i31.i.i

if.then.i28.i.i:                                  ; preds = %for.body.i26.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !371
  tail call void @arm_heavy_mb() #16
  %12 = ptrtoint ptr %dsp_registers.i.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dsp_registers.i.i22.i.i, align 4
  %arrayidx.i8.i27.i.i = getelementptr i32, ptr %13, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i27.i.i, i32 -251658240) #16, !srcloc !372
  br label %send_vector.exit36.i.i

if.end.i31.i.i:                                   ; preds = %for.body.i26.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #16
  %inc.i29.i.i = add nuw nsw i32 %i.09.i23.i.i, 1
  %exitcond.not.i30.i.i = icmp eq i32 %inc.i29.i.i, 100000
  br i1 %exitcond.not.i30.i.i, label %do.end3.i34.i.i, label %if.end.i31.i.i.for.body.i26.i.i_crit_edge

if.end.i31.i.i.for.body.i26.i.i_crit_edge:        ; preds = %if.end.i31.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i26.i.i

do.end3.i34.i.i:                                  ; preds = %if.end.i31.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %card.i32.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %card.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card.i32.i.i, align 4
  %dev.i33.i.i = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %dev.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i33.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.27) #21
  br label %send_vector.exit36.i.i

send_vector.exit36.i.i:                           ; preds = %do.end3.i34.i.i, %if.then.i28.i.i
  %19 = ptrtoint ptr %meters_enabled5.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %meters_enabled5.i.i, align 1
  %20 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %comm_page, align 4
  %vu_meter.i.i = getelementptr inbounds %struct.comm_page, ptr %21, i32 0, i32 11
  %22 = call ptr @memset(ptr %vu_meter.i.i, i32 128, i32 32)
  %23 = load ptr, ptr %comm_page, align 4
  %peak_meter.i.i = getelementptr inbounds %struct.comm_page, ptr %23, i32 0, i32 12
  %24 = call ptr @memset(ptr %peak_meter.i.i, i32 128, i32 32)
  br label %set_meters_on.exit.i

set_meters_on.exit.i:                             ; preds = %send_vector.exit36.i.i, %if.then.set_meters_on.exit.i_crit_edge
  %dsp_code.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 53
  %25 = ptrtoint ptr %dsp_code.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dsp_code.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %set_meters_on.exit.i.if.end_crit_edge, label %if.then.i

set_meters_on.exit.i.if.end_crit_edge:            ; preds = %set_meters_on.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then.i:                                        ; preds = %set_meters_on.exit.i
  %27 = ptrtoint ptr %dsp_code.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %dsp_code.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !370
  tail call void @arm_heavy_mb() #16
  %dsp_registers.i.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 57
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.then.i
  %i.09.i.i = phi i32 [ 0, %if.then.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %28 = ptrtoint ptr %dsp_registers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dsp_registers.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %29, i32 6
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i.i) #16, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  %31 = and i32 %30, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !371
  tail call void @arm_heavy_mb() #16
  %32 = ptrtoint ptr %dsp_registers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dsp_registers.i.i.i, align 4
  %arrayidx.i8.i.i = getelementptr i32, ptr %33, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i.i, i32 -654311424) #16, !srcloc !372
  br label %if.end

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #16
  %inc.i.i = add nuw nsw i32 %i.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 100000
  br i1 %exitcond.not.i.i, label %do.end3.i.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

do.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %card.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %35 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %card.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %36, i32 0, i32 27
  %37 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.27) #21
  br label %if.end

if.end:                                           ; preds = %do.end3.i.i, %if.then.i.i, %set_meters_on.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %irq = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 17
  %39 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp = icmp sgt i32 %40, -1
  br i1 %cmp, label %if.then1, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call3 = tail call ptr @free_irq(i32 noundef %40, ptr noundef %1) #16
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end.if.end4_crit_edge
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end4
  %i.015.i = phi i32 [ 0, %if.end4 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 59, i32 %i.015.i
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i10 = icmp eq ptr %42, null
  br i1 %tobool.not.i10, label %for.body.i.for.inc.i_crit_edge, label %if.then.i11

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then.i11:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @release_firmware(ptr noundef nonnull %42) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @free_firmware_cache.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_echo_free, %if.then6.i)) #16
          to label %for.inc.i [label %if.then6.i], !srcloc !366

if.then6.i:                                       ; preds = %if.then.i11
  call void @__sanitizer_cov_trace_pc() #18
  %43 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %44, i32 0, i32 27
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @free_firmware_cache.__UNIQUE_ID_ddebug267, ptr noundef %46, ptr noundef nonnull @.str.35, i32 noundef %i.015.i) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %if.then.i11, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %free_firmware_cache.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

free_firmware_cache.exit:                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_vector(ptr nocapture noundef readonly %chip, i32 noundef %command) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !370
  tail call void @arm_heavy_mb() #16
  %dsp_registers.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 57
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.09 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %0 = ptrtoint ptr %dsp_registers.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_registers.i, align 4
  %arrayidx.i = getelementptr i32, ptr %1, i32 6
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #16, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !371
  tail call void @arm_heavy_mb() #16
  %4 = tail call i32 @llvm.bswap.i32(i32 %command) #16
  %5 = ptrtoint ptr %dsp_registers.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dsp_registers.i, align 4
  %arrayidx.i8 = getelementptr i32, ptr %6, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8, i32 %4) #16, !srcloc !372
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #16
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, 100000
  br i1 %exitcond.not, label %do.end3, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

do.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %card = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.27) #21
  br label %cleanup

cleanup:                                          ; preds = %do.end3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -16, %do.end3 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stop_transport(ptr nocapture noundef %chip, i32 noundef %channel_mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %comm_page.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 23
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.03.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !373
  %0 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %comm_page.i, align 4
  %handshake.i = getelementptr inbounds %struct.comm_page, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %handshake.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %handshake.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #16
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20000
  br i1 %exitcond.not.i, label %wait_handshake.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

wait_handshake.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %5 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.32) #21
  br label %return

if.end:                                           ; preds = %for.body.i
  %9 = tail call i32 @llvm.bswap.i32(i32 %channel_mask)
  %10 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %comm_page.i, align 4
  %cmd_stop = getelementptr inbounds %struct.comm_page, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %cmd_stop to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cmd_stop, align 4
  %or = or i32 %13, %9
  store i32 %or, ptr %cmd_stop, align 4
  %14 = load ptr, ptr %comm_page.i, align 4
  %cmd_reset = getelementptr inbounds %struct.comm_page, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %cmd_reset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cmd_reset, align 4
  %or2 = or i32 %16, %9
  store i32 %or2, ptr %cmd_reset, align 4
  %17 = load ptr, ptr %comm_page.i, align 4
  %cmd_reset4 = getelementptr inbounds %struct.comm_page, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %cmd_reset4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cmd_reset4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool5.not = icmp eq i32 %19, 0
  br i1 %tobool5.not, label %do.body, label %if.then6

if.then6:                                         ; preds = %if.end
  %handshake.i37 = getelementptr inbounds %struct.comm_page, ptr %17, i32 0, i32 4
  %20 = ptrtoint ptr %handshake.i37 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %handshake.i37, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !370
  tail call void @arm_heavy_mb() #16
  %dsp_registers.i.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 57
  br label %for.body.i39

for.body.i39:                                     ; preds = %if.end.i42.for.body.i39_crit_edge, %if.then6
  %i.09.i = phi i32 [ 0, %if.then6 ], [ %inc.i40, %if.end.i42.for.body.i39_crit_edge ]
  %21 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %22, i32 6
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #16, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  %24 = and i32 %23, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i38 = icmp eq i32 %24, 0
  br i1 %tobool.not.i38, label %if.then.i, label %if.end.i42

if.then.i:                                        ; preds = %for.body.i39
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !371
  tail call void @arm_heavy_mb() #16
  %25 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i8.i = getelementptr i32, ptr %26, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i, i32 -553648128) #16, !srcloc !372
  br label %for.body.i50.preheader

if.end.i42:                                       ; preds = %for.body.i39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #16
  %inc.i40 = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i41 = icmp eq i32 %inc.i40, 100000
  br i1 %exitcond.not.i41, label %do.end3.i, label %if.end.i42.for.body.i39_crit_edge

if.end.i42.for.body.i39_crit_edge:                ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i39

do.end3.i:                                        ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #18
  %card.i43 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %28 = ptrtoint ptr %card.i43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card.i43, align 4
  %dev.i44 = getelementptr inbounds %struct.snd_card, ptr %29, i32 0, i32 27
  %30 = ptrtoint ptr %dev.i44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i44, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.27) #21
  br label %for.body.i50.preheader

for.body.i50.preheader:                           ; preds = %do.end3.i, %if.then.i
  br label %for.body.i50

for.body.i50:                                     ; preds = %if.end.i53.for.body.i50_crit_edge, %for.body.i50.preheader
  %i.03.i47 = phi i32 [ %inc.i51, %if.end.i53.for.body.i50_crit_edge ], [ 0, %for.body.i50.preheader ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !373
  %32 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %comm_page.i, align 4
  %handshake.i48 = getelementptr inbounds %struct.comm_page, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %handshake.i48 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %handshake.i48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i49 = icmp eq i32 %35, 0
  br i1 %tobool.not.i49, label %if.end.i53, label %if.end11

if.end.i53:                                       ; preds = %for.body.i50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #16
  %inc.i51 = add nuw nsw i32 %i.03.i47, 1
  %exitcond.not.i52 = icmp eq i32 %inc.i51, 20000
  br i1 %exitcond.not.i52, label %wait_handshake.exit58, label %if.end.i53.for.body.i50_crit_edge

if.end.i53.for.body.i50_crit_edge:                ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i50

wait_handshake.exit58:                            ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #18
  %card.i54 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %37 = ptrtoint ptr %card.i54 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %card.i54, align 4
  %dev.i55 = getelementptr inbounds %struct.snd_card, ptr %38, i32 0, i32 27
  %39 = ptrtoint ptr %dev.i55 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i55, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.32) #21
  br label %return

if.end11:                                         ; preds = %for.body.i50
  call void @__sanitizer_cov_trace_pc() #18
  %neg = xor i32 %channel_mask, -1
  %active_mask = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 58
  %41 = ptrtoint ptr %active_mask to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %active_mask, align 4
  %and = and i32 %42, %neg
  store i32 %and, ptr %active_mask, align 4
  %43 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %comm_page.i, align 4
  %cmd_stop13 = getelementptr inbounds %struct.comm_page, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %cmd_stop13 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %cmd_stop13, align 4
  %46 = load ptr, ptr %comm_page.i, align 4
  %cmd_reset15 = getelementptr inbounds %struct.comm_page, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %cmd_reset15 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %cmd_reset15, align 4
  br label %return

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stop_transport.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stop_transport, %if.then21)) #16
          to label %return [label %if.then21], !srcloc !366

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %card = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %48 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %49, i32 0, i32 27
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stop_transport.__UNIQUE_ID_ddebug252, ptr noundef %51, ptr noundef nonnull @.str.31) #16
  br label %return

return:                                           ; preds = %if.then21, %do.body, %if.end11, %wait_handshake.exit58, %wait_handshake.exit
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -5, %wait_handshake.exit ], [ -5, %wait_handshake.exit58 ], [ 0, %if.then21 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_meters_on(ptr nocapture noundef %chip, i8 noundef zeroext %on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %on)
  %cond = icmp eq i8 %on, 0
  %meters_enabled5 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 32
  %0 = ptrtoint ptr %meters_enabled5 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %meters_enabled5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool7.not = icmp eq i8 %1, 0
  br i1 %cond, label %land.lhs.true4, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool7.not, label %if.then, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then:                                          ; preds = %land.lhs.true
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !370
  tail call void @arm_heavy_mb() #16
  %dsp_registers.i.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 57
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then
  %i.09.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %3, i32 6
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #16, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !371
  tail call void @arm_heavy_mb() #16
  %6 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i8.i = getelementptr i32, ptr %7, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i, i32 -285212672) #16, !srcloc !372
  br label %send_vector.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #16
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100000
  br i1 %exitcond.not.i, label %do.end3.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

do.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %9 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.27) #21
  br label %send_vector.exit

send_vector.exit:                                 ; preds = %do.end3.i, %if.then.i
  %13 = ptrtoint ptr %meters_enabled5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %meters_enabled5, align 1
  br label %if.end13

land.lhs.true4:                                   ; preds = %entry
  br i1 %tobool7.not, label %land.lhs.true4.if.end13_crit_edge, label %if.then8

land.lhs.true4.if.end13_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then8:                                         ; preds = %land.lhs.true4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !370
  tail call void @arm_heavy_mb() #16
  %dsp_registers.i.i22 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 57
  br label %for.body.i26

for.body.i26:                                     ; preds = %if.end.i31.for.body.i26_crit_edge, %if.then8
  %i.09.i23 = phi i32 [ 0, %if.then8 ], [ %inc.i29, %if.end.i31.for.body.i26_crit_edge ]
  %14 = ptrtoint ptr %dsp_registers.i.i22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dsp_registers.i.i22, align 4
  %arrayidx.i.i24 = getelementptr i32, ptr %15, i32 6
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i24) #16, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i25 = icmp eq i32 %17, 0
  br i1 %tobool.not.i25, label %if.then.i28, label %if.end.i31

if.then.i28:                                      ; preds = %for.body.i26
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !371
  tail call void @arm_heavy_mb() #16
  %18 = ptrtoint ptr %dsp_registers.i.i22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dsp_registers.i.i22, align 4
  %arrayidx.i8.i27 = getelementptr i32, ptr %19, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i27, i32 -251658240) #16, !srcloc !372
  br label %send_vector.exit36

if.end.i31:                                       ; preds = %for.body.i26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #16
  %inc.i29 = add nuw nsw i32 %i.09.i23, 1
  %exitcond.not.i30 = icmp eq i32 %inc.i29, 100000
  br i1 %exitcond.not.i30, label %do.end3.i34, label %if.end.i31.for.body.i26_crit_edge

if.end.i31.for.body.i26_crit_edge:                ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i26

do.end3.i34:                                      ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #18
  %card.i32 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %21 = ptrtoint ptr %card.i32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card.i32, align 4
  %dev.i33 = getelementptr inbounds %struct.snd_card, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %dev.i33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i33, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.27) #21
  br label %send_vector.exit36

send_vector.exit36:                               ; preds = %do.end3.i34, %if.then.i28
  %25 = ptrtoint ptr %meters_enabled5 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %meters_enabled5, align 1
  %comm_page = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 23
  %26 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %comm_page, align 4
  %vu_meter = getelementptr inbounds %struct.comm_page, ptr %27, i32 0, i32 11
  %28 = call ptr @memset(ptr %vu_meter, i32 128, i32 32)
  %29 = load ptr, ptr %comm_page, align 4
  %peak_meter = getelementptr inbounds %struct.comm_page, ptr %29, i32 0, i32 12
  %30 = call ptr @memset(ptr %peak_meter, i32 128, i32 32)
  br label %if.end13

if.end13:                                         ; preds = %send_vector.exit36, %land.lhs.true4.if.end13_crit_edge, %send_vector.exit, %land.lhs.true.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_handshake(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %comm_page = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 23
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !373
  %0 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %comm_page, align 4
  %handshake = getelementptr inbounds %struct.comm_page, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %handshake to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %handshake, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #16
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 20000
  br i1 %exitcond.not, label %do.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %card = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.32) #21
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_devm_alloc_dir_pages(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @load_firmware(ptr noundef %chip) unnamed_addr #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #16
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !364
  %comm_page = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 23
  %1 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %comm_page, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !374

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 494, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

if.end23:                                         ; preds = %entry
  %dsp_code = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 53
  %3 = ptrtoint ptr %dsp_code to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dsp_code, align 4
  %tobool24.not = icmp eq ptr %4, null
  br i1 %tobool24.not, label %if.end29, label %if.then25

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  %asic_loaded.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 33
  %5 = ptrtoint ptr %asic_loaded.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %asic_loaded.i, align 2
  br label %cleanup

if.end29:                                         ; preds = %if.end23
  %dsp_code_to_load = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 54
  %6 = ptrtoint ptr %dsp_code_to_load to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dsp_code_to_load, align 4
  %call30 = call fastcc i32 @get_firmware(ptr noundef nonnull %fw, ptr noundef %chip, i16 noundef signext %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end29.cleanup_crit_edge, label %if.end33

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %8 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %call34 = call fastcc i32 @load_dsp(ptr noundef %chip, ptr noundef %11)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @free_firmware.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@load_firmware, %if.then.i)) #16
          to label %free_firmware.exit [label %if.then.i], !srcloc !366

if.then.i:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %12 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @free_firmware.__UNIQUE_ID_ddebug266, ptr noundef %15, ptr noundef nonnull @.str.107) #16
  br label %free_firmware.exit

free_firmware.exit:                               ; preds = %if.then.i, %if.end33
  %16 = call i32 @llvm.smin.i32(i32 %call34, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %free_firmware.exit, %if.end29.cleanup_crit_edge, %if.then25, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %if.then25 ], [ %call30, %if.end29.cleanup_crit_edge ], [ %16, %free_firmware.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_firmware(ptr noundef %fw_entry, ptr nocapture noundef %chip, i16 noundef signext %fw_index) unnamed_addr #2 align 64 {
entry:
  %name = alloca [30 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %name) #16
  %idxprom = sext i16 %fw_index to i32
  %arrayidx = getelementptr %struct.echoaudio, ptr %chip, i32 0, i32 59, i32 %idxprom
  %0 = call ptr @memset(ptr %name, i32 255, i32 30)
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.body11, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_firmware.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_firmware, %if.then4)) #16
          to label %do.end [label %if.then4], !srcloc !366

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %card = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 27
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %data = getelementptr [2 x %struct.firmware], ptr @card_fw, i32 0, i32 %idxprom, i32 1
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_firmware.__UNIQUE_ID_ddebug264, ptr noundef %6, ptr noundef nonnull @.str.40, ptr noundef %8) #16
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %fw_entry to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %fw_entry, align 4
  br label %cleanup

do.body11:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_firmware.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_firmware, %if.then23)) #16
          to label %do.end31 [label %if.then23], !srcloc !366

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #18
  %card24 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %12 = ptrtoint ptr %card24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card24, align 4
  %dev25 = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev25, align 8
  %data28 = getelementptr [2 x %struct.firmware], ptr @card_fw, i32 0, i32 %idxprom, i32 1
  %16 = ptrtoint ptr %data28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data28, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_firmware.__UNIQUE_ID_ddebug265, ptr noundef %15, ptr noundef nonnull @.str.41, ptr noundef %17) #16
  br label %do.end31

do.end31:                                         ; preds = %if.then23, %do.body11
  %data34 = getelementptr [2 x %struct.firmware], ptr @card_fw, i32 0, i32 %idxprom, i32 1
  %18 = ptrtoint ptr %data34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data34, align 4
  %call35 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 30, ptr noundef nonnull @.str.42, ptr noundef %19)
  %pci = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 13
  %20 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci, align 4
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %call38 = call i32 @request_firmware(ptr noundef %fw_entry, ptr noundef nonnull %name, ptr noundef %dev37) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp = icmp slt i32 %call38, 0
  br i1 %cmp, label %do.end42, label %if.else

do.end42:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #18
  %card43 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %22 = ptrtoint ptr %card43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card43, align 4
  %dev44 = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev44, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.43, i32 noundef %call38) #21
  br label %cleanup

if.else:                                          ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fw_entry, align 4
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end42, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call38, %if.else ], [ %call38, %do.end42 ]
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %name) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @load_dsp(ptr noundef %chip, ptr noundef %code) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_code = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 53
  %0 = ptrtoint ptr %dsp_code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_code, align 4
  %cmp = icmp eq ptr %1, %code
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %card = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.46) #21
  br label %cleanup181

if.end:                                           ; preds = %entry
  %bad_board = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 34
  %6 = ptrtoint ptr %bad_board to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %bad_board, align 1
  %7 = ptrtoint ptr %dsp_code to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %dsp_code, align 4
  %asic_loaded = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 33
  %8 = ptrtoint ptr %asic_loaded to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %asic_loaded, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @load_dsp.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@load_dsp, %if.then5)) #16
          to label %do.end10 [label %if.then5], !srcloc !366

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %card6 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %9 = ptrtoint ptr %card6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card6, align 4
  %dev7 = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev7, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @load_dsp.__UNIQUE_ID_ddebug249, ptr noundef %12, ptr noundef nonnull @.str.49) #16
  br label %do.end10

do.end10:                                         ; preds = %if.then5, %if.end
  %call11 = tail call fastcc i32 @install_resident_loader(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end10.cleanup181_crit_edge, label %if.end14

do.end10.cleanup181_crit_edge:                    ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup181

if.end14:                                         ; preds = %do.end10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !370
  tail call void @arm_heavy_mb() #16
  %dsp_registers.i.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 57
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end14
  %i.09.i = phi i32 [ 0, %if.end14 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %14, i32 6
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #16, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  %16 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %if.end23, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #16
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100000
  br i1 %exitcond.not.i, label %do.end20, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

do.end20:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %18 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.27) #21
  %22 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card.i, align 4
  %dev22 = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev22, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.51) #21
  br label %cleanup181

if.end23:                                         ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !371
  tail call void @arm_heavy_mb() #16
  %26 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i8.i = getelementptr i32, ptr %27, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i, i32 -8388608) #16, !srcloc !372
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 2147480) #16
  br label %for.body

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %if.end23
  %i.0273 = phi i32 [ 0, %if.end23 ], [ %inc, %if.end28.for.body_crit_edge ]
  %29 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i = getelementptr i32, ptr %30, i32 5
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #16, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  %32 = and i32 %31, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool26.not = icmp eq i32 %32, 0
  br i1 %tobool26.not, label %if.end28, label %if.end36

if.end28:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 2147480) #16
  %inc = add nuw nsw i32 %i.0273, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %do.end33, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

do.end33:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  %card34 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %34 = ptrtoint ptr %card34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %card34, align 4
  %dev35 = getelementptr inbounds %struct.snd_card, ptr %35, i32 0, i32 27
  %36 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev35, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.54) #21
  br label %cleanup181

if.end36:                                         ; preds = %for.body
  %38 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i252 = getelementptr i32, ptr %39, i32 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i252) #16, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  %41 = or i32 %40, 589824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !371
  tail call void @arm_heavy_mb() #16
  %42 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i254 = getelementptr i32, ptr %43, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i254, i32 %41) #16, !srcloc !372
  %44 = ptrtoint ptr %code to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %code, align 2
  %conv = zext i16 %45 to i32
  %inc39277 = add nuw nsw i32 %conv, 1
  %arrayidx40278 = getelementptr i16, ptr %code, i32 %inc39277
  %46 = ptrtoint ptr %arrayidx40278 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx40278, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %47)
  %cmp42279 = icmp eq i16 %47, 4
  br i1 %cmp42279, label %if.end36.for.end119_crit_edge, label %if.end36.if.end45_crit_edge

if.end36.if.end45_crit_edge:                      ; preds = %if.end36
  br label %if.end45

if.end36.for.end119_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end119

for.cond93.for.cond38.loopexit_crit_edge:         ; preds = %for.inc114
  %inc39 = add i32 %index.1275, 3
  %arrayidx40 = getelementptr i16, ptr %code, i32 %inc39
  %48 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx40, align 2
  %cmp42 = icmp eq i16 %49, 4
  br i1 %cmp42, label %for.cond93.for.cond38.loopexit_crit_edge.for.end119_crit_edge, label %for.cond93.for.cond38.loopexit_crit_edge.if.end45_crit_edge

for.cond93.for.cond38.loopexit_crit_edge.if.end45_crit_edge: ; preds = %for.cond93.for.cond38.loopexit_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

for.cond93.for.cond38.loopexit_crit_edge.for.end119_crit_edge: ; preds = %for.cond93.for.cond38.loopexit_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end119

if.end45:                                         ; preds = %for.cond93.for.cond38.loopexit_crit_edge.if.end45_crit_edge, %if.end36.if.end45_crit_edge
  %index.0280 = phi i32 [ %add116, %for.cond93.for.cond38.loopexit_crit_edge.if.end45_crit_edge ], [ %conv, %if.end36.if.end45_crit_edge ]
  %inc46 = add i32 %index.0280, 2
  %inc47 = add i32 %index.0280, 3
  %arrayidx48 = getelementptr i16, ptr %code, i32 %inc46
  %50 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx48, align 2
  %conv49 = zext i16 %51 to i32
  %arrayidx51 = getelementptr i16, ptr %code, i32 %inc47
  %52 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx51, align 2
  %conv52 = zext i16 %53 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp53 = icmp eq i16 %53, 0
  br i1 %cmp53, label %if.end45.for.end119_crit_edge, label %if.end56

if.end45.for.end119_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end119

if.end56:                                         ; preds = %if.end45
  %inc50 = add i32 %index.0280, 4
  %arrayidx57 = getelementptr i16, ptr %code, i32 %inc50
  %54 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx57, align 2
  %add = add i32 %index.0280, 5
  %arrayidx59 = getelementptr i16, ptr %code, i32 %add
  %56 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx59, align 2
  %add62 = add i32 %index.0280, 6
  %call63 = tail call fastcc i32 @write_dsp(ptr noundef %chip, i32 noundef %conv52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %do.end69, label %if.end72

do.end69:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #18
  %card70 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %58 = ptrtoint ptr %card70 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %card70, align 4
  %dev71 = getelementptr inbounds %struct.snd_card, ptr %59, i32 0, i32 27
  %60 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev71, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.57) #21
  br label %cleanup181

if.end72:                                         ; preds = %if.end56
  %conv58 = zext i16 %55 to i32
  %shl = shl nuw i32 %conv58, 16
  %conv60 = zext i16 %57 to i32
  %add61 = or i32 %shl, %conv60
  %call73 = tail call fastcc i32 @write_dsp(ptr noundef %chip, i32 noundef %add61)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %do.end79, label %if.end82

do.end79:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #18
  %card80 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %62 = ptrtoint ptr %card80 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %card80, align 4
  %dev81 = getelementptr inbounds %struct.snd_card, ptr %63, i32 0, i32 27
  %64 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev81, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.60) #21
  br label %cleanup181

if.end82:                                         ; preds = %if.end72
  %call83 = tail call fastcc i32 @write_dsp(ptr noundef %chip, i32 noundef %conv49)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %do.end89, label %if.end82.for.body96_crit_edge

if.end82.for.body96_crit_edge:                    ; preds = %if.end82
  br label %for.body96

do.end89:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #18
  %card90 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %66 = ptrtoint ptr %card90 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %card90, align 4
  %dev91 = getelementptr inbounds %struct.snd_card, ptr %67, i32 0, i32 27
  %68 = ptrtoint ptr %dev91 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev91, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.63) #21
  br label %cleanup181

for.body96:                                       ; preds = %for.inc114.for.body96_crit_edge, %if.end82.for.body96_crit_edge
  %i.1276 = phi i32 [ %inc115, %for.inc114.for.body96_crit_edge ], [ 0, %if.end82.for.body96_crit_edge ]
  %index.1275 = phi i32 [ %add116, %for.inc114.for.body96_crit_edge ], [ %add62, %if.end82.for.body96_crit_edge ]
  %arrayidx97 = getelementptr i16, ptr %code, i32 %index.1275
  %70 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx97, align 2
  %conv98 = zext i16 %71 to i32
  %shl99 = shl nuw i32 %conv98, 16
  %add100 = add i32 %index.1275, 1
  %arrayidx101 = getelementptr i16, ptr %code, i32 %add100
  %72 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx101, align 2
  %conv102 = zext i16 %73 to i32
  %add103 = or i32 %shl99, %conv102
  %call104 = tail call fastcc i32 @write_dsp(ptr noundef %chip, i32 noundef %add103)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %do.end110, label %for.inc114

do.end110:                                        ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #18
  %card111 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %74 = ptrtoint ptr %card111 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %card111, align 4
  %dev112 = getelementptr inbounds %struct.snd_card, ptr %75, i32 0, i32 27
  %76 = ptrtoint ptr %dev112 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev112, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.66) #21
  br label %cleanup181

for.inc114:                                       ; preds = %for.body96
  %inc115 = add nuw nsw i32 %i.1276, 1
  %add116 = add i32 %index.1275, 2
  %exitcond283.not = icmp eq i32 %inc115, %conv52
  br i1 %exitcond283.not, label %for.cond93.for.cond38.loopexit_crit_edge, label %for.inc114.for.body96_crit_edge

for.inc114.for.body96_crit_edge:                  ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body96

for.end119:                                       ; preds = %if.end45.for.end119_crit_edge, %for.cond93.for.cond38.loopexit_crit_edge.for.end119_crit_edge, %if.end36.for.end119_crit_edge
  %call120 = tail call fastcc i32 @write_dsp(ptr noundef %chip, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %cmp121 = icmp slt i32 %call120, 0
  br i1 %cmp121, label %do.end126, label %if.end129

do.end126:                                        ; preds = %for.end119
  call void @__sanitizer_cov_trace_pc() #18
  %card127 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %78 = ptrtoint ptr %card127 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %card127, align 4
  %dev128 = getelementptr inbounds %struct.snd_card, ptr %79, i32 0, i32 27
  %80 = ptrtoint ptr %dev128 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev128, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.69) #21
  br label %cleanup181

if.end129:                                        ; preds = %for.end119
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 2147480) #16
  br label %for.body133

for.body133:                                      ; preds = %if.end172.for.body133_crit_edge, %if.end129
  %i.2281 = phi i32 [ 0, %if.end129 ], [ %inc174, %if.end172.for.body133_crit_edge ]
  %83 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i256 = getelementptr i32, ptr %84, i32 5
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i256) #16, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  %86 = and i32 %85, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool136.not = icmp eq i32 %86, 0
  br i1 %tobool136.not, label %if.end172, label %if.then137

if.then137:                                       ; preds = %for.body133
  %87 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i258 = getelementptr i32, ptr %88, i32 4
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i258) #16, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  %90 = and i32 %89, -1769473
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !371
  tail call void @arm_heavy_mb() #16
  %91 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i260 = getelementptr i32, ptr %92, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i260, i32 %90) #16, !srcloc !372
  %call140 = tail call fastcc i32 @write_dsp(ptr noundef %chip, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %cmp141 = icmp slt i32 %call140, 0
  br i1 %cmp141, label %do.end146, label %if.end149

do.end146:                                        ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #18
  %card147 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %93 = ptrtoint ptr %card147 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %card147, align 4
  %dev148 = getelementptr inbounds %struct.snd_card, ptr %94, i32 0, i32 27
  %95 = ptrtoint ptr %dev148 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev148, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.72) #21
  br label %cleanup181

if.end149:                                        ; preds = %if.then137
  %comm_page_phys = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 56
  %97 = ptrtoint ptr %comm_page_phys to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %comm_page_phys, align 4
  %call150 = tail call fastcc i32 @write_dsp(ptr noundef %chip, i32 noundef %98)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %cmp151 = icmp slt i32 %call150, 0
  br i1 %cmp151, label %do.end156, label %if.end159

do.end156:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #18
  %card157 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %99 = ptrtoint ptr %card157 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %card157, align 4
  %dev158 = getelementptr inbounds %struct.snd_card, ptr %100, i32 0, i32 27
  %101 = ptrtoint ptr %dev158 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev158, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.75) #21
  br label %cleanup181

if.end159:                                        ; preds = %if.end149
  %call160 = tail call fastcc i32 @read_sn(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %cmp161 = icmp slt i32 %call160, 0
  br i1 %cmp161, label %do.end166, label %if.end169

do.end166:                                        ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #18
  %card167 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %103 = ptrtoint ptr %card167 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %card167, align 4
  %dev168 = getelementptr inbounds %struct.snd_card, ptr %104, i32 0, i32 27
  %105 = ptrtoint ptr %dev168 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev168, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.78) #21
  br label %cleanup181

if.end169:                                        ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #18
  %107 = ptrtoint ptr %dsp_code to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %code, ptr %dsp_code, align 4
  %108 = ptrtoint ptr %bad_board to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %bad_board, align 1
  br label %cleanup181

if.end172:                                        ; preds = %for.body133
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %109(i32 noundef 21474800) #16
  %inc174 = add nuw nsw i32 %i.2281, 1
  %exitcond284.not = icmp eq i32 %inc174, 5000
  br i1 %exitcond284.not, label %do.end178, label %if.end172.for.body133_crit_edge

if.end172.for.body133_crit_edge:                  ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body133

do.end178:                                        ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #18
  %card179 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %110 = ptrtoint ptr %card179 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %card179, align 4
  %dev180 = getelementptr inbounds %struct.snd_card, ptr %111, i32 0, i32 27
  %112 = ptrtoint ptr %dev180 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev180, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.81) #21
  br label %cleanup181

cleanup181:                                       ; preds = %do.end178, %if.end169, %do.end166, %do.end156, %do.end146, %do.end126, %do.end110, %do.end89, %do.end79, %do.end69, %do.end33, %do.end20, %do.end10.cleanup181_crit_edge, %do.end
  %retval.2 = phi i32 [ 0, %do.end ], [ -5, %do.end20 ], [ -5, %do.end33 ], [ -5, %do.end126 ], [ -5, %do.end146 ], [ -5, %do.end156 ], [ -5, %do.end166 ], [ 0, %if.end169 ], [ -5, %do.end178 ], [ %call11, %do.end10.cleanup181_crit_edge ], [ -5, %do.end69 ], [ -5, %do.end79 ], [ -5, %do.end89 ], [ -5, %do.end110 ]
  ret i32 %retval.2
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @install_resident_loader(ptr nocapture noundef %chip) unnamed_addr #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #16
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !364
  %device_id = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 51
  %1 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %device_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13328, i16 %2)
  %cmp.not = icmp eq i16 %2, 13328
  br i1 %cmp.not, label %if.end, label %entry.cleanup109_crit_edge

entry.cleanup109_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup109

if.end:                                           ; preds = %entry
  %dsp_registers.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 57
  %3 = ptrtoint ptr %dsp_registers.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dsp_registers.i, align 4
  %arrayidx.i = getelementptr i32, ptr %4, i32 5
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #16, !srcloc !368
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  %and = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end9, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @install_resident_loader.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@install_resident_loader, %if.then7)) #16
          to label %cleanup109 [label %if.then7], !srcloc !366

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %card = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %7 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @install_resident_loader.__UNIQUE_ID_ddebug247, ptr noundef %10, ptr noundef nonnull @.str.84, i32 noundef %6) #16
  br label %cleanup109

if.end9:                                          ; preds = %if.end
  %call10 = call fastcc i32 @get_firmware(ptr noundef nonnull %fw, ptr noundef %chip, i16 noundef signext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end16, label %if.end19

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %card17 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %11 = ptrtoint ptr %card17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card17, align 4
  %dev18 = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev18, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.85) #21
  br label %cleanup109

if.end19:                                         ; preds = %if.end9
  %15 = ptrtoint ptr %dsp_registers.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dsp_registers.i, align 4
  %arrayidx.i159 = getelementptr i32, ptr %16, i32 4
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i159) #16, !srcloc !368
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  %18 = or i32 %17, 589824
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !371
  call void @arm_heavy_mb() #16
  %19 = ptrtoint ptr %dsp_registers.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dsp_registers.i, align 4
  %arrayidx.i161 = getelementptr i32, ptr %20, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i161, i32 %18) #16, !srcloc !372
  %21 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %24, align 2
  %conv21 = zext i16 %26 to i32
  %add = add nuw nsw i32 %conv21, 3
  %inc = add nuw nsw i32 %conv21, 4
  %arrayidx22 = getelementptr i16, ptr %24, i32 %add
  %27 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx22, align 2
  %conv23 = zext i16 %28 to i32
  %arrayidx24 = getelementptr i16, ptr %24, i32 %inc
  %29 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx24, align 2
  %add26 = add nuw nsw i32 %conv21, 5
  %arrayidx27 = getelementptr i16, ptr %24, i32 %add26
  %31 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx27, align 2
  %call31 = call fastcc i32 @write_dsp(ptr noundef %chip, i32 noundef %conv23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end39, label %if.end19.irl_error_crit_edge

if.end19.irl_error_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %irl_error

if.end39:                                         ; preds = %if.end19
  %conv25 = zext i16 %30 to i32
  %shl = shl nuw i32 %conv25, 16
  %conv28 = zext i16 %32 to i32
  %add29 = or i32 %shl, %conv28
  %call40 = call fastcc i32 @write_dsp(ptr noundef %chip, i32 noundef %add29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %for.cond.preheader, label %if.end39.irl_error_crit_edge

if.end39.irl_error_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  br label %irl_error

for.cond.preheader:                               ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp49176.not = icmp eq i16 %28, 0
  br i1 %cmp49176.not, label %for.cond.preheader.for.body73.preheader_crit_edge, label %for.body.preheader

for.cond.preheader.for.body73.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body73.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %add30 = add nuw nsw i32 %conv21, 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %index.0178 = phi i32 [ %add68, %for.inc.for.body_crit_edge ], [ %add30, %for.body.preheader ]
  %i.0177 = phi i32 [ %inc69, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx52 = getelementptr i16, ptr %24, i32 %index.0178
  %33 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx52, align 2
  %conv53 = zext i16 %34 to i32
  %shl54 = shl nuw i32 %conv53, 16
  %add55 = add nuw nsw i32 %index.0178, 1
  %arrayidx56 = getelementptr i16, ptr %24, i32 %add55
  %35 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx56, align 2
  %conv57 = zext i16 %36 to i32
  %add58 = or i32 %shl54, %conv57
  %call59 = call fastcc i32 @write_dsp(ptr noundef %chip, i32 noundef %add58)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %for.inc, label %for.body.irl_error_crit_edge

for.body.irl_error_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %irl_error

for.inc:                                          ; preds = %for.body
  %add68 = add nuw nsw i32 %index.0178, 2
  %inc69 = add nuw nsw i32 %i.0177, 1
  %exitcond.not = icmp eq i32 %inc69, %conv23
  br i1 %exitcond.not, label %for.inc.for.body73.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.body73.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body73.preheader

for.body73.preheader:                             ; preds = %for.inc.for.body73.preheader_crit_edge, %for.cond.preheader.for.body73.preheader_crit_edge
  br label %for.body73

for.body73:                                       ; preds = %for.inc79.for.body73_crit_edge, %for.body73.preheader
  %i.1179 = phi i32 [ %inc80, %for.inc79.for.body73_crit_edge ], [ 0, %for.body73.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %37(i32 noundef 10737400) #16
  %38 = ptrtoint ptr %dsp_registers.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dsp_registers.i, align 4
  %arrayidx.i163 = getelementptr i32, ptr %39, i32 5
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i163) #16, !srcloc !368
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  %41 = and i32 %40, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool76.not = icmp eq i32 %41, 0
  br i1 %tobool76.not, label %for.inc79, label %do.body91

for.inc79:                                        ; preds = %for.body73
  %inc80 = add nuw nsw i32 %i.1179, 1
  %exitcond180.not = icmp eq i32 %inc80, 200
  br i1 %exitcond180.not, label %for.inc79.irl_error_crit_edge, label %for.inc79.for.body73_crit_edge

for.inc79.for.body73_crit_edge:                   ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body73

for.inc79.irl_error_crit_edge:                    ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #18
  br label %irl_error

do.body91:                                        ; preds = %for.body73
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @install_resident_loader.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@install_resident_loader, %if.then103)) #16
          to label %do.end108 [label %if.then103], !srcloc !366

if.then103:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #18
  %card104 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %42 = ptrtoint ptr %card104 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %card104, align 4
  %dev105 = getelementptr inbounds %struct.snd_card, ptr %43, i32 0, i32 27
  %44 = ptrtoint ptr %dev105 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev105, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @install_resident_loader.__UNIQUE_ID_ddebug248, ptr noundef %45, ptr noundef nonnull @.str.98) #16
  br label %do.end108

do.end108:                                        ; preds = %if.then103, %do.body91
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @free_firmware.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@install_resident_loader, %if.then.i)) #16
          to label %cleanup109 [label %if.then.i], !srcloc !366

if.then.i:                                        ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #18
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %46 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %47, i32 0, i32 27
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @free_firmware.__UNIQUE_ID_ddebug266, ptr noundef %49, ptr noundef nonnull @.str.107) #16
  br label %cleanup109

irl_error:                                        ; preds = %for.inc79.irl_error_crit_edge, %for.body.irl_error_crit_edge, %if.end39.irl_error_crit_edge, %if.end19.irl_error_crit_edge
  %.str.93.sink = phi ptr [ @.str.87, %if.end19.irl_error_crit_edge ], [ @.str.90, %if.end39.irl_error_crit_edge ], [ @.str.96, %for.inc79.irl_error_crit_edge ], [ @.str.93, %for.body.irl_error_crit_edge ]
  %card65 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %50 = ptrtoint ptr %card65 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %card65, align 4
  %dev66 = getelementptr inbounds %struct.snd_card, ptr %51, i32 0, i32 27
  %52 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev66, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull %.str.93.sink) #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @free_firmware.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@install_resident_loader, %if.then.i166)) #16
          to label %cleanup109 [label %if.then.i166], !srcloc !366

if.then.i166:                                     ; preds = %irl_error
  call void @__sanitizer_cov_trace_pc() #18
  %card.i164 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %54 = ptrtoint ptr %card.i164 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %card.i164, align 4
  %dev.i165 = getelementptr inbounds %struct.snd_card, ptr %55, i32 0, i32 27
  %56 = ptrtoint ptr %dev.i165 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i165, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @free_firmware.__UNIQUE_ID_ddebug266, ptr noundef %57, ptr noundef nonnull @.str.107) #16
  br label %cleanup109

cleanup109:                                       ; preds = %if.then.i166, %irl_error, %if.then.i, %do.end108, %do.end16, %if.then7, %do.body, %entry.cleanup109_crit_edge
  %retval.0 = phi i32 [ %call10, %do.end16 ], [ 0, %entry.cleanup109_crit_edge ], [ 0, %if.then7 ], [ 0, %do.body ], [ 0, %do.end108 ], [ 0, %if.then.i ], [ -5, %irl_error ], [ -5, %if.then.i166 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_dsp(ptr nocapture noundef %chip, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_registers.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 57
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.020 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %0 = ptrtoint ptr %dsp_registers.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_registers.i, align 4
  %arrayidx.i = getelementptr i32, ptr %1, i32 5
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #16, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  %3 = and i32 %2, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !371
  tail call void @arm_heavy_mb() #16
  %4 = tail call i32 @llvm.bswap.i32(i32 %data) #16
  %5 = ptrtoint ptr %dsp_registers.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dsp_registers.i, align 4
  %arrayidx.i18 = getelementptr i32, ptr %6, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i18, i32 %4) #16, !srcloc !372
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !375
  tail call void @arm_heavy_mb() #16
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #16
  tail call void @__might_resched(ptr noundef nonnull @.str.29, i32 noundef 103, i32 noundef 0) #16
  %call.i = tail call i32 @__cond_resched() #16
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, 10000000
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %bad_board = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 34
  %8 = ptrtoint ptr %bad_board to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %bad_board, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_dsp.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_dsp, %if.then8)) #16
          to label %cleanup [label %if.then8], !srcloc !366

if.then8:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %card = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @write_dsp.__UNIQUE_ID_ddebug245, ptr noundef %12, ptr noundef nonnull @.str.100) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %for.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -5, %if.then8 ], [ -5, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_sn(ptr nocapture noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_registers.i.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 57
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.011.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %1, i32 5
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #16, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  %3 = and i32 %2, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not.i = icmp eq i32 %3, 0
  br i1 %cmp1.not.i, label %if.end.i, label %for.inc

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #16
  tail call void @__might_resched(ptr noundef nonnull @.str.29, i32 noundef 126, i32 noundef 0) #16
  %call.i.i = tail call i32 @__cond_resched() #16
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100000
  br i1 %exitcond.not.i, label %if.end.i.do.end_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end:                                           ; preds = %if.end.i.4.do.end_crit_edge, %if.end.i.3.do.end_crit_edge, %if.end.i.2.do.end_crit_edge, %if.end.i.1.do.end_crit_edge, %if.end.i.do.end_crit_edge
  %bad_board.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 34
  %5 = ptrtoint ptr %bad_board.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %bad_board.i, align 1
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %6 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.104) #21
  %10 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card.i, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.101) #21
  br label %cleanup

for.inc:                                          ; preds = %for.body.i
  %14 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i10.i = getelementptr i32, ptr %15, i32 7
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i10.i) #16, !srcloc !368
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  br label %for.body.i.1

for.body.i.1:                                     ; preds = %if.end.i.1.for.body.i.1_crit_edge, %for.inc
  %i.011.i.1 = phi i32 [ 0, %for.inc ], [ %inc.i.1, %if.end.i.1.for.body.i.1_crit_edge ]
  %18 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i.1 = getelementptr i32, ptr %19, i32 5
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i.1) #16, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  %21 = and i32 %20, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp1.not.i.1 = icmp eq i32 %21, 0
  br i1 %cmp1.not.i.1, label %if.end.i.1, label %for.inc.1

for.inc.1:                                        ; preds = %for.body.i.1
  %22 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i10.i.1 = getelementptr i32, ptr %23, i32 7
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i10.i.1) #16, !srcloc !368
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  br label %for.body.i.2

if.end.i.1:                                       ; preds = %for.body.i.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748) #16
  tail call void @__might_resched(ptr noundef nonnull @.str.29, i32 noundef 126, i32 noundef 0) #16
  %call.i.i.1 = tail call i32 @__cond_resched() #16
  %inc.i.1 = add nuw nsw i32 %i.011.i.1, 1
  %exitcond.not.i.1 = icmp eq i32 %inc.i.1, 100000
  br i1 %exitcond.not.i.1, label %if.end.i.1.do.end_crit_edge, label %if.end.i.1.for.body.i.1_crit_edge

if.end.i.1.for.body.i.1_crit_edge:                ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.1

if.end.i.1.do.end_crit_edge:                      ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

for.body.i.2:                                     ; preds = %if.end.i.2.for.body.i.2_crit_edge, %for.inc.1
  %i.011.i.2 = phi i32 [ 0, %for.inc.1 ], [ %inc.i.2, %if.end.i.2.for.body.i.2_crit_edge ]
  %27 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i.2 = getelementptr i32, ptr %28, i32 5
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i.2) #16, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  %30 = and i32 %29, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp1.not.i.2 = icmp eq i32 %30, 0
  br i1 %cmp1.not.i.2, label %if.end.i.2, label %for.inc.2

for.inc.2:                                        ; preds = %for.body.i.2
  %31 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i10.i.2 = getelementptr i32, ptr %32, i32 7
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i10.i.2) #16, !srcloc !368
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  br label %for.body.i.3

if.end.i.2:                                       ; preds = %for.body.i.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #16
  tail call void @__might_resched(ptr noundef nonnull @.str.29, i32 noundef 126, i32 noundef 0) #16
  %call.i.i.2 = tail call i32 @__cond_resched() #16
  %inc.i.2 = add nuw nsw i32 %i.011.i.2, 1
  %exitcond.not.i.2 = icmp eq i32 %inc.i.2, 100000
  br i1 %exitcond.not.i.2, label %if.end.i.2.do.end_crit_edge, label %if.end.i.2.for.body.i.2_crit_edge

if.end.i.2.for.body.i.2_crit_edge:                ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.2

if.end.i.2.do.end_crit_edge:                      ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

for.body.i.3:                                     ; preds = %if.end.i.3.for.body.i.3_crit_edge, %for.inc.2
  %i.011.i.3 = phi i32 [ 0, %for.inc.2 ], [ %inc.i.3, %if.end.i.3.for.body.i.3_crit_edge ]
  %36 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i.3 = getelementptr i32, ptr %37, i32 5
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i.3) #16, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  %39 = and i32 %38, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp1.not.i.3 = icmp eq i32 %39, 0
  br i1 %cmp1.not.i.3, label %if.end.i.3, label %for.inc.3

for.inc.3:                                        ; preds = %for.body.i.3
  %40 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i10.i.3 = getelementptr i32, ptr %41, i32 7
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i10.i.3) #16, !srcloc !368
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  br label %for.body.i.4

if.end.i.3:                                       ; preds = %for.body.i.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748) #16
  tail call void @__might_resched(ptr noundef nonnull @.str.29, i32 noundef 126, i32 noundef 0) #16
  %call.i.i.3 = tail call i32 @__cond_resched() #16
  %inc.i.3 = add nuw nsw i32 %i.011.i.3, 1
  %exitcond.not.i.3 = icmp eq i32 %inc.i.3, 100000
  br i1 %exitcond.not.i.3, label %if.end.i.3.do.end_crit_edge, label %if.end.i.3.for.body.i.3_crit_edge

if.end.i.3.for.body.i.3_crit_edge:                ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.3

if.end.i.3.do.end_crit_edge:                      ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

for.body.i.4:                                     ; preds = %if.end.i.4.for.body.i.4_crit_edge, %for.inc.3
  %i.011.i.4 = phi i32 [ 0, %for.inc.3 ], [ %inc.i.4, %if.end.i.4.for.body.i.4_crit_edge ]
  %45 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i.4 = getelementptr i32, ptr %46, i32 5
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i.4) #16, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  %48 = and i32 %47, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp1.not.i.4 = icmp eq i32 %48, 0
  br i1 %cmp1.not.i.4, label %if.end.i.4, label %for.inc.4

for.inc.4:                                        ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #18
  %49 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i10.i.4 = getelementptr i32, ptr %50, i32 7
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i10.i.4) #16, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_sn.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_sn, %if.then6)) #16
          to label %cleanup [label %if.then6], !srcloc !366

if.end.i.4:                                       ; preds = %for.body.i.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748) #16
  tail call void @__might_resched(ptr noundef nonnull @.str.29, i32 noundef 126, i32 noundef 0) #16
  %call.i.i.4 = tail call i32 @__cond_resched() #16
  %inc.i.4 = add nuw nsw i32 %i.011.i.4, 1
  %exitcond.not.i.4 = icmp eq i32 %inc.i.4, 100000
  br i1 %exitcond.not.i.4, label %if.end.i.4.do.end_crit_edge, label %if.end.i.4.for.body.i.4_crit_edge

if.end.i.4.for.body.i.4_crit_edge:                ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.4

if.end.i.4.do.end_crit_edge:                      ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then6:                                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #18
  %53 = tail call i32 @llvm.bswap.i32(i32 %51) #16
  %card7 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %54 = ptrtoint ptr %card7 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %card7, align 4
  %dev8 = getelementptr inbounds %struct.snd_card, ptr %55, i32 0, i32 27
  %56 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev8, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_sn.__UNIQUE_ID_ddebug246, ptr noundef %57, ptr noundef nonnull @.str.103, i32 noundef %17, i32 noundef %25, i32 noundef %34, i32 noundef %43, i32 noundef %53) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %for.inc.4, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.then6 ], [ 0, %for.inc.4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @restore_dsp_rettings(ptr nocapture noundef %chip) unnamed_addr #2 align 64 {
for.body.i.i.preheader:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_loaded.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 33
  %0 = ptrtoint ptr %asic_loaded.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %asic_loaded.i, align 2
  %comm_page = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 23
  %1 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %comm_page, align 4
  %gd_clock_state = getelementptr inbounds %struct.comm_page, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %gd_clock_state to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %gd_clock_state, align 4
  %4 = load ptr, ptr %comm_page, align 4
  %gd_spdif_status = getelementptr inbounds %struct.comm_page, ptr %4, i32 0, i32 20
  %5 = ptrtoint ptr %gd_spdif_status to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %gd_spdif_status, align 1
  %6 = load ptr, ptr %comm_page, align 4
  %handshake = getelementptr inbounds %struct.comm_page, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %handshake to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %handshake, align 4
  %arrayidx = getelementptr %struct.echoaudio, ptr %chip, i32 0, i32 45, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %i.03.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !373
  %10 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %comm_page, align 4
  %handshake.i.i = getelementptr inbounds %struct.comm_page, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %handshake.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %handshake.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.i.preheader.1

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #16
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 20000
  br i1 %exitcond.not.i.i, label %if.end.i.i.wait_handshake.exit.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

if.end.i.i.wait_handshake.exit.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %wait_handshake.exit.i

wait_handshake.exit.i:                            ; preds = %if.end.i.i.3.wait_handshake.exit.i_crit_edge, %if.end.i.i.2.wait_handshake.exit.i_crit_edge, %if.end.i.i.1.wait_handshake.exit.i_crit_edge, %if.end.i.i.wait_handshake.exit.i_crit_edge
  %card.i.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %15 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.32) #21
  br label %cleanup

for.body.i.i.preheader.1:                         ; preds = %for.body.i.i
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %9, ptr %arrayidx, align 1
  %arrayidx28.i = getelementptr %struct.comm_page, ptr %11, i32 0, i32 13, i32 0
  %20 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %9, ptr %arrayidx28.i, align 1
  %arrayidx.1 = getelementptr %struct.echoaudio, ptr %chip, i32 0, i32 45, i32 1
  %21 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.1, align 1
  br label %for.body.i.i.1

for.body.i.i.1:                                   ; preds = %if.end.i.i.1.for.body.i.i.1_crit_edge, %for.body.i.i.preheader.1
  %i.03.i.i.1 = phi i32 [ %inc.i.i.1, %if.end.i.i.1.for.body.i.i.1_crit_edge ], [ 0, %for.body.i.i.preheader.1 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !373
  %23 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %comm_page, align 4
  %handshake.i.i.1 = getelementptr inbounds %struct.comm_page, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %handshake.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %handshake.i.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i.1 = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i.1, label %if.end.i.i.1, label %for.body.i.i.preheader.2

if.end.i.i.1:                                     ; preds = %for.body.i.i.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #16
  %inc.i.i.1 = add nuw nsw i32 %i.03.i.i.1, 1
  %exitcond.not.i.i.1 = icmp eq i32 %inc.i.i.1, 20000
  br i1 %exitcond.not.i.i.1, label %if.end.i.i.1.wait_handshake.exit.i_crit_edge, label %if.end.i.i.1.for.body.i.i.1_crit_edge

if.end.i.i.1.for.body.i.i.1_crit_edge:            ; preds = %if.end.i.i.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.1

if.end.i.i.1.wait_handshake.exit.i_crit_edge:     ; preds = %if.end.i.i.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %wait_handshake.exit.i

for.body.i.i.preheader.2:                         ; preds = %for.body.i.i.1
  %28 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %22, ptr %arrayidx.1, align 1
  %arrayidx28.i.1 = getelementptr %struct.comm_page, ptr %24, i32 0, i32 13, i32 1
  %29 = ptrtoint ptr %arrayidx28.i.1 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %22, ptr %arrayidx28.i.1, align 1
  %arrayidx.2 = getelementptr %struct.echoaudio, ptr %chip, i32 0, i32 45, i32 2
  %30 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.2, align 1
  br label %for.body.i.i.2

for.body.i.i.2:                                   ; preds = %if.end.i.i.2.for.body.i.i.2_crit_edge, %for.body.i.i.preheader.2
  %i.03.i.i.2 = phi i32 [ %inc.i.i.2, %if.end.i.i.2.for.body.i.i.2_crit_edge ], [ 0, %for.body.i.i.preheader.2 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !373
  %32 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %comm_page, align 4
  %handshake.i.i.2 = getelementptr inbounds %struct.comm_page, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %handshake.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %handshake.i.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i.2 = icmp eq i32 %35, 0
  br i1 %tobool.not.i.i.2, label %if.end.i.i.2, label %for.body.i.i.preheader.3

if.end.i.i.2:                                     ; preds = %for.body.i.i.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #16
  %inc.i.i.2 = add nuw nsw i32 %i.03.i.i.2, 1
  %exitcond.not.i.i.2 = icmp eq i32 %inc.i.i.2, 20000
  br i1 %exitcond.not.i.i.2, label %if.end.i.i.2.wait_handshake.exit.i_crit_edge, label %if.end.i.i.2.for.body.i.i.2_crit_edge

if.end.i.i.2.for.body.i.i.2_crit_edge:            ; preds = %if.end.i.i.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.2

if.end.i.i.2.wait_handshake.exit.i_crit_edge:     ; preds = %if.end.i.i.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %wait_handshake.exit.i

for.body.i.i.preheader.3:                         ; preds = %for.body.i.i.2
  %37 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %31, ptr %arrayidx.2, align 1
  %arrayidx28.i.2 = getelementptr %struct.comm_page, ptr %33, i32 0, i32 13, i32 2
  %38 = ptrtoint ptr %arrayidx28.i.2 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %31, ptr %arrayidx28.i.2, align 1
  %arrayidx.3 = getelementptr %struct.echoaudio, ptr %chip, i32 0, i32 45, i32 3
  %39 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.3, align 1
  br label %for.body.i.i.3

for.body.i.i.3:                                   ; preds = %if.end.i.i.3.for.body.i.i.3_crit_edge, %for.body.i.i.preheader.3
  %i.03.i.i.3 = phi i32 [ %inc.i.i.3, %if.end.i.i.3.for.body.i.i.3_crit_edge ], [ 0, %for.body.i.i.preheader.3 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !373
  %41 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %comm_page, align 4
  %handshake.i.i.3 = getelementptr inbounds %struct.comm_page, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %handshake.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %handshake.i.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i.i.3 = icmp eq i32 %44, 0
  br i1 %tobool.not.i.i.3, label %if.end.i.i.3, label %for.inc.3

for.inc.3:                                        ; preds = %for.body.i.i.3
  %45 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %40, ptr %arrayidx.3, align 1
  %arrayidx28.i.3 = getelementptr %struct.comm_page, ptr %42, i32 0, i32 13, i32 3
  %46 = ptrtoint ptr %arrayidx28.i.3 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %40, ptr %arrayidx28.i.3, align 1
  br label %for.cond15.preheader

if.end.i.i.3:                                     ; preds = %for.body.i.i.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748) #16
  %inc.i.i.3 = add nuw nsw i32 %i.03.i.i.3, 1
  %exitcond.not.i.i.3 = icmp eq i32 %inc.i.i.3, 20000
  br i1 %exitcond.not.i.i.3, label %if.end.i.i.3.wait_handshake.exit.i_crit_edge, label %if.end.i.i.3.for.body.i.i.3_crit_edge

if.end.i.i.3.for.body.i.i.3_crit_edge:            ; preds = %if.end.i.i.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.3

if.end.i.i.3.wait_handshake.exit.i_crit_edge:     ; preds = %if.end.i.i.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %wait_handshake.exit.i

for.cond15.preheader:                             ; preds = %for.cond15.3.for.cond15.preheader_crit_edge, %for.inc.3
  %i.1123 = phi i32 [ %inc34, %for.cond15.3.for.cond15.preheader_crit_edge ], [ 0, %for.inc.3 ]
  %conv21 = trunc i32 %i.1123 to i16
  %arrayidx23 = getelementptr %struct.echoaudio, ptr %chip, i32 0, i32 47, i32 0, i32 %i.1123
  %48 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx23, align 1
  %conv24 = sext i8 %49 to i32
  %call25 = tail call fastcc i32 @set_vmixer_gain(ptr noundef %chip, i16 noundef zeroext 0, i16 noundef zeroext %conv21, i32 noundef %conv24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %for.cond15.preheader.cleanup_crit_edge, label %for.cond15

for.cond15.preheader.cleanup_crit_edge:           ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond15:                                       ; preds = %for.cond15.preheader
  %arrayidx23.1 = getelementptr %struct.echoaudio, ptr %chip, i32 0, i32 47, i32 1, i32 %i.1123
  %50 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx23.1, align 1
  %conv24.1 = sext i8 %51 to i32
  %call25.1 = tail call fastcc i32 @set_vmixer_gain(ptr noundef %chip, i16 noundef zeroext 1, i16 noundef zeroext %conv21, i32 noundef %conv24.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.1)
  %cmp26.1 = icmp slt i32 %call25.1, 0
  br i1 %cmp26.1, label %for.cond15.cleanup_crit_edge, label %for.cond15.1

for.cond15.cleanup_crit_edge:                     ; preds = %for.cond15
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond15.1:                                     ; preds = %for.cond15
  %arrayidx23.2 = getelementptr %struct.echoaudio, ptr %chip, i32 0, i32 47, i32 2, i32 %i.1123
  %52 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx23.2, align 1
  %conv24.2 = sext i8 %53 to i32
  %call25.2 = tail call fastcc i32 @set_vmixer_gain(ptr noundef %chip, i16 noundef zeroext 2, i16 noundef zeroext %conv21, i32 noundef %conv24.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.2)
  %cmp26.2 = icmp slt i32 %call25.2, 0
  br i1 %cmp26.2, label %for.cond15.1.cleanup_crit_edge, label %for.cond15.2

for.cond15.1.cleanup_crit_edge:                   ; preds = %for.cond15.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond15.2:                                     ; preds = %for.cond15.1
  %arrayidx23.3 = getelementptr %struct.echoaudio, ptr %chip, i32 0, i32 47, i32 3, i32 %i.1123
  %54 = ptrtoint ptr %arrayidx23.3 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx23.3, align 1
  %conv24.3 = sext i8 %55 to i32
  %call25.3 = tail call fastcc i32 @set_vmixer_gain(ptr noundef %chip, i16 noundef zeroext 3, i16 noundef zeroext %conv21, i32 noundef %conv24.3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.3)
  %cmp26.3 = icmp slt i32 %call25.3, 0
  br i1 %cmp26.3, label %for.cond15.2.cleanup_crit_edge, label %for.cond15.3

for.cond15.2.cleanup_crit_edge:                   ; preds = %for.cond15.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond15.3:                                     ; preds = %for.cond15.2
  %inc34 = add nuw nsw i32 %i.1123, 1
  %exitcond.not = icmp eq i32 %inc34, 8
  br i1 %exitcond.not, label %for.end35, label %for.cond15.3.for.cond15.preheader_crit_edge

for.cond15.3.for.cond15.preheader_crit_edge:      ; preds = %for.cond15.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond15.preheader

for.end35:                                        ; preds = %for.cond15.3
  %call36 = tail call fastcc i32 @update_vmixer_level(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %for.end35.cleanup_crit_edge, label %if.end40

for.end35.cleanup_crit_edge:                      ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end40:                                         ; preds = %for.end35
  %call41 = tail call fastcc i32 @update_output_line_level(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.end40.cleanup_crit_edge, label %if.end45

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end45:                                         ; preds = %if.end40
  %call46 = tail call fastcc i32 @update_input_line_level(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.end45.cleanup_crit_edge, label %if.end50

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end50:                                         ; preds = %if.end45
  %sample_rate = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 26
  %56 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sample_rate, align 4
  %call51 = tail call fastcc i32 @set_sample_rate(ptr noundef %chip, i32 noundef %57)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.end50.cleanup_crit_edge, label %if.end55

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end55:                                         ; preds = %if.end50
  %meters_enabled = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 32
  %58 = ptrtoint ptr %meters_enabled to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %meters_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not = icmp eq i8 %59, 0
  br i1 %tobool.not, label %if.end55.if.end62_crit_edge, label %if.then56

if.end55.if.end62_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end62

if.then56:                                        ; preds = %if.end55
  %call57 = tail call fastcc i32 @send_vector(ptr noundef %chip, i32 noundef 239)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.then56.cleanup_crit_edge, label %if.then56.if.end62_crit_edge

if.then56.if.end62_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end62

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end62:                                         ; preds = %if.then56.if.end62_crit_edge, %if.end55.if.end62_crit_edge
  %call63 = tail call fastcc i32 @wait_handshake(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.end62.cleanup_crit_edge, label %if.end67

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end67:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  %60 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %comm_page, align 4
  %handshake.i = getelementptr inbounds %struct.comm_page, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %handshake.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %handshake.i, align 4
  %call68 = tail call fastcc i32 @send_vector(ptr noundef %chip, i32 noundef 251)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  %. = select i1 %cmp69, i32 -5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.end62.cleanup_crit_edge, %if.then56.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %for.end35.cleanup_crit_edge, %for.cond15.2.cleanup_crit_edge, %for.cond15.1.cleanup_crit_edge, %for.cond15.cleanup_crit_edge, %for.cond15.preheader.cleanup_crit_edge, %wait_handshake.exit.i
  %retval.0 = phi i32 [ -5, %for.end35.cleanup_crit_edge ], [ %call41, %if.end40.cleanup_crit_edge ], [ %call46, %if.end45.cleanup_crit_edge ], [ %call51, %if.end50.cleanup_crit_edge ], [ %call57, %if.then56.cleanup_crit_edge ], [ -5, %if.end62.cleanup_crit_edge ], [ %., %if.end67 ], [ -5, %wait_handshake.exit.i ], [ %call25.3, %for.cond15.2.cleanup_crit_edge ], [ %call25.2, %for.cond15.1.cleanup_crit_edge ], [ %call25.1, %for.cond15.cleanup_crit_edge ], [ %call25, %for.cond15.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_vmixer_gain(ptr nocapture noundef %chip, i16 noundef zeroext %output, i16 noundef zeroext %pipe, i32 noundef %gain) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %pipe to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %pipe)
  %cmp = icmp ugt i16 %pipe, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %output)
  %cmp4 = icmp ugt i16 %output, 3
  %or.cond = or i1 %cmp4, %cmp
  br i1 %or.cond, label %do.end, label %if.end26, !prof !376

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 142, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

if.end26:                                         ; preds = %entry
  %comm_page.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 23
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end26
  %i.03.i = phi i32 [ 0, %if.end26 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !373
  %0 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %comm_page.i, align 4
  %handshake.i = getelementptr inbounds %struct.comm_page, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %handshake.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %handshake.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end30

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #16
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20000
  br i1 %exitcond.not.i, label %wait_handshake.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

wait_handshake.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %5 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.32) #21
  br label %cleanup

if.end30:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv31 = trunc i32 %gain to i8
  %idxprom = zext i16 %output to i32
  %arrayidx33 = getelementptr %struct.echoaudio, ptr %chip, i32 0, i32 47, i32 %idxprom, i32 %conv
  %9 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv31, ptr %arrayidx33, align 1
  %mul = shl nuw nsw i32 %idxprom, 3
  %add = add nuw nsw i32 %mul, %conv
  %10 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %comm_page.i, align 4
  %arrayidx38 = getelementptr %struct.comm_page, ptr %11, i32 0, i32 34, i32 %add
  %12 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv31, ptr %arrayidx38, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_vmixer_gain.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_vmixer_gain, %if.then49)) #16
          to label %cleanup [label %if.then49], !srcloc !366

if.then49:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  %card = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %13 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_vmixer_gain.__UNIQUE_ID_ddebug244, ptr noundef %16, ptr noundef nonnull @.str.109, i32 noundef %conv, i32 noundef %idxprom, i32 noundef %gain) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %if.end30, %wait_handshake.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -5, %wait_handshake.exit ], [ 0, %if.then49 ], [ 0, %if.end30 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_vmixer_level(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %comm_page.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 23
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.03.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !373
  %0 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %comm_page.i, align 4
  %handshake.i = getelementptr inbounds %struct.comm_page, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %handshake.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %handshake.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #16
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20000
  br i1 %exitcond.not.i, label %wait_handshake.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

wait_handshake.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %5 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.32) #21
  br label %return

if.end:                                           ; preds = %for.body.i
  %9 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %comm_page.i, align 4
  %handshake.i5 = getelementptr inbounds %struct.comm_page, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %handshake.i5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %handshake.i5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !370
  tail call void @arm_heavy_mb() #16
  %dsp_registers.i.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 57
  br label %for.body.i7

for.body.i7:                                      ; preds = %if.end.i10.for.body.i7_crit_edge, %if.end
  %i.09.i = phi i32 [ 0, %if.end ], [ %inc.i8, %if.end.i10.for.body.i7_crit_edge ]
  %12 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %13, i32 6
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #16, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i6 = icmp eq i32 %15, 0
  br i1 %tobool.not.i6, label %if.then.i, label %if.end.i10

if.then.i:                                        ; preds = %for.body.i7
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !371
  tail call void @arm_heavy_mb() #16
  %16 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i8.i = getelementptr i32, ptr %17, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i, i32 -620756992) #16, !srcloc !372
  br label %return

if.end.i10:                                       ; preds = %for.body.i7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #16
  %inc.i8 = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i9 = icmp eq i32 %inc.i8, 100000
  br i1 %exitcond.not.i9, label %do.end3.i, label %if.end.i10.for.body.i7_crit_edge

if.end.i10.for.body.i7_crit_edge:                 ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i7

do.end3.i:                                        ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #18
  %card.i11 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %19 = ptrtoint ptr %card.i11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card.i11, align 4
  %dev.i12 = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %dev.i12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.27) #21
  br label %return

return:                                           ; preds = %do.end3.i, %if.then.i, %wait_handshake.exit
  %retval.0 = phi i32 [ -5, %wait_handshake.exit ], [ 0, %if.then.i ], [ -16, %do.end3.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_output_line_level(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %comm_page.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 23
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.03.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !373
  %0 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %comm_page.i, align 4
  %handshake.i = getelementptr inbounds %struct.comm_page, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %handshake.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %handshake.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #16
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20000
  br i1 %exitcond.not.i, label %wait_handshake.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

wait_handshake.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %5 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.32) #21
  br label %return

if.end:                                           ; preds = %for.body.i
  %9 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %comm_page.i, align 4
  %handshake.i5 = getelementptr inbounds %struct.comm_page, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %handshake.i5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %handshake.i5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !370
  tail call void @arm_heavy_mb() #16
  %dsp_registers.i.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 57
  br label %for.body.i7

for.body.i7:                                      ; preds = %if.end.i10.for.body.i7_crit_edge, %if.end
  %i.09.i = phi i32 [ 0, %if.end ], [ %inc.i8, %if.end.i10.for.body.i7_crit_edge ]
  %12 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %13, i32 6
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #16, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i6 = icmp eq i32 %15, 0
  br i1 %tobool.not.i6, label %if.then.i, label %if.end.i10

if.then.i:                                        ; preds = %for.body.i7
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !371
  tail call void @arm_heavy_mb() #16
  %16 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i8.i = getelementptr i32, ptr %17, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i, i32 -486539264) #16, !srcloc !372
  br label %return

if.end.i10:                                       ; preds = %for.body.i7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #16
  %inc.i8 = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i9 = icmp eq i32 %inc.i8, 100000
  br i1 %exitcond.not.i9, label %do.end3.i, label %if.end.i10.for.body.i7_crit_edge

if.end.i10.for.body.i7_crit_edge:                 ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i7

do.end3.i:                                        ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #18
  %card.i11 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %19 = ptrtoint ptr %card.i11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card.i11, align 4
  %dev.i12 = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %dev.i12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.27) #21
  br label %return

return:                                           ; preds = %do.end3.i, %if.then.i, %wait_handshake.exit
  %retval.0 = phi i32 [ -5, %wait_handshake.exit ], [ 0, %if.then.i ], [ -16, %do.end3.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_input_line_level(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %comm_page.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 23
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.03.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !373
  %0 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %comm_page.i, align 4
  %handshake.i = getelementptr inbounds %struct.comm_page, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %handshake.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %handshake.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #16
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20000
  br i1 %exitcond.not.i, label %wait_handshake.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

wait_handshake.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %5 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.32) #21
  br label %return

if.end:                                           ; preds = %for.body.i
  %9 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %comm_page.i, align 4
  %handshake.i5 = getelementptr inbounds %struct.comm_page, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %handshake.i5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %handshake.i5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !370
  tail call void @arm_heavy_mb() #16
  %dsp_registers.i.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 57
  br label %for.body.i7

for.body.i7:                                      ; preds = %if.end.i10.for.body.i7_crit_edge, %if.end
  %i.09.i = phi i32 [ 0, %if.end ], [ %inc.i8, %if.end.i10.for.body.i7_crit_edge ]
  %12 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %13, i32 6
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #16, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i6 = icmp eq i32 %15, 0
  br i1 %tobool.not.i6, label %if.then.i, label %if.end.i10

if.then.i:                                        ; preds = %for.body.i7
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !371
  tail call void @arm_heavy_mb() #16
  %16 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i8.i = getelementptr i32, ptr %17, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i, i32 -452984832) #16, !srcloc !372
  br label %return

if.end.i10:                                       ; preds = %for.body.i7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #16
  %inc.i8 = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i9 = icmp eq i32 %inc.i8, 100000
  br i1 %exitcond.not.i9, label %do.end3.i, label %if.end.i10.for.body.i7_crit_edge

if.end.i10.for.body.i7_crit_edge:                 ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i7

do.end3.i:                                        ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #18
  %card.i11 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %19 = ptrtoint ptr %card.i11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card.i11, align 4
  %dev.i12 = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %dev.i12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.27) #21
  br label %return

return:                                           ; preds = %do.end3.i, %if.then.i, %wait_handshake.exit
  %retval.0 = phi i32 [ -5, %wait_handshake.exit ], [ 0, %if.then.i ], [ -16, %do.end3.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_sample_rate(ptr nocapture noundef %chip, i32 noundef %rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rate, label %do.end [
    i32 96000, label %entry.sw.epilog_crit_edge
    i32 88200, label %sw.bb1
    i32 48000, label %sw.bb2
    i32 44100, label %sw.bb3
    i32 32000, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %card = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.110, i32 noundef %rate) #21
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %control_reg.0 = phi i32 [ 64, %sw.bb4 ], [ 66, %sw.bb3 ], [ 65, %sw.bb2 ], [ 322, %sw.bb1 ], [ 321, %entry.sw.epilog_crit_edge ]
  %comm_page = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 23
  %5 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %comm_page, align 4
  %control_register = getelementptr inbounds %struct.comm_page, ptr %6, i32 0, i32 31
  %7 = ptrtoint ptr %control_register to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %control_register, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  call void @__sanitizer_cov_trace_cmp4(i32 %control_reg.0, i32 %9)
  %cmp.not = icmp eq i32 %control_reg.0, %9
  br i1 %cmp.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.for.body.i_crit_edge

sw.epilog.for.body.i_crit_edge:                   ; preds = %sw.epilog
  br label %for.body.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %sw.epilog.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %sw.epilog.for.body.i_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !373
  %10 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %comm_page, align 4
  %handshake.i = getelementptr inbounds %struct.comm_page, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %handshake.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %handshake.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #16
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20000
  br i1 %exitcond.not.i, label %wait_handshake.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

wait_handshake.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %15 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.32) #21
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %19 = tail call i32 @llvm.bswap.i32(i32 %rate)
  %20 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %comm_page, align 4
  %sample_rate = getelementptr inbounds %struct.comm_page, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %sample_rate to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %19, ptr %sample_rate, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %control_reg.0)
  %24 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %comm_page, align 4
  %control_register8 = getelementptr inbounds %struct.comm_page, ptr %25, i32 0, i32 31
  %26 = ptrtoint ptr %control_register8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %control_register8, align 4
  %sample_rate9 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 26
  %27 = ptrtoint ptr %sample_rate9 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %rate, ptr %sample_rate9, align 4
  %28 = load ptr, ptr %comm_page, align 4
  %handshake.i24 = getelementptr inbounds %struct.comm_page, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %handshake.i24 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %handshake.i24, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !370
  tail call void @arm_heavy_mb() #16
  %dsp_registers.i.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 57
  br label %for.body.i26

for.body.i26:                                     ; preds = %if.end.i29.for.body.i26_crit_edge, %if.end
  %i.09.i = phi i32 [ 0, %if.end ], [ %inc.i27, %if.end.i29.for.body.i26_crit_edge ]
  %30 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %31, i32 6
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #16, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  %33 = and i32 %32, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i25 = icmp eq i32 %33, 0
  br i1 %tobool.not.i25, label %if.then.i, label %if.end.i29

if.then.i:                                        ; preds = %for.body.i26
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !371
  tail call void @arm_heavy_mb() #16
  %34 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i8.i = getelementptr i32, ptr %35, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i, i32 -385875968) #16, !srcloc !372
  br label %cleanup

if.end.i29:                                       ; preds = %for.body.i26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #16
  %inc.i27 = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i28 = icmp eq i32 %inc.i27, 100000
  br i1 %exitcond.not.i28, label %do.end3.i, label %if.end.i29.for.body.i26_crit_edge

if.end.i29.for.body.i26_crit_edge:                ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i26

do.end3.i:                                        ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #18
  %card.i30 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %37 = ptrtoint ptr %card.i30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %card.i30, align 4
  %dev.i31 = getelementptr inbounds %struct.snd_card, ptr %38, i32 0, i32 27
  %39 = ptrtoint ptr %dev.i31 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i31, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.27) #21
  br label %cleanup

cleanup:                                          ; preds = %do.end3.i, %if.then.i, %wait_handshake.exit, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -5, %wait_handshake.exit ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then.i ], [ -16, %do.end3.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_analog_out_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %0 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %number, align 4
  %2 = trunc i32 %1 to i8
  %conv = sub i8 8, %2
  %call1 = tail call fastcc i32 @pcm_open(ptr noundef %substream, i8 noundef signext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %3 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %runtime, align 4
  %call3 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %4, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @hw_rule_playback_channels_by_format, ptr noundef null, i32 noundef 1, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %5 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %runtime, align 4
  %call9 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %6, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @hw_rule_playback_format_by_channels, ptr noundef null, i32 noundef 10, i32 noundef -1) #16
  %7 = tail call i32 @llvm.smin.i32(i32 %call9, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %7, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mode_mutex = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mode_mutex, i32 noundef 0) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcm_close.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcm_close, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !366

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %card = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %opencount = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %opencount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %opencount, align 4
  %can_set_rate = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %can_set_rate to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %can_set_rate, align 2
  %conv = zext i8 %9 to i32
  %rate_set = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 22
  %10 = ptrtoint ptr %rate_set to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rate_set, align 1
  %conv3 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcm_close.__UNIQUE_ID_ddebug270, ptr noundef %5, ptr noundef nonnull @.str.116, i32 noundef %7, i32 noundef %conv, i32 noundef %conv3) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %opencount4 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %opencount4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %opencount4, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %opencount4, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %13, label %do.end.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb7
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %can_set_rate6 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 21
  %15 = ptrtoint ptr %can_set_rate6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %can_set_rate6, align 2
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %rate_set8 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 22
  %16 = ptrtoint ptr %rate_set8 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %rate_set8, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb, %do.end.sw.epilog_crit_edge
  tail call void @mutex_unlock(ptr noundef %mode_mutex) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_analog_out_hw_params(ptr noundef %substream, ptr nocapture noundef readonly %hw_params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %0 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %number, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i, align 4
  %call1 = tail call fastcc i32 @init_engine(ptr noundef %substream, ptr noundef %hw_params, i32 noundef %1, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_hw_free(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #16
  %index = getelementptr inbounds %struct.audiopipe, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %index, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp = icmp sgt i16 %7, -1
  br i1 %cmp, label %do.body, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcm_hw_free.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcm_hw_free, %if.then5)) #16
          to label %do.end [label %if.then5], !srcloc !366

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %card = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %index, align 8
  %conv7 = sext i16 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcm_hw_free.__UNIQUE_ID_ddebug274, ptr noundef %11, ptr noundef nonnull @.str.129, i32 noundef %conv7) #16
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %index, align 8
  %pipe_alloc_mask.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 24
  %16 = ptrtoint ptr %pipe_alloc_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pipe_alloc_mask.i.i, align 4
  %conv.i.i = zext i16 %15 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !374

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 1097, i32 noundef 9, ptr noundef null) #16
  br label %free_pipes.exit

if.end23.i:                                       ; preds = %do.end
  %state.i = getelementptr inbounds %struct.audiopipe, ptr %5, i32 0, i32 10
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp.not.i = icmp eq i8 %19, 0
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %do.end41.i, !prof !367

for.cond.preheader.i:                             ; preds = %if.end23.i
  %interleave.i = getelementptr inbounds %struct.audiopipe, ptr %5, i32 0, i32 5
  %20 = ptrtoint ptr %interleave.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %interleave.i, align 2
  %conv58.i = sext i16 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp5977.i = icmp sgt i16 %21, 0
  br i1 %cmp5977.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %conv62.i = sext i16 %15 to i32
  br label %for.body.i

do.end41.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 1099, i32 noundef 9, ptr noundef null) #16
  br label %free_pipes.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %channel_mask.079.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %or.i, %for.body.i.for.body.i_crit_edge ]
  %i.078.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add.i = add nsw i32 %i.078.i, %conv62.i
  %shl.i = shl nuw i32 1, %add.i
  %or.i = or i32 %shl.i, %channel_mask.079.i
  %inc.i = add nuw nsw i32 %i.078.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv58.i
  br i1 %exitcond.not.i, label %for.end.loopexit.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %phi.bo.i = xor i32 %or.i, -1
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %for.cond.preheader.i.for.end.i_crit_edge
  %channel_mask.0.lcssa.i = phi i32 [ -1, %for.cond.preheader.i.for.end.i_crit_edge ], [ %phi.bo.i, %for.end.loopexit.i ]
  %and.i = and i32 %channel_mask.0.lcssa.i, %17
  %22 = ptrtoint ptr %pipe_alloc_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and.i, ptr %pipe_alloc_mask.i.i, align 4
  %pipe_cyclic_mask.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 25
  %23 = ptrtoint ptr %pipe_cyclic_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pipe_cyclic_mask.i, align 4
  %and64.i = and i32 %24, %channel_mask.0.lcssa.i
  store i32 %and64.i, ptr %pipe_cyclic_mask.i, align 4
  br label %free_pipes.exit

free_pipes.exit:                                  ; preds = %for.end.i, %do.end41.i, %do.end.i
  %25 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %index, align 8
  %idxprom = sext i16 %26 to i32
  %arrayidx = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 1, i32 %idxprom
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx, align 4
  store i16 -1, ptr %index, align 8
  br label %if.end12

if.end12:                                         ; preds = %free_pipes.exit, %entry.if.end12_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  %format = alloca %struct.audioformat, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %format) #16
  %4 = getelementptr inbounds %struct.audioformat, ptr %format, i32 0, i32 1
  %5 = getelementptr inbounds %struct.audioformat, ptr %format, i32 0, i32 2
  %6 = getelementptr inbounds %struct.audioformat, ptr %format, i32 0, i32 3
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %7 = getelementptr inbounds i8, ptr %format, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1
  %9 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data2, align 8
  %index = getelementptr inbounds %struct.audiopipe, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %index, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcm_prepare.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcm_prepare, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !366

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %card = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %17 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rate, align 4
  %format5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %19 = ptrtoint ptr %format5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %format5, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %21 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %channels, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcm_prepare.__UNIQUE_ID_ddebug275, ptr noundef %16, ptr noundef nonnull @.str.131, i32 noundef %18, i32 noundef %20, i32 noundef %22) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %channels6 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %23 = ptrtoint ptr %channels6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %channels6, align 8
  %conv7 = trunc i32 %24 to i8
  %25 = ptrtoint ptr %format to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv7, ptr %format, align 1
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %6, align 1
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %5, align 1
  %format8 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %28 = ptrtoint ptr %format8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %format8, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %29, label %do.end19 [
    i32 1, label %do.end.sw.epilog_crit_edge
    i32 2, label %sw.bb9
    i32 32, label %sw.bb11
    i32 11, label %sw.bb13
    i32 10, label %do.end.sw.bb15_crit_edge
  ]

do.end.sw.bb15_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb15

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb13:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %6, align 1
  br label %sw.bb15

sw.bb15:                                          ; preds = %sw.bb13, %do.end.sw.bb15_crit_edge
  br label %sw.epilog

do.end19:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %card20 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %32 = ptrtoint ptr %card20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %card20, align 4
  %dev21 = getelementptr inbounds %struct.snd_card, ptr %33, i32 0, i32 27
  %34 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev21, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.132, i32 noundef %29) #21
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb11, %sw.bb9, %do.end.sw.epilog_crit_edge
  %.sink = phi i8 [ 32, %sw.bb15 ], [ 24, %sw.bb11 ], [ 16, %sw.bb9 ], [ 8, %do.end.sw.epilog_crit_edge ]
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %.sink, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %12)
  %cmp = icmp sgt i16 %12, 7
  br i1 %cmp, label %do.end40, label %if.end56, !prof !374

do.end40:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 726, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

if.end56:                                         ; preds = %sw.epilog
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #16
  %pipe_alloc_mask.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 24
  %37 = ptrtoint ptr %pipe_alloc_mask.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pipe_alloc_mask.i, align 4
  %conv.i = zext i16 %12 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %38, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool60.not = icmp eq i32 %and.i, 0
  br i1 %tobool60.not, label %do.end78, label %if.end95, !prof !374

do.end78:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 736, i32 noundef 9, ptr noundef null) #16
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #16
  br label %cleanup

if.end95:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @set_audio_format(ptr noundef %1, i16 noundef zeroext %12, ptr noundef nonnull %format)
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end95, %do.end78, %do.end40, %do.end19
  %retval.0 = phi i32 [ -22, %do.end19 ], [ -22, %do.end40 ], [ -22, %do.end78 ], [ 0, %if.end95 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %format) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_trigger(ptr noundef %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %group = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 18
  %2 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %group, align 4
  %substreams = getelementptr inbounds %struct.snd_pcm_group, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %substreams to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn119 = load ptr, ptr %substreams, align 4
  %cmp.not122 = icmp eq ptr %.pn119, %substreams
  br i1 %cmp.not122, label %entry.for.end14_crit_edge, label %entry.for.cond3.preheader_crit_edge

entry.for.cond3.preheader_crit_edge:              ; preds = %entry
  br label %for.cond3.preheader

entry.for.end14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end14

for.cond.loopexit:                                ; preds = %for.inc
  %5 = ptrtoint ptr %.pn124 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn124, align 4
  %6 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %group, align 4
  %substreams2 = getelementptr inbounds %struct.snd_pcm_group, ptr %7, i32 0, i32 2
  %cmp.not = icmp eq ptr %.pn, %substreams2
  br i1 %cmp.not, label %for.cond.loopexit.for.end14_crit_edge, label %for.cond.loopexit.for.cond3.preheader_crit_edge

for.cond.loopexit.for.cond3.preheader_crit_edge:  ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond3.preheader

for.cond.loopexit.for.end14_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end14

for.cond3.preheader:                              ; preds = %for.cond.loopexit.for.cond3.preheader_crit_edge, %entry.for.cond3.preheader_crit_edge
  %.pn124 = phi ptr [ %.pn, %for.cond.loopexit.for.cond3.preheader_crit_edge ], [ %.pn119, %entry.for.cond3.preheader_crit_edge ]
  %channelmask.0123 = phi i32 [ %channelmask.2, %for.cond.loopexit.for.cond3.preheader_crit_edge ], [ 0, %entry.for.cond3.preheader_crit_edge ]
  %s.0125 = getelementptr i8, ptr %.pn124, i32 -140
  %runtime.i = getelementptr i8, ptr %.pn124, i32 -20
  br label %for.body5

for.body5:                                        ; preds = %for.inc.for.body5_crit_edge, %for.cond3.preheader
  %i.0117 = phi i32 [ 0, %for.cond3.preheader ], [ %inc, %for.inc.for.body5_crit_edge ]
  %channelmask.1116 = phi i32 [ %channelmask.0123, %for.cond3.preheader ], [ %channelmask.2, %for.inc.for.body5_crit_edge ]
  %arrayidx = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 1, i32 %i.0117
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %cmp7 = icmp eq ptr %s.0125, %9
  br i1 %cmp7, label %if.then, label %for.body5.for.inc_crit_edge

for.body5.for.inc_crit_edge:                      ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #18
  %shl = shl nuw i32 1, %i.0117
  %or = or i32 %shl, %channelmask.1116
  %10 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %substream, ptr %11, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body5.for.inc_crit_edge
  %channelmask.2 = phi i32 [ %or, %if.then ], [ %channelmask.1116, %for.body5.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0117, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.cond.loopexit, label %for.inc.for.body5_crit_edge

for.inc.for.body5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body5

for.end14:                                        ; preds = %for.cond.loopexit.for.end14_crit_edge, %entry.for.end14_crit_edge
  %channelmask.0.lcssa = phi i32 [ 0, %entry.for.end14_crit_edge ], [ %channelmask.2, %for.cond.loopexit.for.end14_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %1) #16
  %13 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %cmd, label %for.end14.sw.epilog68_crit_edge [
    i32 6, label %for.end14.for.body17.preheader_crit_edge
    i32 1, label %for.end14.for.body17.preheader_crit_edge150
    i32 4, label %for.end14.for.body17.preheader_crit_edge151
    i32 5, label %for.end14.for.body34.preheader_crit_edge
    i32 0, label %for.end14.for.body34.preheader_crit_edge152
    i32 3, label %for.end14.for.body53_crit_edge
  ]

for.end14.for.body53_crit_edge:                   ; preds = %for.end14
  br label %for.body53

for.end14.for.body34.preheader_crit_edge152:      ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body34.preheader

for.end14.for.body34.preheader_crit_edge:         ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body34.preheader

for.end14.for.body17.preheader_crit_edge151:      ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body17.preheader

for.end14.for.body17.preheader_crit_edge150:      ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body17.preheader

for.end14.for.body17.preheader_crit_edge:         ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body17.preheader

for.end14.sw.epilog68_crit_edge:                  ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog68

for.body34.preheader:                             ; preds = %for.end14.for.body34.preheader_crit_edge, %for.end14.for.body34.preheader_crit_edge152
  br label %for.body34

for.body17.preheader:                             ; preds = %for.end14.for.body17.preheader_crit_edge, %for.end14.for.body17.preheader_crit_edge150, %for.end14.for.body17.preheader_crit_edge151
  br label %for.body17

for.body17:                                       ; preds = %for.inc27.for.body17_crit_edge, %for.body17.preheader
  %i.1130 = phi i32 [ %inc28, %for.inc27.for.body17_crit_edge ], [ 0, %for.body17.preheader ]
  %shl18 = shl nuw i32 1, %i.1130
  %and = and i32 %shl18, %channelmask.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body17.for.inc27_crit_edge, label %if.then19

for.body17.for.inc27_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc27

if.then19:                                        ; preds = %for.body17
  %arrayidx21 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 1, i32 %i.1130
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx21, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %runtime, align 4
  %private_data22 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %17, i32 0, i32 44
  %18 = ptrtoint ptr %private_data22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private_data22, align 8
  %state = getelementptr inbounds %struct.audiopipe, ptr %19, i32 0, i32 10
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %state, align 2
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.151)
  switch i8 %21, label %if.then19.for.inc27_crit_edge [
    i8 0, label %sw.bb23
    i8 1, label %if.then19.sw.bb24_crit_edge
  ]

if.then19.sw.bb24_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb24

if.then19.for.inc27_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc27

sw.bb23:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  %last_period = getelementptr inbounds %struct.audiopipe, ptr %19, i32 0, i32 1
  %23 = ptrtoint ptr %last_period to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %last_period, align 4
  %last_counter = getelementptr inbounds %struct.audiopipe, ptr %19, i32 0, i32 2
  %24 = ptrtoint ptr %last_counter to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %last_counter, align 8
  %position = getelementptr inbounds %struct.audiopipe, ptr %19, i32 0, i32 3
  %25 = ptrtoint ptr %position to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %position, align 4
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %19, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 0, ptr %27, align 4
  br label %sw.bb24

sw.bb24:                                          ; preds = %sw.bb23, %if.then19.sw.bb24_crit_edge
  %29 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %state, align 2
  br label %for.inc27

for.inc27:                                        ; preds = %sw.bb24, %if.then19.for.inc27_crit_edge, %for.body17.for.inc27_crit_edge
  %inc28 = add nuw nsw i32 %i.1130, 1
  %exitcond137.not = icmp eq i32 %inc28, 32
  br i1 %exitcond137.not, label %for.end29, label %for.inc27.for.body17_crit_edge

for.inc27.for.body17_crit_edge:                   ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body17

for.end29:                                        ; preds = %for.inc27
  %comm_page.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 23
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.end29
  %i.03.i.i = phi i32 [ 0, %for.end29 ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !373
  %30 = ptrtoint ptr %comm_page.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %comm_page.i.i, align 4
  %handshake.i.i = getelementptr inbounds %struct.comm_page, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %handshake.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %handshake.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #16
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 20000
  br i1 %exitcond.not.i.i, label %wait_handshake.exit.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

wait_handshake.exit.i:                            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %card.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %35 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %card.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %36, i32 0, i32 27
  %37 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.32) #21
  br label %sw.epilog68

if.end.i:                                         ; preds = %for.body.i.i
  %39 = tail call i32 @llvm.bswap.i32(i32 %channelmask.0.lcssa) #16
  %cmd_start.i = getelementptr inbounds %struct.comm_page, ptr %31, i32 0, i32 5
  %40 = ptrtoint ptr %cmd_start.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cmd_start.i, align 4
  %or.i = or i32 %41, %39
  store i32 %or.i, ptr %cmd_start.i, align 4
  %42 = ptrtoint ptr %comm_page.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %comm_page.i.i, align 4
  %cmd_start2.i = getelementptr inbounds %struct.comm_page, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %cmd_start2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cmd_start2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool3.not.i = icmp eq i32 %45, 0
  br i1 %tobool3.not.i, label %do.end.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  %handshake.i2.i = getelementptr inbounds %struct.comm_page, ptr %43, i32 0, i32 4
  %46 = ptrtoint ptr %handshake.i2.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %handshake.i2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !370
  tail call void @arm_heavy_mb() #16
  %dsp_registers.i.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 57
  br label %for.body.i4.i

for.body.i4.i:                                    ; preds = %if.end.i7.i.for.body.i4.i_crit_edge, %if.then4.i
  %i.09.i.i = phi i32 [ 0, %if.then4.i ], [ %inc.i5.i, %if.end.i7.i.for.body.i4.i_crit_edge ]
  %47 = ptrtoint ptr %dsp_registers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dsp_registers.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %48, i32 6
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i.i) #16, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  %50 = and i32 %49, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i3.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i3.i, label %if.then.i.i, label %if.end.i7.i

if.then.i.i:                                      ; preds = %for.body.i4.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !371
  tail call void @arm_heavy_mb() #16
  %51 = ptrtoint ptr %dsp_registers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dsp_registers.i.i.i, align 4
  %arrayidx.i8.i.i = getelementptr i32, ptr %52, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i.i, i32 -587202560) #16, !srcloc !372
  br label %for.body.i15.i.preheader

if.end.i7.i:                                      ; preds = %for.body.i4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748) #16
  %inc.i5.i = add nuw nsw i32 %i.09.i.i, 1
  %exitcond.not.i6.i = icmp eq i32 %inc.i5.i, 100000
  br i1 %exitcond.not.i6.i, label %do.end3.i.i, label %if.end.i7.i.for.body.i4.i_crit_edge

if.end.i7.i.for.body.i4.i_crit_edge:              ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i4.i

do.end3.i.i:                                      ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #18
  %card.i8.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %54 = ptrtoint ptr %card.i8.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %card.i8.i, align 4
  %dev.i9.i = getelementptr inbounds %struct.snd_card, ptr %55, i32 0, i32 27
  %56 = ptrtoint ptr %dev.i9.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i9.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.27) #21
  br label %for.body.i15.i.preheader

for.body.i15.i.preheader:                         ; preds = %do.end3.i.i, %if.then.i.i
  br label %for.body.i15.i

for.body.i15.i:                                   ; preds = %if.end.i18.i.for.body.i15.i_crit_edge, %for.body.i15.i.preheader
  %i.03.i12.i = phi i32 [ %inc.i16.i, %if.end.i18.i.for.body.i15.i_crit_edge ], [ 0, %for.body.i15.i.preheader ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !373
  %58 = ptrtoint ptr %comm_page.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %comm_page.i.i, align 4
  %handshake.i13.i = getelementptr inbounds %struct.comm_page, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %handshake.i13.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %handshake.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i14.i = icmp eq i32 %61, 0
  br i1 %tobool.not.i14.i, label %if.end.i18.i, label %if.end9.i

if.end.i18.i:                                     ; preds = %for.body.i15.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748) #16
  %inc.i16.i = add nuw nsw i32 %i.03.i12.i, 1
  %exitcond.not.i17.i = icmp eq i32 %inc.i16.i, 20000
  br i1 %exitcond.not.i17.i, label %wait_handshake.exit23.i, label %if.end.i18.i.for.body.i15.i_crit_edge

if.end.i18.i.for.body.i15.i_crit_edge:            ; preds = %if.end.i18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i15.i

wait_handshake.exit23.i:                          ; preds = %if.end.i18.i
  call void @__sanitizer_cov_trace_pc() #18
  %card.i19.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %63 = ptrtoint ptr %card.i19.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %card.i19.i, align 4
  %dev.i20.i = getelementptr inbounds %struct.snd_card, ptr %64, i32 0, i32 27
  %65 = ptrtoint ptr %dev.i20.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i20.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.32) #21
  br label %sw.epilog68

if.end9.i:                                        ; preds = %for.body.i15.i
  call void @__sanitizer_cov_trace_pc() #18
  %active_mask.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 58
  %67 = ptrtoint ptr %active_mask.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %active_mask.i, align 4
  %or10.i = or i32 %68, %channelmask.0.lcssa
  store i32 %or10.i, ptr %active_mask.i, align 4
  %cmd_start12.i = getelementptr inbounds %struct.comm_page, ptr %59, i32 0, i32 5
  %69 = ptrtoint ptr %cmd_start12.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %cmd_start12.i, align 4
  br label %sw.epilog68

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %70 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %71, i32 0, i32 27
  %72 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.135) #21
  br label %sw.epilog68

for.body34:                                       ; preds = %for.inc45.for.body34_crit_edge, %for.body34.preheader
  %i.2128 = phi i32 [ %inc46, %for.inc45.for.body34_crit_edge ], [ 0, %for.body34.preheader ]
  %shl35 = shl nuw i32 1, %i.2128
  %and36 = and i32 %shl35, %channelmask.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %for.body34.for.inc45_crit_edge, label %if.then38

for.body34.for.inc45_crit_edge:                   ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc45

if.then38:                                        ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx40 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 1, i32 %i.2128
  %74 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx40, align 4
  %runtime41 = getelementptr inbounds %struct.snd_pcm_substream, ptr %75, i32 0, i32 11
  %76 = ptrtoint ptr %runtime41 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %runtime41, align 4
  %private_data42 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %77, i32 0, i32 44
  %78 = ptrtoint ptr %private_data42 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %private_data42, align 8
  %state43 = getelementptr inbounds %struct.audiopipe, ptr %79, i32 0, i32 10
  %80 = ptrtoint ptr %state43 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %state43, align 2
  br label %for.inc45

for.inc45:                                        ; preds = %if.then38, %for.body34.for.inc45_crit_edge
  %inc46 = add nuw nsw i32 %i.2128, 1
  %exitcond136.not = icmp eq i32 %inc46, 32
  br i1 %exitcond136.not, label %for.end47, label %for.inc45.for.body34_crit_edge

for.inc45.for.body34_crit_edge:                   ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body34

for.end47:                                        ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #18
  %call48 = tail call fastcc i32 @stop_transport(ptr noundef %1, i32 noundef %channelmask.0.lcssa)
  br label %sw.epilog68

for.body53:                                       ; preds = %for.inc64.for.body53_crit_edge, %for.end14.for.body53_crit_edge
  %i.3126 = phi i32 [ %inc65, %for.inc64.for.body53_crit_edge ], [ 0, %for.end14.for.body53_crit_edge ]
  %shl54 = shl nuw i32 1, %i.3126
  %and55 = and i32 %shl54, %channelmask.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %for.body53.for.inc64_crit_edge, label %if.then57

for.body53.for.inc64_crit_edge:                   ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc64

if.then57:                                        ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx59 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 1, i32 %i.3126
  %81 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx59, align 4
  %runtime60 = getelementptr inbounds %struct.snd_pcm_substream, ptr %82, i32 0, i32 11
  %83 = ptrtoint ptr %runtime60 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %runtime60, align 4
  %private_data61 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %84, i32 0, i32 44
  %85 = ptrtoint ptr %private_data61 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %private_data61, align 8
  %state62 = getelementptr inbounds %struct.audiopipe, ptr %86, i32 0, i32 10
  %87 = ptrtoint ptr %state62 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %state62, align 2
  br label %for.inc64

for.inc64:                                        ; preds = %if.then57, %for.body53.for.inc64_crit_edge
  %inc65 = add nuw nsw i32 %i.3126, 1
  %exitcond135.not = icmp eq i32 %inc65, 32
  br i1 %exitcond135.not, label %for.end66, label %for.inc64.for.body53_crit_edge

for.inc64.for.body53_crit_edge:                   ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body53

for.end66:                                        ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #18
  %call67 = tail call fastcc i32 @pause_transport(ptr noundef %1, i32 noundef %channelmask.0.lcssa)
  br label %sw.epilog68

sw.epilog68:                                      ; preds = %for.end66, %for.end47, %do.end.i, %if.end9.i, %wait_handshake.exit23.i, %wait_handshake.exit.i, %for.end14.sw.epilog68_crit_edge
  %err.0 = phi i32 [ %call67, %for.end66 ], [ %call48, %for.end47 ], [ -22, %for.end14.sw.epilog68_crit_edge ], [ 0, %if.end9.i ], [ -22, %do.end.i ], [ -5, %wait_handshake.exit.i ], [ -5, %wait_handshake.exit23.i ]
  tail call void @_raw_spin_unlock(ptr noundef %1) #16
  ret i32 %err.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcm_pointer(ptr nocapture noundef readonly %substream) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %last_counter = getelementptr inbounds %struct.audiopipe, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %last_counter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %last_counter, align 8
  %sub = sub i32 %8, %10
  store i32 %8, ptr %last_counter, align 8
  %position = getelementptr inbounds %struct.audiopipe, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %position to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %position, align 4
  %add = add i32 %12, %sub
  store i32 %add, ptr %position, align 4
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 18
  %13 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buffer_size, align 4
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %15 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %frame_bits.i, align 8
  %mul.i = mul i32 %16, %14
  %div1.i = lshr i32 %mul.i, 3
  %rem = urem i32 %add, %div1.i
  store i32 %rem, ptr %position, align 4
  %mul.i15 = shl nuw i32 %rem, 3
  %17 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i15, %17
  ret i32 %div.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcm_open(ptr noundef %substream, i8 noundef signext %max_channels) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = sext i8 %max_channels to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %max_channels)
  %cmp = icmp slt i8 %max_channels, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 136) #22
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %index = getelementptr inbounds %struct.audiopipe, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %index, align 8
  %hw = getelementptr inbounds %struct.audiopipe, ptr %call7.i.i, i32 0, i32 7
  %6 = call ptr @memcpy(ptr %hw, ptr @pcm_hardware_skel, i32 64)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcm_open.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcm_open, %if.then9)) #16
          to label %do.end [label %if.then9], !srcloc !366

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  %card = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcm_open.__UNIQUE_ID_ddebug268, ptr noundef %10, ptr noundef nonnull @.str.114, i32 noundef %conv) #16
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end4
  %constr = getelementptr inbounds %struct.audiopipe, ptr %call7.i.i, i32 0, i32 8
  %11 = ptrtoint ptr %constr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @channels_list, ptr %constr, align 8
  %mask = getelementptr inbounds %struct.audiopipe, ptr %call7.i.i, i32 0, i32 8, i32 2
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %mask, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %do.end
  %i.0 = phi i32 [ 0, %do.end ], [ %inc, %for.cond.for.cond_crit_edge ]
  %arrayidx = getelementptr [10 x i32], ptr @channels_list, i32 0, i32 %i.0
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %cmp14.not = icmp ugt i32 %14, %conv
  %inc = add i32 %i.0, 1
  br i1 %cmp14.not, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %count = getelementptr inbounds %struct.audiopipe, ptr %call7.i.i, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %i.0, ptr %count, align 4
  %channels_max = getelementptr inbounds %struct.audiopipe, ptr %call7.i.i, i32 0, i32 7, i32 6
  %16 = ptrtoint ptr %channels_max to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channels_max, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv)
  %cmp19 = icmp ugt i32 %17, %conv
  br i1 %cmp19, label %if.then21, label %for.end.if.end25_crit_edge

for.end.if.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

if.then21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv, ptr %channels_max, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %for.end.if.end25_crit_edge
  %digital_mode = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 27
  %19 = ptrtoint ptr %digital_mode to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %digital_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp27 = icmp eq i8 %20, 2
  br i1 %cmp27, label %if.then29, label %if.end25.if.end32_crit_edge

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  %rate_max = getelementptr inbounds %struct.audiopipe, ptr %call7.i.i, i32 0, i32 7, i32 4
  %21 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 48000, ptr %rate_max, align 8
  %rates = getelementptr inbounds %struct.audiopipe, ptr %call7.i.i, i32 0, i32 7, i32 2
  %22 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rates, align 8
  %and = and i32 %23, 254
  store i32 %and, ptr %rates, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end25.if.end32_crit_edge
  %hw33 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %24 = call ptr @memcpy(ptr %hw33, ptr %hw, i32 64)
  %private_data35 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %25 = ptrtoint ptr %private_data35 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %private_data35, align 8
  %private_free = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 45
  %26 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @audiopipe_free, ptr %private_free, align 4
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #16
  %call37 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 10, ptr noundef %constr) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end32.cleanup_crit_edge, label %if.end41

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end41:                                         ; preds = %if.end32
  %call42 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.end41.cleanup_crit_edge, label %if.end46

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end46:                                         ; preds = %if.end41
  %call47 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %3, i32 noundef 0, i32 noundef 13, i32 noundef 32) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.end46.cleanup_crit_edge, label %if.end51

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end51:                                         ; preds = %if.end46
  %call52 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %3, i32 noundef 0, i32 noundef 17, i32 noundef 32) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.end51.cleanup_crit_edge, label %if.end56

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end56:                                         ; preds = %if.end51
  %27 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %runtime2, align 4
  %call58 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %28, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @hw_rule_sample_rate, ptr noundef %1, i32 noundef 11, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.end56.cleanup_crit_edge, label %if.end62

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end62:                                         ; preds = %if.end56
  %pci = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 13
  %29 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci, align 4
  %dev63 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %sgpage = getelementptr inbounds %struct.audiopipe, ptr %call7.i.i, i32 0, i32 6
  %call.i = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef 2, ptr noundef %dev63, i32 noundef 0, i32 noundef 4096, ptr noundef %sgpage) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp65 = icmp slt i32 %call.i, 0
  br i1 %cmp65, label %do.end70, label %do.body74

do.end70:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  %card71 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %31 = ptrtoint ptr %card71 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %card71, align 4
  %dev72 = getelementptr inbounds %struct.snd_card, ptr %32, i32 0, i32 27
  %33 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev72, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.115) #21
  br label %cleanup

do.body74:                                        ; preds = %if.end62
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcm_open.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcm_open, %if.then86)) #16
          to label %do.end93 [label %if.then86], !srcloc !366

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #18
  %card87 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %35 = ptrtoint ptr %card87 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %card87, align 4
  %dev88 = getelementptr inbounds %struct.snd_card, ptr %36, i32 0, i32 27
  %37 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev88, align 8
  %opencount = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 7
  %39 = ptrtoint ptr %opencount to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %opencount, align 4
  %can_set_rate = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 21
  %41 = ptrtoint ptr %can_set_rate to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %can_set_rate, align 2
  %conv89 = zext i8 %42 to i32
  %rate_set = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 22
  %43 = ptrtoint ptr %rate_set to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rate_set, align 1
  %conv90 = zext i8 %44 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcm_open.__UNIQUE_ID_ddebug269, ptr noundef %38, ptr noundef nonnull @.str.116, i32 noundef %40, i32 noundef %conv89, i32 noundef %conv90) #16
  br label %do.end93

do.end93:                                         ; preds = %if.then86, %do.body74
  %opencount94 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 7
  %45 = ptrtoint ptr %opencount94 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %opencount94, align 4
  %inc95 = add i32 %46, 1
  store i32 %inc95, ptr %opencount94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc95)
  %cmp97 = icmp ugt i32 %inc95, 1
  br i1 %cmp97, label %land.lhs.true, label %do.end93.cleanup_crit_edge

do.end93.cleanup_crit_edge:                       ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end93
  %rate_set99 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 22
  %47 = ptrtoint ptr %rate_set99 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %rate_set99, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool101.not = icmp eq i8 %48, 0
  br i1 %tobool101.not, label %land.lhs.true.cleanup_crit_edge, label %if.then102

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then102:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %can_set_rate103 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 21
  %49 = ptrtoint ptr %can_set_rate103 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %can_set_rate103, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then102, %land.lhs.true.cleanup_crit_edge, %do.end93.cleanup_crit_edge, %do.end70, %if.end56.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end70 ], [ -11, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call37, %if.end32.cleanup_crit_edge ], [ %call42, %if.end41.cleanup_crit_edge ], [ %call47, %if.end46.cleanup_crit_edge ], [ %call52, %if.end51.cleanup_crit_edge ], [ %call58, %if.end56.cleanup_crit_edge ], [ 0, %if.then102 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %do.end93.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_rule_playback_channels_by_format(ptr noundef %params, ptr nocapture noundef readnone %rule) #2 align 64 {
entry:
  %ch = alloca %struct.snd_interval, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %arrayidx.i25 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ch) #16
  %0 = call ptr @memset(ptr %ch, i32 255, i32 12)
  %openmin.i = getelementptr inbounds %struct.snd_interval, ptr %ch, i32 0, i32 2
  %max.i = getelementptr inbounds %struct.snd_interval, ptr %ch, i32 0, i32 1
  %1 = ptrtoint ptr %openmin.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 47, ptr %openmin.i, align 4
  %2 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i25, align 4
  %conv = zext i32 %3 to i64
  %arrayidx3 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %conv4 = zext i32 %5 to i64
  %shl = shl nuw i64 %conv4, 32
  %add = or i64 %shl, %conv
  call void @__sanitizer_cov_trace_switch(i64 %add, ptr @__sancov_gen_cov_switch_values.152)
  switch i64 %add, label %if.else11 [
    i64 2048, label %if.then
    i64 2, label %if.then8
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %ch, align 4
  %7 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %max.i, align 4
  br label %if.end16

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %max.i, align 4
  %9 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %ch, align 4
  br label %if.end16

if.else11:                                        ; preds = %entry
  %and = and i64 %add, -4294967301
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then12, label %if.else11.cleanup_crit_edge

if.else11.cleanup_crit_edge:                      ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then12:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %ch, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.then8, %if.then
  %call17 = call i32 @snd_interval_refine(ptr noundef %arrayidx.i, ptr noundef nonnull %ch) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.else11.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end16 ], [ 0, %if.else11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ch) #16
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hw_rule_playback_format_by_channels(ptr nocapture noundef %params, ptr nocapture noundef readnone %rule) #9 align 64 {
entry:
  %old.i = alloca %struct.snd_mask, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %arrayidx.i33 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %entry.if.end11_crit_edge, label %if.else

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.else:                                          ; preds = %entry
  %max = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 1
  %2 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp6 = icmp eq i32 %3, 1
  br i1 %cmp6, label %if.else.if.end11_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.end11:                                         ; preds = %if.else.if.end11_crit_edge, %entry.if.end11_crit_edge
  %fmask.0.off0 = phi i32 [ 1028, %entry.if.end11_crit_edge ], [ 3072, %if.else.if.end11_crit_edge ]
  %fmask.0.off32 = phi i32 [ 1, %entry.if.end11_crit_edge ], [ 0, %if.else.if.end11_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %old.i) #16
  %4 = call ptr @memcpy(ptr %old.i, ptr %arrayidx.i33, i32 32)
  %5 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i33, align 4
  %and.i.i = and i32 %6, %fmask.0.off0
  store i32 %and.i.i, ptr %arrayidx.i33, align 4
  %arrayidx2.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx2.1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2.1.i.i, align 4
  %and.1.i.i = and i32 %8, %fmask.0.off32
  store i32 %and.1.i.i, ptr %arrayidx2.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool.not.1.i.not.i = icmp eq i32 %and.1.i.i, 0
  %or.cond.i = select i1 %tobool.not.i.i, i1 %tobool.not.1.i.not.i, i1 false
  br i1 %or.cond.i, label %if.end11.snd_mask_refine.exit_crit_edge, label %if.end.i

if.end11.snd_mask_refine.exit_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %snd_mask_refine.exit

if.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(8) %arrayidx.i33, ptr noundef nonnull dereferenceable(8) %old.i, i32 8) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i7.i = icmp ne i32 %bcmp.i.i, 0
  %lnot.ext.i = zext i1 %tobool.not.i7.i to i32
  br label %snd_mask_refine.exit

snd_mask_refine.exit:                             ; preds = %if.end.i, %if.end11.snd_mask_refine.exit_crit_edge
  %retval.0.i = phi i32 [ %lnot.ext.i, %if.end.i ], [ -22, %if.end11.snd_mask_refine.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %old.i) #16
  br label %cleanup

cleanup:                                          ; preds = %snd_mask_refine.exit, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %snd_mask_refine.exit ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @audiopipe_free(ptr nocapture noundef readonly %runtime) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 44
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %area = getelementptr inbounds %struct.audiopipe, ptr %1, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %area, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %sgpage = getelementptr inbounds %struct.audiopipe, ptr %1, i32 0, i32 6
  tail call void @snd_dma_free_pages(ptr noundef %sgpage) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_rule_sample_rate(ptr noundef %params, ptr nocapture noundef readonly %rule) #2 align 64 {
entry:
  %fixed = alloca %struct.snd_interval, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %fixed) #16
  %2 = call ptr @memset(ptr %fixed, i32 255, i32 12)
  %mode_mutex = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mode_mutex, i32 noundef 0) #16
  %can_set_rate = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 21
  %3 = ptrtoint ptr %can_set_rate to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %can_set_rate, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %openmin.i = getelementptr inbounds %struct.snd_interval, ptr %fixed, i32 0, i32 2
  %5 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %openmin.i, align 4
  %max.i = getelementptr inbounds %struct.snd_interval, ptr %fixed, i32 0, i32 1
  %bf.clear8.i = and i8 %bf.load.i, 15
  store i8 %bf.clear8.i, ptr %openmin.i, align 4
  %sample_rate = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 26
  %6 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sample_rate, align 4
  %8 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %max.i, align 4
  %9 = ptrtoint ptr %fixed to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %fixed, align 4
  %call1 = call i32 @snd_interval_refine(ptr noundef %arrayidx.i, ptr noundef nonnull %fixed) #16
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call1, %if.else ], [ 0, %entry.if.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %mode_mutex) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %fixed) #16
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dma_free_pages(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_refine(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dma_alloc_dir_pages(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_engine(ptr noundef %substream, ptr nocapture noundef readonly %hw_params, i32 noundef %pipe_index, i32 noundef %interleave) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #16
  %index = getelementptr inbounds %struct.audiopipe, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %index, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp = icmp sgt i16 %7, -1
  br i1 %cmp, label %do.body, label %entry.if.end41_crit_edge

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_engine.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_engine, %if.then5)) #16
          to label %do.end [label %if.then5], !srcloc !366

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %card = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %index, align 8
  %conv7 = sext i16 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_engine.__UNIQUE_ID_ddebug271, ptr noundef %11, ptr noundef nonnull @.str.119, i32 noundef %conv7) #16
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %index, align 8
  %pipe_alloc_mask.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 24
  %16 = ptrtoint ptr %pipe_alloc_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pipe_alloc_mask.i.i, align 4
  %conv.i.i = zext i16 %15 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.end.do.end25_crit_edge, label %if.end23.i, !prof !374

do.end.do.end25_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end25

if.end23.i:                                       ; preds = %do.end
  %state.i = getelementptr inbounds %struct.audiopipe, ptr %5, i32 0, i32 10
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp.not.i = icmp eq i8 %19, 0
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %if.end23.i.do.end25_crit_edge, !prof !367

if.end23.i.do.end25_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end25

for.cond.preheader.i:                             ; preds = %if.end23.i
  %interleave.i = getelementptr inbounds %struct.audiopipe, ptr %5, i32 0, i32 5
  %20 = ptrtoint ptr %interleave.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %interleave.i, align 2
  %conv58.i = sext i16 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp5977.i = icmp sgt i16 %21, 0
  br i1 %cmp5977.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.free_pipes.exit_crit_edge

for.cond.preheader.i.free_pipes.exit_crit_edge:   ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %free_pipes.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %conv62.i = sext i16 %15 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %channel_mask.079.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %or.i, %for.body.i.for.body.i_crit_edge ]
  %i.078.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %add.i = add nsw i32 %i.078.i, %conv62.i
  %shl.i = shl nuw i32 1, %add.i
  %or.i = or i32 %shl.i, %channel_mask.079.i
  %inc.i = add nuw nsw i32 %i.078.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv58.i
  br i1 %exitcond.not.i, label %for.end.loopexit.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %phi.bo.i = xor i32 %or.i, -1
  br label %free_pipes.exit

free_pipes.exit:                                  ; preds = %for.end.loopexit.i, %for.cond.preheader.i.free_pipes.exit_crit_edge
  %channel_mask.0.lcssa.i = phi i32 [ -1, %for.cond.preheader.i.free_pipes.exit_crit_edge ], [ %phi.bo.i, %for.end.loopexit.i ]
  %and.i = and i32 %channel_mask.0.lcssa.i, %17
  %22 = ptrtoint ptr %pipe_alloc_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and.i, ptr %pipe_alloc_mask.i.i, align 4
  %pipe_cyclic_mask.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 25
  %23 = ptrtoint ptr %pipe_cyclic_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pipe_cyclic_mask.i, align 4
  %and64.i = and i32 %24, %channel_mask.0.lcssa.i
  store i32 %and64.i, ptr %pipe_cyclic_mask.i, align 4
  br label %if.end31

do.end25:                                         ; preds = %if.end23.i.do.end25_crit_edge, %do.end.do.end25_crit_edge
  %.sink = phi i32 [ 1097, %do.end.do.end25_crit_edge ], [ 1099, %if.end23.i.do.end25_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 554, i32 noundef 9, ptr noundef null) #16
  br label %if.end31

if.end31:                                         ; preds = %do.end25, %free_pipes.exit
  %25 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %index, align 8
  %idxprom = sext i16 %26 to i32
  %arrayidx = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 1, i32 %idxprom
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end31, %entry.if.end41_crit_edge
  %call42 = tail call fastcc i32 @allocate_pipes(ptr noundef %1, ptr noundef %5, i32 noundef %pipe_index, i32 noundef %interleave)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #16
  br i1 %cmp43, label %if.then45, label %if.end52

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  %card50 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %card50 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card50, align 4
  %dev51 = getelementptr inbounds %struct.snd_card, ptr %29, i32 0, i32 27
  %30 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev51, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.120, i32 noundef %pipe_index, i32 noundef %call42) #21
  br label %cleanup

if.end52:                                         ; preds = %if.end41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_engine.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_engine, %if.then66)) #16
          to label %do.body72 [label %if.then66], !srcloc !366

if.then66:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #18
  %card67 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %32 = ptrtoint ptr %card67 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %card67, align 4
  %dev68 = getelementptr inbounds %struct.snd_card, ptr %33, i32 0, i32 27
  %34 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev68, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_engine.__UNIQUE_ID_ddebug272, ptr noundef %35, ptr noundef nonnull @.str.121, i32 noundef %pipe_index) #16
  br label %do.body72

do.body72:                                        ; preds = %if.then66, %if.end52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_engine.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_engine, %if.then84)) #16
          to label %do.end92 [label %if.then84], !srcloc !366

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #18
  %card85 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %36 = ptrtoint ptr %card85 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %card85, align 4
  %dev86 = getelementptr inbounds %struct.snd_card, ptr %37, i32 0, i32 27
  %38 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev86, align 8
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 10
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i218 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 7
  %42 = ptrtoint ptr %arrayidx.i.i218 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i.i218, align 4
  %arrayidx.i.i219 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 6
  %44 = ptrtoint ptr %arrayidx.i.i219 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i.i219, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_engine.__UNIQUE_ID_ddebug273, ptr noundef %39, ptr noundef nonnull @.str.122, i32 noundef %41, i32 noundef %43, i32 noundef %45) #16
  br label %do.end92

do.end92:                                         ; preds = %if.then84, %do.body72
  %sglist_head.i = getelementptr inbounds %struct.audiopipe, ptr %5, i32 0, i32 9
  %46 = ptrtoint ptr %sglist_head.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %sglist_head.i, align 4
  %area.i = getelementptr inbounds %struct.audiopipe, ptr %5, i32 0, i32 6, i32 1
  %47 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %area.i, align 4
  %49 = call ptr @memset(ptr %48, i32 0, i32 4096)
  %addr.i = getelementptr inbounds %struct.audiopipe, ptr %5, i32 0, i32 6, i32 2
  %50 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr.i, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #16
  %comm_page.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 23
  %53 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %comm_page.i, align 4
  %55 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %index, align 8
  %idxprom.i = sext i16 %56 to i32
  %arrayidx.i = getelementptr %struct.comm_page, ptr %54, i32 0, i32 9, i32 %idxprom.i
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %52, ptr %arrayidx.i, align 4
  %arrayidx.i.i221 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 10
  %58 = ptrtoint ptr %arrayidx.i.i221 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i.i221, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp95269.not = icmp eq i32 %59, 0
  br i1 %cmp95269.not, label %do.end92.for.end_crit_edge, label %for.body.lr.ph

do.end92.for.end_crit_edge:                       ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end92
  %arrayidx.i.i222 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 6
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  br label %for.body

for.cond.loopexit:                                ; preds = %if.end117.for.cond.loopexit_crit_edge, %if.end117.thread, %for.body.for.cond.loopexit_crit_edge
  %offs.1.lcssa = phi i32 [ %offs.0270, %for.body.for.cond.loopexit_crit_edge ], [ %add112, %if.end117.thread ], [ %edge.1263, %if.end117.for.cond.loopexit_crit_edge ]
  %edge.1.lcssa = phi i32 [ %edge.0271, %for.body.for.cond.loopexit_crit_edge ], [ %edge.2277, %if.end117.thread ], [ %add121, %if.end117.for.cond.loopexit_crit_edge ]
  %60 = ptrtoint ptr %arrayidx.i.i221 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i.i221, align 4
  %cmp95 = icmp ugt i32 %61, %offs.1.lcssa
  br i1 %cmp95, label %for.cond.loopexit.for.body_crit_edge, label %for.cond.loopexit.for.end_crit_edge

for.cond.loopexit.for.end_crit_edge:              ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.lr.ph
  %62 = phi i32 [ %59, %for.body.lr.ph ], [ %61, %for.cond.loopexit.for.body_crit_edge ]
  %edge.0271 = phi i32 [ 4096, %for.body.lr.ph ], [ %edge.1.lcssa, %for.cond.loopexit.for.body_crit_edge ]
  %offs.0270 = phi i32 [ 0, %for.body.lr.ph ], [ %offs.1.lcssa, %for.cond.loopexit.for.body_crit_edge ]
  %63 = ptrtoint ptr %arrayidx.i.i222 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i.i222, align 4
  %add = add i32 %64, %offs.0270
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %62)
  %cmp99 = icmp ugt i32 %add, %62
  %sub = sub i32 %62, %offs.0270
  %spec.select = select i1 %cmp99, i32 %sub, i32 %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool104.not261 = icmp eq i32 %spec.select, 0
  br i1 %tobool104.not261, label %for.body.for.cond.loopexit_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.loopexit

while.body:                                       ; preds = %if.end117.while.body_crit_edge, %for.body.while.body_crit_edge
  %rest.1265 = phi i32 [ %sub116, %if.end117.while.body_crit_edge ], [ %spec.select, %for.body.while.body_crit_edge ]
  %edge.1263 = phi i32 [ %add121, %if.end117.while.body_crit_edge ], [ %edge.0271, %for.body.while.body_crit_edge ]
  %offs.1262 = phi i32 [ %edge.1263, %if.end117.while.body_crit_edge ], [ %offs.0270, %for.body.while.body_crit_edge ]
  %65 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %runtime, align 4
  %dma_buffer_p.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %66, i32 0, i32 53
  %67 = ptrtoint ptr %dma_buffer_p.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dma_buffer_p.i, align 8
  %call.i = tail call i32 @snd_sgbuf_get_addr(ptr noundef %68, i32 noundef %offs.1262) #16
  %sub106 = sub i32 %edge.1263, %offs.1262
  call void @__sanitizer_cov_trace_cmp4(i32 %rest.1265, i32 %sub106)
  %cmp107.not = icmp sgt i32 %rest.1265, %sub106
  %69 = ptrtoint ptr %sglist_head.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %sglist_head.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %70)
  %cmp.i233 = icmp slt i16 %70, 511
  br i1 %cmp107.not, label %if.else, label %if.then109

if.then109:                                       ; preds = %while.body
  br i1 %cmp.i233, label %if.then.i, label %do.end.i229

if.then.i:                                        ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i = sext i16 %70 to i32
  %71 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %area.i, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %call.i) #16
  %arrayidx.i227 = getelementptr %struct.sg_entry, ptr %72, i32 %conv.i
  %74 = ptrtoint ptr %arrayidx.i227 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %arrayidx.i227, align 4
  %75 = tail call i32 @llvm.bswap.i32(i32 %rest.1265) #16
  %size.i = getelementptr %struct.sg_entry, ptr %72, i32 %conv.i, i32 1
  %76 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %size.i, align 4
  %77 = ptrtoint ptr %sglist_head.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %sglist_head.i, align 4
  %inc.i228 = add i16 %78, 1
  store i16 %inc.i228, ptr %sglist_head.i, align 4
  br label %sglist_add_mapping.exit

do.end.i229:                                      ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #18
  %79 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %80, i32 0, i32 27
  %81 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.126) #21
  %83 = ptrtoint ptr %sglist_head.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %.pr = load i16, ptr %sglist_head.i, align 4
  br label %sglist_add_mapping.exit

sglist_add_mapping.exit:                          ; preds = %do.end.i229, %if.then.i
  %84 = phi i16 [ %inc.i228, %if.then.i ], [ %.pr, %do.end.i229 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %84)
  %cmp.i.i = icmp slt i16 %84, 511
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end.i.i

if.then.i.i:                                      ; preds = %sglist_add_mapping.exit
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i.i230 = sext i16 %84 to i32
  %85 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %area.i, align 4
  %arrayidx.i.i231 = getelementptr %struct.sg_entry, ptr %86, i32 %conv.i.i230
  %87 = ptrtoint ptr %arrayidx.i.i231 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %arrayidx.i.i231, align 4
  %size.i.i = getelementptr %struct.sg_entry, ptr %86, i32 %conv.i.i230, i32 1
  %88 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %size.i.i, align 4
  %89 = ptrtoint ptr %sglist_head.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %sglist_head.i, align 4
  %inc.i.i = add i16 %90, 1
  store i16 %inc.i.i, ptr %sglist_head.i, align 4
  br label %if.end117.thread

do.end.i.i:                                       ; preds = %sglist_add_mapping.exit
  call void @__sanitizer_cov_trace_pc() #18
  %91 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %card.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %92, i32 0, i32 27
  %93 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.126) #21
  br label %if.end117.thread

if.end117.thread:                                 ; preds = %do.end.i.i, %if.then.i.i
  %add112 = add i32 %rest.1265, %offs.1262
  call void @__sanitizer_cov_trace_cmp4(i32 %add112, i32 %edge.1263)
  %cmp118275 = icmp eq i32 %add112, %edge.1263
  %add121276 = add i32 %edge.1263, 4096
  %edge.2277 = select i1 %cmp118275, i32 %add121276, i32 %edge.1263
  br label %for.cond.loopexit

if.else:                                          ; preds = %while.body
  br i1 %cmp.i233, label %if.then.i239, label %do.end.i242

if.then.i239:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i234 = sext i16 %70 to i32
  %95 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %area.i, align 4
  %97 = tail call i32 @llvm.bswap.i32(i32 %call.i) #16
  %arrayidx.i236 = getelementptr %struct.sg_entry, ptr %96, i32 %conv.i234
  %98 = ptrtoint ptr %arrayidx.i236 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %arrayidx.i236, align 4
  %99 = tail call i32 @llvm.bswap.i32(i32 %sub106) #16
  %size.i237 = getelementptr %struct.sg_entry, ptr %96, i32 %conv.i234, i32 1
  %100 = ptrtoint ptr %size.i237 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %size.i237, align 4
  %101 = ptrtoint ptr %sglist_head.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %sglist_head.i, align 4
  %inc.i238 = add i16 %102, 1
  store i16 %inc.i238, ptr %sglist_head.i, align 4
  br label %if.end117

do.end.i242:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %103 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %card.i, align 4
  %dev.i241 = getelementptr inbounds %struct.snd_card, ptr %104, i32 0, i32 27
  %105 = ptrtoint ptr %dev.i241 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev.i241, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.126) #21
  br label %if.end117

if.end117:                                        ; preds = %do.end.i242, %if.then.i239
  %sub116 = sub i32 %rest.1265, %sub106
  %add121 = add i32 %edge.1263, 4096
  %tobool104.not = icmp eq i32 %sub116, 0
  br i1 %tobool104.not, label %if.end117.for.cond.loopexit_crit_edge, label %if.end117.while.body_crit_edge

if.end117.while.body_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

if.end117.for.cond.loopexit_crit_edge:            ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.loopexit

for.end:                                          ; preds = %for.cond.loopexit.for.end_crit_edge, %do.end92.for.end_crit_edge
  %107 = ptrtoint ptr %sglist_head.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %sglist_head.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %108)
  %cmp.i.i245 = icmp slt i16 %108, 511
  br i1 %cmp.i.i245, label %if.then.i.i252, label %do.end.i.i255

if.then.i.i252:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %109 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %addr.i, align 4
  %conv.i.i247 = sext i16 %108 to i32
  %111 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %area.i, align 4
  %113 = tail call i32 @llvm.bswap.i32(i32 %110) #16
  %arrayidx.i.i249 = getelementptr %struct.sg_entry, ptr %112, i32 %conv.i.i247
  %114 = ptrtoint ptr %arrayidx.i.i249 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %arrayidx.i.i249, align 4
  %size.i.i250 = getelementptr %struct.sg_entry, ptr %112, i32 %conv.i.i247, i32 1
  %115 = ptrtoint ptr %size.i.i250 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %size.i.i250, align 4
  %116 = ptrtoint ptr %sglist_head.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %sglist_head.i, align 4
  %inc.i.i251 = add i16 %117, 1
  store i16 %inc.i.i251, ptr %sglist_head.i, align 4
  br label %sglist_wrap.exit

do.end.i.i255:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %card.i.i253 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %118 = ptrtoint ptr %card.i.i253 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %card.i.i253, align 4
  %dev.i.i254 = getelementptr inbounds %struct.snd_card, ptr %119, i32 0, i32 27
  %120 = ptrtoint ptr %dev.i.i254 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev.i.i254, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.126) #21
  br label %sglist_wrap.exit

sglist_wrap.exit:                                 ; preds = %do.end.i.i255, %if.then.i.i252
  %last_period = getelementptr inbounds %struct.audiopipe, ptr %5, i32 0, i32 1
  %122 = ptrtoint ptr %last_period to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %last_period, align 4
  %last_counter = getelementptr inbounds %struct.audiopipe, ptr %5, i32 0, i32 2
  %123 = ptrtoint ptr %last_counter to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %last_counter, align 8
  %position = getelementptr inbounds %struct.audiopipe, ptr %5, i32 0, i32 3
  %124 = ptrtoint ptr %position to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %position, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !377
  %arrayidx132 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 1, i32 %pipe_index
  %125 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %substream, ptr %arrayidx132, align 4
  %rate_set = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 22
  %126 = ptrtoint ptr %rate_set to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %rate_set, align 1
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #16
  %rate_num = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 9
  %127 = ptrtoint ptr %rate_num to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %rate_num, align 4
  %rate_den = getelementptr inbounds %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 10
  %129 = ptrtoint ptr %rate_den to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %rate_den, align 4
  %div = udiv i32 %128, %130
  %call134 = tail call fastcc i32 @set_sample_rate(ptr noundef %1, i32 noundef %div)
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #16
  br label %cleanup

cleanup:                                          ; preds = %sglist_wrap.exit, %if.then45
  %retval.0 = phi i32 [ %call42, %if.then45 ], [ 0, %sglist_wrap.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @allocate_pipes(ptr nocapture noundef %chip, ptr nocapture noundef writeonly %pipe, i32 noundef %pipe_index, i32 noundef %interleave) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @allocate_pipes.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@allocate_pipes, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !366

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %card = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @allocate_pipes.__UNIQUE_ID_ddebug253, ptr noundef %3, ptr noundef nonnull @.str.124, i32 noundef %pipe_index, i32 noundef %interleave) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bad_board = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 34
  %4 = ptrtoint ptr %bad_board to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bad_board, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %for.cond.preheader, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %interleave)
  %cmp48 = icmp sgt i32 %interleave, 0
  br i1 %cmp48, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.050 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %channel_mask.049 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add = add i32 %i.050, %pipe_index
  %shl = shl nuw i32 1, %add
  %or = or i32 %shl, %channel_mask.049
  %inc = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, %interleave
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %channel_mask.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %or, %for.body.for.end_crit_edge ]
  %pipe_alloc_mask = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 24
  %6 = ptrtoint ptr %pipe_alloc_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pipe_alloc_mask, align 4
  %and = and i32 %7, %channel_mask.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end13, label %do.end10

do.end10:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %card11 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %8 = ptrtoint ptr %card11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card11, align 4
  %dev12 = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.125) #21
  br label %cleanup

if.end13:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %comm_page = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 23
  %12 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %comm_page, align 4
  %arrayidx = getelementptr %struct.comm_page, ptr %13, i32 0, i32 10, i32 %pipe_index
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %pipe_alloc_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pipe_alloc_mask, align 4
  %or15 = or i32 %16, %channel_mask.0.lcssa
  store i32 %or15, ptr %pipe_alloc_mask, align 4
  %pipe_cyclic_mask = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 25
  %17 = ptrtoint ptr %pipe_cyclic_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pipe_cyclic_mask, align 4
  %or16 = or i32 %18, %channel_mask.0.lcssa
  store i32 %or16, ptr %pipe_cyclic_mask, align 4
  %conv = trunc i32 %pipe_index to i16
  %index = getelementptr inbounds %struct.audiopipe, ptr %pipe, i32 0, i32 4
  %19 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv, ptr %index, align 8
  %conv17 = trunc i32 %interleave to i16
  %interleave18 = getelementptr inbounds %struct.audiopipe, ptr %pipe, i32 0, i32 5
  %20 = ptrtoint ptr %interleave18 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv17, ptr %interleave18, align 2
  %state = getelementptr inbounds %struct.audiopipe, ptr %pipe, i32 0, i32 10
  %21 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %state, align 2
  %22 = load ptr, ptr %comm_page, align 4
  %arrayidx21 = getelementptr %struct.comm_page, ptr %22, i32 0, i32 10, i32 %pipe_index
  %23 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx21, ptr %pipe, align 8
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 0, ptr %arrayidx21, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end10, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %do.end10 ], [ %pipe_index, %if.end13 ], [ -5, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sgbuf_get_addr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_audio_format(ptr nocapture noundef readonly %chip, i16 noundef zeroext %pipe_index, ptr nocapture noundef readonly %format) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %format, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp ugt i8 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %bits_per_sample = getelementptr inbounds %struct.audioformat, ptr %format, i32 0, i32 1
  %2 = ptrtoint ptr %bits_per_sample to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bits_per_sample, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.153)
  switch i8 %3, label %if.then.sw.epilog_crit_edge [
    i8 16, label %sw.bb
    i8 24, label %sw.bb3
    i8 32, label %sw.bb4
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb, %if.then.sw.epilog_crit_edge
  %dsp_format.0 = phi i16 [ 5, %if.then.sw.epilog_crit_edge ], [ 128, %sw.bb4 ], [ 192, %sw.bb3 ], [ 64, %sw.bb ]
  %conv6 = zext i8 %1 to i16
  %or = or i16 %dsp_format.0, %conv6
  br label %do.body

if.else:                                          ; preds = %entry
  %data_are_bigendian = getelementptr inbounds %struct.audioformat, ptr %format, i32 0, i32 3
  %5 = ptrtoint ptr %data_are_bigendian to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data_are_bigendian, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.else15, label %if.then9

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %switch.selectcmp = icmp eq i8 %1, 2
  %switch.select = select i1 %switch.selectcmp, i16 10, i16 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %switch.selectcmp88 = icmp eq i8 %1, 1
  %switch.select89 = select i1 %switch.selectcmp88, i16 9, i16 %switch.select
  br label %do.body

if.else15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp18 = icmp eq i8 %1, 1
  br i1 %cmp18, label %land.lhs.true, label %if.else15.if.else27_crit_edge

if.else15.if.else27_crit_edge:                    ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else27

land.lhs.true:                                    ; preds = %if.else15
  %bits_per_sample20 = getelementptr inbounds %struct.audioformat, ptr %format, i32 0, i32 1
  %7 = ptrtoint ptr %bits_per_sample20 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bits_per_sample20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %8)
  %cmp22 = icmp eq i8 %8, 32
  br i1 %cmp22, label %land.lhs.true24, label %land.lhs.true.if.else27_crit_edge

land.lhs.true.if.else27_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else27

land.lhs.true24:                                  ; preds = %land.lhs.true
  %mono_to_stereo = getelementptr inbounds %struct.audioformat, ptr %format, i32 0, i32 2
  %9 = ptrtoint ptr %mono_to_stereo to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mono_to_stereo, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool25.not = icmp eq i8 %10, 0
  br i1 %tobool25.not, label %land.lhs.true24.do.body_crit_edge, label %land.lhs.true24.if.else27_crit_edge

land.lhs.true24.if.else27_crit_edge:              ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else27

land.lhs.true24.do.body_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.else27:                                        ; preds = %land.lhs.true24.if.else27_crit_edge, %land.lhs.true.if.else27_crit_edge, %if.else15.if.else27_crit_edge
  %bits_per_sample28 = getelementptr inbounds %struct.audioformat, ptr %format, i32 0, i32 1
  %11 = ptrtoint ptr %bits_per_sample28 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bits_per_sample28, align 1
  %conv29 = zext i8 %12 to i32
  %13 = add nsw i32 %conv29, -8
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 29)
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %14, label %sw.bb37 [
    i32 0, label %sw.bb30
    i32 3, label %sw.bb53
    i32 2, label %sw.bb45
  ]

sw.bb30:                                          ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp33 = icmp eq i8 %1, 2
  %. = select i1 %cmp33, i16 4, i16 0
  br label %do.body

sw.bb37:                                          ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp40 = icmp eq i8 %1, 2
  %.90 = select i1 %cmp40, i16 5, i16 1
  br label %do.body

sw.bb45:                                          ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp48 = icmp eq i8 %1, 2
  %.91 = select i1 %cmp48, i16 6, i16 2
  br label %do.body

sw.bb53:                                          ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp56 = icmp eq i8 %1, 2
  %.92 = select i1 %cmp56, i16 7, i16 3
  br label %do.body

do.body:                                          ; preds = %sw.bb53, %sw.bb45, %sw.bb37, %sw.bb30, %land.lhs.true24.do.body_crit_edge, %if.then9, %sw.epilog
  %dsp_format.1 = phi i16 [ %or, %sw.epilog ], [ %switch.select89, %if.then9 ], [ 8, %land.lhs.true24.do.body_crit_edge ], [ %., %sw.bb30 ], [ %.90, %sw.bb37 ], [ %.91, %sw.bb45 ], [ %.92, %sw.bb53 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_audio_format.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_audio_format, %if.then68)) #16
          to label %do.end [label %if.then68], !srcloc !366

if.then68:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %card = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %conv69 = zext i16 %pipe_index to i32
  %conv70 = zext i16 %dsp_format.1 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_audio_format.__UNIQUE_ID_ddebug250, ptr noundef %19, ptr noundef nonnull @.str.134, i32 noundef %conv69, i32 noundef %conv70) #16
  br label %do.end

do.end:                                           ; preds = %if.then68, %do.body
  %20 = tail call i16 @llvm.bswap.i16(i16 %dsp_format.1)
  %comm_page = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 23
  %21 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %comm_page, align 4
  %idxprom = zext i16 %pipe_index to i32
  %arrayidx = getelementptr %struct.comm_page, ptr %22, i32 0, i32 8, i32 %idxprom
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %20, ptr %arrayidx, align 2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pause_transport(ptr nocapture noundef %chip, i32 noundef %channel_mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %comm_page.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 23
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.03.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !373
  %0 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %comm_page.i, align 4
  %handshake.i = getelementptr inbounds %struct.comm_page, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %handshake.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %handshake.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #16
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20000
  br i1 %exitcond.not.i, label %wait_handshake.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

wait_handshake.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %5 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.32) #21
  br label %return

if.end:                                           ; preds = %for.body.i
  %9 = tail call i32 @llvm.bswap.i32(i32 %channel_mask)
  %10 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %comm_page.i, align 4
  %cmd_stop = getelementptr inbounds %struct.comm_page, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %cmd_stop to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cmd_stop, align 4
  %or = or i32 %13, %9
  store i32 %or, ptr %cmd_stop, align 4
  %14 = load ptr, ptr %comm_page.i, align 4
  %cmd_reset = getelementptr inbounds %struct.comm_page, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %cmd_reset to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %cmd_reset, align 4
  %16 = load ptr, ptr %comm_page.i, align 4
  %cmd_stop3 = getelementptr inbounds %struct.comm_page, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %cmd_stop3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cmd_stop3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool4.not = icmp eq i32 %18, 0
  br i1 %tobool4.not, label %do.body, label %if.then5

if.then5:                                         ; preds = %if.end
  %handshake.i35 = getelementptr inbounds %struct.comm_page, ptr %16, i32 0, i32 4
  %19 = ptrtoint ptr %handshake.i35 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %handshake.i35, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !370
  tail call void @arm_heavy_mb() #16
  %dsp_registers.i.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 57
  br label %for.body.i37

for.body.i37:                                     ; preds = %if.end.i40.for.body.i37_crit_edge, %if.then5
  %i.09.i = phi i32 [ 0, %if.then5 ], [ %inc.i38, %if.end.i40.for.body.i37_crit_edge ]
  %20 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %21, i32 6
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #16, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i36 = icmp eq i32 %23, 0
  br i1 %tobool.not.i36, label %if.then.i, label %if.end.i40

if.then.i:                                        ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !371
  tail call void @arm_heavy_mb() #16
  %24 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i8.i = getelementptr i32, ptr %25, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i, i32 -553648128) #16, !srcloc !372
  br label %for.body.i48.preheader

if.end.i40:                                       ; preds = %for.body.i37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748) #16
  %inc.i38 = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i39 = icmp eq i32 %inc.i38, 100000
  br i1 %exitcond.not.i39, label %do.end3.i, label %if.end.i40.for.body.i37_crit_edge

if.end.i40.for.body.i37_crit_edge:                ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i37

do.end3.i:                                        ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #18
  %card.i41 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %27 = ptrtoint ptr %card.i41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %card.i41, align 4
  %dev.i42 = getelementptr inbounds %struct.snd_card, ptr %28, i32 0, i32 27
  %29 = ptrtoint ptr %dev.i42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i42, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.27) #21
  br label %for.body.i48.preheader

for.body.i48.preheader:                           ; preds = %do.end3.i, %if.then.i
  br label %for.body.i48

for.body.i48:                                     ; preds = %if.end.i51.for.body.i48_crit_edge, %for.body.i48.preheader
  %i.03.i45 = phi i32 [ %inc.i49, %if.end.i51.for.body.i48_crit_edge ], [ 0, %for.body.i48.preheader ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !373
  %31 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %comm_page.i, align 4
  %handshake.i46 = getelementptr inbounds %struct.comm_page, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %handshake.i46 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %handshake.i46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i47 = icmp eq i32 %34, 0
  br i1 %tobool.not.i47, label %if.end.i51, label %if.end10

if.end.i51:                                       ; preds = %for.body.i48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #16
  %inc.i49 = add nuw nsw i32 %i.03.i45, 1
  %exitcond.not.i50 = icmp eq i32 %inc.i49, 20000
  br i1 %exitcond.not.i50, label %wait_handshake.exit56, label %if.end.i51.for.body.i48_crit_edge

if.end.i51.for.body.i48_crit_edge:                ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i48

wait_handshake.exit56:                            ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #18
  %card.i52 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %36 = ptrtoint ptr %card.i52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %card.i52, align 4
  %dev.i53 = getelementptr inbounds %struct.snd_card, ptr %37, i32 0, i32 27
  %38 = ptrtoint ptr %dev.i53 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i53, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.32) #21
  br label %return

if.end10:                                         ; preds = %for.body.i48
  call void @__sanitizer_cov_trace_pc() #18
  %neg = xor i32 %channel_mask, -1
  %active_mask = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 58
  %40 = ptrtoint ptr %active_mask to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %active_mask, align 4
  %and = and i32 %41, %neg
  store i32 %and, ptr %active_mask, align 4
  %42 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %comm_page.i, align 4
  %cmd_stop12 = getelementptr inbounds %struct.comm_page, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %cmd_stop12 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %cmd_stop12, align 4
  %45 = load ptr, ptr %comm_page.i, align 4
  %cmd_reset14 = getelementptr inbounds %struct.comm_page, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %cmd_reset14 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %cmd_reset14, align 4
  br label %return

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pause_transport.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pause_transport, %if.then20)) #16
          to label %return [label %if.then20], !srcloc !366

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %card = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %47 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %48, i32 0, i32 27
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pause_transport.__UNIQUE_ID_ddebug251, ptr noundef %50, ptr noundef nonnull @.str.138) #16
  br label %return

return:                                           ; preds = %if.then20, %do.body, %if.end10, %wait_handshake.exit56, %wait_handshake.exit
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -5, %wait_handshake.exit ], [ -5, %wait_handshake.exit56 ], [ 0, %if.then20 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_analog_in_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %0 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %number, align 4
  %2 = trunc i32 %1 to i8
  %conv = sub i8 0, %2
  %call1 = tail call fastcc i32 @pcm_open(ptr noundef %substream, i8 noundef signext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %3 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %runtime, align 4
  %call3 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %4, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @hw_rule_capture_channels_by_format, ptr noundef null, i32 noundef 1, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %5 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %runtime, align 4
  %call9 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %6, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @hw_rule_capture_format_by_channels, ptr noundef null, i32 noundef 10, i32 noundef -1) #16
  %7 = tail call i32 @llvm.smin.i32(i32 %call9, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %7, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_analog_in_hw_params(ptr noundef %substream, ptr nocapture noundef readonly %hw_params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %0 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %number, align 4
  %add = add i32 %1, 8
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i, align 4
  %call2 = tail call fastcc i32 @init_engine(ptr noundef %substream, ptr noundef %hw_params, i32 noundef %add, i32 noundef %3)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_rule_capture_channels_by_format(ptr noundef %params, ptr nocapture noundef readnone %rule) #2 align 64 {
entry:
  %ch = alloca %struct.snd_interval, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i23 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ch) #16
  %0 = call ptr @memset(ptr %ch, i32 255, i32 12)
  %1 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i23, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %2, label %entry.cleanup_crit_edge [
    i32 2048, label %entry.cleanup.sink.split_crit_edge
    i32 2, label %entry.cleanup.sink.split_crit_edge24
  ]

entry.cleanup.sink.split_crit_edge24:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup.sink.split:                               ; preds = %entry.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge24
  %max.i = getelementptr inbounds %struct.snd_interval, ptr %ch, i32 0, i32 1
  %openmin.i = getelementptr inbounds %struct.snd_interval, ptr %ch, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %ch, align 4
  %5 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %max.i, align 4
  %6 = ptrtoint ptr %openmin.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 47, ptr %openmin.i, align 4
  %call16 = call i32 @snd_interval_refine(ptr noundef %arrayidx.i, ptr noundef nonnull %ch) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call16, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ch) #16
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hw_rule_capture_format_by_channels(ptr nocapture noundef %params, ptr nocapture noundef readnone %rule) #9 align 64 {
entry:
  %old.i = alloca %struct.snd_mask, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %arrayidx.i7 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %old.i) #16
  %2 = call ptr @memcpy(ptr %old.i, ptr %arrayidx.i7, i32 32)
  %3 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i7, align 4
  %and.i.i = and i32 %4, -2051
  store i32 %and.i.i, ptr %arrayidx.i7, align 4
  %arrayidx2.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx2.1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx2.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.1.i.not.i = icmp eq i32 %6, 0
  %or.cond.i = select i1 %tobool.not.i.i, i1 %tobool.not.1.i.not.i, i1 false
  br i1 %or.cond.i, label %if.then.snd_mask_refine.exit_crit_edge, label %if.end.i

if.then.snd_mask_refine.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %snd_mask_refine.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(8) %arrayidx.i7, ptr noundef nonnull dereferenceable(8) %old.i, i32 8) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i7.i = icmp ne i32 %bcmp.i.i, 0
  %lnot.ext.i = zext i1 %tobool.not.i7.i to i32
  br label %snd_mask_refine.exit

snd_mask_refine.exit:                             ; preds = %if.end.i, %if.then.snd_mask_refine.exit_crit_edge
  %retval.0.i = phi i32 [ %lnot.ext.i, %if.end.i ], [ -22, %if.then.snd_mask_refine.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %old.i) #16
  br label %cleanup

cleanup:                                          ; preds = %snd_mask_refine.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %snd_mask_refine.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_echo_vmixer_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -128, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 6, ptr %max, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_echo_vmixer_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %div10 = lshr i32 %3, 3
  %rem = and i32 %3, 7
  %arrayidx4 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 47, i32 %div10, i32 %rem
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  %conv = sext i8 %5 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_echo_vmixer_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %div40 = lshr i32 %3, 3
  %conv = trunc i32 %div40 to i16
  %4 = trunc i32 %3 to i16
  %conv4 = and i16 %4, 7
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 8
  %7 = add i32 %6, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -135, i32 %7)
  %8 = icmp ult i32 %7, -135
  br i1 %8, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %sext = shl i32 %div40, 16
  %idxprom = ashr exact i32 %sext, 16
  %9 = zext i16 %conv4 to i32
  %arrayidx10 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 47, i32 %idxprom, i32 %9
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx10, align 1
  %conv11 = sext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv11)
  %cmp14.not = icmp eq i32 %6, %conv11
  br i1 %cmp14.not, label %if.end.cleanup_crit_edge, label %if.then16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #16
  %12 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value, align 8
  %call19 = tail call fastcc i32 @set_vmixer_gain(ptr noundef %1, i16 noundef zeroext %conv, i16 noundef zeroext %conv4, i32 noundef %13)
  %call20 = tail call fastcc i32 @update_vmixer_level(ptr noundef %1)
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 1, %if.then16 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_echo_vumeters_switch_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #16
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %conv = trunc i32 %3 to i8
  tail call fastcc void @set_meters_on(ptr noundef %1, i8 noundef zeroext %conv)
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #16
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_echo_vumeters_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 96, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -128, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %max, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_echo_vumeters_get(ptr nocapture noundef readonly %kcontrol, ptr noundef writeonly %ucontrol) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = call ptr @memset(ptr %value, i32 0, i32 384)
  %comm_page.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 23
  %3 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %comm_page.i, align 4
  %arrayidx4.i = getelementptr %struct.comm_page, ptr %4, i32 0, i32 11, i32 0
  %5 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4.i, align 1
  %conv.i = sext i8 %6 to i32
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv.i, ptr %value, align 4
  %8 = load ptr, ptr %comm_page.i, align 4
  %arrayidx8.i = getelementptr %struct.comm_page, ptr %8, i32 0, i32 12, i32 0
  %9 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = sext i8 %10 to i32
  %arrayidx11.i = getelementptr i32, ptr %value, i32 1
  %11 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv9.i, ptr %arrayidx11.i, align 4
  %12 = load ptr, ptr %comm_page.i, align 4
  %arrayidx4.1.i = getelementptr %struct.comm_page, ptr %12, i32 0, i32 11, i32 1
  %13 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx4.1.i, align 1
  %conv.1.i = sext i8 %14 to i32
  %arrayidx6.1.i = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv.1.i, ptr %arrayidx6.1.i, align 4
  %16 = load ptr, ptr %comm_page.i, align 4
  %arrayidx8.1.i = getelementptr %struct.comm_page, ptr %16, i32 0, i32 12, i32 1
  %17 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx8.1.i, align 1
  %conv9.1.i = sext i8 %18 to i32
  %arrayidx11.1.i = getelementptr i32, ptr %value, i32 3
  %19 = ptrtoint ptr %arrayidx11.1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv9.1.i, ptr %arrayidx11.1.i, align 4
  %20 = load ptr, ptr %comm_page.i, align 4
  %arrayidx4.2.i = getelementptr %struct.comm_page, ptr %20, i32 0, i32 11, i32 2
  %21 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx4.2.i, align 1
  %conv.2.i = sext i8 %22 to i32
  %arrayidx6.2.i = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 2
  %23 = ptrtoint ptr %arrayidx6.2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv.2.i, ptr %arrayidx6.2.i, align 4
  %24 = load ptr, ptr %comm_page.i, align 4
  %arrayidx8.2.i = getelementptr %struct.comm_page, ptr %24, i32 0, i32 12, i32 2
  %25 = ptrtoint ptr %arrayidx8.2.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx8.2.i, align 1
  %conv9.2.i = sext i8 %26 to i32
  %arrayidx11.2.i = getelementptr i32, ptr %value, i32 5
  %27 = ptrtoint ptr %arrayidx11.2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv9.2.i, ptr %arrayidx11.2.i, align 4
  %28 = load ptr, ptr %comm_page.i, align 4
  %arrayidx4.3.i = getelementptr %struct.comm_page, ptr %28, i32 0, i32 11, i32 3
  %29 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx4.3.i, align 1
  %conv.3.i = sext i8 %30 to i32
  %arrayidx6.3.i = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 3
  %31 = ptrtoint ptr %arrayidx6.3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv.3.i, ptr %arrayidx6.3.i, align 4
  %32 = load ptr, ptr %comm_page.i, align 4
  %arrayidx8.3.i = getelementptr %struct.comm_page, ptr %32, i32 0, i32 12, i32 3
  %33 = ptrtoint ptr %arrayidx8.3.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx8.3.i, align 1
  %conv9.3.i = sext i8 %34 to i32
  %arrayidx11.3.i = getelementptr i32, ptr %value, i32 7
  %35 = ptrtoint ptr %arrayidx11.3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv9.3.i, ptr %arrayidx11.3.i, align 4
  %36 = load ptr, ptr %comm_page.i, align 4
  %arrayidx44.i = getelementptr %struct.comm_page, ptr %36, i32 0, i32 11, i32 4
  %37 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx44.i, align 1
  %conv45.i = sext i8 %38 to i32
  %arrayidx47.i = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 32
  %39 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv45.i, ptr %arrayidx47.i, align 4
  %40 = load ptr, ptr %comm_page.i, align 4
  %arrayidx50.i = getelementptr %struct.comm_page, ptr %40, i32 0, i32 12, i32 4
  %41 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx50.i, align 1
  %conv51.i = sext i8 %42 to i32
  %arrayidx53.i = getelementptr i32, ptr %value, i32 65
  %43 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv51.i, ptr %arrayidx53.i, align 4
  %44 = load ptr, ptr %comm_page.i, align 4
  %arrayidx44.1.i = getelementptr %struct.comm_page, ptr %44, i32 0, i32 11, i32 5
  %45 = ptrtoint ptr %arrayidx44.1.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx44.1.i, align 1
  %conv45.1.i = sext i8 %46 to i32
  %arrayidx47.1.i = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 33
  %47 = ptrtoint ptr %arrayidx47.1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv45.1.i, ptr %arrayidx47.1.i, align 4
  %48 = load ptr, ptr %comm_page.i, align 4
  %arrayidx50.1.i = getelementptr %struct.comm_page, ptr %48, i32 0, i32 12, i32 5
  %49 = ptrtoint ptr %arrayidx50.1.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx50.1.i, align 1
  %conv51.1.i = sext i8 %50 to i32
  %arrayidx53.1.i = getelementptr i32, ptr %value, i32 67
  %51 = ptrtoint ptr %arrayidx53.1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv51.1.i, ptr %arrayidx53.1.i, align 4
  %52 = load ptr, ptr %comm_page.i, align 4
  %arrayidx44.2.i = getelementptr %struct.comm_page, ptr %52, i32 0, i32 11, i32 6
  %53 = ptrtoint ptr %arrayidx44.2.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx44.2.i, align 1
  %conv45.2.i = sext i8 %54 to i32
  %arrayidx47.2.i = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 34
  %55 = ptrtoint ptr %arrayidx47.2.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv45.2.i, ptr %arrayidx47.2.i, align 4
  %56 = load ptr, ptr %comm_page.i, align 4
  %arrayidx50.2.i = getelementptr %struct.comm_page, ptr %56, i32 0, i32 12, i32 6
  %57 = ptrtoint ptr %arrayidx50.2.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx50.2.i, align 1
  %conv51.2.i = sext i8 %58 to i32
  %arrayidx53.2.i = getelementptr i32, ptr %value, i32 69
  %59 = ptrtoint ptr %arrayidx53.2.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv51.2.i, ptr %arrayidx53.2.i, align 4
  %60 = load ptr, ptr %comm_page.i, align 4
  %arrayidx44.3.i = getelementptr %struct.comm_page, ptr %60, i32 0, i32 11, i32 7
  %61 = ptrtoint ptr %arrayidx44.3.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx44.3.i, align 1
  %conv45.3.i = sext i8 %62 to i32
  %arrayidx47.3.i = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 35
  %63 = ptrtoint ptr %arrayidx47.3.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv45.3.i, ptr %arrayidx47.3.i, align 4
  %64 = load ptr, ptr %comm_page.i, align 4
  %arrayidx50.3.i = getelementptr %struct.comm_page, ptr %64, i32 0, i32 12, i32 7
  %65 = ptrtoint ptr %arrayidx50.3.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx50.3.i, align 1
  %conv51.3.i = sext i8 %66 to i32
  %arrayidx53.3.i = getelementptr i32, ptr %value, i32 71
  %67 = ptrtoint ptr %arrayidx53.3.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv51.3.i, ptr %arrayidx53.3.i, align 4
  %68 = load ptr, ptr %comm_page.i, align 4
  %arrayidx44.4.i = getelementptr %struct.comm_page, ptr %68, i32 0, i32 11, i32 8
  %69 = ptrtoint ptr %arrayidx44.4.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx44.4.i, align 1
  %conv45.4.i = sext i8 %70 to i32
  %arrayidx47.4.i = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 36
  %71 = ptrtoint ptr %arrayidx47.4.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv45.4.i, ptr %arrayidx47.4.i, align 4
  %72 = load ptr, ptr %comm_page.i, align 4
  %arrayidx50.4.i = getelementptr %struct.comm_page, ptr %72, i32 0, i32 12, i32 8
  %73 = ptrtoint ptr %arrayidx50.4.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx50.4.i, align 1
  %conv51.4.i = sext i8 %74 to i32
  %arrayidx53.4.i = getelementptr i32, ptr %value, i32 73
  %75 = ptrtoint ptr %arrayidx53.4.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv51.4.i, ptr %arrayidx53.4.i, align 4
  %76 = load ptr, ptr %comm_page.i, align 4
  %arrayidx44.5.i = getelementptr %struct.comm_page, ptr %76, i32 0, i32 11, i32 9
  %77 = ptrtoint ptr %arrayidx44.5.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx44.5.i, align 1
  %conv45.5.i = sext i8 %78 to i32
  %arrayidx47.5.i = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 37
  %79 = ptrtoint ptr %arrayidx47.5.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %conv45.5.i, ptr %arrayidx47.5.i, align 4
  %80 = load ptr, ptr %comm_page.i, align 4
  %arrayidx50.5.i = getelementptr %struct.comm_page, ptr %80, i32 0, i32 12, i32 9
  %81 = ptrtoint ptr %arrayidx50.5.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx50.5.i, align 1
  %conv51.5.i = sext i8 %82 to i32
  %arrayidx53.5.i = getelementptr i32, ptr %value, i32 75
  %83 = ptrtoint ptr %arrayidx53.5.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv51.5.i, ptr %arrayidx53.5.i, align 4
  %84 = load ptr, ptr %comm_page.i, align 4
  %arrayidx44.6.i = getelementptr %struct.comm_page, ptr %84, i32 0, i32 11, i32 10
  %85 = ptrtoint ptr %arrayidx44.6.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx44.6.i, align 1
  %conv45.6.i = sext i8 %86 to i32
  %arrayidx47.6.i = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 38
  %87 = ptrtoint ptr %arrayidx47.6.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv45.6.i, ptr %arrayidx47.6.i, align 4
  %88 = load ptr, ptr %comm_page.i, align 4
  %arrayidx50.6.i = getelementptr %struct.comm_page, ptr %88, i32 0, i32 12, i32 10
  %89 = ptrtoint ptr %arrayidx50.6.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx50.6.i, align 1
  %conv51.6.i = sext i8 %90 to i32
  %arrayidx53.6.i = getelementptr i32, ptr %value, i32 77
  %91 = ptrtoint ptr %arrayidx53.6.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %conv51.6.i, ptr %arrayidx53.6.i, align 4
  %92 = load ptr, ptr %comm_page.i, align 4
  %arrayidx44.7.i = getelementptr %struct.comm_page, ptr %92, i32 0, i32 11, i32 11
  %93 = ptrtoint ptr %arrayidx44.7.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx44.7.i, align 1
  %conv45.7.i = sext i8 %94 to i32
  %arrayidx47.7.i = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 39
  %95 = ptrtoint ptr %arrayidx47.7.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %conv45.7.i, ptr %arrayidx47.7.i, align 4
  %96 = load ptr, ptr %comm_page.i, align 4
  %arrayidx50.7.i = getelementptr %struct.comm_page, ptr %96, i32 0, i32 12, i32 11
  %97 = ptrtoint ptr %arrayidx50.7.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx50.7.i, align 1
  %conv51.7.i = sext i8 %98 to i32
  %arrayidx53.7.i = getelementptr i32, ptr %value, i32 79
  %99 = ptrtoint ptr %arrayidx53.7.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %conv51.7.i, ptr %arrayidx53.7.i, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_echo_channels_info_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 6, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 256, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_echo_channels_info_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #14 align 64 {
for.cond15.preheader.7:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %arrayidx3 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx3, align 4
  %arrayidx6 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %arrayidx6, align 8
  %arrayidx9 = getelementptr [128 x i32], ptr %value, i32 0, i32 3
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %arrayidx9, align 4
  %arrayidx12 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %arrayidx12, align 8
  %num_clock_sources = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %num_clock_sources to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_clock_sources, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp1651.7.not = icmp eq i16 %8, 0
  br i1 %cmp1651.7.not, label %for.cond15.preheader.7.for.inc26.7_crit_edge, label %for.body18.7.preheader

for.cond15.preheader.7.for.inc26.7_crit_edge:     ; preds = %for.cond15.preheader.7
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc26.7

for.body18.7.preheader:                           ; preds = %for.cond15.preheader.7
  %conv = zext i16 %8 to i32
  br label %for.body18.7

for.body18.7:                                     ; preds = %for.inc.7.for.body18.7_crit_edge, %for.body18.7.preheader
  %src.152.7.in = phi i32 [ %src.152.7, %for.inc.7.for.body18.7_crit_edge ], [ %conv, %for.body18.7.preheader ]
  %src.152.7 = add nsw i32 %src.152.7.in, -1
  %arrayidx19.7 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 6, i32 %src.152.7
  %9 = ptrtoint ptr %arrayidx19.7 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx19.7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp21.7 = icmp eq i16 %10, 0
  br i1 %cmp21.7, label %if.then23.7, label %for.inc.7

for.inc.7:                                        ; preds = %for.body18.7
  %cmp16.7 = icmp ugt i32 %src.152.7.in, 1
  br i1 %cmp16.7, label %for.inc.7.for.body18.7_crit_edge, label %for.inc.7.for.inc26.7_crit_edge

for.inc.7.for.inc26.7_crit_edge:                  ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc26.7

for.inc.7.for.body18.7_crit_edge:                 ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body18.7

if.then23.7:                                      ; preds = %for.body18.7
  call void @__sanitizer_cov_trace_pc() #18
  %shl24.7 = shl nuw i32 1, %src.152.7
  br label %for.inc26.7

for.inc26.7:                                      ; preds = %if.then23.7, %for.inc.7.for.inc26.7_crit_edge, %for.cond15.preheader.7.for.inc26.7_crit_edge
  %clocks.1.7 = phi i32 [ %shl24.7, %if.then23.7 ], [ 0, %for.cond15.preheader.7.for.inc26.7_crit_edge ], [ 0, %for.inc.7.for.inc26.7_crit_edge ]
  %arrayidx30 = getelementptr [128 x i32], ptr %value, i32 0, i32 5
  %11 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %clocks.1.7, ptr %arrayidx30, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_echo_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #16
  %comm_page.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 23
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.03.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !373
  %2 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %comm_page.i, align 4
  %handshake.i = getelementptr inbounds %struct.comm_page, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %handshake.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handshake.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #16
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20000
  br i1 %exitcond.not.i, label %if.then, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

if.then:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.32) #21
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #16
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %11 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %comm_page.i, align 4
  %handshake.i22 = getelementptr inbounds %struct.comm_page, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %handshake.i22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %handshake.i22, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !370
  tail call void @arm_heavy_mb() #16
  %dsp_registers.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 57
  br label %for.body.i24

for.body.i24:                                     ; preds = %if.end.i27.for.body.i24_crit_edge, %if.end
  %i.09.i = phi i32 [ 0, %if.end ], [ %inc.i25, %if.end.i27.for.body.i24_crit_edge ]
  %14 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %15, i32 6
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #16, !srcloc !368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !369
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i23 = icmp eq i32 %17, 0
  br i1 %tobool.not.i23, label %if.end6, label %if.end.i27

if.end.i27:                                       ; preds = %for.body.i24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #16
  %inc.i25 = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i26 = icmp eq i32 %inc.i25, 100000
  br i1 %exitcond.not.i26, label %if.then4, label %if.end.i27.for.body.i24_crit_edge

if.end.i27.for.body.i24_crit_edge:                ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i24

if.then4:                                         ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #18
  %card.i28 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %card.i28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card.i28, align 4
  %dev.i29 = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %dev.i29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i29, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.27) #21
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #16
  br label %cleanup

if.end6:                                          ; preds = %for.body.i24
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !371
  tail call void @arm_heavy_mb() #16
  %23 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i8.i = getelementptr i32, ptr %24, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i, i32 -654311424) #16, !srcloc !372
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #16
  %dsp_code = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 53
  %25 = ptrtoint ptr %dsp_code to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %dsp_code, align 4
  %irq = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 17
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 4
  %call8 = tail call ptr @free_irq(i32 noundef %27, ptr noundef %1) #16
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %irq, align 4
  %card = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %29 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %card, align 4
  %sync_irq = getelementptr inbounds %struct.snd_card, ptr %30, i32 0, i32 33
  %31 = ptrtoint ptr %sync_irq to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %sync_irq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ -5, %if.then4 ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_echo_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %comm_page = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %comm_page, align 4
  %call1 = tail call ptr @kmemdup(ptr noundef %3, i32 noundef 3072, i32 noundef 3264) #16
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %pci2 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %pci2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci2, align 4
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %subsystem_device, align 2
  %8 = and i16 %7, -16
  call void @__sanitizer_cov_trace_const_cmp2(i16 176, i16 %8)
  %cmp.not.i = icmp eq i16 %8, 176
  br i1 %cmp.not.i, label %if.end22.i, label %do.end.i, !prof !367

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 41, i32 noundef 9, ptr noundef null) #16
  br label %if.then6

if.end22.i:                                       ; preds = %if.end
  %device = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 8
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %device, align 2
  %card_name.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %card_name.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.17, ptr %card_name.i.i, align 4
  %bad_board.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 34
  %dsp_code.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 53
  %12 = ptrtoint ptr %dsp_code.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %dsp_code.i.i, align 4
  %asic_loaded.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 33
  %13 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %comm_page, align 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 3072)
  %16 = load ptr, ptr %comm_page, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 786432, ptr %16, align 4
  %18 = load ptr, ptr %comm_page, align 4
  %handshake.i.i = getelementptr inbounds %struct.comm_page, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %handshake.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %handshake.i.i, align 4
  %20 = load ptr, ptr %comm_page, align 4
  %midi_out_free_count.i.i = getelementptr inbounds %struct.comm_page, ptr %20, i32 0, i32 29
  %21 = ptrtoint ptr %midi_out_free_count.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1073741824, ptr %midi_out_free_count.i.i, align 4
  %22 = load ptr, ptr %comm_page, align 4
  %sample_rate.i.i = getelementptr inbounds %struct.comm_page, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %sample_rate.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1152122880, ptr %sample_rate.i.i, align 4
  %24 = load ptr, ptr %comm_page, align 4
  %monitors.i.i = getelementptr inbounds %struct.comm_page, ptr %24, i32 0, i32 15
  %25 = call ptr @memset(ptr %monitors.i.i, i32 128, i32 384)
  %26 = load ptr, ptr %comm_page, align 4
  %vmixer.i.i = getelementptr inbounds %struct.comm_page, ptr %26, i32 0, i32 34
  %27 = call ptr @memset(ptr %vmixer.i.i, i32 128, i32 64)
  %device_id29.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 51
  %28 = ptrtoint ptr %device_id29.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %10, ptr %device_id29.i, align 2
  %subdevice_id30.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 52
  %29 = ptrtoint ptr %subdevice_id30.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %7, ptr %subdevice_id30.i, align 4
  %30 = ptrtoint ptr %bad_board.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %bad_board.i.i, align 1
  %dsp_code_to_load.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 54
  %31 = ptrtoint ptr %dsp_code_to_load.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %dsp_code_to_load.i, align 4
  %32 = ptrtoint ptr %asic_loaded.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %asic_loaded.i.i, align 2
  %input_clock_types.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 49
  %33 = ptrtoint ptr %input_clock_types.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %input_clock_types.i, align 2
  %call31.i = tail call fastcc i32 @load_firmware(ptr noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  br i1 %cmp32.i, label %if.end22.i.if.then6_crit_edge, label %if.end7

if.end22.i.if.then6_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then6

if.then6:                                         ; preds = %if.end22.i.if.then6_crit_edge, %do.end.i
  %retval.0.i75.ph = phi i32 [ %call31.i, %if.end22.i.if.then6_crit_edge ], [ -19, %do.end.i ]
  tail call void @kfree(ptr noundef nonnull %call1) #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.143, i32 noundef %retval.0.i75.ph) #21
  br label %cleanup

if.end7:                                          ; preds = %if.end22.i
  %34 = ptrtoint ptr %bad_board.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %bad_board.i.i, align 1
  %pipe_alloc_mask8 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 24
  %35 = ptrtoint ptr %pipe_alloc_mask8 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pipe_alloc_mask8, align 4
  store i32 0, ptr %pipe_alloc_mask8, align 4
  %call10 = tail call fastcc i32 @restore_dsp_rettings(ptr noundef %1)
  %37 = ptrtoint ptr %pipe_alloc_mask8 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %pipe_alloc_mask8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp12 = icmp slt i32 %call10, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %call1) #16
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %audio_format = getelementptr inbounds %struct.comm_page, ptr %3, i32 0, i32 8
  %audio_format15 = getelementptr inbounds %struct.comm_page, ptr %call1, i32 0, i32 8
  %38 = call ptr @memcpy(ptr %audio_format, ptr %audio_format15, i32 64)
  %sglist_addr = getelementptr inbounds %struct.comm_page, ptr %3, i32 0, i32 9
  %sglist_addr16 = getelementptr inbounds %struct.comm_page, ptr %call1, i32 0, i32 9
  %39 = call ptr @memcpy(ptr %sglist_addr, ptr %sglist_addr16, i32 256)
  %midi_output = getelementptr inbounds %struct.comm_page, ptr %3, i32 0, i32 35
  %midi_output17 = getelementptr inbounds %struct.comm_page, ptr %call1, i32 0, i32 35
  %40 = call ptr @memcpy(ptr %midi_output, ptr %midi_output17, i32 32)
  tail call void @kfree(ptr noundef nonnull %call1) #16
  %irq = getelementptr i8, ptr %dev, i32 932
  %41 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %42, ptr noundef nonnull @snd_echo_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end24, label %do.end22

do.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  %card = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %43 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %card, align 4
  %dev23 = getelementptr inbounds %struct.snd_card, ptr %44, i32 0, i32 27
  %45 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev23, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.21) #21
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  %47 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq, align 4
  %irq26 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 17
  %49 = ptrtoint ptr %irq26 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %irq26, align 4
  %card28 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %50 = ptrtoint ptr %card28 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %card28, align 4
  %sync_irq = getelementptr inbounds %struct.snd_card, ptr %51, i32 0, i32 33
  %52 = ptrtoint ptr %sync_irq to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %48, ptr %sync_irq, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_echo_resume.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_echo_resume, %if.then35)) #16
          to label %cleanup [label %if.then35], !srcloc !366

if.then35:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  %53 = ptrtoint ptr %irq26 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %irq26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_echo_resume.__UNIQUE_ID_ddebug277, ptr noundef %dev, ptr noundef nonnull @.str.147, i32 noundef %54) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end24, %do.end22, %if.then13, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i75.ph, %if.then6 ], [ %call10, %if.then13 ], [ -16, %do.end22 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then35 ], [ 0, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 165)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 165)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nobuiltin }
attributes #20 = { nobuiltin nounwind }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !16, !18, !19, !21, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !74, !75, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !91, !92, !93, !95, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !128, !130, !131, !132, !134, !136, !138, !140, !141, !142, !143, !144, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !218, !220, !221, !222, !224, !225, !226, !227, !229, !230, !232, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !248, !250, !252, !254, !255, !256, !258, !259, !260, !262, !263, !265, !267, !269, !270, !272, !273, !274, !276, !277, !278, !280, !281, !283, !284, !286, !287, !288, !290, !291, !292, !294, !295, !296, !297, !299, !300, !301, !303, !304, !305, !307, !308, !309, !311, !312, !313, !315, !316, !317, !318, !320, !321, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !347, !348, !349, !351, !352, !354}
!llvm.module.flags = !{!355, !356, !357, !358, !359, !360, !361, !362}
!llvm.ident = !{!363}

!0 = !{ptr @__UNIQUE_ID_firmware242, !1, !"__UNIQUE_ID_firmware242", i1 false, i1 false}
!1 = !{!"../sound/pci/echoaudio/indigodj.c", i32 48, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware243, !3, !"__UNIQUE_ID_firmware243", i1 false, i1 false}
!3 = !{!"../sound/pci/echoaudio/indigodj.c", i32 49, i32 1}
!4 = !{ptr @__UNIQUE_ID_author254, !5, !"__UNIQUE_ID_author254", i1 false, i1 false}
!5 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 10, i32 1}
!6 = !{ptr @__UNIQUE_ID_file255, !7, !"__UNIQUE_ID_file255", i1 false, i1 false}
!7 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 11, i32 1}
!8 = !{ptr @__UNIQUE_ID_license256, !7, !"__UNIQUE_ID_license256", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description257, !10, !"__UNIQUE_ID_description257", i1 false, i1 false}
!10 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 12, i32 1}
!11 = !{ptr @__param_index, !12, !"__param_index", i1 false, i1 false}
!12 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 19, i32 1}
!13 = !{ptr @__UNIQUE_ID_indextype258, !12, !"__UNIQUE_ID_indextype258", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_index259, !15, !"__UNIQUE_ID_index259", i1 false, i1 false}
!15 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 20, i32 1}
!16 = !{ptr @__param_id, !17, !"__param_id", i1 false, i1 false}
!17 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 21, i32 1}
!18 = !{ptr @__UNIQUE_ID_idtype260, !17, !"__UNIQUE_ID_idtype260", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_id261, !20, !"__UNIQUE_ID_id261", i1 false, i1 false}
!20 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 22, i32 1}
!21 = !{ptr @__param_enable, !22, !"__param_enable", i1 false, i1 false}
!22 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 23, i32 1}
!23 = !{ptr @__UNIQUE_ID_enabletype262, !22, !"__UNIQUE_ID_enabletype262", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_enable263, !25, !"__UNIQUE_ID_enable263", i1 false, i1 false}
!25 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 24, i32 1}
!26 = !{ptr @__initcall__kmod_snd_indigodj__278_2255_echo_driver_init6, !27, !"__initcall__kmod_snd_indigodj__278_2255_echo_driver_init6", i1 false, i1 false}
!27 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 2255, i32 1}
!28 = !{ptr @__exitcall_echo_driver_exit, !27, !"__exitcall_echo_driver_exit", i1 false, i1 false}
!29 = !{ptr @__param_str_index, !12, !"__param_str_index", i1 false, i1 false}
!30 = !{ptr @__param_arr_index, !12, !"__param_arr_index", i1 false, i1 false}
!31 = !{ptr @index, !32, !"index", i1 false, i1 false}
!32 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 15, i32 12}
!33 = !{ptr @__param_str_id, !17, !"__param_str_id", i1 false, i1 false}
!34 = !{ptr @__param_arr_id, !17, !"__param_arr_id", i1 false, i1 false}
!35 = !{ptr @id, !36, !"id", i1 false, i1 false}
!36 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 16, i32 14}
!37 = !{ptr @__param_str_enable, !22, !"__param_str_enable", i1 false, i1 false}
!38 = !{ptr @__param_arr_enable, !22, !"__param_arr_enable", i1 false, i1 false}
!39 = !{ptr @enable, !40, !"enable", i1 false, i1 false}
!40 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 17, i32 13}
!41 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @echo_driver, !43, !"echo_driver", i1 false, i1 false}
!43 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 2246, i32 26}
!44 = !{ptr @snd_echo_ids, !45, !"snd_echo_ids", i1 false, i1 false}
!45 = !{!"../sound/pci/echoaudio/indigodj.c", i32 59, i32 35}
!46 = !{ptr @snd_echo_probe.dev, !47, !"dev", i1 false, i1 false}
!47 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1976, i32 13}
!48 = !{ptr @.str.1, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 2001, i32 23}
!50 = !{ptr @.str.2, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 2004, i32 8}
!52 = !{ptr @.str.3, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 2006, i32 9}
!54 = !{ptr @.str.4, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 2008, i32 26}
!56 = !{ptr @.str.5, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 2014, i32 3}
!58 = !{ptr @.str.6, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.7, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.8, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.9, !57, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @snd_echo_probe._entry, !57, !"_entry", i1 false, i1 false}
!63 = !{ptr @snd_echo_probe._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.11, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 2135, i32 2}
!66 = !{ptr @.str.12, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @snd_echo_probe._entry.10, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @snd_echo_probe._entry_ptr.13, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @snd_echo_create.__key, !70, !"__key", i1 false, i1 false}
!70 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1915, i32 2}
!71 = !{ptr @.str.14, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @snd_echo_create.__key.15, !73, !"__key", i1 false, i1 false}
!73 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1920, i32 2}
!74 = !{ptr @.str.16, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.17, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1924, i32 33}
!77 = !{ptr @.str.18, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1935, i32 3}
!79 = !{ptr @.str.19, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @snd_echo_create._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @snd_echo_create._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.21, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1941, i32 3}
!84 = !{ptr @snd_echo_create._entry.20, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @snd_echo_create._entry_ptr.22, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.23, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1946, i32 2}
!88 = !{ptr @snd_echo_create.__UNIQUE_ID_ddebug276, !87, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!89 = !{ptr @.str.25, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1965, i32 3}
!91 = !{ptr @snd_echo_create._entry.24, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @snd_echo_create._entry_ptr.26, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.27, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 83, i32 2}
!95 = !{ptr @.str.28, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.29, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @send_vector._entry, !94, !"_entry", i1 false, i1 false}
!98 = !{ptr @send_vector._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.30, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 931, i32 2}
!101 = !{ptr @.str.31, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @stop_transport.__UNIQUE_ID_ddebug252, !100, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!103 = !{ptr @.str.32, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 56, i32 2}
!105 = !{ptr @.str.33, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @wait_handshake._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @wait_handshake._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.34, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 83, i32 4}
!110 = !{ptr @.str.35, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @free_firmware_cache.__UNIQUE_ID_ddebug267, !109, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!112 = !{ptr @.str.36, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/echoaudio/indigodj_dsp.c", i32 41, i32 6}
!114 = !{ptr @.str.37, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/pci/echoaudio/indigodj_dsp.c", i32 46, i32 3}
!116 = !{ptr @.str.38, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @init_hw._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @init_hw._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.39, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 39, i32 3}
!121 = !{ptr @.str.40, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @get_firmware.__UNIQUE_ID_ddebug264, !120, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!123 = !{ptr @.str.41, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 47, i32 2}
!125 = !{ptr @get_firmware.__UNIQUE_ID_ddebug265, !124, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!126 = !{ptr @.str.42, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 49, i32 31}
!128 = !{ptr @.str.43, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 52, i32 3}
!130 = !{ptr @get_firmware._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @get_firmware._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.44, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/pci/echoaudio/indigodj.c", i32 55, i32 6}
!134 = !{ptr @.str.45, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/pci/echoaudio/indigodj.c", i32 56, i32 6}
!136 = !{ptr @card_fw, !137, !"card_fw", i1 false, i1 false}
!137 = !{!"../sound/pci/echoaudio/indigodj.c", i32 54, i32 30}
!138 = !{ptr @.str.46, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 341, i32 3}
!140 = !{ptr @.str.47, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.48, !139, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @load_dsp._entry, !139, !"_entry", i1 false, i1 false}
!143 = !{ptr @load_dsp._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.49, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 348, i32 2}
!146 = !{ptr @load_dsp.__UNIQUE_ID_ddebug249, !145, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!147 = !{ptr @.str.51, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 359, i32 3}
!149 = !{ptr @load_dsp._entry.50, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @load_dsp._entry_ptr.52, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.54, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 375, i32 3}
!153 = !{ptr @load_dsp._entry.53, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @load_dsp._entry_ptr.55, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.57, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 413, i32 4}
!157 = !{ptr @load_dsp._entry.56, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @load_dsp._entry_ptr.58, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.60, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 418, i32 4}
!161 = !{ptr @load_dsp._entry.59, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @load_dsp._entry_ptr.61, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.63, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 423, i32 4}
!165 = !{ptr @load_dsp._entry.62, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @load_dsp._entry_ptr.64, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.66, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 431, i32 5}
!169 = !{ptr @load_dsp._entry.65, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @load_dsp._entry_ptr.67, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.69, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 439, i32 3}
!173 = !{ptr @load_dsp._entry.68, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @load_dsp._entry_ptr.70, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.72, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 453, i32 5}
!177 = !{ptr @load_dsp._entry.71, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @load_dsp._entry_ptr.73, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.75, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 459, i32 5}
!181 = !{ptr @load_dsp._entry.74, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @load_dsp._entry_ptr.76, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.78, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 469, i32 5}
!185 = !{ptr @load_dsp._entry.77, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @load_dsp._entry_ptr.79, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.81, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 481, i32 2}
!189 = !{ptr @load_dsp._entry.80, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @load_dsp._entry_ptr.82, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.83, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 244, i32 3}
!193 = !{ptr @.str.84, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @install_resident_loader.__UNIQUE_ID_ddebug247, !192, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!195 = !{ptr @.str.85, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 252, i32 3}
!197 = !{ptr @install_resident_loader._entry, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @install_resident_loader._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.87, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 287, i32 3}
!201 = !{ptr @install_resident_loader._entry.86, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @install_resident_loader._entry_ptr.88, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.90, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 293, i32 3}
!205 = !{ptr @install_resident_loader._entry.89, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @install_resident_loader._entry_ptr.91, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.93, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 303, i32 4}
!209 = !{ptr @install_resident_loader._entry.92, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @install_resident_loader._entry_ptr.94, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.96, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 319, i32 3}
!213 = !{ptr @install_resident_loader._entry.95, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @install_resident_loader._entry_ptr.97, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.98, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 323, i32 2}
!217 = !{ptr @install_resident_loader.__UNIQUE_ID_ddebug248, !216, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!218 = !{ptr @.str.99, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 107, i32 2}
!220 = !{ptr @.str.100, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @write_dsp.__UNIQUE_ID_ddebug245, !219, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!222 = !{ptr @.str.101, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 152, i32 4}
!224 = !{ptr @.str.102, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @read_sn._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @read_sn._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.103, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 157, i32 2}
!229 = !{ptr @read_sn.__UNIQUE_ID_ddebug246, !228, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!230 = !{ptr @.str.104, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 130, i32 2}
!232 = !{ptr @.str.105, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @read_dsp._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @read_dsp._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.106, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 67, i32 2}
!237 = !{ptr @.str.107, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @free_firmware.__UNIQUE_ID_ddebug266, !236, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!239 = !{ptr @.str.108, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/pci/echoaudio/indigodj_dsp.c", i32 152, i32 2}
!241 = !{ptr @.str.109, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @set_vmixer_gain.__UNIQUE_ID_ddebug244, !240, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!243 = !{ptr @.str.110, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/pci/echoaudio/indigodj_dsp.c", i32 113, i32 3}
!245 = !{ptr @.str.111, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @set_sample_rate._entry, !244, !"_entry", i1 false, i1 false}
!247 = !{ptr @set_sample_rate._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.112, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 924, i32 32}
!250 = !{ptr @analog_playback_ops, !251, !"analog_playback_ops", i1 false, i1 false}
!251 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 849, i32 33}
!252 = !{ptr @.str.113, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 286, i32 2}
!254 = !{ptr @.str.114, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @pcm_open.__UNIQUE_ID_ddebug268, !253, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!256 = !{ptr @.str.115, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 340, i32 3}
!258 = !{ptr @pcm_open._entry, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @pcm_open._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.116, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 348, i32 2}
!262 = !{ptr @pcm_open.__UNIQUE_ID_ddebug269, !261, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!263 = !{ptr @pcm_hardware_skel, !264, !"pcm_hardware_skel", i1 false, i1 false}
!264 = !{!"../sound/pci/echoaudio/indigodj.c", i32 64, i32 38}
!265 = !{ptr @channels_list, !266, !"channels_list", i1 false, i1 false}
!266 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 26, i32 27}
!267 = !{ptr @.str.117, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 514, i32 2}
!269 = !{ptr @pcm_close.__UNIQUE_ID_ddebug270, !268, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!270 = !{ptr @.str.118, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 552, i32 3}
!272 = !{ptr @.str.119, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @init_engine.__UNIQUE_ID_ddebug271, !271, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!274 = !{ptr @.str.120, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 561, i32 3}
!276 = !{ptr @init_engine._entry, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @init_engine._entry_ptr, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.121, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 566, i32 2}
!280 = !{ptr @init_engine.__UNIQUE_ID_ddebug272, !279, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!281 = !{ptr @.str.122, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 568, i32 2}
!283 = !{ptr @init_engine.__UNIQUE_ID_ddebug273, !282, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!284 = !{ptr @.str.123, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 1060, i32 2}
!286 = !{ptr @.str.124, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @allocate_pipes.__UNIQUE_ID_ddebug253, !285, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!288 = !{ptr @.str.125, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 1069, i32 3}
!290 = !{ptr @allocate_pipes._entry, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @allocate_pipes._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.126, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 1138, i32 3}
!294 = !{ptr @.str.127, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @sglist_add_mapping._entry, !293, !"_entry", i1 false, i1 false}
!296 = !{ptr @sglist_add_mapping._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.128, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 679, i32 3}
!299 = !{ptr @.str.129, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @pcm_hw_free.__UNIQUE_ID_ddebug274, !298, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!301 = !{ptr @.str.130, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 698, i32 2}
!303 = !{ptr @.str.131, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @pcm_prepare.__UNIQUE_ID_ddebug275, !302, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!305 = !{ptr @.str.132, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 720, i32 3}
!307 = !{ptr @pcm_prepare._entry, !306, !"_entry", i1 false, i1 false}
!308 = !{ptr @pcm_prepare._entry_ptr, !306, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.133, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 848, i32 2}
!311 = !{ptr @.str.134, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @set_audio_format.__UNIQUE_ID_ddebug250, !310, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!313 = !{ptr @.str.135, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 879, i32 2}
!315 = !{ptr @.str.136, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @start_transport._entry, !314, !"_entry", i1 false, i1 false}
!317 = !{ptr @start_transport._entry_ptr, !314, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.137, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 905, i32 2}
!320 = !{ptr @.str.138, !319, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @pause_transport.__UNIQUE_ID_ddebug251, !319, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!322 = !{ptr @analog_capture_ops, !323, !"analog_capture_ops", i1 false, i1 false}
!323 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 858, i32 33}
!324 = !{ptr @.str.139, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1390, i32 10}
!326 = !{ptr @snd_echo_vmixer, !327, !"snd_echo_vmixer", i1 false, i1 false}
!327 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1389, i32 32}
!328 = !{ptr @db_scale_output_gain, !329, !"db_scale_output_gain", i1 false, i1 false}
!329 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 27, i32 14}
!330 = !{ptr @.str.140, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1716, i32 10}
!332 = !{ptr @snd_echo_vumeters_switch, !333, !"snd_echo_vumeters_switch", i1 false, i1 false}
!333 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1715, i32 38}
!334 = !{ptr @.str.141, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1747, i32 10}
!336 = !{ptr @snd_echo_vumeters, !337, !"snd_echo_vumeters", i1 false, i1 false}
!337 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1746, i32 38}
!338 = !{ptr @.str.142, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1800, i32 10}
!340 = !{ptr @snd_echo_channels_info, !341, !"snd_echo_channels_info", i1 false, i1 false}
!341 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1799, i32 38}
!342 = !{ptr @snd_echo_pm, !343, !"snd_echo_pm", i1 false, i1 false}
!343 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 2235, i32 8}
!344 = !{ptr @.str.143, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 2192, i32 3}
!346 = !{ptr @.str.144, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @snd_echo_resume._entry, !345, !"_entry", i1 false, i1 false}
!348 = !{ptr @snd_echo_resume._entry_ptr, !345, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @snd_echo_resume._entry.145, !350, !"_entry", i1 false, i1 false}
!350 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 2218, i32 3}
!351 = !{ptr @snd_echo_resume._entry_ptr.146, !350, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @.str.147, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 2223, i32 2}
!354 = !{ptr @snd_echo_resume.__UNIQUE_ID_ddebug277, !353, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!355 = !{i32 1, !"wchar_size", i32 2}
!356 = !{i32 1, !"min_enum_size", i32 4}
!357 = !{i32 8, !"branch-target-enforcement", i32 0}
!358 = !{i32 8, !"sign-return-address", i32 0}
!359 = !{i32 8, !"sign-return-address-all", i32 0}
!360 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!361 = !{i32 7, !"uwtable", i32 1}
!362 = !{i32 7, !"frame-pointer", i32 2}
!363 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!364 = !{!"auto-init"}
!365 = !{i8 0, i8 2}
!366 = !{i64 2148757034, i64 2148757039, i64 2148757052, i64 2148757096, i64 2148757130, i64 2148757151}
!367 = !{!"branch_weights", i32 2000, i32 1}
!368 = !{i64 4206561}
!369 = !{i64 2154745388}
!370 = !{i64 2154796136}
!371 = !{i64 2154745783}
!372 = !{i64 4206143}
!373 = !{i64 2154793712}
!374 = !{!"branch_weights", i32 1, i32 2000}
!375 = !{i64 2154798472}
!376 = !{!"branch_weights", i32 2002, i32 2000}
!377 = !{i64 2154988923}
