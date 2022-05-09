; ModuleID = '/llk/IR_all_yes/sound/pci/echoaudio/layla20.c_pt.bc'
source_filename = "../sound/pci/echoaudio/layla20.c"
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
%struct.snd_rawmidi_ops = type { ptr, ptr, ptr, ptr }
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
%struct.echoaudio = type { %struct.spinlock, [32 x ptr], %struct.mutex, i16, [6 x i16], i16, [10 x i16], i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, %struct.timer_list, i8, i8, i8, i8, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [32 x i8], [32 x i8], [32 x i8], [32 x [32 x i8]], [32 x [32 x i8]], i16, i16, i16, i16, i16, ptr, i16, i16, i32, ptr, i32, [8 x ptr], i16, [256 x i8] }
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
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
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
%struct.snd_rawmidi_substream = type { %struct.list_head, i32, i32, i8, i8, i8, i32, i32, i32, i32, ptr, ptr, [32 x i8], ptr, ptr, ptr }
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

@__UNIQUE_ID_firmware242 = internal constant [39 x i8] c"snd_layla20.firmware=ea/layla20_dsp.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware243 = internal constant [40 x i8] c"snd_layla20.firmware=ea/layla20_asic.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [55 x i8] c"snd_layla20.author=Giuliano Pochini <pochini@shiny.it>\00", section ".modinfo", align 1
@__UNIQUE_ID_file253 = internal constant [49 x i8] c"snd_layla20.file=sound/pci/echoaudio/snd-layla20\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [27 x i8] c"snd_layla20.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description255 = internal constant [60 x i8] c"snd_layla20.description=Echoaudio Layla20 soundcards driver\00", section ".modinfo", align 1
@__param_str_index = internal constant [18 x i8] c"snd_layla20.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype256 = internal constant [40 x i8] c"snd_layla20.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index257 = internal constant [58 x i8] c"snd_layla20.parm=index:Index value for Layla20 soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [15 x i8] c"snd_layla20.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype258 = internal constant [39 x i8] c"snd_layla20.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id259 = internal constant [53 x i8] c"snd_layla20.parm=id:ID string for Layla20 soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [19 x i8] c"snd_layla20.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype260 = internal constant [42 x i8] c"snd_layla20.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable261 = internal constant [50 x i8] c"snd_layla20.parm=enable:Enable Layla20 soundcard.\00", section ".modinfo", align 1
@__initcall__kmod_snd_layla20__278_2255_echo_driver_init6 = internal global ptr @echo_driver_init, section ".initcall6.init", align 4
@echo_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_echo_ids, ptr @snd_echo_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_echo_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_echo_driver_exit = internal global ptr @echo_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd_layla20\00", [20 x i8] zeroinitializer }, align 32
@snd_echo_ids = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4183, i32 6145, i32 60608, i32 48, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4183, i32 6145, i32 60608, i32 49, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_echo_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @snd_echo_suspend, ptr @snd_echo_resume, ptr @snd_echo_suspend, ptr @snd_echo_resume, ptr @snd_echo_suspend, ptr @snd_echo_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@snd_echo_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Echo_Layla20\00", [19 x i8] zeroinitializer }, align 32
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
@snd_echo_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 2022, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"new midi error %d\0A\00", [45 x i8] zeroinitializer }, align 32
@snd_echo_probe._entry_ptr.12 = internal global ptr @snd_echo_probe._entry.10, section ".printk_index", align 4
@snd_echo_pcm_output_gain = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.154, i32 0, i32 19, i32 0, ptr @snd_echo_output_gain_info, ptr @snd_echo_output_gain_get, ptr @snd_echo_output_gain_put, %union.anon.84 { ptr @db_scale_output_gain }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_echo_line_input_gain = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.155, i32 0, i32 19, i32 0, ptr @snd_echo_input_gain_info, ptr @snd_echo_input_gain_get, ptr @snd_echo_input_gain_put, %union.anon.84 { ptr @db_scale_input_gain }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_echo_output_nominal_level = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.156, i32 0, i32 0, i32 0, ptr @snd_echo_output_nominal_info, ptr @snd_echo_output_nominal_get, ptr @snd_echo_output_nominal_put, %union.anon.84 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_echo_vumeters_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.157, i32 0, i32 2, i32 0, ptr @snd_ctl_boolean_mono_info, ptr null, ptr @snd_echo_vumeters_switch_put, %union.anon.84 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_echo_vumeters = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.158, i32 0, i32 21, i32 0, ptr @snd_echo_vumeters_info, ptr @snd_echo_vumeters_get, ptr null, %union.anon.84 { ptr @db_scale_output_gain }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_echo_monitor_mixer = internal global { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.159, i32 0, i32 19, i32 0, ptr @snd_echo_mixer_info, ptr @snd_echo_mixer_get, ptr @snd_echo_mixer_put, %union.anon.84 { ptr @db_scale_output_gain }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_echo_channels_info = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 1, i32 0, i32 0, ptr @.str.160, i32 0, i32 5, i32 0, ptr @snd_echo_channels_info_info, ptr @snd_echo_channels_info_get, ptr null, %union.anon.84 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_echo_clock_source_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.161, i32 0, i32 0, i32 0, ptr @snd_echo_clock_source_info, ptr @snd_echo_clock_source_get, ptr @snd_echo_clock_source_put, %union.anon.84 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_echo_spdif_mode_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 0, i32 0, i32 0, ptr @.str.172, i32 0, i32 0, i32 0, ptr @snd_echo_spdif_mode_info, ptr @snd_echo_spdif_mode_get, ptr @snd_echo_spdif_mode_put, %union.anon.84 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_echo_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.7, i32 2135, ptr @.str.15, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Card registered: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@snd_echo_probe._entry_ptr.16 = internal global ptr @snd_echo_probe._entry.13, section ".printk_index", align 4
@snd_echo_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->lock\00", [20 x i8] zeroinitializer }, align 32
@snd_echo_create.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&chip->mode_mutex\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Layla20\00", [24 x i8] zeroinitializer }, align 32
@snd_echo_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.7, i32 1935, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ioremap failed\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_echo_create\00", [16 x i8] zeroinitializer }, align 32
@snd_echo_create._entry_ptr = internal global ptr @snd_echo_create._entry, section ".printk_index", align 4
@snd_echo_create._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.7, i32 1941, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cannot grab irq\0A\00", [47 x i8] zeroinitializer }, align 32
@snd_echo_create._entry_ptr.25 = internal global ptr @snd_echo_create._entry.23, section ".printk_index", align 4
@snd_echo_create.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.7, ptr @.str.26, i8 1, i8 -26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"pci=%p irq=%d subdev=%04x Init hardware...\0A\00", [52 x i8] zeroinitializer }, align 32
@snd_echo_create._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.22, ptr @.str.7, i32 1965, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"init_hw err=%d\0A\00", [16 x i8] zeroinitializer }, align 32
@snd_echo_create._entry_ptr.29 = internal global ptr @snd_echo_create._entry.27, section ".printk_index", align 4
@snd_echo_interrupt.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.7, ptr @.str.31, i8 1, i8 -44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_echo_interrupt\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rawmidi_iread=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/pci/echoaudio/midi.c\00", [37 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@send_vector._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.35, i32 83, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"timeout on send_vector\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"send_vector\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sound/pci/echoaudio/echoaudio_dsp.c\00", [60 x i8] zeroinitializer }, align 32
@send_vector._entry_ptr = internal global ptr @send_vector._entry, section ".printk_index", align 4
@stop_transport.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.35, ptr @.str.37, i8 0, i8 -24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stop_transport\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"stop_transport: No pipes to stop!\0A\00", [61 x i8] zeroinitializer }, align 32
@wait_handshake._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.35, i32 56, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"wait_handshake(): Timeout waiting for DSP\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wait_handshake\00", [17 x i8] zeroinitializer }, align 32
@wait_handshake._entry_ptr = internal global ptr @wait_handshake._entry, section ".printk_index", align 4
@enable_midi_input.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.32, ptr @.str.41, i8 0, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"enable_midi_input\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"enable_midi_input(%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@free_firmware_cache.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.7, ptr @.str.43, i8 0, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"free_firmware_cache\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"release_firmware(%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sound/pci/echoaudio/layla20_dsp.c\00", [62 x i8] zeroinitializer }, align 32
@init_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.44, i32 49, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"init_hw - could not initialize DSP comm page\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"init_hw\00", [24 x i8] zeroinitializer }, align 32
@init_hw._entry_ptr = internal global ptr @init_hw._entry, section ".printk_index", align 4
@check_asic_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.44, i32 126, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"check_asic_status: failed on read_dsp\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"check_asic_status\00", [46 x i8] zeroinitializer }, align 32
@check_asic_status._entry_ptr = internal global ptr @check_asic_status._entry, section ".printk_index", align 4
@read_dsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.35, i32 130, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"read_dsp: Set bad_board to true\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"read_dsp\00", [23 x i8] zeroinitializer }, align 32
@read_dsp._entry_ptr = internal global ptr @read_dsp._entry, section ".printk_index", align 4
@get_firmware.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.7, ptr @.str.52, i8 0, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_firmware\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"firmware requested: %s is cached\0A\00", [62 x i8] zeroinitializer }, align 32
@card_fw = internal constant { [2 x %struct.firmware], [40 x i8] } { [2 x %struct.firmware] [%struct.firmware { i32 0, ptr @.str.56, ptr null }, %struct.firmware { i32 0, ptr @.str.57, ptr null }], [40 x i8] zeroinitializer }, align 32
@get_firmware.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.7, ptr @.str.53, i8 0, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"firmware requested: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ea/%s\00", [26 x i8] zeroinitializer }, align 32
@get_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.51, ptr @.str.7, i32 53, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"get_firmware(): Firmware not available (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@get_firmware._entry_ptr = internal global ptr @get_firmware._entry, section ".printk_index", align 4
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"layla20_dsp.fw\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"layla20_asic.fw\00", [16 x i8] zeroinitializer }, align 32
@load_dsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.35, i32 341, ptr @.str.60, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DSP is already loaded!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"load_dsp\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@load_dsp._entry_ptr = internal global ptr @load_dsp._entry, section ".printk_index", align 4
@load_dsp.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.35, ptr @.str.61, i8 0, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"load_dsp: Set bad_board to true\0A\00", [63 x i8] zeroinitializer }, align 32
@load_dsp._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.59, ptr @.str.35, i32 360, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"LoadDsp: send_vector DSP_VC_RESET failed, Critical Failure\0A\00", [36 x i8] zeroinitializer }, align 32
@load_dsp._entry_ptr.64 = internal global ptr @load_dsp._entry.62, section ".printk_index", align 4
@load_dsp._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.59, ptr @.str.35, i32 376, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"load_dsp: Timeout waiting for CHI32_STATUS_REG_HF3\0A\00", [44 x i8] zeroinitializer }, align 32
@load_dsp._entry_ptr.67 = internal global ptr @load_dsp._entry.65, section ".printk_index", align 4
@load_dsp._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.59, ptr @.str.35, i32 414, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"load_dsp: failed to write number of DSP words\0A\00", [49 x i8] zeroinitializer }, align 32
@load_dsp._entry_ptr.70 = internal global ptr @load_dsp._entry.68, section ".printk_index", align 4
@load_dsp._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.59, ptr @.str.35, i32 419, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"load_dsp: failed to write DSP address\0A\00", [57 x i8] zeroinitializer }, align 32
@load_dsp._entry_ptr.73 = internal global ptr @load_dsp._entry.71, section ".printk_index", align 4
@load_dsp._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.59, ptr @.str.35, i32 424, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"load_dsp: failed to write DSP memory type\0A\00", [53 x i8] zeroinitializer }, align 32
@load_dsp._entry_ptr.76 = internal global ptr @load_dsp._entry.74, section ".printk_index", align 4
@load_dsp._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.59, ptr @.str.35, i32 432, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"load_dsp: failed to write DSP data\0A\00", [60 x i8] zeroinitializer }, align 32
@load_dsp._entry_ptr.79 = internal global ptr @load_dsp._entry.77, section ".printk_index", align 4
@load_dsp._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.59, ptr @.str.35, i32 440, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"load_dsp: Failed to write final zero\0A\00", [58 x i8] zeroinitializer }, align 32
@load_dsp._entry_ptr.82 = internal global ptr @load_dsp._entry.80, section ".printk_index", align 4
@load_dsp._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.59, ptr @.str.35, i32 454, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"load_dsp: Failed to write DSP_FNC_SET_COMMPAGE_ADDR\0A\00", [43 x i8] zeroinitializer }, align 32
@load_dsp._entry_ptr.85 = internal global ptr @load_dsp._entry.83, section ".printk_index", align 4
@load_dsp._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.59, ptr @.str.35, i32 460, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"load_dsp: Failed to write comm page address\0A\00", [51 x i8] zeroinitializer }, align 32
@load_dsp._entry_ptr.88 = internal global ptr @load_dsp._entry.86, section ".printk_index", align 4
@load_dsp._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.59, ptr @.str.35, i32 470, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"load_dsp: Failed to read serial number\0A\00", [56 x i8] zeroinitializer }, align 32
@load_dsp._entry_ptr.91 = internal global ptr @load_dsp._entry.89, section ".printk_index", align 4
@load_dsp._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.59, ptr @.str.35, i32 482, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"load_dsp: DSP load timed out waiting for HF4\0A\00", [50 x i8] zeroinitializer }, align 32
@load_dsp._entry_ptr.94 = internal global ptr @load_dsp._entry.92, section ".printk_index", align 4
@write_dsp.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.35, ptr @.str.96, i8 0, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"write_dsp\00", [22 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"write_dsp: Set bad_board to true\0A\00", [62 x i8] zeroinitializer }, align 32
@read_sn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.35, i32 153, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to read serial number\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"read_sn\00", [24 x i8] zeroinitializer }, align 32
@read_sn._entry_ptr = internal global ptr @read_sn._entry, section ".printk_index", align 4
@read_sn.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.98, ptr @.str.35, ptr @.str.99, i8 0, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Read serial number %08x %08x %08x %08x %08x\0A\00", [51 x i8] zeroinitializer }, align 32
@free_firmware.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.7, ptr @.str.101, i8 0, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"free_firmware\00", [18 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"firmware not released (kept in cache)\0A\00", [57 x i8] zeroinitializer }, align 32
@load_asic_generic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.35, i32 189, ptr @.str.60, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Firmware not found !\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"load_asic_generic\00", [46 x i8] zeroinitializer }, align 32
@load_asic_generic._entry_ptr = internal global ptr @load_asic_generic._entry, section ".printk_index", align 4
@load_asic_generic._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.35, i32 213, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed on write_dsp\0A\00", [43 x i8] zeroinitializer }, align 32
@load_asic_generic._entry_ptr.106 = internal global ptr @load_asic_generic._entry.104, section ".printk_index", align 4
@set_sample_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.44, i32 170, ptr @.str.60, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Cannot set sample rate - clock not set to CLK_CLOCKININTERNAL\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"set_sample_rate\00", [16 x i8] zeroinitializer }, align 32
@set_sample_rate._entry_ptr = internal global ptr @set_sample_rate._entry, section ".printk_index", align 4
@set_sample_rate.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.44, ptr @.str.109, i8 0, i8 44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set_sample_rate(%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@set_input_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.44, i32 211, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Input clock 0x%x not supported for Layla24\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"set_input_clock\00", [16 x i8] zeroinitializer }, align 32
@set_input_clock._entry_ptr = internal global ptr @set_input_clock._entry, section ".printk_index", align 4
@set_output_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.44, i32 238, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"set_output_clock wrong clock\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"set_output_clock\00", [47 x i8] zeroinitializer }, align 32
@set_output_clock._entry_ptr = internal global ptr @set_output_clock._entry, section ".printk_index", align 4
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Analog PCM\00", [21 x i8] zeroinitializer }, align 32
@analog_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @pcm_analog_out_open, ptr @pcm_close, ptr null, ptr @pcm_analog_out_hw_params, ptr @pcm_hw_free, ptr @pcm_prepare, ptr @pcm_trigger, ptr null, ptr @pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@analog_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @pcm_analog_in_open, ptr @pcm_close, ptr null, ptr @pcm_analog_in_hw_params, ptr @pcm_hw_free, ptr @pcm_prepare, ptr @pcm_trigger, ptr null, ptr @pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Digital PCM\00", [20 x i8] zeroinitializer }, align 32
@digital_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @pcm_digital_out_open, ptr @pcm_close, ptr null, ptr @pcm_digital_out_hw_params, ptr @pcm_hw_free, ptr @pcm_prepare, ptr @pcm_trigger, ptr null, ptr @pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@digital_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @pcm_digital_in_open, ptr @pcm_close, ptr null, ptr @pcm_digital_in_hw_params, ptr @pcm_hw_free, ptr @pcm_prepare, ptr @pcm_trigger, ptr null, ptr @pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@pcm_hardware_skel = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4784387, i64 4294970374, i32 1073742078, i32 8000, i32 50000, i32 1, i32 10, i32 262144, i32 32, i32 131072, i32 2, i32 220, i32 0 }, [32 x i8] zeroinitializer }, align 32
@pcm_open.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.7, ptr @.str.117, i8 0, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcm_open\00", [23 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max_channels=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@channels_list = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 1, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 999999], [56 x i8] zeroinitializer }, align 32
@pcm_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.7, i32 340, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"s-g list allocation failed\0A\00", [36 x i8] zeroinitializer }, align 32
@pcm_open._entry_ptr = internal global ptr @pcm_open._entry, section ".printk_index", align 4
@pcm_open.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.7, ptr @.str.119, i8 0, i8 87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"pcm_open opencount=%d can_set_rate=%d, rate_set=%d\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pcm_close.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.120, ptr @.str.7, ptr @.str.119, i8 0, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pcm_close\00", [22 x i8] zeroinitializer }, align 32
@init_engine.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.121, ptr @.str.7, ptr @.str.122, i8 0, i8 -118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"init_engine\00", [20 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hwp_ie free(%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@init_engine._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.7, i32 562, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"allocate_pipes(%d) err=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@init_engine._entry_ptr = internal global ptr @init_engine._entry, section ".printk_index", align 4
@init_engine.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.121, ptr @.str.7, ptr @.str.124, i8 0, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"allocate_pipes()=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@init_engine.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.121, ptr @.str.7, ptr @.str.125, i8 0, i8 -114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"pcm_hw_params (bufsize=%dB periods=%d persize=%dB)\0A\00", [44 x i8] zeroinitializer }, align 32
@allocate_pipes.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.126, ptr @.str.35, ptr @.str.127, i8 1, i8 9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"allocate_pipes\00", [17 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"allocate_pipes: ch=%d int=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@allocate_pipes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.35, i32 1070, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"allocate_pipes: channel already open\0A\00", [58 x i8] zeroinitializer }, align 32
@allocate_pipes._entry_ptr = internal global ptr @allocate_pipes._entry, section ".printk_index", align 4
@sglist_add_mapping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.35, i32 1138, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SGlist: too many fragments\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sglist_add_mapping\00", [45 x i8] zeroinitializer }, align 32
@sglist_add_mapping._entry_ptr = internal global ptr @sglist_add_mapping._entry, section ".printk_index", align 4
@pcm_hw_free.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.131, ptr @.str.7, ptr @.str.132, i8 0, i8 -87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcm_hw_free\00", [20 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pcm_hw_free(%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@pcm_prepare.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.133, ptr @.str.7, ptr @.str.134, i8 0, i8 -82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcm_prepare\00", [20 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Prepare rate=%d format=%d channels=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@pcm_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.133, ptr @.str.7, i32 722, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Prepare error: unsupported format %d\0A\00", [58 x i8] zeroinitializer }, align 32
@pcm_prepare._entry_ptr = internal global ptr @pcm_prepare._entry, section ".printk_index", align 4
@set_audio_format.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.35, ptr @.str.137, i8 0, i8 -44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"set_audio_format\00", [47 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"set_audio_format[%d] = %x\0A\00", [37 x i8] zeroinitializer }, align 32
@start_transport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.35, i32 879, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"start_transport: No pipes to start!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"start_transport\00", [16 x i8] zeroinitializer }, align 32
@start_transport._entry_ptr = internal global ptr @start_transport._entry, section ".printk_index", align 4
@pause_transport.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.140, ptr @.str.35, ptr @.str.141, i8 0, i8 -30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pause_transport\00", [16 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"pause_transport: No pipes to stop!\0A\00", [60 x i8] zeroinitializer }, align 32
@snd_echo_midi_input = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @snd_echo_midi_input_open, ptr @snd_echo_midi_input_close, ptr @snd_echo_midi_input_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@snd_echo_midi_output = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @snd_echo_midi_output_open, ptr @snd_echo_midi_output_close, ptr @snd_echo_midi_output_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@snd_echo_midi_output_trigger.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.142, ptr @.str.32, ptr @.str.143, i8 0, i8 64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"snd_echo_midi_output_trigger\00", [35 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"snd_echo_midi_output_trigger(%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@snd_echo_midi_output_trigger.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.144 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&chip->timer)\00", [17 x i8] zeroinitializer }, align 32
@snd_echo_midi_output_trigger.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.142, ptr @.str.32, ptr @.str.145, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.145 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Timer removed\0A\00", [17 x i8] zeroinitializer }, align 32
@snd_echo_midi_output_write.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.146, ptr @.str.32, ptr @.str.147, i8 0, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"snd_echo_midi_output_write\00", [37 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Try to send %d bytes...\0A\00", [39 x i8] zeroinitializer }, align 32
@snd_echo_midi_output_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.146, ptr @.str.32, i32 221, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"write_midi() error %d\0A\00", [41 x i8] zeroinitializer }, align 32
@snd_echo_midi_output_write._entry_ptr = internal global ptr @snd_echo_midi_output_write._entry, section ".printk_index", align 4
@snd_echo_midi_output_write.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.146, ptr @.str.32, ptr @.str.149, i8 0, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.149 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%d bytes sent\0A\00", [17 x i8] zeroinitializer }, align 32
@snd_echo_midi_output_write.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.146, ptr @.str.32, ptr @.str.150, i8 0, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.150 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Full\0A\00", [26 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@snd_echo_midi_output_write.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.146, ptr @.str.32, ptr @.str.151, i8 0, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.151 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Timer armed(%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@write_midi.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.152, ptr @.str.32, ptr @.str.153, i8 0, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.152 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"write_midi\00", [21 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"write_midi: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@db_scale_output_gain = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -12800, i32 65636], [16 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Line Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@db_scale_input_gain = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -2500, i32 50], [16 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Line Playback Switch (-10dBV)\00", [34 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"VU-meters Switch\00", [47 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VU-meters\00", [22 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Monitor Mixer Volume\00", [43 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Channels info\00", [18 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Sample Clock Source\00", [44 x i8] zeroinitializer }, align 32
@snd_echo_clock_source_info.names = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169], [32 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Internal\00", [23 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Word\00", [27 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Super\00", [26 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"S/PDIF\00", [25 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADAT\00", [27 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ESync\00", [26 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ESync96\00", [24 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MTC\00", [28 x i8] zeroinitializer }, align 32
@snd_echo_clock_source_put.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.170, ptr @.str.7, ptr @.str.171, i8 1, i8 -113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.170 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snd_echo_clock_source_put\00", [38 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"seticlk val%d err 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"S/PDIF mode Switch\00", [45 x i8] zeroinitializer }, align 32
@snd_echo_spdif_mode_info.names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.173, ptr @.str.174], [24 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Consumer\00", [23 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Professional\00", [19 x i8] zeroinitializer }, align 32
@snd_echo_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.176, ptr @.str.7, i32 2192, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"resume init_hw err=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_echo_resume\00", [16 x i8] zeroinitializer }, align 32
@snd_echo_resume._entry_ptr = internal global ptr @snd_echo_resume._entry, section ".printk_index", align 4
@snd_echo_resume._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.176, ptr @.str.7, i32 2218, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@snd_echo_resume._entry_ptr.178 = internal global ptr @snd_echo_resume._entry.177, section ".printk_index", align 4
@snd_echo_resume.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.176, ptr @.str.7, ptr @.str.179, i8 2, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.179 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"resume irq=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.180 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.181 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.182 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.183 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 10, i64 11, i64 32]
@__sancov_gen_cov_switch_values.184 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.185 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.186 = internal global [4 x i64] [i64 2, i64 64, i64 2, i64 2048]
@__sancov_gen_cov_switch_values.187 = internal global [5 x i64] [i64 3, i64 8, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.188 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.189 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 2048]
@___asan_gen_.190 = private unnamed_addr constant [12 x i8] c"echo_driver\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 2246, i32 26 }
@___asan_gen_.193 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 15, i32 12 }
@___asan_gen_.196 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 16, i32 14 }
@___asan_gen_.199 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 17, i32 13 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 2255, i32 1 }
@___asan_gen_.205 = private unnamed_addr constant [13 x i8] c"snd_echo_ids\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 67, i32 35 }
@___asan_gen_.208 = private unnamed_addr constant [12 x i8] c"snd_echo_pm\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 2235, i32 8 }
@___asan_gen_.211 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1976, i32 13 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 2001, i32 23 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 2004, i32 8 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 2006, i32 9 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 2008, i32 26 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 2014, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 2022, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant [25 x i8] c"snd_echo_pcm_output_gain\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1061, i32 38 }
@___asan_gen_.253 = private unnamed_addr constant [25 x i8] c"snd_echo_line_input_gain\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1131, i32 38 }
@___asan_gen_.256 = private unnamed_addr constant [30 x i8] c"snd_echo_output_nominal_level\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1195, i32 38 }
@___asan_gen_.259 = private unnamed_addr constant [25 x i8] c"snd_echo_vumeters_switch\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1715, i32 38 }
@___asan_gen_.262 = private unnamed_addr constant [18 x i8] c"snd_echo_vumeters\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1746, i32 38 }
@___asan_gen_.265 = private unnamed_addr constant [23 x i8] c"snd_echo_monitor_mixer\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1326, i32 32 }
@___asan_gen_.268 = private unnamed_addr constant [23 x i8] c"snd_echo_channels_info\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1799, i32 38 }
@___asan_gen_.271 = private unnamed_addr constant [29 x i8] c"snd_echo_clock_source_switch\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1602, i32 38 }
@___asan_gen_.274 = private unnamed_addr constant [27 x i8] c"snd_echo_spdif_mode_switch\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1528, i32 38 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 2135, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1915, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1920, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1924, i32 33 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1935, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1941, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1946, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1965, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1872, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 123, i32 6 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 83, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 931, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 56, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 39, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 83, i32 4 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 43, i32 6 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 48, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 125, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 130, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 39, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant [8 x i8] c"card_fw\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 62, i32 30 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 47, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 49, i32 31 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 52, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 63, i32 6 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 64, i32 6 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 341, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 348, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 359, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 375, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 413, i32 4 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 418, i32 4 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 423, i32 4 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 431, i32 5 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 439, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 453, i32 5 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 459, i32 5 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 469, i32 5 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 481, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 107, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 152, i32 4 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 157, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 67, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 189, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 213, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 169, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 179, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 209, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant [37 x i8] c"../sound/pci/echoaudio/layla20_dsp.c\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 238, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 956, i32 32 }
@___asan_gen_.583 = private unnamed_addr constant [20 x i8] c"analog_playback_ops\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 849, i32 33 }
@___asan_gen_.586 = private unnamed_addr constant [19 x i8] c"analog_capture_ops\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 858, i32 33 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 970, i32 32 }
@___asan_gen_.592 = private unnamed_addr constant [21 x i8] c"digital_playback_ops\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 869, i32 33 }
@___asan_gen_.595 = private unnamed_addr constant [20 x i8] c"digital_capture_ops\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 879, i32 33 }
@___asan_gen_.598 = private unnamed_addr constant [18 x i8] c"pcm_hardware_skel\00", align 1
@___asan_gen_.599 = private constant [33 x i8] c"../sound/pci/echoaudio/layla20.c\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 73, i32 38 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 286, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant [14 x i8] c"channels_list\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 26, i32 27 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 340, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 348, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 514, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 552, i32 3 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 561, i32 3 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 566, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 568, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1060, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1069, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1138, i32 3 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 679, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 698, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 720, i32 3 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 848, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 879, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant [39 x i8] c"../sound/pci/echoaudio/echoaudio_dsp.c\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 905, i32 2 }
@___asan_gen_.700 = private unnamed_addr constant [20 x i8] c"snd_echo_midi_input\00", align 1
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 291, i32 37 }
@___asan_gen_.703 = private unnamed_addr constant [21 x i8] c"snd_echo_midi_output\00", align 1
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 297, i32 37 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 256, i32 2 }
@___asan_gen_.712 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 260, i32 4 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 269, i32 4 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 217, i32 3 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 220, i32 4 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 226, i32 4 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 231, i32 4 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 243, i32 3 }
@___asan_gen_.746 = private unnamed_addr constant [30 x i8] c"../sound/pci/echoaudio/midi.c\00", align 1
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 77, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1062, i32 10 }
@___asan_gen_.751 = private unnamed_addr constant [21 x i8] c"db_scale_output_gain\00", align 1
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 27, i32 14 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1132, i32 10 }
@___asan_gen_.757 = private unnamed_addr constant [20 x i8] c"db_scale_input_gain\00", align 1
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1129, i32 14 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1196, i32 10 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1716, i32 10 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1747, i32 10 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1327, i32 10 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1800, i32 10 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1603, i32 10 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1546, i32 28 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1547, i32 3 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1547, i32 15 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1547, i32 23 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1547, i32 32 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1547, i32 42 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1547, i32 50 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1548, i32 3 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1548, i32 14 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1596, i32 3 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1529, i32 10 }
@___asan_gen_.814 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1496, i32 28 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1496, i32 40 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 1496, i32 52 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 2192, i32 3 }
@___asan_gen_.832 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 2218, i32 3 }
@___asan_gen_.835 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.836 = private unnamed_addr constant [35 x i8] c"../sound/pci/echoaudio/echoaudio.c\00", align 1
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.836, i32 2223, i32 2 }
@llvm.compiler.used = appending global [273 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description255, ptr @__UNIQUE_ID_enable261, ptr @__UNIQUE_ID_enabletype260, ptr @__UNIQUE_ID_file253, ptr @__UNIQUE_ID_firmware242, ptr @__UNIQUE_ID_firmware243, ptr @__UNIQUE_ID_id259, ptr @__UNIQUE_ID_idtype258, ptr @__UNIQUE_ID_index257, ptr @__UNIQUE_ID_indextype256, ptr @__UNIQUE_ID_license254, ptr @__exitcall_echo_driver_exit, ptr @__initcall__kmod_snd_layla20__278_2255_echo_driver_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @allocate_pipes._entry, ptr @allocate_pipes._entry_ptr, ptr @check_asic_status._entry, ptr @check_asic_status._entry_ptr, ptr @echo_driver_exit, ptr @get_firmware._entry, ptr @get_firmware._entry_ptr, ptr @init_engine._entry, ptr @init_engine._entry_ptr, ptr @init_hw._entry, ptr @init_hw._entry_ptr, ptr @load_asic_generic._entry, ptr @load_asic_generic._entry.104, ptr @load_asic_generic._entry_ptr, ptr @load_asic_generic._entry_ptr.106, ptr @load_dsp._entry, ptr @load_dsp._entry.62, ptr @load_dsp._entry.65, ptr @load_dsp._entry.68, ptr @load_dsp._entry.71, ptr @load_dsp._entry.74, ptr @load_dsp._entry.77, ptr @load_dsp._entry.80, ptr @load_dsp._entry.83, ptr @load_dsp._entry.86, ptr @load_dsp._entry.89, ptr @load_dsp._entry.92, ptr @load_dsp._entry_ptr, ptr @load_dsp._entry_ptr.64, ptr @load_dsp._entry_ptr.67, ptr @load_dsp._entry_ptr.70, ptr @load_dsp._entry_ptr.73, ptr @load_dsp._entry_ptr.76, ptr @load_dsp._entry_ptr.79, ptr @load_dsp._entry_ptr.82, ptr @load_dsp._entry_ptr.85, ptr @load_dsp._entry_ptr.88, ptr @load_dsp._entry_ptr.91, ptr @load_dsp._entry_ptr.94, ptr @pcm_open._entry, ptr @pcm_open._entry_ptr, ptr @pcm_prepare._entry, ptr @pcm_prepare._entry_ptr, ptr @read_dsp._entry, ptr @read_dsp._entry_ptr, ptr @read_sn._entry, ptr @read_sn._entry_ptr, ptr @send_vector._entry, ptr @send_vector._entry_ptr, ptr @set_input_clock._entry, ptr @set_input_clock._entry_ptr, ptr @set_output_clock._entry, ptr @set_output_clock._entry_ptr, ptr @set_sample_rate._entry, ptr @set_sample_rate._entry_ptr, ptr @sglist_add_mapping._entry, ptr @sglist_add_mapping._entry_ptr, ptr @snd_echo_create._entry, ptr @snd_echo_create._entry.23, ptr @snd_echo_create._entry.27, ptr @snd_echo_create._entry_ptr, ptr @snd_echo_create._entry_ptr.25, ptr @snd_echo_create._entry_ptr.29, ptr @snd_echo_midi_output_write._entry, ptr @snd_echo_midi_output_write._entry_ptr, ptr @snd_echo_probe._entry, ptr @snd_echo_probe._entry.10, ptr @snd_echo_probe._entry.13, ptr @snd_echo_probe._entry_ptr, ptr @snd_echo_probe._entry_ptr.12, ptr @snd_echo_probe._entry_ptr.16, ptr @snd_echo_resume._entry, ptr @snd_echo_resume._entry.177, ptr @snd_echo_resume._entry_ptr, ptr @snd_echo_resume._entry_ptr.178, ptr @start_transport._entry, ptr @start_transport._entry_ptr, ptr @wait_handshake._entry, ptr @wait_handshake._entry_ptr, ptr @echo_driver, ptr @index, ptr @id, ptr @enable, ptr @.str, ptr @snd_echo_ids, ptr @snd_echo_pm, ptr @snd_echo_probe.dev, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @snd_echo_pcm_output_gain, ptr @snd_echo_line_input_gain, ptr @snd_echo_output_nominal_level, ptr @snd_echo_vumeters_switch, ptr @snd_echo_vumeters, ptr @snd_echo_monitor_mixer, ptr @snd_echo_channels_info, ptr @snd_echo_clock_source_switch, ptr @snd_echo_spdif_mode_switch, ptr @.str.14, ptr @.str.15, ptr @snd_echo_create.__key, ptr @.str.17, ptr @snd_echo_create.__key.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @card_fw, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @analog_playback_ops, ptr @analog_capture_ops, ptr @.str.115, ptr @digital_playback_ops, ptr @digital_capture_ops, ptr @pcm_hardware_skel, ptr @.str.116, ptr @.str.117, ptr @channels_list, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @snd_echo_midi_input, ptr @snd_echo_midi_output, ptr @.str.142, ptr @.str.143, ptr @snd_echo_midi_output_trigger.__key, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @db_scale_output_gain, ptr @.str.155, ptr @db_scale_input_gain, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @snd_echo_clock_source_info.names, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @snd_echo_spdif_mode_info.names, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.179], section "llvm.metadata"
@0 = internal global [216 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @echo_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_pcm_output_gain to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_line_input_gain to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_output_nominal_level to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_vumeters_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_vumeters to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_monitor_mixer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_channels_info to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_clock_source_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_spdif_mode_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_create.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_create._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_create._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_vector._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_handshake._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_asic_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_dsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card_fw to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_dsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_dsp._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_dsp._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_dsp._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_dsp._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_dsp._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_dsp._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_dsp._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_dsp._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_dsp._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_dsp._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_dsp._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_sn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_asic_generic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_asic_generic._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_sample_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_input_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_output_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analog_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analog_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_hardware_skel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channels_list to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_engine._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_pipes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sglist_add_mapping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_transport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_midi_input to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_midi_output to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_midi_output_trigger.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_midi_output_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_output_gain to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_input_gain to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_clock_source_info.names to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_spdif_mode_info.names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_echo_resume._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @echo_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @echo_driver, ptr noundef null, ptr noundef nonnull @.str) #17
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @echo_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @pci_unregister_driver(ptr noundef nonnull @echo_driver) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #17
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !465
  %1 = load i32, ptr @snd_echo_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp = icmp sgt i32 %1, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !466
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
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
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %5, ptr noundef %7, ptr noundef null, i32 noundef 2908, ptr noundef nonnull %card) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 2
  %14 = call ptr @memcpy(ptr %driver, ptr @.str.1, i32 13)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 3
  %card_name = getelementptr inbounds %struct.echoaudio, ptr %11, i32 0, i32 12
  %15 = ptrtoint ptr %card_name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card_name, align 4
  %call14 = call ptr @strcpy(ptr noundef %shortname, ptr noundef %16) #20
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i) #17
  %25 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i, align 4, !annotation !465
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %11, i32 0, i32 11
  %26 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card.i, align 4
  %call2.i = call i32 @snd_pcm_new(ptr noundef %27, ptr noundef nonnull @.str.114, i32 noundef 0, i32 noundef 10, i32 noundef 8, ptr noundef nonnull %pcm.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.end11.do.end_crit_edge, label %if.end.i

if.end11.do.end_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

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
  %call5.i = call ptr @strcpy(ptr noundef %name.i, ptr noundef %shortname.i) #21
  call void @snd_pcm_set_ops(ptr noundef %29, i32 noundef 0, ptr noundef nonnull @analog_playback_ops) #17
  %34 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %35, i32 noundef 1, ptr noundef nonnull @analog_capture_ops) #17
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
  call void @__sanitizer_cov_trace_pc() #19
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
  %call.i.i = call i32 @snd_pcm_set_managed_buffer(ptr noundef nonnull %ss.013.i.i, i32 noundef 2, ptr noundef %dev.i, i32 noundef %cond.i.i, i32 noundef 262144) #17
  %next.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss.013.i.i, i32 0, i32 15
  %43 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %ss.0.i.i = load ptr, ptr %next.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %ss.0.i.i, null
  br i1 %tobool.not.i.i, label %for.body2.i.i.for.inc4.i.i_crit_edge, label %for.body2.i.i.for.body2.i.i_crit_edge

for.body2.i.i.for.body2.i.i_crit_edge:            ; preds = %for.body2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body2.i.i

for.body2.i.i.for.inc4.i.i_crit_edge:             ; preds = %for.body2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc4.i.i

for.inc4.i.i:                                     ; preds = %for.body2.i.i.for.inc4.i.i_crit_edge, %if.end.i.for.inc4.i.i_crit_edge
  %substream.1.i.i = getelementptr %struct.snd_pcm, ptr %37, i32 0, i32 8, i32 1, i32 4
  %44 = ptrtoint ptr %substream.1.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %ss.011.1.i.i = load ptr, ptr %substream.1.i.i, align 4
  %tobool.not12.1.i.i = icmp eq ptr %ss.011.1.i.i, null
  br i1 %tobool.not12.1.i.i, label %for.inc4.i.i.snd_echo_preallocate_pages.exit.i_crit_edge, label %for.inc4.i.i.for.body2.1.i.i_crit_edge

for.inc4.i.i.for.body2.1.i.i_crit_edge:           ; preds = %for.inc4.i.i
  br label %for.body2.1.i.i

for.inc4.i.i.snd_echo_preallocate_pages.exit.i_crit_edge: ; preds = %for.inc4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %snd_echo_preallocate_pages.exit.i

for.body2.1.i.i:                                  ; preds = %for.body2.1.i.i.for.body2.1.i.i_crit_edge, %for.inc4.i.i.for.body2.1.i.i_crit_edge
  %ss.013.1.i.i = phi ptr [ %ss.0.1.i.i, %for.body2.1.i.i.for.body2.1.i.i_crit_edge ], [ %ss.011.1.i.i, %for.inc4.i.i.for.body2.1.i.i_crit_edge ]
  %number.1.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss.013.1.i.i, i32 0, i32 3
  %45 = ptrtoint ptr %number.1.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %number.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool3.not.1.i.i = icmp eq i32 %46, 0
  %cond.1.i.i = select i1 %tobool3.not.1.i.i, i32 131072, i32 0
  %call.1.i.i = call i32 @snd_pcm_set_managed_buffer(ptr noundef nonnull %ss.013.1.i.i, i32 noundef 2, ptr noundef %dev.i, i32 noundef %cond.1.i.i, i32 noundef 262144) #17
  %next.1.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss.013.1.i.i, i32 0, i32 15
  %47 = ptrtoint ptr %next.1.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %ss.0.1.i.i = load ptr, ptr %next.1.i.i, align 4
  %tobool.not.1.i.i = icmp eq ptr %ss.0.1.i.i, null
  br i1 %tobool.not.1.i.i, label %for.body2.1.i.i.snd_echo_preallocate_pages.exit.i_crit_edge, label %for.body2.1.i.i.for.body2.1.i.i_crit_edge

for.body2.1.i.i.for.body2.1.i.i_crit_edge:        ; preds = %for.body2.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body2.1.i.i

for.body2.1.i.i.snd_echo_preallocate_pages.exit.i_crit_edge: ; preds = %for.body2.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %snd_echo_preallocate_pages.exit.i

snd_echo_preallocate_pages.exit.i:                ; preds = %for.body2.1.i.i.snd_echo_preallocate_pages.exit.i_crit_edge, %for.inc4.i.i.snd_echo_preallocate_pages.exit.i_crit_edge
  %48 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %card.i, align 4
  %call9.i = call i32 @snd_pcm_new(ptr noundef %49, ptr noundef nonnull @.str.115, i32 noundef 1, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %pcm.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %snd_echo_preallocate_pages.exit.i.do.end_crit_edge, label %if.end12.i

snd_echo_preallocate_pages.exit.i.do.end_crit_edge: ; preds = %snd_echo_preallocate_pages.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.end12.i:                                       ; preds = %snd_echo_preallocate_pages.exit.i
  %50 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pcm.i, align 4
  %private_data13.i = getelementptr inbounds %struct.snd_pcm, ptr %51, i32 0, i32 11
  %52 = ptrtoint ptr %private_data13.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %11, ptr %private_data13.i, align 8
  %digital_pcm.i = getelementptr inbounds %struct.echoaudio, ptr %11, i32 0, i32 10
  %53 = ptrtoint ptr %digital_pcm.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %51, ptr %digital_pcm.i, align 4
  %name14.i = getelementptr inbounds %struct.snd_pcm, ptr %51, i32 0, i32 7
  %54 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %card.i, align 4
  %shortname17.i = getelementptr inbounds %struct.snd_card, ptr %55, i32 0, i32 3
  %call19.i = call ptr @strcpy(ptr noundef %name14.i, ptr noundef %shortname17.i) #21
  call void @snd_pcm_set_ops(ptr noundef %51, i32 noundef 0, ptr noundef nonnull @digital_playback_ops) #17
  %56 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %57, i32 noundef 1, ptr noundef nonnull @digital_capture_ops) #17
  %58 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pcm.i, align 4
  %60 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pci.i, align 4
  %dev21.i = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  %substream.i39.i = getelementptr %struct.snd_pcm, ptr %59, i32 0, i32 8, i32 0, i32 4
  %62 = ptrtoint ptr %substream.i39.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %ss.011.i40.i = load ptr, ptr %substream.i39.i, align 4
  %tobool.not12.i41.i = icmp eq ptr %ss.011.i40.i, null
  br i1 %tobool.not12.i41.i, label %if.end12.i.for.inc4.i54.i_crit_edge, label %if.end12.i.for.body2.i50.i_crit_edge

if.end12.i.for.body2.i50.i_crit_edge:             ; preds = %if.end12.i
  br label %for.body2.i50.i

if.end12.i.for.inc4.i54.i_crit_edge:              ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc4.i54.i

for.body2.i50.i:                                  ; preds = %for.body2.i50.i.for.body2.i50.i_crit_edge, %if.end12.i.for.body2.i50.i_crit_edge
  %ss.013.i42.i = phi ptr [ %ss.0.i48.i, %for.body2.i50.i.for.body2.i50.i_crit_edge ], [ %ss.011.i40.i, %if.end12.i.for.body2.i50.i_crit_edge ]
  %number.i43.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss.013.i42.i, i32 0, i32 3
  %63 = ptrtoint ptr %number.i43.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %number.i43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool3.not.i44.i = icmp eq i32 %64, 0
  %cond.i45.i = select i1 %tobool3.not.i44.i, i32 131072, i32 0
  %call.i46.i = call i32 @snd_pcm_set_managed_buffer(ptr noundef nonnull %ss.013.i42.i, i32 noundef 2, ptr noundef %dev21.i, i32 noundef %cond.i45.i, i32 noundef 262144) #17
  %next.i47.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss.013.i42.i, i32 0, i32 15
  %65 = ptrtoint ptr %next.i47.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %ss.0.i48.i = load ptr, ptr %next.i47.i, align 4
  %tobool.not.i49.i = icmp eq ptr %ss.0.i48.i, null
  br i1 %tobool.not.i49.i, label %for.body2.i50.i.for.inc4.i54.i_crit_edge, label %for.body2.i50.i.for.body2.i50.i_crit_edge

for.body2.i50.i.for.body2.i50.i_crit_edge:        ; preds = %for.body2.i50.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body2.i50.i

for.body2.i50.i.for.inc4.i54.i_crit_edge:         ; preds = %for.body2.i50.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc4.i54.i

for.inc4.i54.i:                                   ; preds = %for.body2.i50.i.for.inc4.i54.i_crit_edge, %if.end12.i.for.inc4.i54.i_crit_edge
  %substream.1.i51.i = getelementptr %struct.snd_pcm, ptr %59, i32 0, i32 8, i32 1, i32 4
  %66 = ptrtoint ptr %substream.1.i51.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %ss.011.1.i52.i = load ptr, ptr %substream.1.i51.i, align 4
  %tobool.not12.1.i53.i = icmp eq ptr %ss.011.1.i52.i, null
  br i1 %tobool.not12.1.i53.i, label %for.inc4.i54.i.if.end27_crit_edge, label %for.inc4.i54.i.for.body2.1.i63.i_crit_edge

for.inc4.i54.i.for.body2.1.i63.i_crit_edge:       ; preds = %for.inc4.i54.i
  br label %for.body2.1.i63.i

for.inc4.i54.i.if.end27_crit_edge:                ; preds = %for.inc4.i54.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27

for.body2.1.i63.i:                                ; preds = %for.body2.1.i63.i.for.body2.1.i63.i_crit_edge, %for.inc4.i54.i.for.body2.1.i63.i_crit_edge
  %ss.013.1.i55.i = phi ptr [ %ss.0.1.i61.i, %for.body2.1.i63.i.for.body2.1.i63.i_crit_edge ], [ %ss.011.1.i52.i, %for.inc4.i54.i.for.body2.1.i63.i_crit_edge ]
  %number.1.i56.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss.013.1.i55.i, i32 0, i32 3
  %67 = ptrtoint ptr %number.1.i56.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %number.1.i56.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool3.not.1.i57.i = icmp eq i32 %68, 0
  %cond.1.i58.i = select i1 %tobool3.not.1.i57.i, i32 131072, i32 0
  %call.1.i59.i = call i32 @snd_pcm_set_managed_buffer(ptr noundef nonnull %ss.013.1.i55.i, i32 noundef 2, ptr noundef %dev21.i, i32 noundef %cond.1.i58.i, i32 noundef 262144) #17
  %next.1.i60.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss.013.1.i55.i, i32 0, i32 15
  %69 = ptrtoint ptr %next.1.i60.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %ss.0.1.i61.i = load ptr, ptr %next.1.i60.i, align 4
  %tobool.not.1.i62.i = icmp eq ptr %ss.0.1.i61.i, null
  br i1 %tobool.not.1.i62.i, label %for.body2.1.i63.i.if.end27_crit_edge, label %for.body2.1.i63.i.for.body2.1.i63.i_crit_edge

for.body2.1.i63.i.for.body2.1.i63.i_crit_edge:    ; preds = %for.body2.1.i63.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body2.1.i63.i

for.body2.1.i63.i.if.end27_crit_edge:             ; preds = %for.body2.1.i63.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27

do.end:                                           ; preds = %snd_echo_preallocate_pages.exit.i.do.end_crit_edge, %if.end11.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call9.i, %snd_echo_preallocate_pages.exit.i.do.end_crit_edge ], [ %call2.i, %if.end11.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #17
  %70 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %card.i, align 4
  %dev26 = getelementptr inbounds %struct.snd_card, ptr %71, i32 0, i32 27
  %72 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev26, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.5, i32 noundef %retval.0.i.ph) #22
  br label %cleanup

if.end27:                                         ; preds = %for.body2.1.i63.i.if.end27_crit_edge, %for.inc4.i54.i.if.end27_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #17
  %has_midi = getelementptr inbounds %struct.echoaudio, ptr %11, i32 0, i32 44
  %74 = ptrtoint ptr %has_midi to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %has_midi, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool28.not = icmp eq i8 %75, 0
  br i1 %tobool28.not, label %if.end27.if.end39_crit_edge, label %if.then29

if.end27.if.end39_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end39

if.then29:                                        ; preds = %if.end27
  %76 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %card, align 4
  %shortname.i201 = getelementptr inbounds %struct.snd_card, ptr %77, i32 0, i32 3
  %rmidi.i = getelementptr inbounds %struct.echoaudio, ptr %11, i32 0, i32 18
  %call.i = call i32 @snd_rawmidi_new(ptr noundef %77, ptr noundef %shortname.i201, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef %rmidi.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i202 = icmp slt i32 %call.i, 0
  br i1 %cmp.i202, label %do.end35, label %snd_echo_midi_create.exit

snd_echo_midi_create.exit:                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #19
  %78 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rmidi.i, align 4
  %name.i203 = getelementptr inbounds %struct.snd_rawmidi, ptr %79, i32 0, i32 5
  %call5.i204 = call ptr @strcpy(ptr noundef %name.i203, ptr noundef %shortname.i201) #21
  %80 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rmidi.i, align 4
  %private_data.i205 = getelementptr inbounds %struct.snd_rawmidi, ptr %81, i32 0, i32 9
  %82 = ptrtoint ptr %private_data.i205 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %11, ptr %private_data.i205, align 4
  %83 = load ptr, ptr %rmidi.i, align 4
  call void @snd_rawmidi_set_ops(ptr noundef %83, i32 noundef 1, ptr noundef nonnull @snd_echo_midi_input) #17
  %84 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rmidi.i, align 4
  call void @snd_rawmidi_set_ops(ptr noundef %85, i32 noundef 0, ptr noundef nonnull @snd_echo_midi_output) #17
  %86 = ptrtoint ptr %rmidi.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rmidi.i, align 4
  %info_flags.i = getelementptr inbounds %struct.snd_rawmidi, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %info_flags.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %info_flags.i, align 8
  %or.i = or i32 %89, 7
  store i32 %or.i, ptr %info_flags.i, align 8
  br label %if.end39

do.end35:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #19
  %90 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %card.i, align 4
  %dev37 = getelementptr inbounds %struct.snd_card, ptr %91, i32 0, i32 27
  %92 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev37, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.11, i32 noundef %call.i) #22
  br label %cleanup

if.end39:                                         ; preds = %snd_echo_midi_create.exit, %if.end27.if.end39_crit_edge
  %94 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %card.i, align 4
  %call41 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_echo_pcm_output_gain, ptr noundef %11) #17
  %call42 = call i32 @snd_ctl_add(ptr noundef %95, ptr noundef %call41) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.end39.cleanup_crit_edge, label %if.end45

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end45:                                         ; preds = %if.end39
  %96 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %card.i, align 4
  %call47 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_echo_line_input_gain, ptr noundef %11) #17
  %call48 = call i32 @snd_ctl_add(ptr noundef %97, ptr noundef %call47) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.end45.cleanup_crit_edge, label %if.end51

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end51:                                         ; preds = %if.end45
  %98 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %card.i, align 4
  %call53 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_echo_output_nominal_level, ptr noundef %11) #17
  %call54 = call i32 @snd_ctl_add(ptr noundef %99, ptr noundef %call53) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end51.cleanup_crit_edge, label %if.end57

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end57:                                         ; preds = %if.end51
  %100 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %card.i, align 4
  %call59 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_echo_vumeters_switch, ptr noundef %11) #17
  %call60 = call i32 @snd_ctl_add(ptr noundef %101, ptr noundef %call59) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.end57.cleanup_crit_edge, label %if.end63

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end63:                                         ; preds = %if.end57
  %102 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %card.i, align 4
  %call65 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_echo_vumeters, ptr noundef %11) #17
  %call66 = call i32 @snd_ctl_add(ptr noundef %103, ptr noundef %call65) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.end63.cleanup_crit_edge, label %if.end69

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end69:                                         ; preds = %if.end63
  store i32 120, ptr getelementptr inbounds (%struct.snd_kcontrol_new, ptr @snd_echo_monitor_mixer, i32 0, i32 6), align 4
  %104 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %card.i, align 4
  %call73 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_echo_monitor_mixer, ptr noundef %11) #17
  %call74 = call i32 @snd_ctl_add(ptr noundef %105, ptr noundef %call73) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.end69.cleanup_crit_edge, label %if.end77

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end77:                                         ; preds = %if.end69
  %106 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %card.i, align 4
  %call79 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_echo_channels_info, ptr noundef %11) #17
  %call80 = call i32 @snd_ctl_add(ptr noundef %107, ptr noundef %call79) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.end77.cleanup_crit_edge, label %if.end83

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end83:                                         ; preds = %if.end77
  %num_clock_sources = getelementptr inbounds %struct.echoaudio, ptr %11, i32 0, i32 5
  %108 = ptrtoint ptr %num_clock_sources to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %num_clock_sources, align 2
  %input_clock_types = getelementptr inbounds %struct.echoaudio, ptr %11, i32 0, i32 52
  %109 = ptrtoint ptr %input_clock_types to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %input_clock_types, align 2
  %111 = and i16 %110, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %tobool86.not = icmp eq i16 %111, 0
  br i1 %tobool86.not, label %if.end83.for.inc_crit_edge, label %if.then87

if.end83.for.inc_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then87:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #19
  %112 = ptrtoint ptr %num_clock_sources to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %num_clock_sources, align 2
  %inc90 = add i16 %113, 1
  store i16 %inc90, ptr %num_clock_sources, align 2
  %idxprom = zext i16 %113 to i32
  %arrayidx91 = getelementptr %struct.echoaudio, ptr %11, i32 0, i32 6, i32 %idxprom
  %114 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 0, ptr %arrayidx91, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then87, %if.end83.for.inc_crit_edge
  %115 = ptrtoint ptr %input_clock_types to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %input_clock_types, align 2
  %117 = and i16 %116, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %tobool86.not.1 = icmp eq i16 %117, 0
  br i1 %tobool86.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then87.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.1

if.then87.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  %118 = ptrtoint ptr %num_clock_sources to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %num_clock_sources, align 2
  %inc90.1 = add i16 %119, 1
  store i16 %inc90.1, ptr %num_clock_sources, align 2
  %idxprom.1 = zext i16 %119 to i32
  %arrayidx91.1 = getelementptr %struct.echoaudio, ptr %11, i32 0, i32 6, i32 %idxprom.1
  %120 = ptrtoint ptr %arrayidx91.1 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 1, ptr %arrayidx91.1, align 2
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then87.1, %for.inc.for.inc.1_crit_edge
  %121 = ptrtoint ptr %input_clock_types to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %input_clock_types, align 2
  %123 = and i16 %122, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %tobool86.not.2 = icmp eq i16 %123, 0
  br i1 %tobool86.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then87.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.2

if.then87.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #19
  %124 = ptrtoint ptr %num_clock_sources to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %num_clock_sources, align 2
  %inc90.2 = add i16 %125, 1
  store i16 %inc90.2, ptr %num_clock_sources, align 2
  %idxprom.2 = zext i16 %125 to i32
  %arrayidx91.2 = getelementptr %struct.echoaudio, ptr %11, i32 0, i32 6, i32 %idxprom.2
  %126 = ptrtoint ptr %arrayidx91.2 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 2, ptr %arrayidx91.2, align 2
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then87.2, %for.inc.1.for.inc.2_crit_edge
  %127 = ptrtoint ptr %input_clock_types to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %input_clock_types, align 2
  %129 = and i16 %128, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %129)
  %tobool86.not.3 = icmp eq i16 %129, 0
  br i1 %tobool86.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then87.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.3

if.then87.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #19
  %130 = ptrtoint ptr %num_clock_sources to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %num_clock_sources, align 2
  %inc90.3 = add i16 %131, 1
  store i16 %inc90.3, ptr %num_clock_sources, align 2
  %idxprom.3 = zext i16 %131 to i32
  %arrayidx91.3 = getelementptr %struct.echoaudio, ptr %11, i32 0, i32 6, i32 %idxprom.3
  %132 = ptrtoint ptr %arrayidx91.3 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 3, ptr %arrayidx91.3, align 2
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then87.3, %for.inc.2.for.inc.3_crit_edge
  %133 = ptrtoint ptr %input_clock_types to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %input_clock_types, align 2
  %135 = and i16 %134, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %135)
  %tobool86.not.4 = icmp eq i16 %135, 0
  br i1 %tobool86.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then87.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.4

if.then87.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #19
  %136 = ptrtoint ptr %num_clock_sources to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %num_clock_sources, align 2
  %inc90.4 = add i16 %137, 1
  store i16 %inc90.4, ptr %num_clock_sources, align 2
  %idxprom.4 = zext i16 %137 to i32
  %arrayidx91.4 = getelementptr %struct.echoaudio, ptr %11, i32 0, i32 6, i32 %idxprom.4
  %138 = ptrtoint ptr %arrayidx91.4 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 4, ptr %arrayidx91.4, align 2
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then87.4, %for.inc.3.for.inc.4_crit_edge
  %139 = ptrtoint ptr %input_clock_types to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %input_clock_types, align 2
  %141 = and i16 %140, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %141)
  %tobool86.not.5 = icmp eq i16 %141, 0
  br i1 %tobool86.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then87.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.5

if.then87.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #19
  %142 = ptrtoint ptr %num_clock_sources to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %num_clock_sources, align 2
  %inc90.5 = add i16 %143, 1
  store i16 %inc90.5, ptr %num_clock_sources, align 2
  %idxprom.5 = zext i16 %143 to i32
  %arrayidx91.5 = getelementptr %struct.echoaudio, ptr %11, i32 0, i32 6, i32 %idxprom.5
  %144 = ptrtoint ptr %arrayidx91.5 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 5, ptr %arrayidx91.5, align 2
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then87.5, %for.inc.4.for.inc.5_crit_edge
  %145 = ptrtoint ptr %input_clock_types to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %input_clock_types, align 2
  %147 = and i16 %146, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %147)
  %tobool86.not.6 = icmp eq i16 %147, 0
  br i1 %tobool86.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then87.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.6

if.then87.6:                                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #19
  %148 = ptrtoint ptr %num_clock_sources to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %num_clock_sources, align 2
  %inc90.6 = add i16 %149, 1
  store i16 %inc90.6, ptr %num_clock_sources, align 2
  %idxprom.6 = zext i16 %149 to i32
  %arrayidx91.6 = getelementptr %struct.echoaudio, ptr %11, i32 0, i32 6, i32 %idxprom.6
  %150 = ptrtoint ptr %arrayidx91.6 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 6, ptr %arrayidx91.6, align 2
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then87.6, %for.inc.5.for.inc.6_crit_edge
  %151 = ptrtoint ptr %input_clock_types to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %input_clock_types, align 2
  %153 = and i16 %152, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %153)
  %tobool86.not.7 = icmp eq i16 %153, 0
  br i1 %tobool86.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then87.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.7

if.then87.7:                                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #19
  %154 = ptrtoint ptr %num_clock_sources to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %num_clock_sources, align 2
  %inc90.7 = add i16 %155, 1
  store i16 %inc90.7, ptr %num_clock_sources, align 2
  %idxprom.7 = zext i16 %155 to i32
  %arrayidx91.7 = getelementptr %struct.echoaudio, ptr %11, i32 0, i32 6, i32 %idxprom.7
  %156 = ptrtoint ptr %arrayidx91.7 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 7, ptr %arrayidx91.7, align 2
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then87.7, %for.inc.6.for.inc.7_crit_edge
  %157 = ptrtoint ptr %input_clock_types to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %input_clock_types, align 2
  %159 = and i16 %158, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %159)
  %tobool86.not.8 = icmp eq i16 %159, 0
  br i1 %tobool86.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.then87.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.8

if.then87.8:                                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #19
  %160 = ptrtoint ptr %num_clock_sources to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %num_clock_sources, align 2
  %inc90.8 = add i16 %161, 1
  store i16 %inc90.8, ptr %num_clock_sources, align 2
  %idxprom.8 = zext i16 %161 to i32
  %arrayidx91.8 = getelementptr %struct.echoaudio, ptr %11, i32 0, i32 6, i32 %idxprom.8
  %162 = ptrtoint ptr %arrayidx91.8 to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 8, ptr %arrayidx91.8, align 2
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then87.8, %for.inc.7.for.inc.8_crit_edge
  %163 = ptrtoint ptr %input_clock_types to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %input_clock_types, align 2
  %165 = and i16 %164, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %165)
  %tobool86.not.9 = icmp eq i16 %165, 0
  %166 = ptrtoint ptr %num_clock_sources to i32
  call void @__asan_load2_noabort(i32 %166)
  %.pr = load i16, ptr %num_clock_sources, align 2
  br i1 %tobool86.not.9, label %for.inc.8.for.inc.9_crit_edge, label %if.then87.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.9

if.then87.9:                                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #19
  %inc90.9 = add i16 %.pr, 1
  %167 = ptrtoint ptr %num_clock_sources to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %inc90.9, ptr %num_clock_sources, align 2
  %idxprom.9 = zext i16 %.pr to i32
  %arrayidx91.9 = getelementptr %struct.echoaudio, ptr %11, i32 0, i32 6, i32 %idxprom.9
  %168 = ptrtoint ptr %arrayidx91.9 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 9, ptr %arrayidx91.9, align 2
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then87.9, %for.inc.8.for.inc.9_crit_edge
  %169 = phi i16 [ %inc90.9, %if.then87.9 ], [ %.pr, %for.inc.8.for.inc.9_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %169)
  %cmp96 = icmp ugt i16 %169, 1
  br i1 %cmp96, label %if.then98, label %for.inc.9.if.end107_crit_edge

for.inc.9.if.end107_crit_edge:                    ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end107

if.then98:                                        ; preds = %for.inc.9
  %call99 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_echo_clock_source_switch, ptr noundef %11) #17
  %clock_src_ctl = getelementptr inbounds %struct.echoaudio, ptr %11, i32 0, i32 8
  %170 = ptrtoint ptr %clock_src_ctl to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %call99, ptr %clock_src_ctl, align 4
  %171 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %card.i, align 4
  %call102 = call i32 @snd_ctl_add(ptr noundef %172, ptr noundef %call99) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp103 = icmp slt i32 %call102, 0
  br i1 %cmp103, label %if.then98.cleanup_crit_edge, label %if.then98.if.end107_crit_edge

if.then98.if.end107_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end107

if.then98.cleanup_crit_edge:                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end107:                                        ; preds = %if.then98.if.end107_crit_edge, %for.inc.9.if.end107_crit_edge
  %173 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %card.i, align 4
  %call109 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_echo_spdif_mode_switch, ptr noundef %11) #17
  %call110 = call i32 @snd_ctl_add(ptr noundef %174, ptr noundef %call109) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %if.end107.cleanup_crit_edge, label %if.end114

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end114:                                        ; preds = %if.end107
  %175 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %card, align 4
  %call115 = call i32 @snd_card_register(ptr noundef %176) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %cmp116 = icmp slt i32 %call115, 0
  br i1 %cmp116, label %if.end114.cleanup_crit_edge, label %do.end122

if.end114.cleanup_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end122:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #19
  %177 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %card, align 4
  %dev123 = getelementptr inbounds %struct.snd_card, ptr %178, i32 0, i32 27
  %179 = ptrtoint ptr %dev123 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dev123, align 8
  %longname124 = getelementptr inbounds %struct.snd_card, ptr %178, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %180, ptr noundef nonnull @.str.14, ptr noundef %longname124) #22
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %181 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %11, ptr %driver_data.i.i, align 4
  %182 = load i32, ptr @snd_echo_probe.dev, align 4
  %inc126 = add i32 %182, 1
  store i32 %inc126, ptr @snd_echo_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end122, %if.end114.cleanup_crit_edge, %if.end107.cleanup_crit_edge, %if.then98.cleanup_crit_edge, %if.end77.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %do.end35, %do.end, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call.i, %do.end35 ], [ 0, %do.end122 ], [ -2, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ %call42, %if.end39.cleanup_crit_edge ], [ %call48, %if.end45.cleanup_crit_edge ], [ %call54, %if.end51.cleanup_crit_edge ], [ %call60, %if.end57.cleanup_crit_edge ], [ %call66, %if.end63.cleanup_crit_edge ], [ %call74, %if.end69.cleanup_crit_edge ], [ %call80, %if.end77.cleanup_crit_edge ], [ %call102, %if.then98.cleanup_crit_edge ], [ %call110, %if.end107.cleanup_crit_edge ], [ %call115, %if.end114.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #17
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_echo_create(ptr noundef %card, ptr noundef %pci) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %call = tail call i32 @pci_write_config_byte(ptr noundef %pci, i32 noundef 13, i8 noundef zeroext -64) #17
  %call1 = tail call i32 @pcim_enable_device(ptr noundef %pci) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pci_set_master(ptr noundef %pci) #17
  tail call void @__raw_spin_lock_init(ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef nonnull @snd_echo_create.__key, i16 noundef signext 3) #17
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
  tail call void @__mutex_init(ptr noundef %mode_mutex, ptr noundef nonnull @.str.19, ptr noundef nonnull @snd_echo_create.__key.18) #17
  %can_set_rate = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %can_set_rate to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %can_set_rate, align 2
  %call8 = tail call i32 @pci_request_regions(ptr noundef %pci, ptr noundef nonnull @.str.20) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end

cond.false:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
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
  %call25 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %8, i32 noundef %14) #17
  %dsp_registers = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 60
  %15 = ptrtoint ptr %dsp_registers to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call25, ptr %dsp_registers, align 4
  %tobool.not = icmp eq ptr %call25, null
  br i1 %tobool.not, label %do.end30, label %if.end33

do.end30:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %card3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card3, align 4
  %dev32 = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev32, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.21) #22
  br label %cleanup

if.end33:                                         ; preds = %cond.end
  %irq34 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %20 = ptrtoint ptr %irq34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq34, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %21, ptr noundef nonnull @snd_echo_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool36.not = icmp eq i32 %call.i, 0
  br i1 %tobool36.not, label %if.end43, label %do.end40

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  %22 = ptrtoint ptr %card3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card3, align 4
  %dev42 = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev42, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.24) #22
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_echo_create.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_echo_create, %if.then52)) #17
          to label %do.end59 [label %if.then52], !srcloc !467

if.then52:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_echo_create.__UNIQUE_ID_ddebug276, ptr noundef %31, ptr noundef nonnull @.str.26, ptr noundef %33, i32 noundef %35, i32 noundef %conv) #17
  br label %do.end59

do.end59:                                         ; preds = %if.then52, %if.end43
  %private_free = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 10
  %38 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @snd_echo_free, ptr %private_free, align 4
  %call.i140 = tail call ptr @snd_devm_alloc_dir_pages(ptr noundef %dev, i32 noundef 2, i32 noundef 0, i32 noundef 3072) #17
  %commpage_dma_buf = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 16
  %39 = ptrtoint ptr %commpage_dma_buf to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i140, ptr %commpage_dma_buf, align 4
  %tobool63.not = icmp eq ptr %call.i140, null
  br i1 %tobool63.not, label %do.end59.cleanup_crit_edge, label %if.end65

do.end59.cleanup_crit_edge:                       ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end65:                                         ; preds = %do.end59
  %addr = getelementptr inbounds %struct.snd_dma_buffer, ptr %call.i140, i32 0, i32 2
  %40 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %addr, align 4
  %comm_page_phys = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 59
  %42 = ptrtoint ptr %comm_page_phys to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %comm_page_phys, align 4
  %area = getelementptr inbounds %struct.snd_dma_buffer, ptr %call.i140, i32 0, i32 1
  %43 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %area, align 4
  %comm_page = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 26
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
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %50)
  %cmp.not.i = icmp eq i16 %50, 48
  br i1 %cmp.not.i, label %if.end22.i, label %do.end.i, !prof !468

do.end.i:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 43, i32 noundef 9, ptr noundef null) #17
  br label %do.end82

if.end22.i:                                       ; preds = %if.end65
  %device = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 8
  %51 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %device, align 2
  %card_name.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 12
  %53 = ptrtoint ptr %card_name.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.20, ptr %card_name.i.i, align 4
  %bad_board.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 37
  %dsp_code.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 56
  %54 = ptrtoint ptr %dsp_code.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %dsp_code.i.i, align 4
  %asic_loaded.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 36
  %55 = ptrtoint ptr %asic_loaded.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %asic_loaded.i.i, align 2
  %56 = call ptr @memset(ptr %44, i32 0, i32 3072)
  %57 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %comm_page, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 786432, ptr %58, align 4
  %60 = load ptr, ptr %comm_page, align 4
  %handshake.i.i = getelementptr inbounds %struct.comm_page, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %handshake.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %handshake.i.i, align 4
  %62 = load ptr, ptr %comm_page, align 4
  %midi_out_free_count.i.i = getelementptr inbounds %struct.comm_page, ptr %62, i32 0, i32 29
  %63 = ptrtoint ptr %midi_out_free_count.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1073741824, ptr %midi_out_free_count.i.i, align 4
  %64 = load ptr, ptr %comm_page, align 4
  %sample_rate.i.i = getelementptr inbounds %struct.comm_page, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %sample_rate.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1152122880, ptr %sample_rate.i.i, align 4
  %66 = load ptr, ptr %comm_page, align 4
  %monitors.i.i = getelementptr inbounds %struct.comm_page, ptr %66, i32 0, i32 15
  %67 = call ptr @memset(ptr %monitors.i.i, i32 128, i32 384)
  %68 = load ptr, ptr %comm_page, align 4
  %vmixer.i.i = getelementptr inbounds %struct.comm_page, ptr %68, i32 0, i32 34
  %69 = call ptr @memset(ptr %vmixer.i.i, i32 128, i32 64)
  %device_id29.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 54
  %70 = ptrtoint ptr %device_id29.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %52, ptr %device_id29.i, align 2
  %subdevice_id30.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 55
  %71 = ptrtoint ptr %subdevice_id30.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %49, ptr %subdevice_id30.i, align 4
  %72 = ptrtoint ptr %bad_board.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %bad_board.i.i, align 1
  %has_midi.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 44
  %73 = ptrtoint ptr %has_midi.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %has_midi.i, align 2
  %dsp_code_to_load.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 57
  %74 = ptrtoint ptr %dsp_code_to_load.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 0, ptr %dsp_code_to_load.i, align 4
  %input_clock_types.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 52
  %75 = ptrtoint ptr %input_clock_types.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 15, ptr %input_clock_types.i, align 2
  %output_clock_types.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 53
  %76 = ptrtoint ptr %output_clock_types.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 6, ptr %output_clock_types.i, align 4
  %call31.i = tail call fastcc i32 @load_firmware(ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  br i1 %cmp32.i, label %if.end22.i.do.end82_crit_edge, label %if.end76

if.end22.i.do.end82_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end82

if.end76:                                         ; preds = %if.end22.i
  %77 = ptrtoint ptr %bad_board.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %bad_board.i.i, align 1
  %professional_spdif.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 38
  %78 = ptrtoint ptr %professional_spdif.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %professional_spdif.i, align 4
  %input_gain.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 47
  %input_clock.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 33
  %79 = call ptr @memset(ptr %input_gain.i.i, i32 128, i32 2112)
  %80 = ptrtoint ptr %input_clock.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %input_clock.i.i, align 1
  %output_clock.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 34
  %81 = ptrtoint ptr %output_clock.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %output_clock.i.i, align 4
  %sample_rate.i.i142 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 29
  %82 = ptrtoint ptr %sample_rate.i.i142 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 44100, ptr %sample_rate.i.i142, align 4
  %call.i.i = tail call fastcc i32 @restore_dsp_rettings(ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp77 = icmp slt i32 %call.i.i, 0
  br i1 %cmp77, label %if.end76.do.end82_crit_edge, label %if.end76.cleanup_crit_edge

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end76.do.end82_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end82

do.end82:                                         ; preds = %if.end76.do.end82_crit_edge, %if.end22.i.do.end82_crit_edge, %do.end.i
  %err.0148 = phi i32 [ %call.i.i, %if.end76.do.end82_crit_edge ], [ %call31.i, %if.end22.i.do.end82_crit_edge ], [ -19, %do.end.i ]
  %dev83 = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 27
  %83 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev83, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.28, i32 noundef %err.0148) #22
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
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %dev_id) #17
  %dsp_registers.i.i = getelementptr inbounds %struct.echoaudio, ptr %dev_id, i32 0, i32 60
  %0 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %1, i32 5
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %3 = and i32 %2, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.then.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then.i:                                        ; preds = %entry
  %comm_page.i = getelementptr inbounds %struct.echoaudio, ptr %dev_id, i32 0, i32 26
  %4 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %comm_page.i, align 4
  %midi_input.i = getelementptr inbounds %struct.comm_page, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %midi_input.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %midi_input.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool1.not.i = icmp eq i16 %7, 0
  br i1 %tobool1.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #17
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %8)
  %cmp.i.i = icmp sgt i16 %8, 255
  br i1 %cmp.i.i, label %do.end.i.i, label %for.cond.preheader.i.i, !prof !471

for.cond.preheader.i.i:                           ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %cmp25.not58.i.i = icmp slt i16 %8, 1
  br i1 %cmp25.not58.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %mtc_state.i.i.i = getelementptr inbounds %struct.echoaudio, ptr %dev_id, i32 0, i32 63
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 123, i32 noundef 9, ptr noundef null) #17
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %received.060.i.i = phi i16 [ 0, %for.body.lr.ph.i.i ], [ %received.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.059.i.i = phi i16 [ 1, %for.body.lr.ph.i.i ], [ %inc37.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %conv23.i.i = sext i16 %i.059.i.i to i32
  %9 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %comm_page.i, align 4
  %arrayidx29.i.i = getelementptr %struct.comm_page, ptr %10, i32 0, i32 18, i32 %conv23.i.i
  %11 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx29.i.i, align 2
  %13 = lshr i16 %12, 8
  %14 = ptrtoint ptr %mtc_state.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %mtc_state.i.i.i, align 4
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i16 %15, label %for.body.i.i.if.end33.i.i_crit_edge [
    i16 0, label %sw.bb.i.i.i
    i16 1, label %for.body.i.i.mtc_process_data.exit.thread54.i.i_crit_edge
    i16 2, label %sw.bb6.i.i.i
    i16 3, label %for.body.i.i.mtc_process_data.exit.i.i_crit_edge
  ]

for.body.i.i.mtc_process_data.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtc_process_data.exit.i.i

for.body.i.i.mtc_process_data.exit.thread54.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtc_process_data.exit.thread54.i.i

for.body.i.i.if.end33.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33.i.i

sw.bb.i.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3840, i16 %12)
  %cmp.i.i.i = icmp eq i16 %12, -3840
  br i1 %cmp.i.i.i, label %sw.bb.i.i.i.mtc_process_data.exit.i.i_crit_edge, label %sw.bb.i.i.i.if.end33.i.i_crit_edge

sw.bb.i.i.i.if.end33.i.i_crit_edge:               ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33.i.i

sw.bb.i.i.i.mtc_process_data.exit.i.i_crit_edge:  ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtc_process_data.exit.i.i

sw.bb6.i.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mtc_process_data.exit.thread54.i.i

mtc_process_data.exit.thread54.i.i:               ; preds = %sw.bb6.i.i.i, %for.body.i.i.mtc_process_data.exit.thread54.i.i_crit_edge
  %.sink.i.ph.i.i = phi i16 [ 2, %for.body.i.i.mtc_process_data.exit.thread54.i.i_crit_edge ], [ 3, %sw.bb6.i.i.i ]
  %17 = ptrtoint ptr %mtc_state.i.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %.sink.i.ph.i.i, ptr %mtc_state.i.i.i, align 4
  br label %for.inc.i.i

mtc_process_data.exit.i.i:                        ; preds = %sw.bb.i.i.i.mtc_process_data.exit.i.i_crit_edge, %for.body.i.i.mtc_process_data.exit.i.i_crit_edge
  %.sink.i.i.i = phi i16 [ 1, %sw.bb.i.i.i.mtc_process_data.exit.i.i_crit_edge ], [ 0, %for.body.i.i.mtc_process_data.exit.i.i_crit_edge ]
  %18 = ptrtoint ptr %mtc_state.i.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %.sink.i.i.i, ptr %mtc_state.i.i.i, align 4
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %mtc_process_data.exit.i.i, %sw.bb.i.i.i.if.end33.i.i_crit_edge, %for.body.i.i.if.end33.i.i_crit_edge
  %conv34.i.i = trunc i16 %13 to i8
  %inc.i.i = add i16 %received.060.i.i, 1
  %idxprom35.i.i = sext i16 %received.060.i.i to i32
  %arrayidx36.i.i = getelementptr %struct.echoaudio, ptr %dev_id, i32 0, i32 64, i32 %idxprom35.i.i
  %19 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv34.i.i, ptr %arrayidx36.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end33.i.i, %mtc_process_data.exit.thread54.i.i
  %received.1.i.i = phi i16 [ %inc.i.i, %if.end33.i.i ], [ %received.060.i.i, %mtc_process_data.exit.thread54.i.i ]
  %inc37.i.i = add i16 %i.059.i.i, 1
  %cmp25.not.i.i = icmp sgt i16 %inc37.i.i, %8
  br i1 %cmp25.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %received.0.lcssa.i.i = phi i16 [ 0, %for.cond.preheader.i.i.for.end.i.i_crit_edge ], [ %received.1.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %conv38.i.i = sext i16 %received.0.lcssa.i.i to i32
  br label %if.end.i

if.end.i:                                         ; preds = %for.end.i.i, %do.end.i.i, %if.then.i.if.end.i_crit_edge
  %st.0.i = phi i32 [ 0, %if.then.i.if.end.i_crit_edge ], [ 0, %do.end.i.i ], [ %conv38.i.i, %for.end.i.i ]
  %20 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %comm_page.i, align 4
  %midi_input5.i = getelementptr inbounds %struct.comm_page, ptr %21, i32 0, i32 18
  %22 = ptrtoint ptr %midi_input5.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %midi_input5.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !472
  tail call void @arm_heavy_mb() #17
  br label %for.body.i13.i

for.body.i13.i:                                   ; preds = %if.end.i.i.for.body.i13.i_crit_edge, %if.end.i
  %i.09.i.i = phi i32 [ 0, %if.end.i ], [ %inc.i14.i, %if.end.i.i.for.body.i13.i_crit_edge ]
  %23 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %24, i32 6
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i.i) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %26 = and i32 %25, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i13.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !473
  tail call void @arm_heavy_mb() #17
  %27 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i8.i.i = getelementptr i32, ptr %28, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i.i, i32 1937768448) #17, !srcloc !474
  br label %service_irq.exit

if.end.i.i:                                       ; preds = %for.body.i13.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #17
  %inc.i14.i = add nuw nsw i32 %i.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i14.i, 100000
  br i1 %exitcond.not.i.i, label %do.end3.i.i, label %if.end.i.i.for.body.i13.i_crit_edge

if.end.i.i.for.body.i13.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i13.i

do.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %card.i.i = getelementptr inbounds %struct.echoaudio, ptr %dev_id, i32 0, i32 11
  %30 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %card.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %31, i32 0, i32 27
  %32 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.33) #22
  br label %service_irq.exit

service_irq.exit:                                 ; preds = %do.end3.i.i, %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %st.0.i)
  %cmp = icmp slt i32 %st.0.i, 0
  br i1 %cmp, label %service_irq.exit.if.then_crit_edge, label %service_irq.exit.for.body_crit_edge

service_irq.exit.for.body_crit_edge:              ; preds = %service_irq.exit
  br label %for.body

service_irq.exit.if.then_crit_edge:               ; preds = %service_irq.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

if.then:                                          ; preds = %service_irq.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #17
  br label %cleanup

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %service_irq.exit.for.body_crit_edge
  %ss.050 = phi i32 [ %inc, %if.end8.for.body_crit_edge ], [ 0, %service_irq.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.echoaudio, ptr %dev_id, i32 0, i32 1, i32 %ss.050
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %35, null
  br i1 %tobool.not, label %for.body.if.end8_crit_edge, label %land.lhs.true

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

land.lhs.true:                                    ; preds = %for.body
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %35, i32 0, i32 11
  %36 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %runtime1.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %37, i32 0, i32 44
  %38 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %private_data.i, align 8
  %state.i = getelementptr inbounds %struct.audiopipe, ptr %39, i32 0, i32 10
  %40 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %41)
  %cmp.not.i = icmp eq i8 %41, 2
  br i1 %cmp.not.i, label %if.end.i44, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

if.end.i44:                                       ; preds = %land.lhs.true
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %37, i32 0, i32 16
  %42 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %37, i32 0, i32 21
  %44 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %45, %43
  %div1.i.i = lshr i32 %mul.i.i, 3
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %39, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %47, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #17
  %last_period.i = getelementptr inbounds %struct.audiopipe, ptr %39, i32 0, i32 1
  %51 = ptrtoint ptr %last_period.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %last_period.i, align 4
  %sub.i = sub i32 %50, %52
  %rem.i = urem i32 %sub.i, %div1.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %rem.i)
  %cmp4.i = icmp eq i32 %sub.i, %rem.i
  br i1 %cmp4.i, label %if.end.i44.if.end8_crit_edge, label %if.then5

if.end.i44.if.end8_crit_edge:                     ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

if.then5:                                         ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #19
  %sub3.i = sub i32 %52, %rem.i
  %add.i = add i32 %sub3.i, %sub.i
  %53 = ptrtoint ptr %last_period.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add.i, ptr %last_period.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #17
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %35) #17
  tail call void @_raw_spin_lock(ptr noundef %dev_id) #17
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.i44.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge, %for.body.if.end8_crit_edge
  %inc = add nuw nsw i32 %ss.050, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %if.end8
  tail call void @_raw_spin_unlock(ptr noundef %dev_id) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %st.0.i)
  %cmp10 = icmp sgt i32 %st.0.i, 0
  br i1 %cmp10, label %land.lhs.true11, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true11:                                  ; preds = %for.end
  %midi_in = getelementptr inbounds %struct.echoaudio, ptr %dev_id, i32 0, i32 19
  %54 = ptrtoint ptr %midi_in to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %midi_in, align 4
  %tobool12.not = icmp eq ptr %55, null
  br i1 %tobool12.not, label %land.lhs.true11.cleanup_crit_edge, label %if.then13

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #19
  %midi_buffer = getelementptr inbounds %struct.echoaudio, ptr %dev_id, i32 0, i32 64
  %call15 = tail call i32 @snd_rawmidi_receive(ptr noundef nonnull %55, ptr noundef %midi_buffer, i32 noundef %st.0.i) #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_echo_interrupt.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_echo_interrupt, %if.then20)) #17
          to label %cleanup [label %if.then20], !srcloc !467

if.then20:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #19
  %card = getelementptr inbounds %struct.echoaudio, ptr %dev_id, i32 0, i32 11
  %56 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %57, i32 0, i32 27
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_echo_interrupt.__UNIQUE_ID_ddebug275, ptr noundef %59, ptr noundef nonnull @.str.31, i32 noundef %st.0.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.then13, %land.lhs.true11.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then20 ], [ 1, %land.lhs.true11.cleanup_crit_edge ], [ 1, %for.end.cleanup_crit_edge ], [ 1, %if.then13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_echo_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %comm_page = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %comm_page, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  %active_mask.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 61
  %4 = ptrtoint ptr %active_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %active_mask.i, align 4
  %call.i = tail call fastcc i32 @stop_transport(ptr noundef %1, i32 noundef %5) #17
  %meters_enabled5.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 35
  %6 = ptrtoint ptr %meters_enabled5.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %meters_enabled5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool7.not.i.i, label %if.then.set_meters_on.exit.i_crit_edge, label %if.then8.i.i

if.then.set_meters_on.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %set_meters_on.exit.i

if.then8.i.i:                                     ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !472
  tail call void @arm_heavy_mb() #17
  %dsp_registers.i.i22.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 60
  br label %for.body.i26.i.i

for.body.i26.i.i:                                 ; preds = %if.end.i31.i.i.for.body.i26.i.i_crit_edge, %if.then8.i.i
  %i.09.i23.i.i = phi i32 [ 0, %if.then8.i.i ], [ %inc.i29.i.i, %if.end.i31.i.i.for.body.i26.i.i_crit_edge ]
  %8 = ptrtoint ptr %dsp_registers.i.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dsp_registers.i.i22.i.i, align 4
  %arrayidx.i.i24.i.i = getelementptr i32, ptr %9, i32 6
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i24.i.i) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i25.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i25.i.i, label %if.then.i28.i.i, label %if.end.i31.i.i

if.then.i28.i.i:                                  ; preds = %for.body.i26.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !473
  tail call void @arm_heavy_mb() #17
  %12 = ptrtoint ptr %dsp_registers.i.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dsp_registers.i.i22.i.i, align 4
  %arrayidx.i8.i27.i.i = getelementptr i32, ptr %13, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i27.i.i, i32 2063597568) #17, !srcloc !474
  br label %send_vector.exit36.i.i

if.end.i31.i.i:                                   ; preds = %for.body.i26.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #17
  %inc.i29.i.i = add nuw nsw i32 %i.09.i23.i.i, 1
  %exitcond.not.i30.i.i = icmp eq i32 %inc.i29.i.i, 100000
  br i1 %exitcond.not.i30.i.i, label %do.end3.i34.i.i, label %if.end.i31.i.i.for.body.i26.i.i_crit_edge

if.end.i31.i.i.for.body.i26.i.i_crit_edge:        ; preds = %if.end.i31.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i26.i.i

do.end3.i34.i.i:                                  ; preds = %if.end.i31.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %card.i32.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %card.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card.i32.i.i, align 4
  %dev.i33.i.i = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %dev.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i33.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.33) #22
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
  tail call fastcc void @enable_midi_input(ptr noundef %1, i8 noundef zeroext 0) #17
  %dsp_code.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 56
  %25 = ptrtoint ptr %dsp_code.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dsp_code.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %set_meters_on.exit.i.if.end_crit_edge, label %if.then.i

set_meters_on.exit.i.if.end_crit_edge:            ; preds = %set_meters_on.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then.i:                                        ; preds = %set_meters_on.exit.i
  %27 = ptrtoint ptr %dsp_code.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %dsp_code.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !472
  tail call void @arm_heavy_mb() #17
  %dsp_registers.i.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 60
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.then.i
  %i.09.i.i = phi i32 [ 0, %if.then.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %28 = ptrtoint ptr %dsp_registers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dsp_registers.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %29, i32 6
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i.i) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %31 = and i32 %30, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !473
  tail call void @arm_heavy_mb() #17
  %32 = ptrtoint ptr %dsp_registers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dsp_registers.i.i.i, align 4
  %arrayidx.i8.i.i = getelementptr i32, ptr %33, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i.i, i32 -117440512) #17, !srcloc !474
  br label %if.end

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #17
  %inc.i.i = add nuw nsw i32 %i.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 100000
  br i1 %exitcond.not.i.i, label %do.end3.i.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

do.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %card.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %35 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %card.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %36, i32 0, i32 27
  %37 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.33) #22
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call3 = tail call ptr @free_irq(i32 noundef %40, ptr noundef %1) #17
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end.if.end4_crit_edge
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end4
  %i.015.i = phi i32 [ 0, %if.end4 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 62, i32 %i.015.i
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i10 = icmp eq ptr %42, null
  br i1 %tobool.not.i10, label %for.body.i.for.inc.i_crit_edge, label %if.then.i11

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.then.i11:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @release_firmware(ptr noundef nonnull %42) #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @free_firmware_cache.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_echo_free, %if.then6.i)) #17
          to label %for.inc.i [label %if.then6.i], !srcloc !467

if.then6.i:                                       ; preds = %if.then.i11
  call void @__sanitizer_cov_trace_pc() #19
  %43 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %44, i32 0, i32 27
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @free_firmware_cache.__UNIQUE_ID_ddebug265, ptr noundef %46, ptr noundef nonnull @.str.43, i32 noundef %i.015.i) #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %if.then.i11, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %free_firmware_cache.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

free_firmware_cache.exit:                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_receive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_vector(ptr nocapture noundef readonly %chip, i32 noundef %command) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !472
  tail call void @arm_heavy_mb() #17
  %dsp_registers.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 60
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.09 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %0 = ptrtoint ptr %dsp_registers.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_registers.i, align 4
  %arrayidx.i = getelementptr i32, ptr %1, i32 6
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !473
  tail call void @arm_heavy_mb() #17
  %4 = tail call i32 @llvm.bswap.i32(i32 %command) #17
  %5 = ptrtoint ptr %dsp_registers.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dsp_registers.i, align 4
  %arrayidx.i8 = getelementptr i32, ptr %6, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8, i32 %4) #17, !srcloc !474
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #17
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, 100000
  br i1 %exitcond.not, label %do.end3, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

do.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %card = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.33) #22
  br label %cleanup

cleanup:                                          ; preds = %do.end3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -16, %do.end3 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stop_transport(ptr nocapture noundef %chip, i32 noundef %channel_mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %comm_page.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 26
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.03.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !475
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
  tail call void %4(i32 noundef 214748) #17
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20000
  br i1 %exitcond.not.i, label %wait_handshake.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

wait_handshake.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %5 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.38) #22
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !472
  tail call void @arm_heavy_mb() #17
  %dsp_registers.i.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 60
  br label %for.body.i39

for.body.i39:                                     ; preds = %if.end.i42.for.body.i39_crit_edge, %if.then6
  %i.09.i = phi i32 [ 0, %if.then6 ], [ %inc.i40, %if.end.i42.for.body.i39_crit_edge ]
  %21 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %22, i32 6
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %24 = and i32 %23, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i38 = icmp eq i32 %24, 0
  br i1 %tobool.not.i38, label %if.then.i, label %if.end.i42

if.then.i:                                        ; preds = %for.body.i39
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !473
  tail call void @arm_heavy_mb() #17
  %25 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i8.i = getelementptr i32, ptr %26, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i, i32 -150994944) #17, !srcloc !474
  br label %for.body.i50.preheader

if.end.i42:                                       ; preds = %for.body.i39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #17
  %inc.i40 = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i41 = icmp eq i32 %inc.i40, 100000
  br i1 %exitcond.not.i41, label %do.end3.i, label %if.end.i42.for.body.i39_crit_edge

if.end.i42.for.body.i39_crit_edge:                ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i39

do.end3.i:                                        ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #19
  %card.i43 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %28 = ptrtoint ptr %card.i43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card.i43, align 4
  %dev.i44 = getelementptr inbounds %struct.snd_card, ptr %29, i32 0, i32 27
  %30 = ptrtoint ptr %dev.i44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i44, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.33) #22
  br label %for.body.i50.preheader

for.body.i50.preheader:                           ; preds = %do.end3.i, %if.then.i
  br label %for.body.i50

for.body.i50:                                     ; preds = %if.end.i53.for.body.i50_crit_edge, %for.body.i50.preheader
  %i.03.i47 = phi i32 [ %inc.i51, %if.end.i53.for.body.i50_crit_edge ], [ 0, %for.body.i50.preheader ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !475
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
  tail call void %36(i32 noundef 214748) #17
  %inc.i51 = add nuw nsw i32 %i.03.i47, 1
  %exitcond.not.i52 = icmp eq i32 %inc.i51, 20000
  br i1 %exitcond.not.i52, label %wait_handshake.exit58, label %if.end.i53.for.body.i50_crit_edge

if.end.i53.for.body.i50_crit_edge:                ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i50

wait_handshake.exit58:                            ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #19
  %card.i54 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %37 = ptrtoint ptr %card.i54 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %card.i54, align 4
  %dev.i55 = getelementptr inbounds %struct.snd_card, ptr %38, i32 0, i32 27
  %39 = ptrtoint ptr %dev.i55 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i55, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.38) #22
  br label %return

if.end11:                                         ; preds = %for.body.i50
  call void @__sanitizer_cov_trace_pc() #19
  %neg = xor i32 %channel_mask, -1
  %active_mask = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 61
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
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stop_transport.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@stop_transport, %if.then21)) #17
          to label %return [label %if.then21], !srcloc !467

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %card = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %48 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %49, i32 0, i32 27
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stop_transport.__UNIQUE_ID_ddebug250, ptr noundef %51, ptr noundef nonnull @.str.37) #17
  br label %return

return:                                           ; preds = %if.then21, %do.body, %if.end11, %wait_handshake.exit58, %wait_handshake.exit
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -5, %wait_handshake.exit ], [ -5, %wait_handshake.exit58 ], [ 0, %if.then21 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_meters_on(ptr nocapture noundef %chip, i8 noundef zeroext %on) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %on)
  %cond = icmp eq i8 %on, 0
  %meters_enabled5 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 35
  %0 = ptrtoint ptr %meters_enabled5 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %meters_enabled5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool7.not = icmp eq i8 %1, 0
  br i1 %cond, label %land.lhs.true4, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool7.not, label %if.then, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.then:                                          ; preds = %land.lhs.true
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !472
  tail call void @arm_heavy_mb() #17
  %dsp_registers.i.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 60
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then
  %i.09.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %3, i32 6
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !473
  tail call void @arm_heavy_mb() #17
  %6 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i8.i = getelementptr i32, ptr %7, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i, i32 2030043136) #17, !srcloc !474
  br label %send_vector.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #17
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100000
  br i1 %exitcond.not.i, label %do.end3.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

do.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %9 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.33) #22
  br label %send_vector.exit

send_vector.exit:                                 ; preds = %do.end3.i, %if.then.i
  %13 = ptrtoint ptr %meters_enabled5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %meters_enabled5, align 1
  br label %if.end13

land.lhs.true4:                                   ; preds = %entry
  br i1 %tobool7.not, label %land.lhs.true4.if.end13_crit_edge, label %if.then8

land.lhs.true4.if.end13_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.then8:                                         ; preds = %land.lhs.true4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !472
  tail call void @arm_heavy_mb() #17
  %dsp_registers.i.i22 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 60
  br label %for.body.i26

for.body.i26:                                     ; preds = %if.end.i31.for.body.i26_crit_edge, %if.then8
  %i.09.i23 = phi i32 [ 0, %if.then8 ], [ %inc.i29, %if.end.i31.for.body.i26_crit_edge ]
  %14 = ptrtoint ptr %dsp_registers.i.i22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dsp_registers.i.i22, align 4
  %arrayidx.i.i24 = getelementptr i32, ptr %15, i32 6
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i24) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i25 = icmp eq i32 %17, 0
  br i1 %tobool.not.i25, label %if.then.i28, label %if.end.i31

if.then.i28:                                      ; preds = %for.body.i26
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !473
  tail call void @arm_heavy_mb() #17
  %18 = ptrtoint ptr %dsp_registers.i.i22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dsp_registers.i.i22, align 4
  %arrayidx.i8.i27 = getelementptr i32, ptr %19, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i27, i32 2063597568) #17, !srcloc !474
  br label %send_vector.exit36

if.end.i31:                                       ; preds = %for.body.i26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #17
  %inc.i29 = add nuw nsw i32 %i.09.i23, 1
  %exitcond.not.i30 = icmp eq i32 %inc.i29, 100000
  br i1 %exitcond.not.i30, label %do.end3.i34, label %if.end.i31.for.body.i26_crit_edge

if.end.i31.for.body.i26_crit_edge:                ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i26

do.end3.i34:                                      ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #19
  %card.i32 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %21 = ptrtoint ptr %card.i32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card.i32, align 4
  %dev.i33 = getelementptr inbounds %struct.snd_card, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %dev.i33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i33, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.33) #22
  br label %send_vector.exit36

send_vector.exit36:                               ; preds = %do.end3.i34, %if.then.i28
  %25 = ptrtoint ptr %meters_enabled5 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %meters_enabled5, align 1
  %comm_page = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 26
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
define internal fastcc void @enable_midi_input(ptr nocapture noundef %chip, i8 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @enable_midi_input.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@enable_midi_input, %if.then)) #17
          to label %do.end [label %if.then], !srcloc !467

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %card = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %conv = zext i8 %enable to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @enable_midi_input.__UNIQUE_ID_ddebug279, ptr noundef %3, ptr noundef nonnull @.str.41, i32 noundef %conv) #17
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %comm_page.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 26
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %do.end
  %i.03.i = phi i32 [ 0, %do.end ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !475
  %4 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %comm_page.i, align 4
  %handshake.i = getelementptr inbounds %struct.comm_page, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %handshake.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handshake.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end6

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #17
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20000
  br i1 %exitcond.not.i, label %wait_handshake.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

wait_handshake.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %9 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.38) #22
  br label %return

if.end6:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool7.not = icmp eq i8 %enable, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  %mtc_state = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 63
  %13 = ptrtoint ptr %mtc_state to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %mtc_state, align 4
  %14 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %comm_page.i, align 4
  %flags = getelementptr inbounds %struct.comm_page, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %or = or i32 %17, 16777216
  store i32 %or, ptr %flags, align 4
  br label %if.end11

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  %18 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %comm_page.i, align 4
  %flags10 = getelementptr inbounds %struct.comm_page, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags10, align 4
  %and = and i32 %21, -16777217
  store i32 %and, ptr %flags10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  %22 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %comm_page.i, align 4
  %handshake.i3 = getelementptr inbounds %struct.comm_page, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %handshake.i3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %handshake.i3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !472
  tail call void @arm_heavy_mb() #17
  %dsp_registers.i.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 60
  br label %for.body.i5

for.body.i5:                                      ; preds = %if.end.i8.for.body.i5_crit_edge, %if.end11
  %i.09.i = phi i32 [ 0, %if.end11 ], [ %inc.i6, %if.end.i8.for.body.i5_crit_edge ]
  %25 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %26, i32 6
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %28 = and i32 %27, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i4 = icmp eq i32 %28, 0
  br i1 %tobool.not.i4, label %if.then.i, label %if.end.i8

if.then.i:                                        ; preds = %for.body.i5
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !473
  tail call void @arm_heavy_mb() #17
  %29 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i8.i = getelementptr i32, ptr %30, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i, i32 -50331648) #17, !srcloc !474
  br label %return

if.end.i8:                                        ; preds = %for.body.i5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #17
  %inc.i6 = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i7 = icmp eq i32 %inc.i6, 100000
  br i1 %exitcond.not.i7, label %do.end3.i, label %if.end.i8.for.body.i5_crit_edge

if.end.i8.for.body.i5_crit_edge:                  ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i5

do.end3.i:                                        ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #19
  %card.i9 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %32 = ptrtoint ptr %card.i9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %card.i9, align 4
  %dev.i10 = getelementptr inbounds %struct.snd_card, ptr %33, i32 0, i32 27
  %34 = ptrtoint ptr %dev.i10 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i10, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.33) #22
  br label %return

return:                                           ; preds = %do.end3.i, %if.then.i, %wait_handshake.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_handshake(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %comm_page = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 26
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !475
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #17
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 20000
  br i1 %exitcond.not, label %do.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %card = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.38) #22
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_devm_alloc_dir_pages(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @load_firmware(ptr noundef %chip) unnamed_addr #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #17
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !465
  %comm_page = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 26
  %1 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %comm_page, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !471

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 494, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

if.end23:                                         ; preds = %entry
  %dsp_code = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 56
  %3 = ptrtoint ptr %dsp_code to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dsp_code, align 4
  %tobool24.not = icmp eq ptr %4, null
  br i1 %tobool24.not, label %if.end23.if.end29_crit_edge, label %if.then25

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29

if.then25:                                        ; preds = %if.end23
  %call = tail call fastcc i32 @check_asic_status(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then25.cleanup_crit_edge, label %if.end27

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end27:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #19
  %5 = ptrtoint ptr %dsp_code to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %dsp_code, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %if.end23.if.end29_crit_edge
  %dsp_code_to_load = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 57
  %6 = ptrtoint ptr %dsp_code_to_load to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dsp_code_to_load, align 4
  %call30 = call fastcc i32 @get_firmware(ptr noundef nonnull %fw, ptr noundef %chip, i16 noundef signext %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end29.cleanup_crit_edge, label %if.end33

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @free_firmware.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@load_firmware, %if.then.i)) #17
          to label %free_firmware.exit [label %if.then.i], !srcloc !467

if.then.i:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %12 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @free_firmware.__UNIQUE_ID_ddebug264, ptr noundef %15, ptr noundef nonnull @.str.101) #17
  br label %free_firmware.exit

free_firmware.exit:                               ; preds = %if.then.i, %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %free_firmware.exit.cleanup_crit_edge, label %if.end37

free_firmware.exit.cleanup_crit_edge:             ; preds = %free_firmware.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end37:                                         ; preds = %free_firmware.exit
  %asic_loaded.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 36
  %16 = ptrtoint ptr %asic_loaded.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %asic_loaded.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i:                                         ; preds = %if.end37
  %call.i = call fastcc i32 @load_asic_generic(ptr noundef %chip) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %call3.i = call fastcc i32 @check_asic_status(ptr noundef %chip) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end2.i, %if.end.i.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %free_firmware.exit.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.then25.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ %call, %if.then25.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ], [ %call34, %free_firmware.exit.cleanup_crit_edge ], [ %call3.i, %if.end2.i ], [ 0, %if.end37.cleanup_crit_edge ], [ %call.i, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_asic_status(ptr nocapture noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %asic_loaded = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 36
  %0 = ptrtoint ptr %asic_loaded to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %asic_loaded, align 2
  %dsp_registers.i.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 60
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.032 = phi i32 [ 0, %entry ], [ %inc10, %for.inc.for.body_crit_edge ]
  %goodcnt.031 = phi i32 [ 0, %entry ], [ %goodcnt.1, %for.inc.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !472
  tail call void @arm_heavy_mb() #17
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body
  %i.09.i = phi i32 [ 0, %for.body ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %1 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %2, i32 6
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !473
  tail call void @arm_heavy_mb() #17
  %5 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i8.i = getelementptr i32, ptr %6, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i, i32 -352321536) #17, !srcloc !474
  br label %for.body.i20.preheader

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #17
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100000
  br i1 %exitcond.not.i, label %do.end3.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

do.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %8 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.33) #22
  br label %for.body.i20.preheader

for.body.i20.preheader:                           ; preds = %do.end3.i, %if.then.i
  br label %for.body.i20

for.body.i20:                                     ; preds = %if.end.i24.for.body.i20_crit_edge, %for.body.i20.preheader
  %i.011.i = phi i32 [ %inc.i22, %if.end.i24.for.body.i20_crit_edge ], [ 0, %for.body.i20.preheader ]
  %12 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i19 = getelementptr i32, ptr %13, i32 5
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i19) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %15 = and i32 %14, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1.not.i = icmp eq i32 %15, 0
  br i1 %cmp1.not.i, label %if.end.i24, label %if.end

if.end.i24:                                       ; preds = %for.body.i20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #17
  tail call void @__might_resched(ptr noundef nonnull @.str.35, i32 noundef 126, i32 noundef 0) #17
  %call.i.i = tail call i32 @__cond_resched() #17
  %inc.i22 = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i23 = icmp eq i32 %inc.i22, 1000000
  br i1 %exitcond.not.i23, label %do.end, label %if.end.i24.for.body.i20_crit_edge

if.end.i24.for.body.i20_crit_edge:                ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i20

do.end:                                           ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #19
  %bad_board.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 37
  %17 = ptrtoint ptr %bad_board.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %bad_board.i, align 1
  %18 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card.i, align 4
  %dev.i26 = getelementptr inbounds %struct.snd_card, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %dev.i26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i26, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.49) #22
  %22 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card.i, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.47) #22
  br label %cleanup

if.end:                                           ; preds = %for.body.i20
  %26 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i10.i = getelementptr i32, ptr %27, i32 7
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i10.i) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %28)
  %cmp3 = icmp eq i32 %28, 16777216
  br i1 %cmp3, label %if.then4, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then4:                                         ; preds = %if.end
  %inc = add i32 %goodcnt.031, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc)
  %cmp5 = icmp eq i32 %inc, 3
  br i1 %cmp5, label %if.then6, label %if.then4.for.inc_crit_edge

if.then4.for.inc_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  %29 = ptrtoint ptr %asic_loaded to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %asic_loaded, align 2
  br label %cleanup

for.inc:                                          ; preds = %if.then4.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %goodcnt.1 = phi i32 [ %inc, %if.then4.for.inc_crit_edge ], [ %goodcnt.031, %if.end.for.inc_crit_edge ]
  %inc10 = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc10, 5
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then6, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.then6 ], [ -5, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_firmware(ptr noundef %fw_entry, ptr nocapture noundef %chip, i16 noundef signext %fw_index) unnamed_addr #2 align 64 {
entry:
  %name = alloca [30 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %name) #17
  %idxprom = sext i16 %fw_index to i32
  %arrayidx = getelementptr %struct.echoaudio, ptr %chip, i32 0, i32 62, i32 %idxprom
  %0 = call ptr @memset(ptr %name, i32 255, i32 30)
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.body11, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_firmware.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_firmware, %if.then4)) #17
          to label %do.end [label %if.then4], !srcloc !467

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_firmware.__UNIQUE_ID_ddebug262, ptr noundef %6, ptr noundef nonnull @.str.52, ptr noundef %8) #17
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_firmware.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_firmware, %if.then23)) #17
          to label %do.end31 [label %if.then23], !srcloc !467

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #19
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_firmware.__UNIQUE_ID_ddebug263, ptr noundef %15, ptr noundef nonnull @.str.53, ptr noundef %17) #17
  br label %do.end31

do.end31:                                         ; preds = %if.then23, %do.body11
  %data34 = getelementptr [2 x %struct.firmware], ptr @card_fw, i32 0, i32 %idxprom, i32 1
  %18 = ptrtoint ptr %data34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data34, align 4
  %call35 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 30, ptr noundef nonnull @.str.54, ptr noundef %19)
  %pci = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 13
  %20 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci, align 4
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %call38 = call i32 @request_firmware(ptr noundef %fw_entry, ptr noundef nonnull %name, ptr noundef %dev37) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp = icmp slt i32 %call38, 0
  br i1 %cmp, label %do.end42, label %if.else

do.end42:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #19
  %card43 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %22 = ptrtoint ptr %card43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card43, align 4
  %dev44 = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev44, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.55, i32 noundef %call38) #22
  br label %cleanup

if.else:                                          ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #19
  %26 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fw_entry, align 4
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end42, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call38, %if.else ], [ %call38, %do.end42 ]
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %name) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @load_dsp(ptr noundef %chip, ptr noundef %code) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_code = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 56
  %0 = ptrtoint ptr %dsp_code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_code, align 4
  %cmp = icmp eq ptr %1, %code
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %card = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.58) #22
  br label %cleanup177

if.end:                                           ; preds = %entry
  %bad_board = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 37
  %6 = ptrtoint ptr %bad_board to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %bad_board, align 1
  %7 = ptrtoint ptr %dsp_code to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %dsp_code, align 4
  %asic_loaded = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 36
  %8 = ptrtoint ptr %asic_loaded to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %asic_loaded, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @load_dsp.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@load_dsp, %if.then5)) #17
          to label %do.end10 [label %if.then5], !srcloc !467

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %card6 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %9 = ptrtoint ptr %card6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card6, align 4
  %dev7 = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev7, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @load_dsp.__UNIQUE_ID_ddebug247, ptr noundef %12, ptr noundef nonnull @.str.61) #17
  br label %do.end10

do.end10:                                         ; preds = %if.then5, %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !472
  tail call void @arm_heavy_mb() #17
  %dsp_registers.i.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 60
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %do.end10
  %i.09.i = phi i32 [ 0, %do.end10 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %14, i32 6
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %16 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %if.end19, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #17
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100000
  br i1 %exitcond.not.i, label %do.end16, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

do.end16:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %18 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.33) #22
  %22 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card.i, align 4
  %dev18 = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev18, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.63) #22
  br label %cleanup177

if.end19:                                         ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !473
  tail call void @arm_heavy_mb() #17
  %26 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i8.i = getelementptr i32, ptr %27, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i, i32 -8388608) #17, !srcloc !474
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 2147480) #17
  br label %for.body

for.body:                                         ; preds = %if.end24.for.body_crit_edge, %if.end19
  %i.0266 = phi i32 [ 0, %if.end19 ], [ %inc, %if.end24.for.body_crit_edge ]
  %29 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i = getelementptr i32, ptr %30, i32 5
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %32 = and i32 %31, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool22.not = icmp eq i32 %32, 0
  br i1 %tobool22.not, label %if.end24, label %if.end32

if.end24:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 2147480) #17
  %inc = add nuw nsw i32 %i.0266, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %do.end29, label %if.end24.for.body_crit_edge

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

do.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  %card30 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %34 = ptrtoint ptr %card30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %card30, align 4
  %dev31 = getelementptr inbounds %struct.snd_card, ptr %35, i32 0, i32 27
  %36 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev31, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.66) #22
  br label %cleanup177

if.end32:                                         ; preds = %for.body
  %38 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i245 = getelementptr i32, ptr %39, i32 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i245) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %41 = or i32 %40, 589824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !473
  tail call void @arm_heavy_mb() #17
  %42 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i247 = getelementptr i32, ptr %43, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i247, i32 %41) #17, !srcloc !474
  %44 = ptrtoint ptr %code to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %code, align 2
  %conv = zext i16 %45 to i32
  %inc35270 = add nuw nsw i32 %conv, 1
  %arrayidx36271 = getelementptr i16, ptr %code, i32 %inc35270
  %46 = ptrtoint ptr %arrayidx36271 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx36271, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %47)
  %cmp38272 = icmp eq i16 %47, 4
  br i1 %cmp38272, label %if.end32.for.end115_crit_edge, label %if.end32.if.end41_crit_edge

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  br label %if.end41

if.end32.for.end115_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end115

for.cond89.for.cond34.loopexit_crit_edge:         ; preds = %for.inc110
  %inc35 = add i32 %index.1268, 3
  %arrayidx36 = getelementptr i16, ptr %code, i32 %inc35
  %48 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx36, align 2
  %cmp38 = icmp eq i16 %49, 4
  br i1 %cmp38, label %for.cond89.for.cond34.loopexit_crit_edge.for.end115_crit_edge, label %for.cond89.for.cond34.loopexit_crit_edge.if.end41_crit_edge

for.cond89.for.cond34.loopexit_crit_edge.if.end41_crit_edge: ; preds = %for.cond89.for.cond34.loopexit_crit_edge
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

for.cond89.for.cond34.loopexit_crit_edge.for.end115_crit_edge: ; preds = %for.cond89.for.cond34.loopexit_crit_edge
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end115

if.end41:                                         ; preds = %for.cond89.for.cond34.loopexit_crit_edge.if.end41_crit_edge, %if.end32.if.end41_crit_edge
  %index.0273 = phi i32 [ %add112, %for.cond89.for.cond34.loopexit_crit_edge.if.end41_crit_edge ], [ %conv, %if.end32.if.end41_crit_edge ]
  %inc42 = add i32 %index.0273, 2
  %inc43 = add i32 %index.0273, 3
  %arrayidx44 = getelementptr i16, ptr %code, i32 %inc42
  %50 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx44, align 2
  %conv45 = zext i16 %51 to i32
  %arrayidx47 = getelementptr i16, ptr %code, i32 %inc43
  %52 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx47, align 2
  %conv48 = zext i16 %53 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %cmp49 = icmp eq i16 %53, 0
  br i1 %cmp49, label %if.end41.for.end115_crit_edge, label %if.end52

if.end41.for.end115_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end115

if.end52:                                         ; preds = %if.end41
  %inc46 = add i32 %index.0273, 4
  %arrayidx53 = getelementptr i16, ptr %code, i32 %inc46
  %54 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx53, align 2
  %add = add i32 %index.0273, 5
  %arrayidx55 = getelementptr i16, ptr %code, i32 %add
  %56 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx55, align 2
  %add58 = add i32 %index.0273, 6
  %call59 = tail call fastcc i32 @write_dsp(ptr noundef %chip, i32 noundef %conv48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %do.end65, label %if.end68

do.end65:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #19
  %card66 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %58 = ptrtoint ptr %card66 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %card66, align 4
  %dev67 = getelementptr inbounds %struct.snd_card, ptr %59, i32 0, i32 27
  %60 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev67, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.69) #22
  br label %cleanup177

if.end68:                                         ; preds = %if.end52
  %conv54 = zext i16 %55 to i32
  %shl = shl nuw i32 %conv54, 16
  %conv56 = zext i16 %57 to i32
  %add57 = or i32 %shl, %conv56
  %call69 = tail call fastcc i32 @write_dsp(ptr noundef %chip, i32 noundef %add57)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %do.end75, label %if.end78

do.end75:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #19
  %card76 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %62 = ptrtoint ptr %card76 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %card76, align 4
  %dev77 = getelementptr inbounds %struct.snd_card, ptr %63, i32 0, i32 27
  %64 = ptrtoint ptr %dev77 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev77, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.72) #22
  br label %cleanup177

if.end78:                                         ; preds = %if.end68
  %call79 = tail call fastcc i32 @write_dsp(ptr noundef %chip, i32 noundef %conv45)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %do.end85, label %if.end78.for.body92_crit_edge

if.end78.for.body92_crit_edge:                    ; preds = %if.end78
  br label %for.body92

do.end85:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #19
  %card86 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %66 = ptrtoint ptr %card86 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %card86, align 4
  %dev87 = getelementptr inbounds %struct.snd_card, ptr %67, i32 0, i32 27
  %68 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev87, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.75) #22
  br label %cleanup177

for.body92:                                       ; preds = %for.inc110.for.body92_crit_edge, %if.end78.for.body92_crit_edge
  %i.1269 = phi i32 [ %inc111, %for.inc110.for.body92_crit_edge ], [ 0, %if.end78.for.body92_crit_edge ]
  %index.1268 = phi i32 [ %add112, %for.inc110.for.body92_crit_edge ], [ %add58, %if.end78.for.body92_crit_edge ]
  %arrayidx93 = getelementptr i16, ptr %code, i32 %index.1268
  %70 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx93, align 2
  %conv94 = zext i16 %71 to i32
  %shl95 = shl nuw i32 %conv94, 16
  %add96 = add i32 %index.1268, 1
  %arrayidx97 = getelementptr i16, ptr %code, i32 %add96
  %72 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx97, align 2
  %conv98 = zext i16 %73 to i32
  %add99 = or i32 %shl95, %conv98
  %call100 = tail call fastcc i32 @write_dsp(ptr noundef %chip, i32 noundef %add99)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %do.end106, label %for.inc110

do.end106:                                        ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #19
  %card107 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %74 = ptrtoint ptr %card107 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %card107, align 4
  %dev108 = getelementptr inbounds %struct.snd_card, ptr %75, i32 0, i32 27
  %76 = ptrtoint ptr %dev108 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev108, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.78) #22
  br label %cleanup177

for.inc110:                                       ; preds = %for.body92
  %inc111 = add nuw nsw i32 %i.1269, 1
  %add112 = add i32 %index.1268, 2
  %exitcond276.not = icmp eq i32 %inc111, %conv48
  br i1 %exitcond276.not, label %for.cond89.for.cond34.loopexit_crit_edge, label %for.inc110.for.body92_crit_edge

for.inc110.for.body92_crit_edge:                  ; preds = %for.inc110
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body92

for.end115:                                       ; preds = %if.end41.for.end115_crit_edge, %for.cond89.for.cond34.loopexit_crit_edge.for.end115_crit_edge, %if.end32.for.end115_crit_edge
  %call116 = tail call fastcc i32 @write_dsp(ptr noundef %chip, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %cmp117 = icmp slt i32 %call116, 0
  br i1 %cmp117, label %do.end122, label %if.end125

do.end122:                                        ; preds = %for.end115
  call void @__sanitizer_cov_trace_pc() #19
  %card123 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %78 = ptrtoint ptr %card123 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %card123, align 4
  %dev124 = getelementptr inbounds %struct.snd_card, ptr %79, i32 0, i32 27
  %80 = ptrtoint ptr %dev124 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev124, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.81) #22
  br label %cleanup177

if.end125:                                        ; preds = %for.end115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 2147480) #17
  br label %for.body129

for.body129:                                      ; preds = %if.end168.for.body129_crit_edge, %if.end125
  %i.2274 = phi i32 [ 0, %if.end125 ], [ %inc170, %if.end168.for.body129_crit_edge ]
  %83 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i249 = getelementptr i32, ptr %84, i32 5
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i249) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %86 = and i32 %85, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool132.not = icmp eq i32 %86, 0
  br i1 %tobool132.not, label %if.end168, label %if.then133

if.then133:                                       ; preds = %for.body129
  %87 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i251 = getelementptr i32, ptr %88, i32 4
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i251) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %90 = and i32 %89, -1769473
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !473
  tail call void @arm_heavy_mb() #17
  %91 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i253 = getelementptr i32, ptr %92, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i253, i32 %90) #17, !srcloc !474
  %call136 = tail call fastcc i32 @write_dsp(ptr noundef %chip, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %cmp137 = icmp slt i32 %call136, 0
  br i1 %cmp137, label %do.end142, label %if.end145

do.end142:                                        ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #19
  %card143 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %93 = ptrtoint ptr %card143 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %card143, align 4
  %dev144 = getelementptr inbounds %struct.snd_card, ptr %94, i32 0, i32 27
  %95 = ptrtoint ptr %dev144 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev144, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.84) #22
  br label %cleanup177

if.end145:                                        ; preds = %if.then133
  %comm_page_phys = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 59
  %97 = ptrtoint ptr %comm_page_phys to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %comm_page_phys, align 4
  %call146 = tail call fastcc i32 @write_dsp(ptr noundef %chip, i32 noundef %98)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %cmp147 = icmp slt i32 %call146, 0
  br i1 %cmp147, label %do.end152, label %if.end155

do.end152:                                        ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #19
  %card153 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %99 = ptrtoint ptr %card153 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %card153, align 4
  %dev154 = getelementptr inbounds %struct.snd_card, ptr %100, i32 0, i32 27
  %101 = ptrtoint ptr %dev154 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev154, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.87) #22
  br label %cleanup177

if.end155:                                        ; preds = %if.end145
  %call156 = tail call fastcc i32 @read_sn(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %cmp157 = icmp slt i32 %call156, 0
  br i1 %cmp157, label %do.end162, label %if.end165

do.end162:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #19
  %card163 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %103 = ptrtoint ptr %card163 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %card163, align 4
  %dev164 = getelementptr inbounds %struct.snd_card, ptr %104, i32 0, i32 27
  %105 = ptrtoint ptr %dev164 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev164, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.90) #22
  br label %cleanup177

if.end165:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #19
  %107 = ptrtoint ptr %dsp_code to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %code, ptr %dsp_code, align 4
  %108 = ptrtoint ptr %bad_board to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %bad_board, align 1
  br label %cleanup177

if.end168:                                        ; preds = %for.body129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %109(i32 noundef 21474800) #17
  %inc170 = add nuw nsw i32 %i.2274, 1
  %exitcond277.not = icmp eq i32 %inc170, 5000
  br i1 %exitcond277.not, label %do.end174, label %if.end168.for.body129_crit_edge

if.end168.for.body129_crit_edge:                  ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body129

do.end174:                                        ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #19
  %card175 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %110 = ptrtoint ptr %card175 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %card175, align 4
  %dev176 = getelementptr inbounds %struct.snd_card, ptr %111, i32 0, i32 27
  %112 = ptrtoint ptr %dev176 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev176, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.93) #22
  br label %cleanup177

cleanup177:                                       ; preds = %do.end174, %if.end165, %do.end162, %do.end152, %do.end142, %do.end122, %do.end106, %do.end85, %do.end75, %do.end65, %do.end29, %do.end16, %do.end
  %retval.2 = phi i32 [ 0, %do.end ], [ -5, %do.end16 ], [ -5, %do.end29 ], [ -5, %do.end122 ], [ -5, %do.end142 ], [ -5, %do.end152 ], [ -5, %do.end162 ], [ 0, %if.end165 ], [ -5, %do.end174 ], [ -5, %do.end65 ], [ -5, %do.end75 ], [ -5, %do.end85 ], [ -5, %do.end106 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_dsp(ptr nocapture noundef %chip, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_registers.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 60
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.020 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %0 = ptrtoint ptr %dsp_registers.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_registers.i, align 4
  %arrayidx.i = getelementptr i32, ptr %1, i32 5
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %3 = and i32 %2, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !473
  tail call void @arm_heavy_mb() #17
  %4 = tail call i32 @llvm.bswap.i32(i32 %data) #17
  %5 = ptrtoint ptr %dsp_registers.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dsp_registers.i, align 4
  %arrayidx.i18 = getelementptr i32, ptr %6, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i18, i32 %4) #17, !srcloc !474
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !476
  tail call void @arm_heavy_mb() #17
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #17
  tail call void @__might_resched(ptr noundef nonnull @.str.35, i32 noundef 103, i32 noundef 0) #17
  %call.i = tail call i32 @__cond_resched() #17
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, 10000000
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %bad_board = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 37
  %8 = ptrtoint ptr %bad_board to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %bad_board, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_dsp.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_dsp, %if.then8)) #17
          to label %cleanup [label %if.then8], !srcloc !467

if.then8:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %card = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @write_dsp.__UNIQUE_ID_ddebug245, ptr noundef %12, ptr noundef nonnull @.str.96) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %for.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -5, %if.then8 ], [ -5, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_sn(ptr nocapture noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_registers.i.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 60
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.011.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %1, i32 5
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %3 = and i32 %2, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not.i = icmp eq i32 %3, 0
  br i1 %cmp1.not.i, label %if.end.i, label %for.inc

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #17
  tail call void @__might_resched(ptr noundef nonnull @.str.35, i32 noundef 126, i32 noundef 0) #17
  %call.i.i = tail call i32 @__cond_resched() #17
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000000
  br i1 %exitcond.not.i, label %if.end.i.do.end_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

do.end:                                           ; preds = %if.end.i.4.do.end_crit_edge, %if.end.i.3.do.end_crit_edge, %if.end.i.2.do.end_crit_edge, %if.end.i.1.do.end_crit_edge, %if.end.i.do.end_crit_edge
  %bad_board.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 37
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.49) #22
  %10 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card.i, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.97) #22
  br label %cleanup

for.inc:                                          ; preds = %for.body.i
  %14 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i10.i = getelementptr i32, ptr %15, i32 7
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i10.i) #17, !srcloc !469
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  br label %for.body.i.1

for.body.i.1:                                     ; preds = %if.end.i.1.for.body.i.1_crit_edge, %for.inc
  %i.011.i.1 = phi i32 [ 0, %for.inc ], [ %inc.i.1, %if.end.i.1.for.body.i.1_crit_edge ]
  %18 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i.1 = getelementptr i32, ptr %19, i32 5
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i.1) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %21 = and i32 %20, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp1.not.i.1 = icmp eq i32 %21, 0
  br i1 %cmp1.not.i.1, label %if.end.i.1, label %for.inc.1

for.inc.1:                                        ; preds = %for.body.i.1
  %22 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i10.i.1 = getelementptr i32, ptr %23, i32 7
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i10.i.1) #17, !srcloc !469
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  br label %for.body.i.2

if.end.i.1:                                       ; preds = %for.body.i.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748) #17
  tail call void @__might_resched(ptr noundef nonnull @.str.35, i32 noundef 126, i32 noundef 0) #17
  %call.i.i.1 = tail call i32 @__cond_resched() #17
  %inc.i.1 = add nuw nsw i32 %i.011.i.1, 1
  %exitcond.not.i.1 = icmp eq i32 %inc.i.1, 1000000
  br i1 %exitcond.not.i.1, label %if.end.i.1.do.end_crit_edge, label %if.end.i.1.for.body.i.1_crit_edge

if.end.i.1.for.body.i.1_crit_edge:                ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.1

if.end.i.1.do.end_crit_edge:                      ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

for.body.i.2:                                     ; preds = %if.end.i.2.for.body.i.2_crit_edge, %for.inc.1
  %i.011.i.2 = phi i32 [ 0, %for.inc.1 ], [ %inc.i.2, %if.end.i.2.for.body.i.2_crit_edge ]
  %27 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i.2 = getelementptr i32, ptr %28, i32 5
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i.2) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %30 = and i32 %29, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp1.not.i.2 = icmp eq i32 %30, 0
  br i1 %cmp1.not.i.2, label %if.end.i.2, label %for.inc.2

for.inc.2:                                        ; preds = %for.body.i.2
  %31 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i10.i.2 = getelementptr i32, ptr %32, i32 7
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i10.i.2) #17, !srcloc !469
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  br label %for.body.i.3

if.end.i.2:                                       ; preds = %for.body.i.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #17
  tail call void @__might_resched(ptr noundef nonnull @.str.35, i32 noundef 126, i32 noundef 0) #17
  %call.i.i.2 = tail call i32 @__cond_resched() #17
  %inc.i.2 = add nuw nsw i32 %i.011.i.2, 1
  %exitcond.not.i.2 = icmp eq i32 %inc.i.2, 1000000
  br i1 %exitcond.not.i.2, label %if.end.i.2.do.end_crit_edge, label %if.end.i.2.for.body.i.2_crit_edge

if.end.i.2.for.body.i.2_crit_edge:                ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.2

if.end.i.2.do.end_crit_edge:                      ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

for.body.i.3:                                     ; preds = %if.end.i.3.for.body.i.3_crit_edge, %for.inc.2
  %i.011.i.3 = phi i32 [ 0, %for.inc.2 ], [ %inc.i.3, %if.end.i.3.for.body.i.3_crit_edge ]
  %36 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i.3 = getelementptr i32, ptr %37, i32 5
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i.3) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %39 = and i32 %38, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp1.not.i.3 = icmp eq i32 %39, 0
  br i1 %cmp1.not.i.3, label %if.end.i.3, label %for.inc.3

for.inc.3:                                        ; preds = %for.body.i.3
  %40 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i10.i.3 = getelementptr i32, ptr %41, i32 7
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i10.i.3) #17, !srcloc !469
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  br label %for.body.i.4

if.end.i.3:                                       ; preds = %for.body.i.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748) #17
  tail call void @__might_resched(ptr noundef nonnull @.str.35, i32 noundef 126, i32 noundef 0) #17
  %call.i.i.3 = tail call i32 @__cond_resched() #17
  %inc.i.3 = add nuw nsw i32 %i.011.i.3, 1
  %exitcond.not.i.3 = icmp eq i32 %inc.i.3, 1000000
  br i1 %exitcond.not.i.3, label %if.end.i.3.do.end_crit_edge, label %if.end.i.3.for.body.i.3_crit_edge

if.end.i.3.for.body.i.3_crit_edge:                ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.3

if.end.i.3.do.end_crit_edge:                      ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

for.body.i.4:                                     ; preds = %if.end.i.4.for.body.i.4_crit_edge, %for.inc.3
  %i.011.i.4 = phi i32 [ 0, %for.inc.3 ], [ %inc.i.4, %if.end.i.4.for.body.i.4_crit_edge ]
  %45 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i.4 = getelementptr i32, ptr %46, i32 5
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i.4) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %48 = and i32 %47, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp1.not.i.4 = icmp eq i32 %48, 0
  br i1 %cmp1.not.i.4, label %if.end.i.4, label %for.inc.4

for.inc.4:                                        ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #19
  %49 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i10.i.4 = getelementptr i32, ptr %50, i32 7
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i10.i.4) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_sn.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_sn, %if.then6)) #17
          to label %cleanup [label %if.then6], !srcloc !467

if.end.i.4:                                       ; preds = %for.body.i.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748) #17
  tail call void @__might_resched(ptr noundef nonnull @.str.35, i32 noundef 126, i32 noundef 0) #17
  %call.i.i.4 = tail call i32 @__cond_resched() #17
  %inc.i.4 = add nuw nsw i32 %i.011.i.4, 1
  %exitcond.not.i.4 = icmp eq i32 %inc.i.4, 1000000
  br i1 %exitcond.not.i.4, label %if.end.i.4.do.end_crit_edge, label %if.end.i.4.for.body.i.4_crit_edge

if.end.i.4.for.body.i.4_crit_edge:                ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.4

if.end.i.4.do.end_crit_edge:                      ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.then6:                                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #19
  %53 = tail call i32 @llvm.bswap.i32(i32 %51) #17
  %card7 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %54 = ptrtoint ptr %card7 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %card7, align 4
  %dev8 = getelementptr inbounds %struct.snd_card, ptr %55, i32 0, i32 27
  %56 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev8, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_sn.__UNIQUE_ID_ddebug246, ptr noundef %57, ptr noundef nonnull @.str.99, i32 noundef %17, i32 noundef %25, i32 noundef %34, i32 noundef %43, i32 noundef %53) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %for.inc.4, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.then6 ], [ 0, %for.inc.4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @load_asic_generic(ptr nocapture noundef %chip) unnamed_addr #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #17
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !465
  %call = call fastcc i32 @get_firmware(ptr noundef nonnull %fw, ptr noundef %chip, i16 noundef signext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %card = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.102) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 4
  %call2 = call fastcc i32 @write_dsp(ptr noundef %chip, i32 noundef 160)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.do.end18_crit_edge, label %if.end5

if.end.do.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end18

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i32 @write_dsp(ptr noundef %chip, i32 noundef %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.do.end18_crit_edge, label %for.cond.preheader

if.end5.do.end18_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end18

for.cond.preheader:                               ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp105.not = icmp eq i32 %10, 0
  br i1 %cmp105.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, %10
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %8, i32 %i.06
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %12 to i32
  %call11 = call fastcc i32 @write_dsp(ptr noundef %chip, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %for.body.do.end18_crit_edge, label %for.cond

for.body.do.end18_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end18

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @free_firmware.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@load_asic_generic, %if.then.i)) #17
          to label %cleanup [label %if.then.i], !srcloc !467

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %13 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @free_firmware.__UNIQUE_ID_ddebug264, ptr noundef %16, ptr noundef nonnull @.str.101) #17
  br label %cleanup

do.end18:                                         ; preds = %for.body.do.end18_crit_edge, %if.end5.do.end18_crit_edge, %if.end.do.end18_crit_edge
  %card19 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %17 = ptrtoint ptr %card19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card19, align 4
  %dev20 = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 27
  %19 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev20, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.105) #22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @free_firmware.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@load_asic_generic, %if.then.i3)) #17
          to label %cleanup [label %if.then.i3], !srcloc !467

if.then.i3:                                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #19
  %21 = ptrtoint ptr %card19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card19, align 4
  %dev.i2 = getelementptr inbounds %struct.snd_card, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %dev.i2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i2, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @free_firmware.__UNIQUE_ID_ddebug264, ptr noundef %24, ptr noundef nonnull @.str.101) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then.i3, %do.end18, %if.then.i, %for.end, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %for.end ], [ 0, %if.then.i ], [ -5, %do.end18 ], [ -5, %if.then.i3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @restore_dsp_rettings(ptr noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @check_asic_status(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %comm_page = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 26
  %0 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %comm_page, align 4
  %gd_clock_state = getelementptr inbounds %struct.comm_page, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %gd_clock_state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %gd_clock_state, align 4
  %3 = load ptr, ptr %comm_page, align 4
  %gd_spdif_status = getelementptr inbounds %struct.comm_page, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %gd_spdif_status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %gd_spdif_status, align 1
  %5 = load ptr, ptr %comm_page, align 4
  %handshake = getelementptr inbounds %struct.comm_page, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %handshake to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %handshake, align 4
  br label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %for.inc.for.body.i.i.preheader_crit_edge, %if.end
  %i.0204 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body.i.i.preheader_crit_edge ]
  %arrayidx = getelementptr %struct.echoaudio, ptr %chip, i32 0, i32 48, i32 %i.0204
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %i.03.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !475
  %9 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %comm_page, align 4
  %handshake.i.i = getelementptr inbounds %struct.comm_page, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %handshake.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %handshake.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.inc

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #17
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 20000
  br i1 %exitcond.not.i.i, label %wait_handshake.exit.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

wait_handshake.exit.i:                            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %card.i.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %14 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.38) #22
  br label %cleanup

for.inc:                                          ; preds = %for.body.i.i
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %8, ptr %arrayidx, align 1
  %arrayidx28.i = getelementptr %struct.comm_page, ptr %10, i32 0, i32 13, i32 %i.0204
  %19 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %8, ptr %arrayidx28.i, align 1
  %inc = add nuw nsw i32 %i.0204, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.inc.for.body19.preheader_crit_edge, label %for.inc.for.body.i.i.preheader_crit_edge

for.inc.for.body.i.i.preheader_crit_edge:         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i.preheader

for.inc.for.body19.preheader_crit_edge:           ; preds = %for.inc
  br label %for.body19.preheader

for.body19.preheader:                             ; preds = %for.inc32.for.body19.preheader_crit_edge, %for.inc.for.body19.preheader_crit_edge
  %o.0226 = phi i32 [ %inc33, %for.inc32.for.body19.preheader_crit_edge ], [ 0, %for.inc.for.body19.preheader_crit_edge ]
  %mul.i.i = mul nuw nsw i32 %o.0226, 10
  br label %for.body.i.i167.preheader

for.body.i.i167.preheader:                        ; preds = %for.inc29.for.body.i.i167.preheader_crit_edge, %for.body19.preheader
  %i.1205 = phi i32 [ %inc30, %for.inc29.for.body.i.i167.preheader_crit_edge ], [ 0, %for.body19.preheader ]
  %arrayidx23 = getelementptr %struct.echoaudio, ptr %chip, i32 0, i32 49, i32 %o.0226, i32 %i.1205
  %20 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx23, align 1
  br label %for.body.i.i167

for.body.i.i167:                                  ; preds = %if.end.i.i170.for.body.i.i167_crit_edge, %for.body.i.i167.preheader
  %i.03.i.i164 = phi i32 [ %inc.i.i168, %if.end.i.i170.for.body.i.i167_crit_edge ], [ 0, %for.body.i.i167.preheader ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !475
  %22 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %comm_page, align 4
  %handshake.i.i165 = getelementptr inbounds %struct.comm_page, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %handshake.i.i165 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %handshake.i.i165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i166 = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i166, label %if.end.i.i170, label %for.inc29

if.end.i.i170:                                    ; preds = %for.body.i.i167
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748) #17
  %inc.i.i168 = add nuw nsw i32 %i.03.i.i164, 1
  %exitcond.not.i.i169 = icmp eq i32 %inc.i.i168, 20000
  br i1 %exitcond.not.i.i169, label %wait_handshake.exit.i173, label %if.end.i.i170.for.body.i.i167_crit_edge

if.end.i.i170.for.body.i.i167_crit_edge:          ; preds = %if.end.i.i170
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i167

wait_handshake.exit.i173:                         ; preds = %if.end.i.i170
  call void @__sanitizer_cov_trace_pc() #19
  %card.i.i171 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %27 = ptrtoint ptr %card.i.i171 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %card.i.i171, align 4
  %dev.i.i172 = getelementptr inbounds %struct.snd_card, ptr %28, i32 0, i32 27
  %29 = ptrtoint ptr %dev.i.i172 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i.i172, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.38) #22
  br label %cleanup

for.inc29:                                        ; preds = %for.body.i.i167
  %31 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %21, ptr %arrayidx23, align 1
  %add.i.i = add nuw nsw i32 %i.1205, %mul.i.i
  %arrayidx36.i = getelementptr %struct.comm_page, ptr %23, i32 0, i32 15, i32 %add.i.i
  %32 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %21, ptr %arrayidx36.i, align 1
  %inc30 = add nuw nsw i32 %i.1205, 1
  %exitcond213.not = icmp eq i32 %inc30, 10
  br i1 %exitcond213.not, label %for.inc32, label %for.inc29.for.body.i.i167.preheader_crit_edge

for.inc29.for.body.i.i167.preheader_crit_edge:    ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i167.preheader

for.inc32:                                        ; preds = %for.inc29
  %inc33 = add nuw nsw i32 %o.0226, 1
  %exitcond214.not = icmp eq i32 %inc33, 12
  br i1 %exitcond214.not, label %for.inc32.for.body.i.i183.preheader_crit_edge, label %for.inc32.for.body19.preheader_crit_edge

for.inc32.for.body19.preheader_crit_edge:         ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body19.preheader

for.inc32.for.body.i.i183.preheader_crit_edge:    ; preds = %for.inc32
  br label %for.body.i.i183.preheader

for.body.i.i183.preheader:                        ; preds = %for.inc48.for.body.i.i183.preheader_crit_edge, %for.inc32.for.body.i.i183.preheader_crit_edge
  %i.2206 = phi i32 [ %inc49, %for.inc48.for.body.i.i183.preheader_crit_edge ], [ 0, %for.inc32.for.body.i.i183.preheader_crit_edge ]
  %arrayidx41 = getelementptr %struct.echoaudio, ptr %chip, i32 0, i32 47, i32 %i.2206
  %33 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx41, align 1
  br label %for.body.i.i183

for.body.i.i183:                                  ; preds = %if.end.i.i186.for.body.i.i183_crit_edge, %for.body.i.i183.preheader
  %i.03.i.i180 = phi i32 [ %inc.i.i184, %if.end.i.i186.for.body.i.i183_crit_edge ], [ 0, %for.body.i.i183.preheader ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !475
  %35 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %comm_page, align 4
  %handshake.i.i181 = getelementptr inbounds %struct.comm_page, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %handshake.i.i181 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %handshake.i.i181, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.i182 = icmp eq i32 %38, 0
  br i1 %tobool.not.i.i182, label %if.end.i.i186, label %for.inc48

if.end.i.i186:                                    ; preds = %for.body.i.i183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748) #17
  %inc.i.i184 = add nuw nsw i32 %i.03.i.i180, 1
  %exitcond.not.i.i185 = icmp eq i32 %inc.i.i184, 20000
  br i1 %exitcond.not.i.i185, label %wait_handshake.exit.i189, label %if.end.i.i186.for.body.i.i183_crit_edge

if.end.i.i186.for.body.i.i183_crit_edge:          ; preds = %if.end.i.i186
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i183

wait_handshake.exit.i189:                         ; preds = %if.end.i.i186
  call void @__sanitizer_cov_trace_pc() #19
  %card.i.i187 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %40 = ptrtoint ptr %card.i.i187 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %card.i.i187, align 4
  %dev.i.i188 = getelementptr inbounds %struct.snd_card, ptr %41, i32 0, i32 27
  %42 = ptrtoint ptr %dev.i.i188 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i.i188, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.38) #22
  br label %cleanup

for.inc48:                                        ; preds = %for.body.i.i183
  %44 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %34, ptr %arrayidx41, align 1
  %conv28.i = add i8 %34, -56
  %arrayidx30.i = getelementptr %struct.comm_page, ptr %36, i32 0, i32 14, i32 %i.2206
  %45 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv28.i, ptr %arrayidx30.i, align 1
  %inc49 = add nuw nsw i32 %i.2206, 1
  %exitcond215.not = icmp eq i32 %inc49, 10
  br i1 %exitcond215.not, label %for.end50, label %for.inc48.for.body.i.i183.preheader_crit_edge

for.inc48.for.body.i.i183.preheader_crit_edge:    ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i183.preheader

for.end50:                                        ; preds = %for.inc48
  %call51 = tail call fastcc i32 @update_output_line_level(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %for.end50.cleanup_crit_edge, label %if.end55

for.end50.cleanup_crit_edge:                      ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end55:                                         ; preds = %for.end50
  %call56 = tail call fastcc i32 @update_input_line_level(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.end55.cleanup_crit_edge, label %if.end60

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end60:                                         ; preds = %if.end55
  %sample_rate = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 29
  %46 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sample_rate, align 4
  %call61 = tail call fastcc i32 @set_sample_rate(ptr noundef %chip, i32 noundef %47)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.end60.cleanup_crit_edge, label %if.end65

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end65:                                         ; preds = %if.end60
  %meters_enabled = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 35
  %48 = ptrtoint ptr %meters_enabled to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %meters_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not = icmp eq i8 %49, 0
  br i1 %tobool.not, label %if.end65.if.end72_crit_edge, label %if.then66

if.end65.if.end72_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end72

if.then66:                                        ; preds = %if.end65
  %call67 = tail call fastcc i32 @send_vector(ptr noundef %chip, i32 noundef 121)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.then66.cleanup_crit_edge, label %if.then66.if.end72_crit_edge

if.then66.if.end72_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end72

if.then66.cleanup_crit_edge:                      ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end72:                                         ; preds = %if.then66.if.end72_crit_edge, %if.end65.if.end72_crit_edge
  %professional_spdif = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 38
  %50 = ptrtoint ptr %professional_spdif to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %professional_spdif, align 4
  %call73 = tail call fastcc i32 @set_professional_spdif(ptr noundef %chip, i8 noundef zeroext %51)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.end72.cleanup_crit_edge, label %if.end77

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end77:                                         ; preds = %if.end72
  %input_clock = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 33
  %52 = ptrtoint ptr %input_clock to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %input_clock, align 1
  %conv78 = zext i8 %53 to i16
  %call79 = tail call fastcc i32 @set_input_clock(ptr noundef %chip, i16 noundef zeroext %conv78)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %if.end77.cleanup_crit_edge, label %if.end83

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end83:                                         ; preds = %if.end77
  %output_clock = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 34
  %54 = ptrtoint ptr %output_clock to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %output_clock, align 4
  %conv84 = zext i8 %55 to i16
  %call85 = tail call fastcc i32 @set_output_clock(ptr noundef %chip, i16 noundef zeroext %conv84)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %if.end83.cleanup_crit_edge, label %if.end89

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end89:                                         ; preds = %if.end83
  %call90 = tail call fastcc i32 @wait_handshake(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.end89.cleanup_crit_edge, label %if.end94

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end94:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #19
  %56 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %comm_page, align 4
  %handshake.i = getelementptr inbounds %struct.comm_page, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %handshake.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %handshake.i, align 4
  %call95 = tail call fastcc i32 @send_vector(ptr noundef %chip, i32 noundef 253)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96 = icmp slt i32 %call95, 0
  %. = select i1 %cmp96, i32 -5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %if.end89.cleanup_crit_edge, %if.end83.cleanup_crit_edge, %if.end77.cleanup_crit_edge, %if.end72.cleanup_crit_edge, %if.then66.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %for.end50.cleanup_crit_edge, %wait_handshake.exit.i189, %wait_handshake.exit.i173, %wait_handshake.exit.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call51, %for.end50.cleanup_crit_edge ], [ %call56, %if.end55.cleanup_crit_edge ], [ %call61, %if.end60.cleanup_crit_edge ], [ %call67, %if.then66.cleanup_crit_edge ], [ -5, %if.end72.cleanup_crit_edge ], [ -5, %if.end77.cleanup_crit_edge ], [ -5, %if.end83.cleanup_crit_edge ], [ -5, %if.end89.cleanup_crit_edge ], [ %., %if.end94 ], [ -5, %wait_handshake.exit.i ], [ -5, %wait_handshake.exit.i173 ], [ -5, %wait_handshake.exit.i189 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_output_line_level(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %comm_page.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 26
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.03.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !475
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
  tail call void %4(i32 noundef 214748) #17
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20000
  br i1 %exitcond.not.i, label %wait_handshake.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

wait_handshake.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %5 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.38) #22
  br label %return

if.end:                                           ; preds = %for.body.i
  %9 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %comm_page.i, align 4
  %handshake.i5 = getelementptr inbounds %struct.comm_page, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %handshake.i5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %handshake.i5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !472
  tail call void @arm_heavy_mb() #17
  %dsp_registers.i.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 60
  br label %for.body.i7

for.body.i7:                                      ; preds = %if.end.i10.for.body.i7_crit_edge, %if.end
  %i.09.i = phi i32 [ 0, %if.end ], [ %inc.i8, %if.end.i10.for.body.i7_crit_edge ]
  %12 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %13, i32 6
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i6 = icmp eq i32 %15, 0
  br i1 %tobool.not.i6, label %if.then.i, label %if.end.i10

if.then.i:                                        ; preds = %for.body.i7
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !473
  tail call void @arm_heavy_mb() #17
  %16 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i8.i = getelementptr i32, ptr %17, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i, i32 2097152000) #17, !srcloc !474
  br label %return

if.end.i10:                                       ; preds = %for.body.i7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #17
  %inc.i8 = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i9 = icmp eq i32 %inc.i8, 100000
  br i1 %exitcond.not.i9, label %do.end3.i, label %if.end.i10.for.body.i7_crit_edge

if.end.i10.for.body.i7_crit_edge:                 ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i7

do.end3.i:                                        ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #19
  %card.i11 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %19 = ptrtoint ptr %card.i11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card.i11, align 4
  %dev.i12 = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %dev.i12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.33) #22
  br label %return

return:                                           ; preds = %do.end3.i, %if.then.i, %wait_handshake.exit
  %retval.0 = phi i32 [ -5, %wait_handshake.exit ], [ 0, %if.then.i ], [ -16, %do.end3.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_input_line_level(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %comm_page.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 26
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.03.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !475
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
  tail call void %4(i32 noundef 214748) #17
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20000
  br i1 %exitcond.not.i, label %wait_handshake.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

wait_handshake.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %5 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.38) #22
  br label %return

if.end:                                           ; preds = %for.body.i
  %9 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %comm_page.i, align 4
  %handshake.i5 = getelementptr inbounds %struct.comm_page, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %handshake.i5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %handshake.i5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !472
  tail call void @arm_heavy_mb() #17
  %dsp_registers.i.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 60
  br label %for.body.i7

for.body.i7:                                      ; preds = %if.end.i10.for.body.i7_crit_edge, %if.end
  %i.09.i = phi i32 [ 0, %if.end ], [ %inc.i8, %if.end.i10.for.body.i7_crit_edge ]
  %12 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %13, i32 6
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i6 = icmp eq i32 %15, 0
  br i1 %tobool.not.i6, label %if.then.i, label %if.end.i10

if.then.i:                                        ; preds = %for.body.i7
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !473
  tail call void @arm_heavy_mb() #17
  %16 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i8.i = getelementptr i32, ptr %17, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i, i32 2130706432) #17, !srcloc !474
  br label %return

if.end.i10:                                       ; preds = %for.body.i7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #17
  %inc.i8 = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i9 = icmp eq i32 %inc.i8, 100000
  br i1 %exitcond.not.i9, label %do.end3.i, label %if.end.i10.for.body.i7_crit_edge

if.end.i10.for.body.i7_crit_edge:                 ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i7

do.end3.i:                                        ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #19
  %card.i11 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %19 = ptrtoint ptr %card.i11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card.i11, align 4
  %dev.i12 = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %dev.i12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.33) #22
  br label %return

return:                                           ; preds = %do.end3.i, %if.then.i, %wait_handshake.exit
  %retval.0 = phi i32 [ -5, %wait_handshake.exit ], [ 0, %if.then.i ], [ -16, %do.end3.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_sample_rate(ptr nocapture noundef %chip, i32 noundef %rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %rate, -50001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -42001, i32 %0)
  %1 = icmp ult i32 %0, -42001
  br i1 %1, label %do.end, label %if.end22, !prof !471

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 163, i32 noundef 9, ptr noundef null) #17
  br label %return

if.end22:                                         ; preds = %entry
  %input_clock = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 33
  %2 = ptrtoint ptr %input_clock to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %input_clock, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp23.not = icmp eq i8 %3, 0
  br i1 %cmp23.not, label %if.end30, label %do.end28

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  %card = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.107) #22
  %8 = tail call i32 @llvm.bswap.i32(i32 %rate)
  %comm_page = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 26
  %9 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %comm_page, align 4
  %sample_rate = getelementptr inbounds %struct.comm_page, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %sample_rate to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %sample_rate, align 4
  %sample_rate29 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 29
  %12 = ptrtoint ptr %sample_rate29 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %rate, ptr %sample_rate29, align 4
  br label %return

if.end30:                                         ; preds = %if.end22
  %comm_page.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 26
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end30
  %i.03.i = phi i32 [ 0, %if.end30 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !475
  %13 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %comm_page.i, align 4
  %handshake.i = getelementptr inbounds %struct.comm_page, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %handshake.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %handshake.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body34

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #17
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20000
  br i1 %exitcond.not.i, label %wait_handshake.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

wait_handshake.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %18 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.38) #22
  br label %return

do.body34:                                        ; preds = %for.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_sample_rate.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_sample_rate, %if.then44)) #17
          to label %do.end49 [label %if.then44], !srcloc !467

if.then44:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #19
  %card45 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %22 = ptrtoint ptr %card45 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card45, align 4
  %dev46 = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev46, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_sample_rate.__UNIQUE_ID_ddebug244, ptr noundef %25, ptr noundef nonnull @.str.109, i32 noundef %rate) #17
  br label %do.end49

do.end49:                                         ; preds = %if.then44, %do.body34
  %sample_rate50 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 29
  %26 = ptrtoint ptr %sample_rate50 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %rate, ptr %sample_rate50, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %rate)
  %28 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %comm_page.i, align 4
  %sample_rate52 = getelementptr inbounds %struct.comm_page, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %sample_rate52 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %sample_rate52, align 4
  %31 = load ptr, ptr %comm_page.i, align 4
  %handshake.i72 = getelementptr inbounds %struct.comm_page, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %handshake.i72 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %handshake.i72, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !472
  tail call void @arm_heavy_mb() #17
  %dsp_registers.i.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 60
  br label %for.body.i74

for.body.i74:                                     ; preds = %if.end.i77.for.body.i74_crit_edge, %do.end49
  %i.09.i = phi i32 [ 0, %do.end49 ], [ %inc.i75, %if.end.i77.for.body.i74_crit_edge ]
  %33 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %34, i32 6
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %36 = and i32 %35, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i73 = icmp eq i32 %36, 0
  br i1 %tobool.not.i73, label %if.then.i, label %if.end.i77

if.then.i:                                        ; preds = %for.body.i74
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !473
  tail call void @arm_heavy_mb() #17
  %37 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i8.i = getelementptr i32, ptr %38, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i, i32 -251658240) #17, !srcloc !474
  br label %return

if.end.i77:                                       ; preds = %for.body.i74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748) #17
  %inc.i75 = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i76 = icmp eq i32 %inc.i75, 100000
  br i1 %exitcond.not.i76, label %do.end3.i, label %if.end.i77.for.body.i74_crit_edge

if.end.i77.for.body.i74_crit_edge:                ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i74

do.end3.i:                                        ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #19
  %card.i78 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %40 = ptrtoint ptr %card.i78 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %card.i78, align 4
  %dev.i79 = getelementptr inbounds %struct.snd_card, ptr %41, i32 0, i32 27
  %42 = ptrtoint ptr %dev.i79 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i79, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.33) #22
  br label %return

return:                                           ; preds = %do.end3.i, %if.then.i, %wait_handshake.exit, %do.end28, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end28 ], [ -5, %wait_handshake.exit ], [ 0, %if.then.i ], [ -16, %do.end3.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_professional_spdif(ptr nocapture noundef %chip, i8 noundef zeroext %prof) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %prof)
  %tobool.not = icmp eq i8 %prof, 0
  %comm_page1 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 26
  %0 = ptrtoint ptr %comm_page1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %comm_page1, align 4
  %flags2 = getelementptr inbounds %struct.comm_page, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags2, align 4
  %and = and i32 %3, -134217729
  %masksel = select i1 %tobool.not, i32 0, i32 134217728
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %flags2, align 4
  %professional_spdif = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 38
  %4 = ptrtoint ptr %professional_spdif to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %prof, ptr %professional_spdif, align 4
  %comm_page.i.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 26
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %entry
  %i.03.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !475
  %5 = ptrtoint ptr %comm_page.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %comm_page.i.i, align 4
  %handshake.i.i = getelementptr inbounds %struct.comm_page, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %handshake.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %handshake.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #17
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 20000
  br i1 %exitcond.not.i.i, label %wait_handshake.exit.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

wait_handshake.exit.i:                            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %card.i.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %10 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.38) #22
  br label %update_flags.exit

if.end.i:                                         ; preds = %for.body.i.i
  %handshake.i.i.le = getelementptr inbounds %struct.comm_page, ptr %6, i32 0, i32 4
  %14 = ptrtoint ptr %handshake.i.i.le to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %handshake.i.i.le, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !472
  tail call void @arm_heavy_mb() #17
  %dsp_registers.i.i.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 60
  br label %for.body.i7.i

for.body.i7.i:                                    ; preds = %if.end.i10.i.for.body.i7.i_crit_edge, %if.end.i
  %i.09.i.i = phi i32 [ 0, %if.end.i ], [ %inc.i8.i, %if.end.i10.i.for.body.i7.i_crit_edge ]
  %15 = ptrtoint ptr %dsp_registers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dsp_registers.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %16, i32 6
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i.i) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %18 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i6.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i6.i, label %if.then.i.i, label %if.end.i10.i

if.then.i.i:                                      ; preds = %for.body.i7.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !473
  tail call void @arm_heavy_mb() #17
  %19 = ptrtoint ptr %dsp_registers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dsp_registers.i.i.i, align 4
  %arrayidx.i8.i.i = getelementptr i32, ptr %20, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i.i, i32 -50331648) #17, !srcloc !474
  br label %update_flags.exit

if.end.i10.i:                                     ; preds = %for.body.i7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #17
  %inc.i8.i = add nuw nsw i32 %i.09.i.i, 1
  %exitcond.not.i9.i = icmp eq i32 %inc.i8.i, 100000
  br i1 %exitcond.not.i9.i, label %do.end3.i.i, label %if.end.i10.i.for.body.i7.i_crit_edge

if.end.i10.i.for.body.i7.i_crit_edge:             ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i7.i

do.end3.i.i:                                      ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #19
  %card.i11.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %22 = ptrtoint ptr %card.i11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card.i11.i, align 4
  %dev.i12.i = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %dev.i12.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i12.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.33) #22
  br label %update_flags.exit

update_flags.exit:                                ; preds = %do.end3.i.i, %if.then.i.i, %wait_handshake.exit.i
  %retval.0.i = phi i32 [ -5, %wait_handshake.exit.i ], [ 0, %if.then.i.i ], [ -16, %do.end3.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_input_clock(ptr nocapture noundef %chip, i16 noundef zeroext %clock_source) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %clock_source to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.180)
  switch i16 %clock_source, label %do.end [
    i16 0, label %sw.bb
    i16 3, label %entry.sw.epilog_crit_edge
    i16 1, label %sw.bb2
    i16 2, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %sample_rate = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 29
  %1 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sample_rate, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %conv = zext i16 %clock_source to i32
  %card = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 27
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.110, i32 noundef %conv) #22
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %clock.0 = phi i16 [ 768, %sw.bb3 ], [ 512, %sw.bb2 ], [ 0, %sw.bb ], [ 256, %entry.sw.epilog_crit_edge ]
  %rate.0 = phi i32 [ 0, %sw.bb3 ], [ 0, %sw.bb2 ], [ %2, %sw.bb ], [ 0, %entry.sw.epilog_crit_edge ]
  %conv5 = trunc i16 %clock_source to i8
  %input_clock = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 33
  %7 = ptrtoint ptr %input_clock to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv5, ptr %input_clock, align 1
  %comm_page = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 26
  %8 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %comm_page, align 4
  %input_clock6 = getelementptr inbounds %struct.comm_page, ptr %9, i32 0, i32 24
  %10 = ptrtoint ptr %input_clock6 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %clock.0, ptr %input_clock6, align 4
  %11 = load ptr, ptr %comm_page, align 4
  %handshake.i = getelementptr inbounds %struct.comm_page, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %handshake.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %handshake.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !472
  tail call void @arm_heavy_mb() #17
  %dsp_registers.i.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 60
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %sw.epilog
  %i.09.i = phi i32 [ 0, %sw.epilog ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %14, i32 6
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %16 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !473
  tail call void @arm_heavy_mb() #17
  %17 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i8.i = getelementptr i32, ptr %18, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i, i32 -285212672) #17, !srcloc !474
  br label %send_vector.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #17
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100000
  br i1 %exitcond.not.i, label %do.end3.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

do.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %20 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.33) #22
  br label %send_vector.exit

send_vector.exit:                                 ; preds = %do.end3.i, %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate.0)
  %tobool.not = icmp eq i32 %rate.0, 0
  br i1 %tobool.not, label %send_vector.exit.cleanup_crit_edge, label %if.then

send_vector.exit.cleanup_crit_edge:               ; preds = %send_vector.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %send_vector.exit
  call void @__sanitizer_cov_trace_pc() #19
  %call7 = tail call fastcc i32 @set_sample_rate(ptr noundef %chip, i32 noundef %rate.0)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %send_vector.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then ], [ 0, %send_vector.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_output_clock(ptr nocapture noundef %chip, i16 noundef zeroext %clock) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %clock to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.181)
  switch i16 %clock, label %do.end [
    i16 2, label %entry.sw.epilog_crit_edge
    i16 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %card = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.112) #22
  br label %return

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %clock.addr.0 = phi i16 [ 1, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  %comm_page.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 26
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %sw.epilog
  %i.03.i = phi i32 [ 0, %sw.epilog ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !475
  %5 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %comm_page.i, align 4
  %handshake.i = getelementptr inbounds %struct.comm_page, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %handshake.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %handshake.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #17
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20000
  br i1 %exitcond.not.i, label %wait_handshake.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

wait_handshake.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %10 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.38) #22
  br label %return

if.end:                                           ; preds = %for.body.i
  %14 = shl nuw nsw i16 %clock.addr.0, 8
  %15 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %comm_page.i, align 4
  %output_clock = getelementptr inbounds %struct.comm_page, ptr %16, i32 0, i32 25
  %17 = ptrtoint ptr %output_clock to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %14, ptr %output_clock, align 2
  %conv2 = trunc i16 %clock.addr.0 to i8
  %output_clock3 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 34
  %18 = ptrtoint ptr %output_clock3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv2, ptr %output_clock3, align 4
  %19 = load ptr, ptr %comm_page.i, align 4
  %handshake.i13 = getelementptr inbounds %struct.comm_page, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %handshake.i13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %handshake.i13, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !472
  tail call void @arm_heavy_mb() #17
  %dsp_registers.i.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 60
  br label %for.body.i15

for.body.i15:                                     ; preds = %if.end.i18.for.body.i15_crit_edge, %if.end
  %i.09.i = phi i32 [ 0, %if.end ], [ %inc.i16, %if.end.i18.for.body.i15_crit_edge ]
  %21 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %22, i32 6
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %24 = and i32 %23, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i14 = icmp eq i32 %24, 0
  br i1 %tobool.not.i14, label %if.then.i, label %if.end.i18

if.then.i:                                        ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !473
  tail call void @arm_heavy_mb() #17
  %25 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i8.i = getelementptr i32, ptr %26, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i, i32 -285212672) #17, !srcloc !474
  br label %return

if.end.i18:                                       ; preds = %for.body.i15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #17
  %inc.i16 = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i17 = icmp eq i32 %inc.i16, 100000
  br i1 %exitcond.not.i17, label %do.end3.i, label %if.end.i18.for.body.i15_crit_edge

if.end.i18.for.body.i15_crit_edge:                ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i15

do.end3.i:                                        ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #19
  %card.i19 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %28 = ptrtoint ptr %card.i19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card.i19, align 4
  %dev.i20 = getelementptr inbounds %struct.snd_card, ptr %29, i32 0, i32 27
  %30 = ptrtoint ptr %dev.i20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i20, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.33) #22
  br label %return

return:                                           ; preds = %do.end3.i, %if.then.i, %wait_handshake.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -5, %wait_handshake.exit ], [ 0, %if.then.i ], [ -16, %do.end3.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_analog_out_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %0 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %number, align 4
  %2 = trunc i32 %1 to i8
  %conv = sub i8 10, %2
  %call1 = tail call fastcc i32 @pcm_open(ptr noundef %substream, i8 noundef signext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %3 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %runtime, align 4
  %call3 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %4, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @hw_rule_playback_channels_by_format, ptr noundef null, i32 noundef 1, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %5 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %runtime, align 4
  %call9 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %6, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @hw_rule_playback_format_by_channels, ptr noundef null, i32 noundef 10, i32 noundef -1) #17
  %7 = tail call i32 @llvm.smin.i32(i32 %call9, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %7, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mode_mutex = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mode_mutex, i32 noundef 0) #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcm_close.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcm_close, %if.then)) #17
          to label %do.end [label %if.then], !srcloc !467

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
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
  %can_set_rate = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 24
  %8 = ptrtoint ptr %can_set_rate to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %can_set_rate, align 2
  %conv = zext i8 %9 to i32
  %rate_set = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 25
  %10 = ptrtoint ptr %rate_set to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rate_set, align 1
  %conv3 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcm_close.__UNIQUE_ID_ddebug268, ptr noundef %5, ptr noundef nonnull @.str.119, i32 noundef %7, i32 noundef %conv, i32 noundef %conv3) #17
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %opencount4 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %opencount4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %opencount4, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %opencount4, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %13, label %do.end.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb7
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  %can_set_rate6 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 24
  %15 = ptrtoint ptr %can_set_rate6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %can_set_rate6, align 2
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  %rate_set8 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 25
  %16 = ptrtoint ptr %rate_set8 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %rate_set8, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb, %do.end.sw.epilog_crit_edge
  tail call void @mutex_unlock(ptr noundef %mode_mutex) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_analog_out_hw_params(ptr noundef %substream, ptr nocapture noundef readonly %hw_params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_pc() #19
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
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #17
  %index = getelementptr inbounds %struct.audiopipe, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %index, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp = icmp sgt i16 %7, -1
  br i1 %cmp, label %do.body, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcm_hw_free.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcm_hw_free, %if.then5)) #17
          to label %do.end [label %if.then5], !srcloc !467

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcm_hw_free.__UNIQUE_ID_ddebug272, ptr noundef %11, ptr noundef nonnull @.str.132, i32 noundef %conv7) #17
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %index, align 8
  %pipe_alloc_mask.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 27
  %16 = ptrtoint ptr %pipe_alloc_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pipe_alloc_mask.i.i, align 4
  %conv.i.i = zext i16 %15 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !471

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 1097, i32 noundef 9, ptr noundef null) #17
  br label %free_pipes.exit

if.end23.i:                                       ; preds = %do.end
  %state.i = getelementptr inbounds %struct.audiopipe, ptr %5, i32 0, i32 10
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp.not.i = icmp eq i8 %19, 0
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %do.end41.i, !prof !468

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
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %conv62.i = sext i16 %15 to i32
  br label %for.body.i

do.end41.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 1099, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %phi.bo.i = xor i32 %or.i, -1
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %for.cond.preheader.i.for.end.i_crit_edge
  %channel_mask.0.lcssa.i = phi i32 [ -1, %for.cond.preheader.i.for.end.i_crit_edge ], [ %phi.bo.i, %for.end.loopexit.i ]
  %and.i = and i32 %channel_mask.0.lcssa.i, %17
  %22 = ptrtoint ptr %pipe_alloc_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and.i, ptr %pipe_alloc_mask.i.i, align 4
  %pipe_cyclic_mask.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 28
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
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  %format = alloca %struct.audioformat, align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %format) #17
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcm_prepare.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcm_prepare, %if.then)) #17
          to label %do.end [label %if.then], !srcloc !467

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcm_prepare.__UNIQUE_ID_ddebug273, ptr noundef %16, ptr noundef nonnull @.str.134, i32 noundef %18, i32 noundef %20, i32 noundef %22) #17
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
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %29, label %do.end19 [
    i32 1, label %do.end.sw.epilog_crit_edge
    i32 2, label %sw.bb9
    i32 32, label %sw.bb11
    i32 11, label %sw.bb13
    i32 10, label %do.end.sw.bb15_crit_edge
  ]

do.end.sw.bb15_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb15

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb13:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %6, align 1
  br label %sw.bb15

sw.bb15:                                          ; preds = %sw.bb13, %do.end.sw.bb15_crit_edge
  br label %sw.epilog

do.end19:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  %card20 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %32 = ptrtoint ptr %card20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %card20, align 4
  %dev21 = getelementptr inbounds %struct.snd_card, ptr %33, i32 0, i32 27
  %34 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev21, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.135, i32 noundef %29) #22
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb11, %sw.bb9, %do.end.sw.epilog_crit_edge
  %.sink = phi i8 [ 32, %sw.bb15 ], [ 24, %sw.bb11 ], [ 16, %sw.bb9 ], [ 8, %do.end.sw.epilog_crit_edge ]
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %.sink, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 21, i16 %12)
  %cmp = icmp sgt i16 %12, 21
  br i1 %cmp, label %do.end40, label %if.end56, !prof !471

do.end40:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 726, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

if.end56:                                         ; preds = %sw.epilog
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #17
  %pipe_alloc_mask.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 27
  %37 = ptrtoint ptr %pipe_alloc_mask.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pipe_alloc_mask.i, align 4
  %conv.i = zext i16 %12 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %38, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool60.not = icmp eq i32 %and.i, 0
  br i1 %tobool60.not, label %do.end78, label %if.end95, !prof !471

do.end78:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 736, i32 noundef 9, ptr noundef null) #17
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #17
  br label %cleanup

if.end95:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @set_audio_format(ptr noundef %1, i16 noundef zeroext %12, ptr noundef nonnull %format)
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end95, %do.end78, %do.end40, %do.end19
  %retval.0 = phi i32 [ -22, %do.end19 ], [ -22, %do.end40 ], [ -22, %do.end78 ], [ 0, %if.end95 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %format) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_trigger(ptr noundef %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond3.preheader

for.cond.loopexit.for.end14_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then:                                          ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body5

for.end14:                                        ; preds = %for.cond.loopexit.for.end14_crit_edge, %entry.for.end14_crit_edge
  %channelmask.0.lcssa = phi i32 [ 0, %entry.for.end14_crit_edge ], [ %channelmask.2, %for.cond.loopexit.for.end14_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %1) #17
  %13 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.184)
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body34.preheader

for.end14.for.body34.preheader_crit_edge:         ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body34.preheader

for.end14.for.body17.preheader_crit_edge151:      ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body17.preheader

for.end14.for.body17.preheader_crit_edge150:      ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body17.preheader

for.end14.for.body17.preheader_crit_edge:         ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body17.preheader

for.end14.sw.epilog68_crit_edge:                  ; preds = %for.end14
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.185)
  switch i8 %21, label %if.then19.for.inc27_crit_edge [
    i8 0, label %sw.bb23
    i8 1, label %if.then19.sw.bb24_crit_edge
  ]

if.then19.sw.bb24_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb24

if.then19.for.inc27_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc27

sw.bb23:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body17

for.end29:                                        ; preds = %for.inc27
  %comm_page.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 26
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.end29
  %i.03.i.i = phi i32 [ 0, %for.end29 ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !475
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
  tail call void %34(i32 noundef 214748) #17
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 20000
  br i1 %exitcond.not.i.i, label %wait_handshake.exit.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

wait_handshake.exit.i:                            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %card.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %35 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %card.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %36, i32 0, i32 27
  %37 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.38) #22
  br label %sw.epilog68

if.end.i:                                         ; preds = %for.body.i.i
  %39 = tail call i32 @llvm.bswap.i32(i32 %channelmask.0.lcssa) #17
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !472
  tail call void @arm_heavy_mb() #17
  %dsp_registers.i.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 60
  br label %for.body.i4.i

for.body.i4.i:                                    ; preds = %if.end.i7.i.for.body.i4.i_crit_edge, %if.then4.i
  %i.09.i.i = phi i32 [ 0, %if.then4.i ], [ %inc.i5.i, %if.end.i7.i.for.body.i4.i_crit_edge ]
  %47 = ptrtoint ptr %dsp_registers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dsp_registers.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %48, i32 6
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i.i) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %50 = and i32 %49, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i3.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i3.i, label %if.then.i.i, label %if.end.i7.i

if.then.i.i:                                      ; preds = %for.body.i4.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !473
  tail call void @arm_heavy_mb() #17
  %51 = ptrtoint ptr %dsp_registers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dsp_registers.i.i.i, align 4
  %arrayidx.i8.i.i = getelementptr i32, ptr %52, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i.i, i32 1962934272) #17, !srcloc !474
  br label %for.body.i15.i.preheader

if.end.i7.i:                                      ; preds = %for.body.i4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748) #17
  %inc.i5.i = add nuw nsw i32 %i.09.i.i, 1
  %exitcond.not.i6.i = icmp eq i32 %inc.i5.i, 100000
  br i1 %exitcond.not.i6.i, label %do.end3.i.i, label %if.end.i7.i.for.body.i4.i_crit_edge

if.end.i7.i.for.body.i4.i_crit_edge:              ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i4.i

do.end3.i.i:                                      ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #19
  %card.i8.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %54 = ptrtoint ptr %card.i8.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %card.i8.i, align 4
  %dev.i9.i = getelementptr inbounds %struct.snd_card, ptr %55, i32 0, i32 27
  %56 = ptrtoint ptr %dev.i9.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i9.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.33) #22
  br label %for.body.i15.i.preheader

for.body.i15.i.preheader:                         ; preds = %do.end3.i.i, %if.then.i.i
  br label %for.body.i15.i

for.body.i15.i:                                   ; preds = %if.end.i18.i.for.body.i15.i_crit_edge, %for.body.i15.i.preheader
  %i.03.i12.i = phi i32 [ %inc.i16.i, %if.end.i18.i.for.body.i15.i_crit_edge ], [ 0, %for.body.i15.i.preheader ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !475
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
  tail call void %62(i32 noundef 214748) #17
  %inc.i16.i = add nuw nsw i32 %i.03.i12.i, 1
  %exitcond.not.i17.i = icmp eq i32 %inc.i16.i, 20000
  br i1 %exitcond.not.i17.i, label %wait_handshake.exit23.i, label %if.end.i18.i.for.body.i15.i_crit_edge

if.end.i18.i.for.body.i15.i_crit_edge:            ; preds = %if.end.i18.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i15.i

wait_handshake.exit23.i:                          ; preds = %if.end.i18.i
  call void @__sanitizer_cov_trace_pc() #19
  %card.i19.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %63 = ptrtoint ptr %card.i19.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %card.i19.i, align 4
  %dev.i20.i = getelementptr inbounds %struct.snd_card, ptr %64, i32 0, i32 27
  %65 = ptrtoint ptr %dev.i20.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i20.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.38) #22
  br label %sw.epilog68

if.end9.i:                                        ; preds = %for.body.i15.i
  call void @__sanitizer_cov_trace_pc() #19
  %active_mask.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 61
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
  call void @__sanitizer_cov_trace_pc() #19
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %70 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %71, i32 0, i32 27
  %72 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.138) #22
  br label %sw.epilog68

for.body34:                                       ; preds = %for.inc45.for.body34_crit_edge, %for.body34.preheader
  %i.2128 = phi i32 [ %inc46, %for.inc45.for.body34_crit_edge ], [ 0, %for.body34.preheader ]
  %shl35 = shl nuw i32 1, %i.2128
  %and36 = and i32 %shl35, %channelmask.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %for.body34.for.inc45_crit_edge, label %if.then38

for.body34.for.inc45_crit_edge:                   ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc45

if.then38:                                        ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body34

for.end47:                                        ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc64

if.then57:                                        ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body53

for.end66:                                        ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #19
  %call67 = tail call fastcc i32 @pause_transport(ptr noundef %1, i32 noundef %channelmask.0.lcssa)
  br label %sw.epilog68

sw.epilog68:                                      ; preds = %for.end66, %for.end47, %do.end.i, %if.end9.i, %wait_handshake.exit23.i, %wait_handshake.exit.i, %for.end14.sw.epilog68_crit_edge
  %err.0 = phi i32 [ %call67, %for.end66 ], [ %call48, %for.end47 ], [ -22, %for.end14.sw.epilog68_crit_edge ], [ 0, %if.end9.i ], [ -22, %do.end.i ], [ -5, %wait_handshake.exit.i ], [ -5, %wait_handshake.exit23.i ]
  tail call void @_raw_spin_unlock(ptr noundef %1) #17
  ret i32 %err.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pcm_pointer(ptr nocapture noundef readonly %substream) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = sext i8 %max_channels to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %max_channels)
  %cmp = icmp slt i8 %max_channels, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
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
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 136) #23
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %index = getelementptr inbounds %struct.audiopipe, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %index, align 8
  %hw = getelementptr inbounds %struct.audiopipe, ptr %call7.i.i, i32 0, i32 7
  %6 = call ptr @memcpy(ptr %hw, ptr @pcm_hardware_skel, i32 64)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcm_open.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcm_open, %if.then9)) #17
          to label %do.end [label %if.then9], !srcloc !467

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  %card = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcm_open.__UNIQUE_ID_ddebug266, ptr noundef %10, ptr noundef nonnull @.str.117, i32 noundef %conv) #17
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
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

if.then21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %18 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv, ptr %channels_max, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %for.end.if.end25_crit_edge
  %digital_mode = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 30
  %19 = ptrtoint ptr %digital_mode to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %digital_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp27 = icmp eq i8 %20, 2
  br i1 %cmp27, label %if.then29, label %if.end25.if.end32_crit_edge

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
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
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #17
  %call37 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 10, ptr noundef %constr) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end32.cleanup_crit_edge, label %if.end41

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end41:                                         ; preds = %if.end32
  %call42 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.end41.cleanup_crit_edge, label %if.end46

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end46:                                         ; preds = %if.end41
  %call47 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %3, i32 noundef 0, i32 noundef 13, i32 noundef 32) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.end46.cleanup_crit_edge, label %if.end51

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end51:                                         ; preds = %if.end46
  %call52 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %3, i32 noundef 0, i32 noundef 17, i32 noundef 32) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.end51.cleanup_crit_edge, label %if.end56

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end56:                                         ; preds = %if.end51
  %27 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %runtime2, align 4
  %call58 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %28, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @hw_rule_sample_rate, ptr noundef %1, i32 noundef 11, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.end56.cleanup_crit_edge, label %if.end62

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end62:                                         ; preds = %if.end56
  %pci = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 13
  %29 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci, align 4
  %dev63 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %sgpage = getelementptr inbounds %struct.audiopipe, ptr %call7.i.i, i32 0, i32 6
  %call.i = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef 2, ptr noundef %dev63, i32 noundef 0, i32 noundef 4096, ptr noundef %sgpage) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp65 = icmp slt i32 %call.i, 0
  br i1 %cmp65, label %do.end70, label %do.body74

do.end70:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #19
  %card71 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %31 = ptrtoint ptr %card71 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %card71, align 4
  %dev72 = getelementptr inbounds %struct.snd_card, ptr %32, i32 0, i32 27
  %33 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev72, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.118) #22
  br label %cleanup

do.body74:                                        ; preds = %if.end62
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcm_open.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcm_open, %if.then86)) #17
          to label %do.end93 [label %if.then86], !srcloc !467

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #19
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
  %can_set_rate = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 24
  %41 = ptrtoint ptr %can_set_rate to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %can_set_rate, align 2
  %conv89 = zext i8 %42 to i32
  %rate_set = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 25
  %43 = ptrtoint ptr %rate_set to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rate_set, align 1
  %conv90 = zext i8 %44 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcm_open.__UNIQUE_ID_ddebug267, ptr noundef %38, ptr noundef nonnull @.str.119, i32 noundef %40, i32 noundef %conv89, i32 noundef %conv90) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end93
  %rate_set99 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 25
  %47 = ptrtoint ptr %rate_set99 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %rate_set99, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool101.not = icmp eq i8 %48, 0
  br i1 %tobool101.not, label %land.lhs.true.cleanup_crit_edge, label %if.then102

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then102:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %can_set_rate103 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 24
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
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %arrayidx.i25 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ch) #17
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
  call void @__sanitizer_cov_trace_switch(i64 %add, ptr @__sancov_gen_cov_switch_values.186)
  switch i64 %add, label %if.else11 [
    i64 2048, label %if.then
    i64 2, label %if.then8
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %ch, align 4
  %7 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %max.i, align 4
  br label %if.end16

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then12:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #19
  %10 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %ch, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.then8, %if.then
  %call17 = call i32 @snd_interval_refine(ptr noundef %arrayidx.i, ptr noundef nonnull %ch) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.else11.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end16 ], [ 0, %if.else11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ch) #17
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hw_rule_playback_format_by_channels(ptr nocapture noundef %params, ptr nocapture noundef readnone %rule) #9 align 64 {
entry:
  %old.i = alloca %struct.snd_mask, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %arrayidx.i50 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %entry.if.end21_crit_edge, label %if.else

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21

if.else:                                          ; preds = %entry
  %max = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 1
  %2 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp6 = icmp eq i32 %3, 1
  br i1 %cmp6, label %if.else.if.end21_crit_edge, label %if.else10

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp12 = icmp eq i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp15 = icmp eq i32 %3, 2
  %or.cond = select i1 %cmp12, i1 %cmp15, i1 false
  br i1 %or.cond, label %if.else10.if.end21_crit_edge, label %if.else10.cleanup_crit_edge

if.else10.cleanup_crit_edge:                      ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else10.if.end21_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21

if.end21:                                         ; preds = %if.else10.if.end21_crit_edge, %if.else.if.end21_crit_edge, %entry.if.end21_crit_edge
  %fmask.0.off0 = phi i32 [ 1028, %entry.if.end21_crit_edge ], [ 3072, %if.else.if.end21_crit_edge ], [ -2049, %if.else10.if.end21_crit_edge ]
  %fmask.0.off32 = phi i32 [ 1, %entry.if.end21_crit_edge ], [ 0, %if.else.if.end21_crit_edge ], [ -1, %if.else10.if.end21_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %old.i) #17
  %4 = call ptr @memcpy(ptr %old.i, ptr %arrayidx.i50, i32 32)
  %5 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i50, align 4
  %and.i.i = and i32 %6, %fmask.0.off0
  store i32 %and.i.i, ptr %arrayidx.i50, align 4
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
  br i1 %or.cond.i, label %if.end21.snd_mask_refine.exit_crit_edge, label %if.end.i

if.end21.snd_mask_refine.exit_crit_edge:          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  br label %snd_mask_refine.exit

if.end.i:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #19
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(8) %arrayidx.i50, ptr noundef nonnull dereferenceable(8) %old.i, i32 8) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i7.i = icmp ne i32 %bcmp.i.i, 0
  %lnot.ext.i = zext i1 %tobool.not.i7.i to i32
  br label %snd_mask_refine.exit

snd_mask_refine.exit:                             ; preds = %if.end.i, %if.end21.snd_mask_refine.exit_crit_edge
  %retval.0.i = phi i32 [ %lnot.ext.i, %if.end.i ], [ -22, %if.end21.snd_mask_refine.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %old.i) #17
  br label %cleanup

cleanup:                                          ; preds = %snd_mask_refine.exit, %if.else10.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %snd_mask_refine.exit ], [ 0, %if.else10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @audiopipe_free(ptr nocapture noundef readonly %runtime) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %sgpage = getelementptr inbounds %struct.audiopipe, ptr %1, i32 0, i32 6
  tail call void @snd_dma_free_pages(ptr noundef %sgpage) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %1) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %fixed) #17
  %2 = call ptr @memset(ptr %fixed, i32 255, i32 12)
  %mode_mutex = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mode_mutex, i32 noundef 0) #17
  %can_set_rate = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 24
  %3 = ptrtoint ptr %can_set_rate to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %can_set_rate, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %openmin.i = getelementptr inbounds %struct.snd_interval, ptr %fixed, i32 0, i32 2
  %5 = ptrtoint ptr %openmin.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %openmin.i, align 4
  %max.i = getelementptr inbounds %struct.snd_interval, ptr %fixed, i32 0, i32 1
  %bf.clear8.i = and i8 %bf.load.i, 15
  store i8 %bf.clear8.i, ptr %openmin.i, align 4
  %sample_rate = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 29
  %6 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sample_rate, align 4
  %8 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %max.i, align 4
  %9 = ptrtoint ptr %fixed to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %fixed, align 4
  %call1 = call i32 @snd_interval_refine(ptr noundef %arrayidx.i, ptr noundef nonnull %fixed) #17
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call1, %if.else ], [ 0, %entry.if.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %mode_mutex) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %fixed) #17
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
  call void @__sanitizer_cov_trace_pc() #19
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
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #17
  %index = getelementptr inbounds %struct.audiopipe, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %index, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp = icmp sgt i16 %7, -1
  br i1 %cmp, label %do.body, label %entry.if.end41_crit_edge

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end41

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_engine.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_engine, %if.then5)) #17
          to label %do.end [label %if.then5], !srcloc !467

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_engine.__UNIQUE_ID_ddebug269, ptr noundef %11, ptr noundef nonnull @.str.122, i32 noundef %conv7) #17
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %index, align 8
  %pipe_alloc_mask.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 27
  %16 = ptrtoint ptr %pipe_alloc_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pipe_alloc_mask.i.i, align 4
  %conv.i.i = zext i16 %15 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %and.i.i = and i32 %shl.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.end.do.end25_crit_edge, label %if.end23.i, !prof !471

do.end.do.end25_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end25

if.end23.i:                                       ; preds = %do.end
  %state.i = getelementptr inbounds %struct.audiopipe, ptr %5, i32 0, i32 10
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp.not.i = icmp eq i8 %19, 0
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %if.end23.i.do.end25_crit_edge, !prof !468

if.end23.i.do.end25_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %phi.bo.i = xor i32 %or.i, -1
  br label %free_pipes.exit

free_pipes.exit:                                  ; preds = %for.end.loopexit.i, %for.cond.preheader.i.free_pipes.exit_crit_edge
  %channel_mask.0.lcssa.i = phi i32 [ -1, %for.cond.preheader.i.free_pipes.exit_crit_edge ], [ %phi.bo.i, %for.end.loopexit.i ]
  %and.i = and i32 %channel_mask.0.lcssa.i, %17
  %22 = ptrtoint ptr %pipe_alloc_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and.i, ptr %pipe_alloc_mask.i.i, align 4
  %pipe_cyclic_mask.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 28
  %23 = ptrtoint ptr %pipe_cyclic_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pipe_cyclic_mask.i, align 4
  %and64.i = and i32 %24, %channel_mask.0.lcssa.i
  store i32 %and64.i, ptr %pipe_cyclic_mask.i, align 4
  br label %if.end31

do.end25:                                         ; preds = %if.end23.i.do.end25_crit_edge, %do.end.do.end25_crit_edge
  %.sink = phi i32 [ 1097, %do.end.do.end25_crit_edge ], [ 1099, %if.end23.i.do.end25_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 554, i32 noundef 9, ptr noundef null) #17
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
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #17
  br i1 %cmp43, label %if.then45, label %if.end52

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  %card50 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %card50 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card50, align 4
  %dev51 = getelementptr inbounds %struct.snd_card, ptr %29, i32 0, i32 27
  %30 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev51, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.123, i32 noundef %pipe_index, i32 noundef %call42) #22
  br label %cleanup

if.end52:                                         ; preds = %if.end41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_engine.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_engine, %if.then66)) #17
          to label %do.body72 [label %if.then66], !srcloc !467

if.then66:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #19
  %card67 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %32 = ptrtoint ptr %card67 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %card67, align 4
  %dev68 = getelementptr inbounds %struct.snd_card, ptr %33, i32 0, i32 27
  %34 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev68, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_engine.__UNIQUE_ID_ddebug270, ptr noundef %35, ptr noundef nonnull @.str.124, i32 noundef %pipe_index) #17
  br label %do.body72

do.body72:                                        ; preds = %if.then66, %if.end52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_engine.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_engine, %if.then84)) #17
          to label %do.end92 [label %if.then84], !srcloc !467

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #19
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_engine.__UNIQUE_ID_ddebug271, ptr noundef %39, ptr noundef nonnull @.str.125, i32 noundef %41, i32 noundef %43, i32 noundef %45) #17
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
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #17
  %comm_page.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 26
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
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_pc() #19
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
  %call.i = tail call i32 @snd_sgbuf_get_addr(ptr noundef %68, i32 noundef %offs.1262) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  %conv.i = sext i16 %70 to i32
  %71 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %area.i, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %call.i) #17
  %arrayidx.i227 = getelementptr %struct.sg_entry, ptr %72, i32 %conv.i
  %74 = ptrtoint ptr %arrayidx.i227 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %arrayidx.i227, align 4
  %75 = tail call i32 @llvm.bswap.i32(i32 %rest.1265) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  %79 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %80, i32 0, i32 27
  %81 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.129) #22
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
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_pc() #19
  %91 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %card.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %92, i32 0, i32 27
  %93 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.129) #22
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
  call void @__sanitizer_cov_trace_pc() #19
  %conv.i234 = sext i16 %70 to i32
  %95 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %area.i, align 4
  %97 = tail call i32 @llvm.bswap.i32(i32 %call.i) #17
  %arrayidx.i236 = getelementptr %struct.sg_entry, ptr %96, i32 %conv.i234
  %98 = ptrtoint ptr %arrayidx.i236 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %arrayidx.i236, align 4
  %99 = tail call i32 @llvm.bswap.i32(i32 %sub106) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  %103 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %card.i, align 4
  %dev.i241 = getelementptr inbounds %struct.snd_card, ptr %104, i32 0, i32 27
  %105 = ptrtoint ptr %dev.i241 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev.i241, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.129) #22
  br label %if.end117

if.end117:                                        ; preds = %do.end.i242, %if.then.i239
  %sub116 = sub i32 %rest.1265, %sub106
  %add121 = add i32 %edge.1263, 4096
  %tobool104.not = icmp eq i32 %sub116, 0
  br i1 %tobool104.not, label %if.end117.for.cond.loopexit_crit_edge, label %if.end117.while.body_crit_edge

if.end117.while.body_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

if.end117.for.cond.loopexit_crit_edge:            ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.loopexit

for.end:                                          ; preds = %for.cond.loopexit.for.end_crit_edge, %do.end92.for.end_crit_edge
  %107 = ptrtoint ptr %sglist_head.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %sglist_head.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %108)
  %cmp.i.i245 = icmp slt i16 %108, 511
  br i1 %cmp.i.i245, label %if.then.i.i252, label %do.end.i.i255

if.then.i.i252:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %109 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %addr.i, align 4
  %conv.i.i247 = sext i16 %108 to i32
  %111 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %area.i, align 4
  %113 = tail call i32 @llvm.bswap.i32(i32 %110) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  %card.i.i253 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %118 = ptrtoint ptr %card.i.i253 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %card.i.i253, align 4
  %dev.i.i254 = getelementptr inbounds %struct.snd_card, ptr %119, i32 0, i32 27
  %120 = ptrtoint ptr %dev.i.i254 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev.i.i254, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.129) #22
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !477
  %arrayidx132 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 1, i32 %pipe_index
  %125 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %substream, ptr %arrayidx132, align 4
  %rate_set = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 25
  %126 = ptrtoint ptr %rate_set to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %rate_set, align 1
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #17
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
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #17
  br label %cleanup

cleanup:                                          ; preds = %sglist_wrap.exit, %if.then45
  %retval.0 = phi i32 [ %call42, %if.then45 ], [ 0, %sglist_wrap.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @allocate_pipes(ptr nocapture noundef %chip, ptr nocapture noundef writeonly %pipe, i32 noundef %pipe_index, i32 noundef %interleave) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @allocate_pipes.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@allocate_pipes, %if.then)) #17
          to label %do.end [label %if.then], !srcloc !467

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %card = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @allocate_pipes.__UNIQUE_ID_ddebug251, ptr noundef %3, ptr noundef nonnull @.str.127, i32 noundef %pipe_index, i32 noundef %interleave) #17
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bad_board = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 37
  %4 = ptrtoint ptr %bad_board to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bad_board, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %for.cond.preheader, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %interleave)
  %cmp48 = icmp sgt i32 %interleave, 0
  br i1 %cmp48, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %channel_mask.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %or, %for.body.for.end_crit_edge ]
  %pipe_alloc_mask = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 27
  %6 = ptrtoint ptr %pipe_alloc_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pipe_alloc_mask, align 4
  %and = and i32 %7, %channel_mask.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end13, label %do.end10

do.end10:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %card11 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %8 = ptrtoint ptr %card11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card11, align 4
  %dev12 = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.128) #22
  br label %cleanup

if.end13:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %comm_page = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 26
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
  %pipe_cyclic_mask = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 28
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
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.187)
  switch i8 %3, label %if.then.sw.epilog_crit_edge [
    i8 16, label %sw.bb
    i8 24, label %sw.bb3
    i8 32, label %sw.bb4
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp17 = icmp eq i8 %1, 1
  br i1 %tobool.not, label %if.else14, label %if.then9

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %spec.select = select i1 %cmp17, i16 9, i16 5
  br label %do.body

if.else14:                                        ; preds = %if.else
  br i1 %cmp17, label %land.lhs.true, label %if.else14.if.else26_crit_edge

if.else14.if.else26_crit_edge:                    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else26

land.lhs.true:                                    ; preds = %if.else14
  %bits_per_sample19 = getelementptr inbounds %struct.audioformat, ptr %format, i32 0, i32 1
  %7 = ptrtoint ptr %bits_per_sample19 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bits_per_sample19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %8)
  %cmp21 = icmp eq i8 %8, 32
  br i1 %cmp21, label %land.lhs.true23, label %land.lhs.true.if.else26_crit_edge

land.lhs.true.if.else26_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else26

land.lhs.true23:                                  ; preds = %land.lhs.true
  %mono_to_stereo = getelementptr inbounds %struct.audioformat, ptr %format, i32 0, i32 2
  %9 = ptrtoint ptr %mono_to_stereo to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mono_to_stereo, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool24.not = icmp eq i8 %10, 0
  br i1 %tobool24.not, label %land.lhs.true23.do.body_crit_edge, label %land.lhs.true23.if.else26_crit_edge

land.lhs.true23.if.else26_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else26

land.lhs.true23.do.body_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

if.else26:                                        ; preds = %land.lhs.true23.if.else26_crit_edge, %land.lhs.true.if.else26_crit_edge, %if.else14.if.else26_crit_edge
  %bits_per_sample27 = getelementptr inbounds %struct.audioformat, ptr %format, i32 0, i32 1
  %11 = ptrtoint ptr %bits_per_sample27 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bits_per_sample27, align 1
  %conv28 = zext i8 %12 to i32
  %13 = add nsw i32 %conv28, -8
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 29)
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %14, label %sw.bb36 [
    i32 0, label %sw.bb29
    i32 3, label %sw.bb52
    i32 2, label %sw.bb44
  ]

sw.bb29:                                          ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp32 = icmp eq i8 %1, 2
  %. = select i1 %cmp32, i16 4, i16 0
  br label %do.body

sw.bb36:                                          ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp39 = icmp eq i8 %1, 2
  %.87 = select i1 %cmp39, i16 5, i16 1
  br label %do.body

sw.bb44:                                          ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp47 = icmp eq i8 %1, 2
  %.88 = select i1 %cmp47, i16 6, i16 2
  br label %do.body

sw.bb52:                                          ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp55 = icmp eq i8 %1, 2
  %.89 = select i1 %cmp55, i16 7, i16 3
  br label %do.body

do.body:                                          ; preds = %sw.bb52, %sw.bb44, %sw.bb36, %sw.bb29, %land.lhs.true23.do.body_crit_edge, %if.then9, %sw.epilog
  %dsp_format.1 = phi i16 [ %or, %sw.epilog ], [ %spec.select, %if.then9 ], [ 8, %land.lhs.true23.do.body_crit_edge ], [ %., %sw.bb29 ], [ %.87, %sw.bb36 ], [ %.88, %sw.bb44 ], [ %.89, %sw.bb52 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_audio_format.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_audio_format, %if.then67)) #17
          to label %do.end [label %if.then67], !srcloc !467

if.then67:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %card = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %conv68 = zext i16 %pipe_index to i32
  %conv69 = zext i16 %dsp_format.1 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_audio_format.__UNIQUE_ID_ddebug248, ptr noundef %19, ptr noundef nonnull @.str.137, i32 noundef %conv68, i32 noundef %conv69) #17
  br label %do.end

do.end:                                           ; preds = %if.then67, %do.body
  %20 = tail call i16 @llvm.bswap.i16(i16 %dsp_format.1)
  %comm_page = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 26
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pause_transport(ptr nocapture noundef %chip, i32 noundef %channel_mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %comm_page.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 26
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.03.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !475
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
  tail call void %4(i32 noundef 214748) #17
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20000
  br i1 %exitcond.not.i, label %wait_handshake.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

wait_handshake.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %5 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.38) #22
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !472
  tail call void @arm_heavy_mb() #17
  %dsp_registers.i.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 60
  br label %for.body.i37

for.body.i37:                                     ; preds = %if.end.i40.for.body.i37_crit_edge, %if.then5
  %i.09.i = phi i32 [ 0, %if.then5 ], [ %inc.i38, %if.end.i40.for.body.i37_crit_edge ]
  %20 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %21, i32 6
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i36 = icmp eq i32 %23, 0
  br i1 %tobool.not.i36, label %if.then.i, label %if.end.i40

if.then.i:                                        ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !473
  tail call void @arm_heavy_mb() #17
  %24 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i8.i = getelementptr i32, ptr %25, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i, i32 -150994944) #17, !srcloc !474
  br label %for.body.i48.preheader

if.end.i40:                                       ; preds = %for.body.i37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748) #17
  %inc.i38 = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i39 = icmp eq i32 %inc.i38, 100000
  br i1 %exitcond.not.i39, label %do.end3.i, label %if.end.i40.for.body.i37_crit_edge

if.end.i40.for.body.i37_crit_edge:                ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i37

do.end3.i:                                        ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #19
  %card.i41 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %27 = ptrtoint ptr %card.i41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %card.i41, align 4
  %dev.i42 = getelementptr inbounds %struct.snd_card, ptr %28, i32 0, i32 27
  %29 = ptrtoint ptr %dev.i42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i42, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.33) #22
  br label %for.body.i48.preheader

for.body.i48.preheader:                           ; preds = %do.end3.i, %if.then.i
  br label %for.body.i48

for.body.i48:                                     ; preds = %if.end.i51.for.body.i48_crit_edge, %for.body.i48.preheader
  %i.03.i45 = phi i32 [ %inc.i49, %if.end.i51.for.body.i48_crit_edge ], [ 0, %for.body.i48.preheader ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !475
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
  tail call void %35(i32 noundef 214748) #17
  %inc.i49 = add nuw nsw i32 %i.03.i45, 1
  %exitcond.not.i50 = icmp eq i32 %inc.i49, 20000
  br i1 %exitcond.not.i50, label %wait_handshake.exit56, label %if.end.i51.for.body.i48_crit_edge

if.end.i51.for.body.i48_crit_edge:                ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i48

wait_handshake.exit56:                            ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #19
  %card.i52 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %36 = ptrtoint ptr %card.i52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %card.i52, align 4
  %dev.i53 = getelementptr inbounds %struct.snd_card, ptr %37, i32 0, i32 27
  %38 = ptrtoint ptr %dev.i53 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i53, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.38) #22
  br label %return

if.end10:                                         ; preds = %for.body.i48
  call void @__sanitizer_cov_trace_pc() #19
  %neg = xor i32 %channel_mask, -1
  %active_mask = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 61
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
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pause_transport.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pause_transport, %if.then20)) #17
          to label %return [label %if.then20], !srcloc !467

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %card = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %47 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %48, i32 0, i32 27
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pause_transport.__UNIQUE_ID_ddebug249, ptr noundef %50, ptr noundef nonnull @.str.141) #17
  br label %return

return:                                           ; preds = %if.then20, %do.body, %if.end10, %wait_handshake.exit56, %wait_handshake.exit
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -5, %wait_handshake.exit ], [ -5, %wait_handshake.exit56 ], [ 0, %if.then20 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_analog_in_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %3 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %runtime, align 4
  %call3 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %4, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @hw_rule_capture_channels_by_format, ptr noundef null, i32 noundef 1, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %5 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %runtime, align 4
  %call9 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %6, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @hw_rule_capture_format_by_channels, ptr noundef null, i32 noundef 10, i32 noundef -1) #17
  %7 = tail call i32 @llvm.smin.i32(i32 %call9, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %7, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_analog_in_hw_params(ptr noundef %substream, ptr nocapture noundef readonly %hw_params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %0 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %number, align 4
  %add = add i32 %1, 12
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
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %arrayidx.i23 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ch) #17
  %0 = call ptr @memset(ptr %ch, i32 255, i32 12)
  %openmin.i = getelementptr inbounds %struct.snd_interval, ptr %ch, i32 0, i32 2
  %max.i = getelementptr inbounds %struct.snd_interval, ptr %ch, i32 0, i32 1
  %1 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i23, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %2, label %entry.cleanup_crit_edge [
    i32 2048, label %entry.cleanup.sink.split_crit_edge
    i32 2, label %if.then9
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then9, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 2, %if.then9 ], [ 1, %entry.cleanup.sink.split_crit_edge ]
  %4 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %ch, align 4
  %5 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %max.i, align 4
  %6 = ptrtoint ptr %openmin.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 47, ptr %openmin.i, align 4
  %call16 = call i32 @snd_interval_refine(ptr noundef %arrayidx.i, ptr noundef nonnull %ch) #17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call16, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ch) #17
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hw_rule_capture_format_by_channels(ptr nocapture noundef %params, ptr nocapture noundef readnone %rule) #9 align 64 {
entry:
  %old.i21 = alloca %struct.snd_mask, align 4
  %old.i = alloca %struct.snd_mask, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %arrayidx.i20 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %old.i) #17
  %2 = call ptr @memcpy(ptr %old.i, ptr %arrayidx.i20, i32 32)
  %3 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i20, align 4
  %and.i.i = and i32 %4, -2049
  store i32 %and.i.i, ptr %arrayidx.i20, align 4
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %snd_mask_refine.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(8) %arrayidx.i20, ptr noundef nonnull dereferenceable(8) %old.i, i32 8) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i7.i = icmp ne i32 %bcmp.i.i, 0
  %lnot.ext.i = zext i1 %tobool.not.i7.i to i32
  br label %snd_mask_refine.exit

snd_mask_refine.exit:                             ; preds = %if.end.i, %if.then.snd_mask_refine.exit_crit_edge
  %retval.0.i = phi i32 [ %lnot.ext.i, %if.end.i ], [ -22, %if.then.snd_mask_refine.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %old.i) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp5 = icmp ugt i32 %1, 2
  br i1 %cmp5, label %if.then7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %old.i21) #17
  %7 = call ptr @memcpy(ptr %old.i21, ptr %arrayidx.i20, i32 32)
  %8 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i20, align 4
  %and.i.i22 = and i32 %9, -2051
  store i32 %and.i.i22, ptr %arrayidx.i20, align 4
  %arrayidx2.1.i.i24 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx2.1.i.i24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.1.i.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i22)
  %tobool.not.i.i26 = icmp eq i32 %and.i.i22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.1.i.not.i27 = icmp eq i32 %11, 0
  %or.cond.i28 = select i1 %tobool.not.i.i26, i1 %tobool.not.1.i.not.i27, i1 false
  br i1 %or.cond.i28, label %if.then7.snd_mask_refine.exit34_crit_edge, label %if.end.i32

if.then7.snd_mask_refine.exit34_crit_edge:        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #19
  br label %snd_mask_refine.exit34

if.end.i32:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #19
  %bcmp.i.i29 = call i32 @bcmp(ptr noundef dereferenceable(8) %arrayidx.i20, ptr noundef nonnull dereferenceable(8) %old.i21, i32 8) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i29)
  %tobool.not.i7.i30 = icmp ne i32 %bcmp.i.i29, 0
  %lnot.ext.i31 = zext i1 %tobool.not.i7.i30 to i32
  br label %snd_mask_refine.exit34

snd_mask_refine.exit34:                           ; preds = %if.end.i32, %if.then7.snd_mask_refine.exit34_crit_edge
  %retval.0.i33 = phi i32 [ %lnot.ext.i31, %if.end.i32 ], [ -22, %if.then7.snd_mask_refine.exit34_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %old.i21) #17
  br label %cleanup

cleanup:                                          ; preds = %snd_mask_refine.exit34, %if.end.cleanup_crit_edge, %snd_mask_refine.exit
  %retval.0 = phi i32 [ %retval.0.i, %snd_mask_refine.exit ], [ %retval.0.i33, %snd_mask_refine.exit34 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_digital_out_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number, align 4
  %mode_mutex = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mode_mutex, i32 noundef 0) #17
  %4 = trunc i32 %3 to i8
  %conv2 = sub i8 2, %4
  %call3 = tail call fastcc i32 @pcm_open(ptr noundef %substream, i8 noundef signext %conv2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp7 = icmp slt i32 %call3, 0
  br i1 %cmp7, label %entry.dout_exit_crit_edge, label %if.end10

entry.dout_exit_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %dout_exit

if.end10:                                         ; preds = %entry
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %5 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %runtime, align 4
  %call11 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %6, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @hw_rule_playback_channels_by_format, ptr noundef null, i32 noundef 1, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end10.dout_exit_crit_edge, label %if.end15

if.end10.dout_exit_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %dout_exit

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  %7 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %runtime, align 4
  %call17 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %8, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @hw_rule_playback_format_by_channels, ptr noundef null, i32 noundef 10, i32 noundef -1) #17
  br label %dout_exit

dout_exit:                                        ; preds = %if.end15, %if.end10.dout_exit_crit_edge, %entry.dout_exit_crit_edge
  %err.1 = phi i32 [ %call3, %entry.dout_exit_crit_edge ], [ %call11, %if.end10.dout_exit_crit_edge ], [ %call17, %if.end15 ]
  tail call void @mutex_unlock(ptr noundef %mode_mutex) #17
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_digital_out_hw_params(ptr noundef %substream, ptr nocapture noundef readonly %hw_params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %0 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %number, align 4
  %add = add i32 %1, 10
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i, align 4
  %call2 = tail call fastcc i32 @init_engine(ptr noundef %substream, ptr noundef %hw_params, i32 noundef %add, i32 noundef %3)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_digital_in_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number, align 4
  %mode_mutex = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mode_mutex, i32 noundef 0) #17
  %4 = trunc i32 %3 to i8
  %conv2 = sub i8 2, %4
  %call3 = tail call fastcc i32 @pcm_open(ptr noundef %substream, i8 noundef signext %conv2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp7 = icmp slt i32 %call3, 0
  br i1 %cmp7, label %entry.din_exit_crit_edge, label %if.end10

entry.din_exit_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %din_exit

if.end10:                                         ; preds = %entry
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %5 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %runtime, align 4
  %call11 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %6, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @hw_rule_capture_channels_by_format, ptr noundef null, i32 noundef 1, i32 noundef -1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end10.din_exit_crit_edge, label %if.end15

if.end10.din_exit_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %din_exit

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  %7 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %runtime, align 4
  %call17 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %8, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @hw_rule_capture_format_by_channels, ptr noundef null, i32 noundef 10, i32 noundef -1) #17
  br label %din_exit

din_exit:                                         ; preds = %if.end15, %if.end10.din_exit_crit_edge, %entry.din_exit_crit_edge
  %err.1 = phi i32 [ %call3, %entry.din_exit_crit_edge ], [ %call11, %if.end10.din_exit_crit_edge ], [ %call17, %if.end15 ]
  tail call void @mutex_unlock(ptr noundef %mode_mutex) #17
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_digital_in_hw_params(ptr noundef %substream, ptr nocapture noundef readonly %hw_params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %0 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %number, align 4
  %add = add i32 %1, 20
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i, align 4
  %call2 = tail call fastcc i32 @init_engine(ptr noundef %substream, ptr noundef %hw_params, i32 noundef %add, i32 noundef %3)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_rawmidi_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_echo_midi_input_open(ptr noundef %substream) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %midi_in = getelementptr inbounds %struct.echoaudio, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %midi_in to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %midi_in, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_echo_midi_input_close(ptr nocapture noundef readonly %substream) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %midi_in = getelementptr inbounds %struct.echoaudio, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %midi_in to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %midi_in, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_echo_midi_input_trigger(ptr nocapture noundef readonly %substream, i32 noundef %up) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %midi_input_enabled = getelementptr inbounds %struct.echoaudio, ptr %3, i32 0, i32 45
  %4 = ptrtoint ptr %midi_input_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %midi_input_enabled, align 1
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %up)
  %cmp.not = icmp eq i32 %conv, %up
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #17
  %conv2 = trunc i32 %up to i8
  tail call fastcc void @enable_midi_input(ptr noundef %3, i8 noundef zeroext %conv2)
  tail call void @_raw_spin_unlock_irq(ptr noundef %3) #17
  %6 = ptrtoint ptr %midi_input_enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv2, ptr %midi_input_enabled, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_echo_midi_output_open(ptr noundef %substream) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %tinuse = getelementptr inbounds %struct.echoaudio, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %tinuse to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %tinuse, align 4
  %midi_full = getelementptr inbounds %struct.echoaudio, ptr %3, i32 0, i32 23
  %5 = ptrtoint ptr %midi_full to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %midi_full, align 1
  %midi_out = getelementptr inbounds %struct.echoaudio, ptr %3, i32 0, i32 20
  %6 = ptrtoint ptr %midi_out to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %substream, ptr %midi_out, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_echo_midi_output_close(ptr nocapture noundef readonly %substream) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %midi_out = getelementptr inbounds %struct.echoaudio, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %midi_out to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %midi_out, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_echo_midi_output_trigger(ptr nocapture noundef readonly %substream, i32 noundef %up) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_echo_midi_output_trigger.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_echo_midi_output_trigger, %if.then)) #17
          to label %do.end [label %if.then], !srcloc !467

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %card = getelementptr inbounds %struct.echoaudio, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_echo_midi_output_trigger.__UNIQUE_ID_ddebug285, ptr noundef %7, ptr noundef nonnull @.str.143, i32 noundef %up) #17
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool3.not = icmp eq i32 %up, 0
  %tinuse12 = getelementptr inbounds %struct.echoaudio, ptr %3, i32 0, i32 22
  %8 = ptrtoint ptr %tinuse12 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tinuse12, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool13.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %do.end
  br i1 %tobool13.not, label %do.body7, label %if.then4.land.lhs.true_crit_edge

if.then4.land.lhs.true_crit_edge:                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true

do.body7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  %timer = getelementptr inbounds %struct.echoaudio, ptr %3, i32 0, i32 21
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @snd_echo_midi_output_write, i32 noundef 0, ptr noundef nonnull @.str.144, ptr noundef nonnull @snd_echo_midi_output_trigger.__key) #17
  %10 = ptrtoint ptr %tinuse12 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %tinuse12, align 4
  br label %land.lhs.true

if.else:                                          ; preds = %do.end
  br i1 %tobool13.not, label %if.end44.critedge, label %if.then14

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %11 = ptrtoint ptr %tinuse12 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %tinuse12, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %3) #17
  %timer17 = getelementptr inbounds %struct.echoaudio, ptr %3, i32 0, i32 21
  %call18 = tail call i32 @del_timer_sync(ptr noundef %timer17) #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_echo_midi_output_trigger.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_echo_midi_output_trigger, %if.then31)) #17
          to label %cleanup [label %if.then31], !srcloc !467

if.then31:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #19
  %card32 = getelementptr inbounds %struct.echoaudio, ptr %3, i32 0, i32 11
  %12 = ptrtoint ptr %card32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card32, align 4
  %dev33 = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev33, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_echo_midi_output_trigger.__UNIQUE_ID_ddebug286, ptr noundef %15, ptr noundef nonnull @.str.145) #17
  br label %cleanup

land.lhs.true:                                    ; preds = %do.body7, %if.then4.land.lhs.true_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %3) #17
  %midi_full = getelementptr inbounds %struct.echoaudio, ptr %3, i32 0, i32 23
  %16 = ptrtoint ptr %midi_full to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %midi_full, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool41.not = icmp eq i8 %17, 0
  br i1 %tobool41.not, label %if.then42, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %timer43 = getelementptr inbounds %struct.echoaudio, ptr %3, i32 0, i32 21
  tail call void @snd_echo_midi_output_write(ptr noundef %timer43)
  br label %cleanup

if.end44.critedge:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_irq(ptr noundef %3) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end44.critedge, %if.then42, %land.lhs.true.cleanup_crit_edge, %if.then31, %if.then14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_echo_midi_output_write(ptr noundef %t) #2 align 64 {
entry:
  %buf = alloca [31 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -356
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %buf) #17
  %0 = call ptr @memset(ptr %buf, i32 255, i32 31)
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #17
  %midi_full = getelementptr i8, ptr %t, i32 49
  %1 = ptrtoint ptr %midi_full to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %midi_full, align 1
  %midi_out = getelementptr i8, ptr %t, i32 -4
  %2 = ptrtoint ptr %midi_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %midi_out, align 4
  %call6 = tail call i32 @snd_rawmidi_transmit_empty(ptr noundef %3) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end74_crit_edge

entry.if.end74_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end74

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %midi_out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %midi_out, align 4
  %call8 = call i32 @snd_rawmidi_transmit_peek(ptr noundef %5, ptr noundef nonnull %buf, i32 noundef 31) #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_echo_midi_output_write.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_echo_midi_output_write, %if.then15)) #17
          to label %do.end17 [label %if.then15], !srcloc !467

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %card = getelementptr i8, ptr %t, i32 -40
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_echo_midi_output_write.__UNIQUE_ID_ddebug281, ptr noundef %9, ptr noundef nonnull @.str.147, i32 noundef %call8) #17
  br label %do.end17

do.end17:                                         ; preds = %if.then15, %if.then
  %call19 = call fastcc i32 @write_midi(ptr noundef %add.ptr, ptr noundef nonnull %buf, i32 noundef %call8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end25, label %if.else

do.end25:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #19
  %card26 = getelementptr i8, ptr %t, i32 -40
  %10 = ptrtoint ptr %card26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card26, align 4
  %dev27 = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev27, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.148, i32 noundef %call19) #22
  %14 = ptrtoint ptr %midi_full to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %midi_full, align 1
  br label %if.end74

if.else:                                          ; preds = %do.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp29.not = icmp eq i32 %call19, 0
  br i1 %cmp29.not, label %do.body53, label %do.body32

do.body32:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_echo_midi_output_write.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_echo_midi_output_write, %if.then44)) #17
          to label %do.end49 [label %if.then44], !srcloc !467

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #19
  %card45 = getelementptr i8, ptr %t, i32 -40
  %15 = ptrtoint ptr %card45 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card45, align 4
  %dev46 = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev46, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_echo_midi_output_write.__UNIQUE_ID_ddebug282, ptr noundef %18, ptr noundef nonnull @.str.149, i32 noundef %call19) #17
  br label %do.end49

do.end49:                                         ; preds = %if.then44, %do.body32
  %19 = ptrtoint ptr %midi_out to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %midi_out, align 4
  %call51 = call i32 @snd_rawmidi_transmit_ack(ptr noundef %20, i32 noundef %call19) #17
  %phi.bo = shl i32 %call19, 3
  %phi.bo131 = sdiv i32 %phi.bo, 25
  %21 = mul i32 %phi.bo131, 100
  %phi.bo134 = add i32 %21, 1099
  %phi.bo135 = sdiv i32 %phi.bo134, 1000
  br label %if.end74

do.body53:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_echo_midi_output_write.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_echo_midi_output_write, %if.then65)) #17
          to label %do.end70 [label %if.then65], !srcloc !467

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #19
  %card66 = getelementptr i8, ptr %t, i32 -40
  %22 = ptrtoint ptr %card66 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card66, align 4
  %dev67 = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev67, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_echo_midi_output_write.__UNIQUE_ID_ddebug283, ptr noundef %25, ptr noundef nonnull @.str.150) #17
  br label %do.end70

do.end70:                                         ; preds = %if.then65, %do.body53
  %26 = ptrtoint ptr %midi_full to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %midi_full, align 1
  br label %if.end74

if.end74:                                         ; preds = %do.end70, %do.end49, %do.end25, %entry.if.end74_crit_edge
  %sent.0 = phi i32 [ 1, %entry.if.end74_crit_edge ], [ 289, %do.end25 ], [ %phi.bo135, %do.end49 ], [ 2, %do.end70 ]
  %27 = ptrtoint ptr %midi_out to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %midi_out, align 4
  %call76 = call i32 @snd_rawmidi_transmit_empty(ptr noundef %28) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %land.lhs.true, label %if.end74.if.end106_crit_edge

if.end74.if.end106_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end106

land.lhs.true:                                    ; preds = %if.end74
  %tinuse = getelementptr i8, ptr %t, i32 48
  %29 = ptrtoint ptr %tinuse to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %tinuse, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool79.not = icmp eq i8 %30, 0
  br i1 %tobool79.not, label %land.lhs.true.if.end106_crit_edge, label %if.then80

land.lhs.true.if.end106_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end106

if.then80:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %add83 = add i32 %31, %sent.0
  %call84 = call i32 @mod_timer(ptr noundef %t, i32 noundef %add83) #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_echo_midi_output_write.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_echo_midi_output_write, %if.then97)) #17
          to label %if.end106 [label %if.then97], !srcloc !467

if.then97:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #19
  %card98 = getelementptr i8, ptr %t, i32 -40
  %32 = ptrtoint ptr %card98 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %card98, align 4
  %dev99 = getelementptr inbounds %struct.snd_card, ptr %33, i32 0, i32 27
  %34 = ptrtoint ptr %dev99 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev99, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_echo_midi_output_write.__UNIQUE_ID_ddebug284, ptr noundef %35, ptr noundef nonnull @.str.151, i32 noundef %sent.0) #17
  br label %if.end106

if.end106:                                        ; preds = %if.then97, %if.then80, %land.lhs.true.if.end106_crit_edge, %if.end74.if.end106_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #17
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %buf) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit_empty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit_peek(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_midi(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %data, i32 noundef %bytes) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %bytes, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %0)
  %1 = icmp ult i32 %0, -31
  br i1 %1, label %do.end, label %if.end22, !prof !471

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 62, i32 noundef 9, ptr noundef null) #17
  br label %return

if.end22:                                         ; preds = %entry
  %comm_page.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 26
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end22
  %i.03.i = phi i32 [ 0, %if.end22 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !475
  %2 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %comm_page.i, align 4
  %handshake.i = getelementptr inbounds %struct.comm_page, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %handshake.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handshake.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end25

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #17
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20000
  br i1 %exitcond.not.i, label %wait_handshake.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

wait_handshake.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %7 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.38) #22
  br label %return

if.end25:                                         ; preds = %for.body.i
  %dsp_registers.i = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 60
  %11 = ptrtoint ptr %dsp_registers.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dsp_registers.i, align 4
  %arrayidx.i = getelementptr i32, ptr %12, i32 5
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %14 = and i32 %13, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool27.not = icmp eq i32 %14, 0
  br i1 %tobool27.not, label %if.end25.return_crit_edge, label %if.end29

if.end25.return_crit_edge:                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end29:                                         ; preds = %if.end25
  %conv = trunc i32 %bytes to i8
  %15 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %comm_page.i, align 4
  %midi_output = getelementptr inbounds %struct.comm_page, ptr %16, i32 0, i32 35
  %17 = ptrtoint ptr %midi_output to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %midi_output, align 4
  %18 = load ptr, ptr %comm_page.i, align 4
  %arrayidx32 = getelementptr %struct.comm_page, ptr %18, i32 0, i32 35, i32 1
  %19 = call ptr @memcpy(ptr %arrayidx32, ptr %data, i32 %bytes)
  %20 = load ptr, ptr %comm_page.i, align 4
  %midi_out_free_count = getelementptr inbounds %struct.comm_page, ptr %20, i32 0, i32 29
  %21 = ptrtoint ptr %midi_out_free_count to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %midi_out_free_count, align 4
  %22 = load ptr, ptr %comm_page.i, align 4
  %handshake.i64 = getelementptr inbounds %struct.comm_page, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %handshake.i64 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %handshake.i64, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !472
  tail call void @arm_heavy_mb() #17
  br label %for.body.i66

for.body.i66:                                     ; preds = %if.end.i69.for.body.i66_crit_edge, %if.end29
  %i.09.i = phi i32 [ 0, %if.end29 ], [ %inc.i67, %if.end.i69.for.body.i66_crit_edge ]
  %24 = ptrtoint ptr %dsp_registers.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dsp_registers.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %25, i32 6
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %27 = and i32 %26, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i65 = icmp eq i32 %27, 0
  br i1 %tobool.not.i65, label %if.then.i, label %if.end.i69

if.then.i:                                        ; preds = %for.body.i66
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !473
  tail call void @arm_heavy_mb() #17
  %28 = ptrtoint ptr %dsp_registers.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dsp_registers.i, align 4
  %arrayidx.i8.i = getelementptr i32, ptr %29, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i, i32 -184549376) #17, !srcloc !474
  br label %send_vector.exit

if.end.i69:                                       ; preds = %for.body.i66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #17
  %inc.i67 = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i68 = icmp eq i32 %inc.i67, 100000
  br i1 %exitcond.not.i68, label %do.end3.i, label %if.end.i69.for.body.i66_crit_edge

if.end.i69.for.body.i66_crit_edge:                ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i66

do.end3.i:                                        ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #19
  %card.i70 = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %31 = ptrtoint ptr %card.i70 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %card.i70, align 4
  %dev.i71 = getelementptr inbounds %struct.snd_card, ptr %32, i32 0, i32 27
  %33 = ptrtoint ptr %dev.i71 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i71, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.33) #22
  br label %send_vector.exit

send_vector.exit:                                 ; preds = %do.end3.i, %if.then.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @write_midi.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@write_midi, %if.then45)) #17
          to label %return [label %if.then45], !srcloc !467

if.then45:                                        ; preds = %send_vector.exit
  call void @__sanitizer_cov_trace_pc() #19
  %card = getelementptr inbounds %struct.echoaudio, ptr %chip, i32 0, i32 11
  %35 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %36, i32 0, i32 27
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @write_midi.__UNIQUE_ID_ddebug280, ptr noundef %38, ptr noundef nonnull @.str.153, i32 noundef %bytes) #17
  br label %return

return:                                           ; preds = %if.then45, %send_vector.exit, %if.end25.return_crit_edge, %wait_handshake.exit, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -5, %wait_handshake.exit ], [ 0, %if.end25.return_crit_edge ], [ %bytes, %if.then45 ], [ %bytes, %send_vector.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit_ack(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_echo_output_gain_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 12, ptr %count, align 8
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

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_echo_output_gain_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %arrayidx = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 48, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %value, align 4
  %arrayidx.1 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 48, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = sext i8 %6 to i32
  %arrayidx1.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv.1, ptr %arrayidx1.1, align 4
  %arrayidx.2 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 48, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = sext i8 %9 to i32
  %arrayidx1.2 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv.2, ptr %arrayidx1.2, align 4
  %arrayidx.3 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 48, i32 3
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = sext i8 %12 to i32
  %arrayidx1.3 = getelementptr [128 x i32], ptr %value, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv.3, ptr %arrayidx1.3, align 4
  %arrayidx.4 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 48, i32 4
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = sext i8 %15 to i32
  %arrayidx1.4 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv.4, ptr %arrayidx1.4, align 4
  %arrayidx.5 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 48, i32 5
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = sext i8 %18 to i32
  %arrayidx1.5 = getelementptr [128 x i32], ptr %value, i32 0, i32 5
  %19 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv.5, ptr %arrayidx1.5, align 4
  %arrayidx.6 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 48, i32 6
  %20 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.6, align 1
  %conv.6 = sext i8 %21 to i32
  %arrayidx1.6 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx1.6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv.6, ptr %arrayidx1.6, align 4
  %arrayidx.7 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 48, i32 7
  %23 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.7, align 1
  %conv.7 = sext i8 %24 to i32
  %arrayidx1.7 = getelementptr [128 x i32], ptr %value, i32 0, i32 7
  %25 = ptrtoint ptr %arrayidx1.7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv.7, ptr %arrayidx1.7, align 4
  %arrayidx.8 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 48, i32 8
  %26 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.8, align 1
  %conv.8 = sext i8 %27 to i32
  %arrayidx1.8 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 4
  %28 = ptrtoint ptr %arrayidx1.8 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv.8, ptr %arrayidx1.8, align 4
  %arrayidx.9 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 48, i32 9
  %29 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.9, align 1
  %conv.9 = sext i8 %30 to i32
  %arrayidx1.9 = getelementptr [128 x i32], ptr %value, i32 0, i32 9
  %31 = ptrtoint ptr %arrayidx1.9 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv.9, ptr %arrayidx1.9, align 4
  %arrayidx.10 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 48, i32 10
  %32 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.10, align 1
  %conv.10 = sext i8 %33 to i32
  %arrayidx1.10 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 5
  %34 = ptrtoint ptr %arrayidx1.10 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv.10, ptr %arrayidx1.10, align 4
  %arrayidx.11 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 48, i32 11
  %35 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.11, align 1
  %conv.11 = sext i8 %36 to i32
  %arrayidx1.11 = getelementptr [128 x i32], ptr %value, i32 0, i32 11
  %37 = ptrtoint ptr %arrayidx1.11 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv.11, ptr %arrayidx1.11, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_echo_output_gain_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #17
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %comm_page.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 26
  %card.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %changed.031 = phi i32 [ 0, %entry ], [ %changed.1, %for.inc.for.body_crit_edge ]
  %c.029 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [128 x i32], ptr %value, i32 0, i32 %c.029
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = add i32 %3, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -135, i32 %4)
  %5 = icmp ult i32 %4, -135
  br i1 %5, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx3 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 48, i32 %c.029
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  %conv = sext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp4.not = icmp eq i32 %3, %conv
  br i1 %cmp4.not, label %if.end.for.inc_crit_edge, label %for.body.i.i.preheader

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.i.i.preheader:                           ; preds = %if.end
  %conv8 = trunc i32 %3 to i8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %i.03.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !475
  %8 = ptrtoint ptr %comm_page.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %comm_page.i.i, align 4
  %handshake.i.i = getelementptr inbounds %struct.comm_page, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %handshake.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %handshake.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end26.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #17
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 20000
  br i1 %exitcond.not.i.i, label %wait_handshake.exit.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

wait_handshake.exit.i:                            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %13 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.38) #22
  br label %for.inc

if.end26.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %17 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv8, ptr %arrayidx3, align 1
  %arrayidx28.i = getelementptr %struct.comm_page, ptr %9, i32 0, i32 13, i32 %c.029
  %18 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv8, ptr %arrayidx28.i, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end26.i, %wait_handshake.exit.i, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %changed.1 = phi i32 [ %changed.031, %for.body.for.inc_crit_edge ], [ %changed.031, %if.end.for.inc_crit_edge ], [ 1, %wait_handshake.exit.i ], [ 1, %if.end26.i ]
  %inc = add nuw nsw i32 %c.029, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %changed.1)
  %tobool.not = icmp eq i32 %changed.1, 0
  br i1 %tobool.not, label %for.end.if.end13_crit_edge, label %if.then11

for.end.if.end13_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %call12 = tail call fastcc i32 @update_output_line_level(ptr noundef %1)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %for.end.if.end13_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #17
  ret i32 %changed.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_echo_input_gain_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -50, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 50, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_echo_input_gain_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %arrayidx = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 47, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %value, align 4
  %arrayidx.1 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 47, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = sext i8 %6 to i32
  %arrayidx1.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv.1, ptr %arrayidx1.1, align 4
  %arrayidx.2 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 47, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = sext i8 %9 to i32
  %arrayidx1.2 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv.2, ptr %arrayidx1.2, align 4
  %arrayidx.3 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 47, i32 3
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = sext i8 %12 to i32
  %arrayidx1.3 = getelementptr [128 x i32], ptr %value, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv.3, ptr %arrayidx1.3, align 4
  %arrayidx.4 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 47, i32 4
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = sext i8 %15 to i32
  %arrayidx1.4 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv.4, ptr %arrayidx1.4, align 4
  %arrayidx.5 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 47, i32 5
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = sext i8 %18 to i32
  %arrayidx1.5 = getelementptr [128 x i32], ptr %value, i32 0, i32 5
  %19 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv.5, ptr %arrayidx1.5, align 4
  %arrayidx.6 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 47, i32 6
  %20 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.6, align 1
  %conv.6 = sext i8 %21 to i32
  %arrayidx1.6 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx1.6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv.6, ptr %arrayidx1.6, align 4
  %arrayidx.7 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 47, i32 7
  %23 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.7, align 1
  %conv.7 = sext i8 %24 to i32
  %arrayidx1.7 = getelementptr [128 x i32], ptr %value, i32 0, i32 7
  %25 = ptrtoint ptr %arrayidx1.7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv.7, ptr %arrayidx1.7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_echo_input_gain_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #17
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %comm_page.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 26
  %card.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %changed.030 = phi i32 [ 0, %entry ], [ %changed.1, %for.inc.for.body_crit_edge ]
  %c.028 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [128 x i32], ptr %value, i32 0, i32 %c.028
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = add i32 %3, -51
  call void @__sanitizer_cov_trace_const_cmp4(i32 -101, i32 %4)
  %5 = icmp ult i32 %4, -101
  br i1 %5, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx3 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 47, i32 %c.028
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  %conv = sext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp4.not = icmp eq i32 %3, %conv
  br i1 %cmp4.not, label %if.end.for.inc_crit_edge, label %if.end.for.body.i.i_crit_edge

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %i.03.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.for.body.i.i_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !475
  %8 = ptrtoint ptr %comm_page.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %comm_page.i.i, align 4
  %handshake.i.i = getelementptr inbounds %struct.comm_page, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %handshake.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %handshake.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end26.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #17
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 20000
  br i1 %exitcond.not.i.i, label %wait_handshake.exit.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

wait_handshake.exit.i:                            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %13 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.38) #22
  br label %for.inc

if.end26.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %conv27.i = trunc i32 %3 to i8
  %17 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv27.i, ptr %arrayidx3, align 1
  %conv28.i = add i8 %conv27.i, -56
  %arrayidx30.i = getelementptr %struct.comm_page, ptr %9, i32 0, i32 14, i32 %c.028
  %18 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv28.i, ptr %arrayidx30.i, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end26.i, %wait_handshake.exit.i, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %changed.1 = phi i32 [ %changed.030, %for.body.for.inc_crit_edge ], [ %changed.030, %if.end.for.inc_crit_edge ], [ 1, %wait_handshake.exit.i ], [ 1, %if.end26.i ]
  %inc = add nuw nsw i32 %c.028, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %changed.1)
  %tobool.not = icmp eq i32 %changed.1, 0
  br i1 %tobool.not, label %for.end.if.end12_crit_edge, label %if.then10

for.end.if.end12_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

if.then10:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %call11 = tail call fastcc i32 @update_input_line_level(ptr noundef %1)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.end.if.end12_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #17
  ret i32 %changed.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_echo_output_nominal_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 10, ptr %count, align 8
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

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_echo_output_nominal_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %arrayidx = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 46, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %value, align 4
  %arrayidx.1 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 46, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %6 to i32
  %arrayidx1.1 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv.1, ptr %arrayidx1.1, align 4
  %arrayidx.2 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 46, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %9 to i32
  %arrayidx1.2 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv.2, ptr %arrayidx1.2, align 4
  %arrayidx.3 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 46, i32 3
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %12 to i32
  %arrayidx1.3 = getelementptr [128 x i32], ptr %value, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv.3, ptr %arrayidx1.3, align 4
  %arrayidx.4 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 46, i32 4
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = zext i8 %15 to i32
  %arrayidx1.4 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv.4, ptr %arrayidx1.4, align 4
  %arrayidx.5 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 46, i32 5
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = zext i8 %18 to i32
  %arrayidx1.5 = getelementptr [128 x i32], ptr %value, i32 0, i32 5
  %19 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv.5, ptr %arrayidx1.5, align 4
  %arrayidx.6 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 46, i32 6
  %20 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.6, align 1
  %conv.6 = zext i8 %21 to i32
  %arrayidx1.6 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx1.6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv.6, ptr %arrayidx1.6, align 4
  %arrayidx.7 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 46, i32 7
  %23 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.7, align 1
  %conv.7 = zext i8 %24 to i32
  %arrayidx1.7 = getelementptr [128 x i32], ptr %value, i32 0, i32 7
  %25 = ptrtoint ptr %arrayidx1.7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv.7, ptr %arrayidx1.7, align 4
  %arrayidx.8 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 46, i32 8
  %26 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.8, align 1
  %conv.8 = zext i8 %27 to i32
  %arrayidx1.8 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 4
  %28 = ptrtoint ptr %arrayidx1.8 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv.8, ptr %arrayidx1.8, align 4
  %arrayidx.9 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 46, i32 9
  %29 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.9, align 1
  %conv.9 = zext i8 %30 to i32
  %arrayidx1.9 = getelementptr [128 x i32], ptr %value, i32 0, i32 9
  %31 = ptrtoint ptr %arrayidx1.9 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv.9, ptr %arrayidx1.9, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_echo_output_nominal_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #17
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %comm_page.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 26
  %card.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %changed.028 = phi i32 [ 0, %entry ], [ %changed.1, %for.inc.for.body_crit_edge ]
  %c.026 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 46, i32 %c.026
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %arrayidx1 = getelementptr [128 x i32], ptr %value, i32 0, i32 %c.026
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp2.not = icmp eq i32 %5, %conv
  br i1 %cmp2.not, label %for.body.for.inc_crit_edge, label %for.body.i.i.preheader

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.i.i.preheader:                           ; preds = %for.body
  %conv7 = trunc i32 %5 to i8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %i.03.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !475
  %6 = ptrtoint ptr %comm_page.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %comm_page.i.i, align 4
  %handshake.i.i = getelementptr inbounds %struct.comm_page, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %handshake.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %handshake.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end27.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #17
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 20000
  br i1 %exitcond.not.i.i, label %wait_handshake.exit.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

wait_handshake.exit.i:                            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %11 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.38) #22
  br label %for.inc

if.end27.i:                                       ; preds = %for.body.i.i
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv7, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv7)
  %tobool28.not.i = icmp eq i8 %conv7, 0
  %shl32.i = shl nuw i32 1, %c.026
  br i1 %tobool28.not.i, label %if.else.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #19
  %16 = tail call i32 @llvm.bswap.i32(i32 %shl32.i) #17
  %nominal_level_mask.i = getelementptr inbounds %struct.comm_page, ptr %7, i32 0, i32 23
  %17 = ptrtoint ptr %nominal_level_mask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nominal_level_mask.i, align 4
  %or.i = or i32 %18, %16
  store i32 %or.i, ptr %nominal_level_mask.i, align 4
  br label %for.inc

if.else.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #19
  %19 = xor i32 %shl32.i, -1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #17
  %nominal_level_mask34.i = getelementptr inbounds %struct.comm_page, ptr %7, i32 0, i32 23
  %21 = ptrtoint ptr %nominal_level_mask34.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nominal_level_mask34.i, align 4
  %and.i = and i32 %22, %20
  store i32 %and.i, ptr %nominal_level_mask34.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else.i, %if.then29.i, %wait_handshake.exit.i, %for.body.for.inc_crit_edge
  %changed.1 = phi i32 [ %changed.028, %for.body.for.inc_crit_edge ], [ 1, %wait_handshake.exit.i ], [ 1, %if.then29.i ], [ 1, %if.else.i ]
  %inc = add nuw nsw i32 %c.026, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %changed.1)
  %tobool.not = icmp eq i32 %changed.1, 0
  br i1 %tobool.not, label %for.end.if.end11_crit_edge, label %if.then9

for.end.if.end11_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.then9:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %call10 = tail call fastcc i32 @update_output_line_level(ptr noundef %1)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %for.end.if.end11_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #17
  ret i32 %changed.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_echo_vumeters_switch_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #17
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %conv = trunc i32 %3 to i8
  tail call fastcc void @set_meters_on(ptr noundef %1, i8 noundef zeroext %conv)
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #17
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_echo_vumeters_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
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
define internal i32 @snd_echo_vumeters_get(ptr nocapture noundef readonly %kcontrol, ptr noundef writeonly %ucontrol) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = call ptr @memset(ptr %value, i32 0, i32 384)
  %comm_page.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 26
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
  %arrayidx4.4.i = getelementptr %struct.comm_page, ptr %36, i32 0, i32 11, i32 4
  %37 = ptrtoint ptr %arrayidx4.4.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx4.4.i, align 1
  %conv.4.i = sext i8 %38 to i32
  %arrayidx6.4.i = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 4
  %39 = ptrtoint ptr %arrayidx6.4.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv.4.i, ptr %arrayidx6.4.i, align 4
  %40 = load ptr, ptr %comm_page.i, align 4
  %arrayidx8.4.i = getelementptr %struct.comm_page, ptr %40, i32 0, i32 12, i32 4
  %41 = ptrtoint ptr %arrayidx8.4.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx8.4.i, align 1
  %conv9.4.i = sext i8 %42 to i32
  %arrayidx11.4.i = getelementptr i32, ptr %value, i32 9
  %43 = ptrtoint ptr %arrayidx11.4.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv9.4.i, ptr %arrayidx11.4.i, align 4
  %44 = load ptr, ptr %comm_page.i, align 4
  %arrayidx4.5.i = getelementptr %struct.comm_page, ptr %44, i32 0, i32 11, i32 5
  %45 = ptrtoint ptr %arrayidx4.5.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx4.5.i, align 1
  %conv.5.i = sext i8 %46 to i32
  %arrayidx6.5.i = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 5
  %47 = ptrtoint ptr %arrayidx6.5.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv.5.i, ptr %arrayidx6.5.i, align 4
  %48 = load ptr, ptr %comm_page.i, align 4
  %arrayidx8.5.i = getelementptr %struct.comm_page, ptr %48, i32 0, i32 12, i32 5
  %49 = ptrtoint ptr %arrayidx8.5.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx8.5.i, align 1
  %conv9.5.i = sext i8 %50 to i32
  %arrayidx11.5.i = getelementptr i32, ptr %value, i32 11
  %51 = ptrtoint ptr %arrayidx11.5.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv9.5.i, ptr %arrayidx11.5.i, align 4
  %52 = load ptr, ptr %comm_page.i, align 4
  %arrayidx4.6.i = getelementptr %struct.comm_page, ptr %52, i32 0, i32 11, i32 6
  %53 = ptrtoint ptr %arrayidx4.6.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx4.6.i, align 1
  %conv.6.i = sext i8 %54 to i32
  %arrayidx6.6.i = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 6
  %55 = ptrtoint ptr %arrayidx6.6.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv.6.i, ptr %arrayidx6.6.i, align 4
  %56 = load ptr, ptr %comm_page.i, align 4
  %arrayidx8.6.i = getelementptr %struct.comm_page, ptr %56, i32 0, i32 12, i32 6
  %57 = ptrtoint ptr %arrayidx8.6.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx8.6.i, align 1
  %conv9.6.i = sext i8 %58 to i32
  %arrayidx11.6.i = getelementptr i32, ptr %value, i32 13
  %59 = ptrtoint ptr %arrayidx11.6.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv9.6.i, ptr %arrayidx11.6.i, align 4
  %60 = load ptr, ptr %comm_page.i, align 4
  %arrayidx4.7.i = getelementptr %struct.comm_page, ptr %60, i32 0, i32 11, i32 7
  %61 = ptrtoint ptr %arrayidx4.7.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx4.7.i, align 1
  %conv.7.i = sext i8 %62 to i32
  %arrayidx6.7.i = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 7
  %63 = ptrtoint ptr %arrayidx6.7.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv.7.i, ptr %arrayidx6.7.i, align 4
  %64 = load ptr, ptr %comm_page.i, align 4
  %arrayidx8.7.i = getelementptr %struct.comm_page, ptr %64, i32 0, i32 12, i32 7
  %65 = ptrtoint ptr %arrayidx8.7.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx8.7.i, align 1
  %conv9.7.i = sext i8 %66 to i32
  %arrayidx11.7.i = getelementptr i32, ptr %value, i32 15
  %67 = ptrtoint ptr %arrayidx11.7.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv9.7.i, ptr %arrayidx11.7.i, align 4
  %68 = load ptr, ptr %comm_page.i, align 4
  %arrayidx4.8.i = getelementptr %struct.comm_page, ptr %68, i32 0, i32 11, i32 8
  %69 = ptrtoint ptr %arrayidx4.8.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx4.8.i, align 1
  %conv.8.i = sext i8 %70 to i32
  %arrayidx6.8.i = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 8
  %71 = ptrtoint ptr %arrayidx6.8.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv.8.i, ptr %arrayidx6.8.i, align 4
  %72 = load ptr, ptr %comm_page.i, align 4
  %arrayidx8.8.i = getelementptr %struct.comm_page, ptr %72, i32 0, i32 12, i32 8
  %73 = ptrtoint ptr %arrayidx8.8.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx8.8.i, align 1
  %conv9.8.i = sext i8 %74 to i32
  %arrayidx11.8.i = getelementptr i32, ptr %value, i32 17
  %75 = ptrtoint ptr %arrayidx11.8.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv9.8.i, ptr %arrayidx11.8.i, align 4
  %76 = load ptr, ptr %comm_page.i, align 4
  %arrayidx4.9.i = getelementptr %struct.comm_page, ptr %76, i32 0, i32 11, i32 9
  %77 = ptrtoint ptr %arrayidx4.9.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx4.9.i, align 1
  %conv.9.i = sext i8 %78 to i32
  %arrayidx6.9.i = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 9
  %79 = ptrtoint ptr %arrayidx6.9.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %conv.9.i, ptr %arrayidx6.9.i, align 4
  %80 = load ptr, ptr %comm_page.i, align 4
  %arrayidx8.9.i = getelementptr %struct.comm_page, ptr %80, i32 0, i32 12, i32 9
  %81 = ptrtoint ptr %arrayidx8.9.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx8.9.i, align 1
  %conv9.9.i = sext i8 %82 to i32
  %arrayidx11.9.i = getelementptr i32, ptr %value, i32 19
  %83 = ptrtoint ptr %arrayidx11.9.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv9.9.i, ptr %arrayidx11.9.i, align 4
  %84 = load ptr, ptr %comm_page.i, align 4
  %arrayidx4.10.i = getelementptr %struct.comm_page, ptr %84, i32 0, i32 11, i32 10
  %85 = ptrtoint ptr %arrayidx4.10.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx4.10.i, align 1
  %conv.10.i = sext i8 %86 to i32
  %arrayidx6.10.i = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 10
  %87 = ptrtoint ptr %arrayidx6.10.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv.10.i, ptr %arrayidx6.10.i, align 4
  %88 = load ptr, ptr %comm_page.i, align 4
  %arrayidx8.10.i = getelementptr %struct.comm_page, ptr %88, i32 0, i32 12, i32 10
  %89 = ptrtoint ptr %arrayidx8.10.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx8.10.i, align 1
  %conv9.10.i = sext i8 %90 to i32
  %arrayidx11.10.i = getelementptr i32, ptr %value, i32 21
  %91 = ptrtoint ptr %arrayidx11.10.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %conv9.10.i, ptr %arrayidx11.10.i, align 4
  %92 = load ptr, ptr %comm_page.i, align 4
  %arrayidx4.11.i = getelementptr %struct.comm_page, ptr %92, i32 0, i32 11, i32 11
  %93 = ptrtoint ptr %arrayidx4.11.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx4.11.i, align 1
  %conv.11.i = sext i8 %94 to i32
  %arrayidx6.11.i = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 11
  %95 = ptrtoint ptr %arrayidx6.11.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %conv.11.i, ptr %arrayidx6.11.i, align 4
  %96 = load ptr, ptr %comm_page.i, align 4
  %arrayidx8.11.i = getelementptr %struct.comm_page, ptr %96, i32 0, i32 12, i32 11
  %97 = ptrtoint ptr %arrayidx8.11.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx8.11.i, align 1
  %conv9.11.i = sext i8 %98 to i32
  %arrayidx11.11.i = getelementptr i32, ptr %value, i32 23
  %99 = ptrtoint ptr %arrayidx11.11.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %conv9.11.i, ptr %arrayidx11.11.i, align 4
  %100 = load ptr, ptr %comm_page.i, align 4
  %arrayidx23.i = getelementptr %struct.comm_page, ptr %100, i32 0, i32 11, i32 12
  %101 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx23.i, align 1
  %conv24.i = sext i8 %102 to i32
  %arrayidx26.i = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 16
  %103 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %conv24.i, ptr %arrayidx26.i, align 4
  %104 = load ptr, ptr %comm_page.i, align 4
  %arrayidx29.i = getelementptr %struct.comm_page, ptr %104, i32 0, i32 12, i32 12
  %105 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx29.i, align 1
  %conv30.i = sext i8 %106 to i32
  %arrayidx32.i = getelementptr i32, ptr %value, i32 33
  %107 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %conv30.i, ptr %arrayidx32.i, align 4
  %108 = load ptr, ptr %comm_page.i, align 4
  %arrayidx23.1.i = getelementptr %struct.comm_page, ptr %108, i32 0, i32 11, i32 13
  %109 = ptrtoint ptr %arrayidx23.1.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx23.1.i, align 1
  %conv24.1.i = sext i8 %110 to i32
  %arrayidx26.1.i = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 17
  %111 = ptrtoint ptr %arrayidx26.1.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %conv24.1.i, ptr %arrayidx26.1.i, align 4
  %112 = load ptr, ptr %comm_page.i, align 4
  %arrayidx29.1.i = getelementptr %struct.comm_page, ptr %112, i32 0, i32 12, i32 13
  %113 = ptrtoint ptr %arrayidx29.1.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx29.1.i, align 1
  %conv30.1.i = sext i8 %114 to i32
  %arrayidx32.1.i = getelementptr i32, ptr %value, i32 35
  %115 = ptrtoint ptr %arrayidx32.1.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %conv30.1.i, ptr %arrayidx32.1.i, align 4
  %116 = load ptr, ptr %comm_page.i, align 4
  %arrayidx23.2.i = getelementptr %struct.comm_page, ptr %116, i32 0, i32 11, i32 14
  %117 = ptrtoint ptr %arrayidx23.2.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx23.2.i, align 1
  %conv24.2.i = sext i8 %118 to i32
  %arrayidx26.2.i = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 18
  %119 = ptrtoint ptr %arrayidx26.2.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %conv24.2.i, ptr %arrayidx26.2.i, align 4
  %120 = load ptr, ptr %comm_page.i, align 4
  %arrayidx29.2.i = getelementptr %struct.comm_page, ptr %120, i32 0, i32 12, i32 14
  %121 = ptrtoint ptr %arrayidx29.2.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx29.2.i, align 1
  %conv30.2.i = sext i8 %122 to i32
  %arrayidx32.2.i = getelementptr i32, ptr %value, i32 37
  %123 = ptrtoint ptr %arrayidx32.2.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %conv30.2.i, ptr %arrayidx32.2.i, align 4
  %124 = load ptr, ptr %comm_page.i, align 4
  %arrayidx23.3.i = getelementptr %struct.comm_page, ptr %124, i32 0, i32 11, i32 15
  %125 = ptrtoint ptr %arrayidx23.3.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx23.3.i, align 1
  %conv24.3.i = sext i8 %126 to i32
  %arrayidx26.3.i = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 19
  %127 = ptrtoint ptr %arrayidx26.3.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %conv24.3.i, ptr %arrayidx26.3.i, align 4
  %128 = load ptr, ptr %comm_page.i, align 4
  %arrayidx29.3.i = getelementptr %struct.comm_page, ptr %128, i32 0, i32 12, i32 15
  %129 = ptrtoint ptr %arrayidx29.3.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx29.3.i, align 1
  %conv30.3.i = sext i8 %130 to i32
  %arrayidx32.3.i = getelementptr i32, ptr %value, i32 39
  %131 = ptrtoint ptr %arrayidx32.3.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %conv30.3.i, ptr %arrayidx32.3.i, align 4
  %132 = load ptr, ptr %comm_page.i, align 4
  %arrayidx23.4.i = getelementptr %struct.comm_page, ptr %132, i32 0, i32 11, i32 16
  %133 = ptrtoint ptr %arrayidx23.4.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx23.4.i, align 1
  %conv24.4.i = sext i8 %134 to i32
  %arrayidx26.4.i = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 20
  %135 = ptrtoint ptr %arrayidx26.4.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %conv24.4.i, ptr %arrayidx26.4.i, align 4
  %136 = load ptr, ptr %comm_page.i, align 4
  %arrayidx29.4.i = getelementptr %struct.comm_page, ptr %136, i32 0, i32 12, i32 16
  %137 = ptrtoint ptr %arrayidx29.4.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx29.4.i, align 1
  %conv30.4.i = sext i8 %138 to i32
  %arrayidx32.4.i = getelementptr i32, ptr %value, i32 41
  %139 = ptrtoint ptr %arrayidx32.4.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %conv30.4.i, ptr %arrayidx32.4.i, align 4
  %140 = load ptr, ptr %comm_page.i, align 4
  %arrayidx23.5.i = getelementptr %struct.comm_page, ptr %140, i32 0, i32 11, i32 17
  %141 = ptrtoint ptr %arrayidx23.5.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx23.5.i, align 1
  %conv24.5.i = sext i8 %142 to i32
  %arrayidx26.5.i = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 21
  %143 = ptrtoint ptr %arrayidx26.5.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %conv24.5.i, ptr %arrayidx26.5.i, align 4
  %144 = load ptr, ptr %comm_page.i, align 4
  %arrayidx29.5.i = getelementptr %struct.comm_page, ptr %144, i32 0, i32 12, i32 17
  %145 = ptrtoint ptr %arrayidx29.5.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx29.5.i, align 1
  %conv30.5.i = sext i8 %146 to i32
  %arrayidx32.5.i = getelementptr i32, ptr %value, i32 43
  %147 = ptrtoint ptr %arrayidx32.5.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %conv30.5.i, ptr %arrayidx32.5.i, align 4
  %148 = load ptr, ptr %comm_page.i, align 4
  %arrayidx23.6.i = getelementptr %struct.comm_page, ptr %148, i32 0, i32 11, i32 18
  %149 = ptrtoint ptr %arrayidx23.6.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx23.6.i, align 1
  %conv24.6.i = sext i8 %150 to i32
  %arrayidx26.6.i = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 22
  %151 = ptrtoint ptr %arrayidx26.6.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %conv24.6.i, ptr %arrayidx26.6.i, align 4
  %152 = load ptr, ptr %comm_page.i, align 4
  %arrayidx29.6.i = getelementptr %struct.comm_page, ptr %152, i32 0, i32 12, i32 18
  %153 = ptrtoint ptr %arrayidx29.6.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx29.6.i, align 1
  %conv30.6.i = sext i8 %154 to i32
  %arrayidx32.6.i = getelementptr i32, ptr %value, i32 45
  %155 = ptrtoint ptr %arrayidx32.6.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %conv30.6.i, ptr %arrayidx32.6.i, align 4
  %156 = load ptr, ptr %comm_page.i, align 4
  %arrayidx23.7.i = getelementptr %struct.comm_page, ptr %156, i32 0, i32 11, i32 19
  %157 = ptrtoint ptr %arrayidx23.7.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx23.7.i, align 1
  %conv24.7.i = sext i8 %158 to i32
  %arrayidx26.7.i = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 23
  %159 = ptrtoint ptr %arrayidx26.7.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %conv24.7.i, ptr %arrayidx26.7.i, align 4
  %160 = load ptr, ptr %comm_page.i, align 4
  %arrayidx29.7.i = getelementptr %struct.comm_page, ptr %160, i32 0, i32 12, i32 19
  %161 = ptrtoint ptr %arrayidx29.7.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx29.7.i, align 1
  %conv30.7.i = sext i8 %162 to i32
  %arrayidx32.7.i = getelementptr i32, ptr %value, i32 47
  %163 = ptrtoint ptr %arrayidx32.7.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %conv30.7.i, ptr %arrayidx32.7.i, align 4
  %164 = load ptr, ptr %comm_page.i, align 4
  %arrayidx23.8.i = getelementptr %struct.comm_page, ptr %164, i32 0, i32 11, i32 20
  %165 = ptrtoint ptr %arrayidx23.8.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx23.8.i, align 1
  %conv24.8.i = sext i8 %166 to i32
  %arrayidx26.8.i = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 24
  %167 = ptrtoint ptr %arrayidx26.8.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %conv24.8.i, ptr %arrayidx26.8.i, align 4
  %168 = load ptr, ptr %comm_page.i, align 4
  %arrayidx29.8.i = getelementptr %struct.comm_page, ptr %168, i32 0, i32 12, i32 20
  %169 = ptrtoint ptr %arrayidx29.8.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx29.8.i, align 1
  %conv30.8.i = sext i8 %170 to i32
  %arrayidx32.8.i = getelementptr i32, ptr %value, i32 49
  %171 = ptrtoint ptr %arrayidx32.8.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %conv30.8.i, ptr %arrayidx32.8.i, align 4
  %172 = load ptr, ptr %comm_page.i, align 4
  %arrayidx23.9.i = getelementptr %struct.comm_page, ptr %172, i32 0, i32 11, i32 21
  %173 = ptrtoint ptr %arrayidx23.9.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx23.9.i, align 1
  %conv24.9.i = sext i8 %174 to i32
  %arrayidx26.9.i = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 25
  %175 = ptrtoint ptr %arrayidx26.9.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %conv24.9.i, ptr %arrayidx26.9.i, align 4
  %176 = load ptr, ptr %comm_page.i, align 4
  %arrayidx29.9.i = getelementptr %struct.comm_page, ptr %176, i32 0, i32 12, i32 21
  %177 = ptrtoint ptr %arrayidx29.9.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx29.9.i, align 1
  %conv30.9.i = sext i8 %178 to i32
  %arrayidx32.9.i = getelementptr i32, ptr %value, i32 51
  %179 = ptrtoint ptr %arrayidx32.9.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %conv30.9.i, ptr %arrayidx32.9.i, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_echo_mixer_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
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
define internal i32 @snd_echo_mixer_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 319, i32 %1)
  %cmp = icmp ugt i32 %1, 319
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %rem.lhs.trunc = trunc i32 %1 to i16
  %rem15 = urem i16 %rem.lhs.trunc, 10
  %rem.zext = zext i16 %rem15 to i32
  %div.lhs.trunc = trunc i32 %1 to i16
  %div16 = udiv i16 %div.lhs.trunc, 10
  %div.zext = zext i16 %div16 to i32
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %arrayidx5 = getelementptr %struct.echoaudio, ptr %3, i32 0, i32 49, i32 %div.zext, i32 %rem.zext
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx5, align 1
  %conv = sext i8 %5 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_echo_mixer_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %index = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %.frozen = freeze i32 %3
  %div = udiv i32 %.frozen, 10
  %4 = mul i32 %div, 10
  %rem.decomposed = sub i32 %.frozen, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 319, i32 %3)
  %cmp = icmp ugt i32 %3, 319
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 8
  %7 = add i32 %6, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -135, i32 %7)
  %8 = icmp ult i32 %7, -135
  br i1 %8, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %arrayidx11 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 49, i32 %div, i32 %rem.decomposed
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx11, align 1
  %conv = sext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv)
  %cmp12.not = icmp eq i32 %6, %conv
  br i1 %cmp12.not, label %if.end9.cleanup_crit_edge, label %if.then14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then14:                                        ; preds = %if.end9
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #17
  %conv15 = trunc i32 %div to i16
  %conv17 = trunc i32 %6 to i8
  %conv.i = and i32 %div, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %conv15)
  %cmp.i = icmp ugt i16 %conv15, 11
  br i1 %cmp.i, label %do.end.i, label %if.end26.i, !prof !478

do.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 577, i32 noundef 9, ptr noundef null) #17
  br label %set_monitor_gain.exit

if.end26.i:                                       ; preds = %if.then14
  %comm_page.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 26
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.end26.i
  %i.03.i.i = phi i32 [ 0, %if.end26.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !475
  %11 = ptrtoint ptr %comm_page.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %comm_page.i.i, align 4
  %handshake.i.i = getelementptr inbounds %struct.comm_page, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %handshake.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %handshake.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end30.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #17
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 20000
  br i1 %exitcond.not.i.i, label %wait_handshake.exit.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

wait_handshake.exit.i:                            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %card.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.38) #22
  br label %set_monitor_gain.exit

if.end30.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx32.i = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 49, i32 %conv.i, i32 %rem.decomposed
  %20 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv17, ptr %arrayidx32.i, align 1
  %urem = urem i32 %3, 655360
  %arrayidx36.i = getelementptr %struct.comm_page, ptr %12, i32 0, i32 15, i32 %urem
  %21 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv17, ptr %arrayidx36.i, align 1
  br label %set_monitor_gain.exit

set_monitor_gain.exit:                            ; preds = %if.end30.i, %wait_handshake.exit.i, %do.end.i
  %call19 = tail call fastcc i32 @update_output_line_level(ptr noundef %1)
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #17
  br label %cleanup

cleanup:                                          ; preds = %set_monitor_gain.exit, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 1, %set_monitor_gain.exit ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_echo_channels_info_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
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

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_echo_channels_info_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 10, ptr %value, align 8
  %arrayidx3 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8, ptr %arrayidx3, align 4
  %arrayidx6 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 12, ptr %arrayidx6, align 8
  %arrayidx9 = getelementptr [128 x i32], ptr %value, i32 0, i32 3
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 10, ptr %arrayidx9, align 4
  %arrayidx12 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 12, ptr %arrayidx12, align 8
  %comm_page.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 26
  %7 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %comm_page.i, align 4
  %status_clocks.i = getelementptr inbounds %struct.comm_page, ptr %8, i32 0, i32 26
  %9 = ptrtoint ptr %status_clocks.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status_clocks.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #17
  %and.i = and i32 %11, 8
  %12 = or i32 %and.i, 1
  %and1.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %entry.detect_input_clocks.exit_crit_edge, label %if.then3.i

entry.detect_input_clocks.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %detect_input_clocks.exit

if.then3.i:                                       ; preds = %entry
  %and4.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #19
  %or7.i = or i32 %and.i, 5
  br label %detect_input_clocks.exit

if.else.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #19
  %or8.i = or i32 %and.i, 3
  br label %detect_input_clocks.exit

detect_input_clocks.exit:                         ; preds = %if.else.i, %if.then6.i, %entry.detect_input_clocks.exit_crit_edge
  %clock_bits.1.i = phi i32 [ %or7.i, %if.then6.i ], [ %or8.i, %if.else.i ], [ %12, %entry.detect_input_clocks.exit_crit_edge ]
  %num_clock_sources = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %num_clock_sources to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_clock_sources, align 2
  %conv = zext i16 %14 to i32
  %sub = add nsw i32 %conv, -1
  br label %for.body

for.body:                                         ; preds = %for.inc26.for.body_crit_edge, %detect_input_clocks.exit
  %src.057 = phi i32 [ %sub, %detect_input_clocks.exit ], [ %src.2, %for.inc26.for.body_crit_edge ]
  %bit.054 = phi i32 [ 7, %detect_input_clocks.exit ], [ %dec27, %for.inc26.for.body_crit_edge ]
  %clocks.053 = phi i32 [ 0, %detect_input_clocks.exit ], [ %clocks.1, %for.inc26.for.body_crit_edge ]
  %shl = shl nuw i32 1, %bit.054
  %and = and i32 %shl, %clock_bits.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc26_crit_edge, label %for.cond15.preheader

for.body.for.inc26_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc26

for.cond15.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %src.057)
  %cmp1651 = icmp sgt i32 %src.057, -1
  br i1 %cmp1651, label %for.cond15.preheader.for.body18_crit_edge, label %for.cond15.preheader.for.inc26_crit_edge

for.cond15.preheader.for.inc26_crit_edge:         ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc26

for.cond15.preheader.for.body18_crit_edge:        ; preds = %for.cond15.preheader
  br label %for.body18

for.body18:                                       ; preds = %for.inc.for.body18_crit_edge, %for.cond15.preheader.for.body18_crit_edge
  %src.152 = phi i32 [ %dec, %for.inc.for.body18_crit_edge ], [ %src.057, %for.cond15.preheader.for.body18_crit_edge ]
  %arrayidx19 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 6, i32 %src.152
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx19, align 2
  %conv20 = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %bit.054, i32 %conv20)
  %cmp21 = icmp eq i32 %bit.054, %conv20
  br i1 %cmp21, label %if.then23, label %for.inc

if.then23:                                        ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #19
  %shl24 = shl nuw i32 1, %src.152
  %or = or i32 %shl24, %clocks.053
  br label %for.inc26

for.inc:                                          ; preds = %for.body18
  %dec = add nsw i32 %src.152, -1
  %cmp16 = icmp sgt i32 %src.152, 0
  br i1 %cmp16, label %for.inc.for.body18_crit_edge, label %for.inc.for.inc26_crit_edge

for.inc.for.inc26_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc26

for.inc.for.body18_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body18

for.inc26:                                        ; preds = %for.inc.for.inc26_crit_edge, %if.then23, %for.cond15.preheader.for.inc26_crit_edge, %for.body.for.inc26_crit_edge
  %clocks.1 = phi i32 [ %or, %if.then23 ], [ %clocks.053, %for.body.for.inc26_crit_edge ], [ %clocks.053, %for.cond15.preheader.for.inc26_crit_edge ], [ %clocks.053, %for.inc.for.inc26_crit_edge ]
  %src.2 = phi i32 [ %src.152, %if.then23 ], [ %src.057, %for.body.for.inc26_crit_edge ], [ -1, %for.cond15.preheader.for.inc26_crit_edge ], [ -1, %for.inc.for.inc26_crit_edge ]
  %dec27 = add nsw i32 %bit.054, -1
  %cmp = icmp sgt i32 %bit.054, 0
  br i1 %cmp, label %for.inc26.for.body_crit_edge, label %for.end28

for.inc26.for.body_crit_edge:                     ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end28:                                        ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx30 = getelementptr [128 x i32], ptr %value, i32 0, i32 5
  %17 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %clocks.1, ptr %arrayidx30, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_echo_clock_source_info(ptr nocapture noundef readonly %kcontrol, ptr noundef %uinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %num_clock_sources = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %num_clock_sources to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_clock_sources, align 2
  %conv = zext i16 %3 to i32
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef %conv, ptr noundef nonnull @snd_echo_clock_source_info.names) #17
  ret i32 %call
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_echo_clock_source_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %num_clock_sources = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %num_clock_sources to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_clock_sources, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp13.not = icmp eq i16 %3, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %input_clock = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %input_clock to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %input_clock, align 1
  %6 = zext i8 %5 to i16
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 6, i32 %i.014
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %6)
  %cmp4 = icmp eq i16 %8, %6
  br i1 %cmp4, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %i.014, ptr %value, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.014, 1
  %10 = ptrtoint ptr %num_clock_sources to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num_clock_sources, align 2
  %conv1 = zext i16 %11 to i32
  %cmp = icmp ult i32 %inc, %conv1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_echo_clock_source_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %input_clock_types = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 52
  %4 = ptrtoint ptr %input_clock_types to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %input_clock_types, align 2
  %conv = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp.not = icmp ult i32 %3, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx2 = getelementptr %struct.echoaudio, ptr %1, i32 0, i32 6, i32 %3
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx2, align 2
  %conv3 = zext i16 %7 to i32
  %input_clock = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 33
  %8 = ptrtoint ptr %input_clock to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %input_clock, align 1
  %10 = zext i8 %9 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %10)
  %cmp5.not = icmp eq i16 %7, %10
  br i1 %cmp5.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then7:                                         ; preds = %if.end
  %mode_mutex = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mode_mutex, i32 noundef 0) #17
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #17
  %call = tail call fastcc i32 @set_input_clock(ptr noundef %1, i16 noundef zeroext %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #17
  tail call void @mutex_unlock(ptr noundef %mode_mutex) #17
  br i1 %tobool.not, label %if.then7.cleanup_crit_edge, label %if.end13

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end13:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp14 = icmp slt i32 %call, 0
  br i1 %cmp14, label %do.body, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_echo_clock_source_put.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_echo_clock_source_put, %if.then21)) #17
          to label %cleanup [label %if.then21], !srcloc !467

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %card = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_echo_clock_source_put.__UNIQUE_ID_ddebug274, ptr noundef %14, ptr noundef nonnull @.str.171, i32 noundef %conv3, i32 noundef %call) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %do.body, %if.end13.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.then21 ], [ %call, %if.end13.cleanup_crit_edge ], [ %call, %do.body ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.then7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_echo_spdif_mode_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_echo_spdif_mode_info.names) #17
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_echo_spdif_mode_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %professional_spdif = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %professional_spdif to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %professional_spdif, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool = icmp ne i8 %3, 0
  %lnot.ext = zext i1 %tobool to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %lnot.ext, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_echo_spdif_mode_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
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
  %tobool = icmp ne i32 %3, 0
  %professional_spdif = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 38
  %4 = ptrtoint ptr %professional_spdif to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %professional_spdif, align 4
  %6 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %6)
  %cmp.not = icmp eq i8 %5, %6
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #17
  %call = tail call fastcc i32 @set_professional_spdif(ptr noundef %1, i8 noundef zeroext %6)
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_echo_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %midi_out = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %midi_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %midi_out, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @snd_echo_midi_output_trigger(ptr noundef nonnull %3, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #17
  %comm_page.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 26
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end
  %i.03.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !475
  %4 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %comm_page.i, align 4
  %handshake.i = getelementptr inbounds %struct.comm_page, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %handshake.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handshake.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end6

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #17
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20000
  br i1 %exitcond.not.i, label %if.then4, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

if.then4:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %card.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.38) #22
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #17
  br label %cleanup

if.end6:                                          ; preds = %for.body.i
  %13 = ptrtoint ptr %comm_page.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %comm_page.i, align 4
  %handshake.i28 = getelementptr inbounds %struct.comm_page, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %handshake.i28 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %handshake.i28, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !472
  tail call void @arm_heavy_mb() #17
  %dsp_registers.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 60
  br label %for.body.i30

for.body.i30:                                     ; preds = %if.end.i33.for.body.i30_crit_edge, %if.end6
  %i.09.i = phi i32 [ 0, %if.end6 ], [ %inc.i31, %if.end.i33.for.body.i30_crit_edge ]
  %16 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %17, i32 6
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #17, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !470
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i29 = icmp eq i32 %19, 0
  br i1 %tobool.not.i29, label %if.end10, label %if.end.i33

if.end.i33:                                       ; preds = %for.body.i30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #17
  %inc.i31 = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i32 = icmp eq i32 %inc.i31, 100000
  br i1 %exitcond.not.i32, label %if.then8, label %if.end.i33.for.body.i30_crit_edge

if.end.i33.for.body.i30_crit_edge:                ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i30

if.then8:                                         ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #19
  %card.i34 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %21 = ptrtoint ptr %card.i34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card.i34, align 4
  %dev.i35 = getelementptr inbounds %struct.snd_card, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %dev.i35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i35, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.33) #22
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #17
  br label %cleanup

if.end10:                                         ; preds = %for.body.i30
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !473
  tail call void @arm_heavy_mb() #17
  %25 = ptrtoint ptr %dsp_registers.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dsp_registers.i.i, align 4
  %arrayidx.i8.i = getelementptr i32, ptr %26, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i8.i, i32 -117440512) #17, !srcloc !474
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #17
  %dsp_code = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 56
  %27 = ptrtoint ptr %dsp_code to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %dsp_code, align 4
  %irq = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 17
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq, align 4
  %call12 = tail call ptr @free_irq(i32 noundef %29, ptr noundef %1) #17
  %30 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %irq, align 4
  %card = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %31 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %card, align 4
  %sync_irq = getelementptr inbounds %struct.snd_card, ptr %32, i32 0, i32 33
  %33 = ptrtoint ptr %sync_irq to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %sync_irq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %if.then4
  %retval.0 = phi i32 [ -5, %if.then4 ], [ -5, %if.then8 ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_echo_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %comm_page = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %comm_page, align 4
  %call1 = tail call ptr @kmemdup(ptr noundef %3, i32 noundef 3072, i32 noundef 3264) #17
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
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
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %8)
  %cmp.not.i = icmp eq i16 %8, 48
  br i1 %cmp.not.i, label %if.end22.i, label %do.end.i, !prof !468

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 43, i32 noundef 9, ptr noundef null) #17
  br label %if.then6

if.end22.i:                                       ; preds = %if.end
  %device = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 8
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %device, align 2
  %card_name.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %card_name.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.20, ptr %card_name.i.i, align 4
  %bad_board.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 37
  %dsp_code.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 56
  %12 = ptrtoint ptr %dsp_code.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %dsp_code.i.i, align 4
  %asic_loaded.i.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 36
  %13 = ptrtoint ptr %asic_loaded.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %asic_loaded.i.i, align 2
  %14 = ptrtoint ptr %comm_page to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %comm_page, align 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 3072)
  %17 = load ptr, ptr %comm_page, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 786432, ptr %17, align 4
  %19 = load ptr, ptr %comm_page, align 4
  %handshake.i.i = getelementptr inbounds %struct.comm_page, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %handshake.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %handshake.i.i, align 4
  %21 = load ptr, ptr %comm_page, align 4
  %midi_out_free_count.i.i = getelementptr inbounds %struct.comm_page, ptr %21, i32 0, i32 29
  %22 = ptrtoint ptr %midi_out_free_count.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1073741824, ptr %midi_out_free_count.i.i, align 4
  %23 = load ptr, ptr %comm_page, align 4
  %sample_rate.i.i = getelementptr inbounds %struct.comm_page, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %sample_rate.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1152122880, ptr %sample_rate.i.i, align 4
  %25 = load ptr, ptr %comm_page, align 4
  %monitors.i.i = getelementptr inbounds %struct.comm_page, ptr %25, i32 0, i32 15
  %26 = call ptr @memset(ptr %monitors.i.i, i32 128, i32 384)
  %27 = load ptr, ptr %comm_page, align 4
  %vmixer.i.i = getelementptr inbounds %struct.comm_page, ptr %27, i32 0, i32 34
  %28 = call ptr @memset(ptr %vmixer.i.i, i32 128, i32 64)
  %device_id29.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 54
  %29 = ptrtoint ptr %device_id29.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %10, ptr %device_id29.i, align 2
  %subdevice_id30.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 55
  %30 = ptrtoint ptr %subdevice_id30.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %7, ptr %subdevice_id30.i, align 4
  %31 = ptrtoint ptr %bad_board.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %bad_board.i.i, align 1
  %has_midi.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 44
  %32 = ptrtoint ptr %has_midi.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %has_midi.i, align 2
  %dsp_code_to_load.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 57
  %33 = ptrtoint ptr %dsp_code_to_load.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %dsp_code_to_load.i, align 4
  %input_clock_types.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 52
  %34 = ptrtoint ptr %input_clock_types.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 15, ptr %input_clock_types.i, align 2
  %output_clock_types.i = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 53
  %35 = ptrtoint ptr %output_clock_types.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 6, ptr %output_clock_types.i, align 4
  %call31.i = tail call fastcc i32 @load_firmware(ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  br i1 %cmp32.i, label %if.end22.i.if.then6_crit_edge, label %if.end7

if.end22.i.if.then6_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then6

if.then6:                                         ; preds = %if.end22.i.if.then6_crit_edge, %do.end.i
  %retval.0.i87.ph = phi i32 [ %call31.i, %if.end22.i.if.then6_crit_edge ], [ -19, %do.end.i ]
  tail call void @kfree(ptr noundef nonnull %call1) #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.175, i32 noundef %retval.0.i87.ph) #22
  br label %cleanup

if.end7:                                          ; preds = %if.end22.i
  %36 = ptrtoint ptr %bad_board.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %bad_board.i.i, align 1
  %pipe_alloc_mask8 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 27
  %37 = ptrtoint ptr %pipe_alloc_mask8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pipe_alloc_mask8, align 4
  store i32 0, ptr %pipe_alloc_mask8, align 4
  %call10 = tail call fastcc i32 @restore_dsp_rettings(ptr noundef %1)
  %39 = ptrtoint ptr %pipe_alloc_mask8 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %pipe_alloc_mask8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp12 = icmp slt i32 %call10, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call1) #17
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %audio_format = getelementptr inbounds %struct.comm_page, ptr %3, i32 0, i32 8
  %audio_format15 = getelementptr inbounds %struct.comm_page, ptr %call1, i32 0, i32 8
  %40 = call ptr @memcpy(ptr %audio_format, ptr %audio_format15, i32 64)
  %sglist_addr = getelementptr inbounds %struct.comm_page, ptr %3, i32 0, i32 9
  %sglist_addr16 = getelementptr inbounds %struct.comm_page, ptr %call1, i32 0, i32 9
  %41 = call ptr @memcpy(ptr %sglist_addr, ptr %sglist_addr16, i32 256)
  %midi_output = getelementptr inbounds %struct.comm_page, ptr %3, i32 0, i32 35
  %midi_output17 = getelementptr inbounds %struct.comm_page, ptr %call1, i32 0, i32 35
  %42 = call ptr @memcpy(ptr %midi_output, ptr %midi_output17, i32 32)
  tail call void @kfree(ptr noundef nonnull %call1) #17
  %irq = getelementptr i8, ptr %dev, i32 932
  %43 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %44, ptr noundef nonnull @snd_echo_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end24, label %do.end22

do.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  %card = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %45 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %card, align 4
  %dev23 = getelementptr inbounds %struct.snd_card, ptr %46, i32 0, i32 27
  %47 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev23, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.24) #22
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  %49 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %irq, align 4
  %irq26 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 17
  %51 = ptrtoint ptr %irq26 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %irq26, align 4
  %card28 = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 11
  %52 = ptrtoint ptr %card28 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %card28, align 4
  %sync_irq = getelementptr inbounds %struct.snd_card, ptr %53, i32 0, i32 33
  %54 = ptrtoint ptr %sync_irq to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %50, ptr %sync_irq, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_echo_resume.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_echo_resume, %if.then35)) #17
          to label %do.end39 [label %if.then35], !srcloc !467

if.then35:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  %55 = ptrtoint ptr %irq26 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_echo_resume.__UNIQUE_ID_ddebug277, ptr noundef %dev, ptr noundef nonnull @.str.179, i32 noundef %56) #17
  br label %do.end39

do.end39:                                         ; preds = %if.then35, %if.end24
  %midi_input_enabled = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 45
  %57 = ptrtoint ptr %midi_input_enabled to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %midi_input_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool40.not = icmp eq i8 %58, 0
  br i1 %tobool40.not, label %do.end39.if.end43_crit_edge, label %if.then41

do.end39.if.end43_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43

if.then41:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @enable_midi_input(ptr noundef %1, i8 noundef zeroext 1)
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %do.end39.if.end43_crit_edge
  %midi_out = getelementptr inbounds %struct.echoaudio, ptr %1, i32 0, i32 20
  %59 = ptrtoint ptr %midi_out to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %midi_out, align 4
  %tobool44.not = icmp eq ptr %60, null
  br i1 %tobool44.not, label %if.end43.cleanup_crit_edge, label %if.then45

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @snd_echo_midi_output_trigger(ptr noundef nonnull %60, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end43.cleanup_crit_edge, %do.end22, %if.then13, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i87.ph, %if.then6 ], [ %call10, %if.then13 ], [ -16, %do.end22 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then45 ], [ 0, %if.end43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 216)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 216)
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
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { nobuiltin }
attributes #21 = { nobuiltin nounwind }
attributes #22 = { cold nounwind }
attributes #23 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !16, !18, !19, !21, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !78, !79, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !95, !96, !97, !99, !100, !101, !103, !105, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147, !149, !150, !152, !154, !155, !156, !158, !160, !162, !164, !165, !166, !167, !168, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !224, !226, !227, !229, !230, !231, !233, !234, !235, !236, !238, !239, !240, !242, !243, !244, !245, !247, !248, !250, !251, !252, !253, !255, !256, !257, !258, !260, !262, !264, !266, !267, !268, !270, !271, !272, !274, !275, !277, !279, !281, !282, !284, !285, !286, !288, !289, !290, !292, !293, !295, !296, !298, !299, !300, !302, !303, !304, !306, !307, !308, !309, !311, !312, !313, !315, !316, !317, !319, !320, !321, !323, !324, !325, !327, !328, !329, !330, !332, !333, !334, !336, !338, !340, !342, !344, !346, !347, !348, !350, !351, !353, !354, !356, !357, !358, !360, !361, !362, !364, !365, !367, !368, !370, !371, !373, !374, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !432, !433, !435, !437, !439, !441, !443, !445, !447, !448, !449, !450, !452, !453, !455}
!llvm.module.flags = !{!456, !457, !458, !459, !460, !461, !462, !463}
!llvm.ident = !{!464}

!0 = !{ptr @__UNIQUE_ID_firmware242, !1, !"__UNIQUE_ID_firmware242", i1 false, i1 false}
!1 = !{!"../sound/pci/echoaudio/layla20.c", i32 56, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware243, !3, !"__UNIQUE_ID_firmware243", i1 false, i1 false}
!3 = !{!"../sound/pci/echoaudio/layla20.c", i32 57, i32 1}
!4 = !{ptr @__UNIQUE_ID_author252, !5, !"__UNIQUE_ID_author252", i1 false, i1 false}
!5 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 10, i32 1}
!6 = !{ptr @__UNIQUE_ID_file253, !7, !"__UNIQUE_ID_file253", i1 false, i1 false}
!7 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 11, i32 1}
!8 = !{ptr @__UNIQUE_ID_license254, !7, !"__UNIQUE_ID_license254", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description255, !10, !"__UNIQUE_ID_description255", i1 false, i1 false}
!10 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 12, i32 1}
!11 = !{ptr @__param_index, !12, !"__param_index", i1 false, i1 false}
!12 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 19, i32 1}
!13 = !{ptr @__UNIQUE_ID_indextype256, !12, !"__UNIQUE_ID_indextype256", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_index257, !15, !"__UNIQUE_ID_index257", i1 false, i1 false}
!15 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 20, i32 1}
!16 = !{ptr @__param_id, !17, !"__param_id", i1 false, i1 false}
!17 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 21, i32 1}
!18 = !{ptr @__UNIQUE_ID_idtype258, !17, !"__UNIQUE_ID_idtype258", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_id259, !20, !"__UNIQUE_ID_id259", i1 false, i1 false}
!20 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 22, i32 1}
!21 = !{ptr @__param_enable, !22, !"__param_enable", i1 false, i1 false}
!22 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 23, i32 1}
!23 = !{ptr @__UNIQUE_ID_enabletype260, !22, !"__UNIQUE_ID_enabletype260", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_enable261, !25, !"__UNIQUE_ID_enable261", i1 false, i1 false}
!25 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 24, i32 1}
!26 = !{ptr @__initcall__kmod_snd_layla20__278_2255_echo_driver_init6, !27, !"__initcall__kmod_snd_layla20__278_2255_echo_driver_init6", i1 false, i1 false}
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
!45 = !{!"../sound/pci/echoaudio/layla20.c", i32 67, i32 35}
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
!65 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 2022, i32 4}
!66 = !{ptr @snd_echo_probe._entry.10, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @snd_echo_probe._entry_ptr.12, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.14, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 2135, i32 2}
!70 = !{ptr @.str.15, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @snd_echo_probe._entry.13, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @snd_echo_probe._entry_ptr.16, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @snd_echo_create.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1915, i32 2}
!75 = !{ptr @.str.17, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @snd_echo_create.__key.18, !77, !"__key", i1 false, i1 false}
!77 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1920, i32 2}
!78 = !{ptr @.str.19, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.20, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1924, i32 33}
!81 = !{ptr @.str.21, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1935, i32 3}
!83 = !{ptr @.str.22, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @snd_echo_create._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @snd_echo_create._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.24, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1941, i32 3}
!88 = !{ptr @snd_echo_create._entry.23, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @snd_echo_create._entry_ptr.25, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.26, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1946, i32 2}
!92 = !{ptr @snd_echo_create.__UNIQUE_ID_ddebug276, !91, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!93 = !{ptr @.str.28, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1965, i32 3}
!95 = !{ptr @snd_echo_create._entry.27, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @snd_echo_create._entry_ptr.29, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.30, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1872, i32 3}
!99 = !{ptr @.str.31, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @snd_echo_interrupt.__UNIQUE_ID_ddebug275, !98, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!101 = !{ptr @.str.32, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/pci/echoaudio/midi.c", i32 123, i32 6}
!103 = !{ptr @.str.33, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 83, i32 2}
!105 = !{ptr @.str.34, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.35, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @send_vector._entry, !104, !"_entry", i1 false, i1 false}
!108 = !{ptr @send_vector._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.36, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 931, i32 2}
!111 = !{ptr @.str.37, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @stop_transport.__UNIQUE_ID_ddebug250, !110, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!113 = !{ptr @.str.38, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 56, i32 2}
!115 = !{ptr @.str.39, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @wait_handshake._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @wait_handshake._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.40, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/echoaudio/midi.c", i32 39, i32 2}
!120 = !{ptr @.str.41, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @enable_midi_input.__UNIQUE_ID_ddebug279, !119, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!122 = !{ptr @.str.42, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 83, i32 4}
!124 = !{ptr @.str.43, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @free_firmware_cache.__UNIQUE_ID_ddebug265, !123, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!126 = !{ptr @.str.44, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/pci/echoaudio/layla20_dsp.c", i32 43, i32 6}
!128 = !{ptr @.str.45, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/pci/echoaudio/layla20_dsp.c", i32 48, i32 3}
!130 = !{ptr @.str.46, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @init_hw._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @init_hw._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.47, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/pci/echoaudio/layla20_dsp.c", i32 125, i32 4}
!135 = !{ptr @.str.48, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @check_asic_status._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @check_asic_status._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.49, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 130, i32 2}
!140 = !{ptr @.str.50, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @read_dsp._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @read_dsp._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.51, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 39, i32 3}
!145 = !{ptr @.str.52, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @get_firmware.__UNIQUE_ID_ddebug262, !144, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!147 = !{ptr @.str.53, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 47, i32 2}
!149 = !{ptr @get_firmware.__UNIQUE_ID_ddebug263, !148, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!150 = !{ptr @.str.54, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 49, i32 31}
!152 = !{ptr @.str.55, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 52, i32 3}
!154 = !{ptr @get_firmware._entry, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @get_firmware._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.56, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/pci/echoaudio/layla20.c", i32 63, i32 6}
!158 = !{ptr @.str.57, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/pci/echoaudio/layla20.c", i32 64, i32 6}
!160 = !{ptr @card_fw, !161, !"card_fw", i1 false, i1 false}
!161 = !{!"../sound/pci/echoaudio/layla20.c", i32 62, i32 30}
!162 = !{ptr @.str.58, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 341, i32 3}
!164 = !{ptr @.str.59, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.60, !163, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @load_dsp._entry, !163, !"_entry", i1 false, i1 false}
!167 = !{ptr @load_dsp._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.61, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 348, i32 2}
!170 = !{ptr @load_dsp.__UNIQUE_ID_ddebug247, !169, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!171 = !{ptr @.str.63, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 359, i32 3}
!173 = !{ptr @load_dsp._entry.62, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @load_dsp._entry_ptr.64, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.66, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 375, i32 3}
!177 = !{ptr @load_dsp._entry.65, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @load_dsp._entry_ptr.67, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.69, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 413, i32 4}
!181 = !{ptr @load_dsp._entry.68, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @load_dsp._entry_ptr.70, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.72, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 418, i32 4}
!185 = !{ptr @load_dsp._entry.71, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @load_dsp._entry_ptr.73, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.75, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 423, i32 4}
!189 = !{ptr @load_dsp._entry.74, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @load_dsp._entry_ptr.76, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.78, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 431, i32 5}
!193 = !{ptr @load_dsp._entry.77, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @load_dsp._entry_ptr.79, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.81, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 439, i32 3}
!197 = !{ptr @load_dsp._entry.80, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @load_dsp._entry_ptr.82, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.84, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 453, i32 5}
!201 = !{ptr @load_dsp._entry.83, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @load_dsp._entry_ptr.85, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.87, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 459, i32 5}
!205 = !{ptr @load_dsp._entry.86, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @load_dsp._entry_ptr.88, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.90, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 469, i32 5}
!209 = !{ptr @load_dsp._entry.89, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @load_dsp._entry_ptr.91, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.93, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 481, i32 2}
!213 = !{ptr @load_dsp._entry.92, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @load_dsp._entry_ptr.94, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.95, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 107, i32 2}
!217 = !{ptr @.str.96, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @write_dsp.__UNIQUE_ID_ddebug245, !216, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!219 = !{ptr @.str.97, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 152, i32 4}
!221 = !{ptr @.str.98, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @read_sn._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @read_sn._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.99, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 157, i32 2}
!226 = !{ptr @read_sn.__UNIQUE_ID_ddebug246, !225, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!227 = !{ptr @.str.100, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 67, i32 2}
!229 = !{ptr @.str.101, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @free_firmware.__UNIQUE_ID_ddebug264, !228, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!231 = !{ptr @.str.102, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 189, i32 3}
!233 = !{ptr @.str.103, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @load_asic_generic._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @load_asic_generic._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.105, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 213, i32 2}
!238 = !{ptr @load_asic_generic._entry.104, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @load_asic_generic._entry_ptr.106, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.107, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/pci/echoaudio/layla20_dsp.c", i32 169, i32 3}
!242 = !{ptr @.str.108, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @set_sample_rate._entry, !241, !"_entry", i1 false, i1 false}
!244 = !{ptr @set_sample_rate._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.109, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/pci/echoaudio/layla20_dsp.c", i32 179, i32 2}
!247 = !{ptr @set_sample_rate.__UNIQUE_ID_ddebug244, !246, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!248 = !{ptr @.str.110, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/pci/echoaudio/layla20_dsp.c", i32 209, i32 3}
!250 = !{ptr @.str.111, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @set_input_clock._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @set_input_clock._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.112, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/pci/echoaudio/layla20_dsp.c", i32 238, i32 3}
!255 = !{ptr @.str.113, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @set_output_clock._entry, !254, !"_entry", i1 false, i1 false}
!257 = !{ptr @set_output_clock._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.114, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 956, i32 32}
!260 = !{ptr @.str.115, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 970, i32 32}
!262 = !{ptr @analog_playback_ops, !263, !"analog_playback_ops", i1 false, i1 false}
!263 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 849, i32 33}
!264 = !{ptr @.str.116, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 286, i32 2}
!266 = !{ptr @.str.117, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @pcm_open.__UNIQUE_ID_ddebug266, !265, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!268 = !{ptr @.str.118, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 340, i32 3}
!270 = !{ptr @pcm_open._entry, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @pcm_open._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.119, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 348, i32 2}
!274 = !{ptr @pcm_open.__UNIQUE_ID_ddebug267, !273, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!275 = !{ptr @pcm_hardware_skel, !276, !"pcm_hardware_skel", i1 false, i1 false}
!276 = !{!"../sound/pci/echoaudio/layla20.c", i32 73, i32 38}
!277 = !{ptr @channels_list, !278, !"channels_list", i1 false, i1 false}
!278 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 26, i32 27}
!279 = !{ptr @.str.120, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 514, i32 2}
!281 = !{ptr @pcm_close.__UNIQUE_ID_ddebug268, !280, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!282 = !{ptr @.str.121, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 552, i32 3}
!284 = !{ptr @.str.122, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @init_engine.__UNIQUE_ID_ddebug269, !283, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!286 = !{ptr @.str.123, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 561, i32 3}
!288 = !{ptr @init_engine._entry, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @init_engine._entry_ptr, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.124, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 566, i32 2}
!292 = !{ptr @init_engine.__UNIQUE_ID_ddebug270, !291, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!293 = !{ptr @.str.125, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 568, i32 2}
!295 = !{ptr @init_engine.__UNIQUE_ID_ddebug271, !294, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!296 = !{ptr @.str.126, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 1060, i32 2}
!298 = !{ptr @.str.127, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @allocate_pipes.__UNIQUE_ID_ddebug251, !297, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!300 = !{ptr @.str.128, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 1069, i32 3}
!302 = !{ptr @allocate_pipes._entry, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @allocate_pipes._entry_ptr, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.129, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 1138, i32 3}
!306 = !{ptr @.str.130, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @sglist_add_mapping._entry, !305, !"_entry", i1 false, i1 false}
!308 = !{ptr @sglist_add_mapping._entry_ptr, !305, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.131, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 679, i32 3}
!311 = !{ptr @.str.132, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @pcm_hw_free.__UNIQUE_ID_ddebug272, !310, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!313 = !{ptr @.str.133, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 698, i32 2}
!315 = !{ptr @.str.134, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @pcm_prepare.__UNIQUE_ID_ddebug273, !314, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!317 = !{ptr @.str.135, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 720, i32 3}
!319 = !{ptr @pcm_prepare._entry, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @pcm_prepare._entry_ptr, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.136, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 848, i32 2}
!323 = !{ptr @.str.137, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @set_audio_format.__UNIQUE_ID_ddebug248, !322, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!325 = !{ptr @.str.138, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 879, i32 2}
!327 = !{ptr @.str.139, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @start_transport._entry, !326, !"_entry", i1 false, i1 false}
!329 = !{ptr @start_transport._entry_ptr, !326, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.140, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../sound/pci/echoaudio/echoaudio_dsp.c", i32 905, i32 2}
!332 = !{ptr @.str.141, !331, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @pause_transport.__UNIQUE_ID_ddebug249, !331, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!334 = !{ptr @analog_capture_ops, !335, !"analog_capture_ops", i1 false, i1 false}
!335 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 858, i32 33}
!336 = !{ptr @digital_playback_ops, !337, !"digital_playback_ops", i1 false, i1 false}
!337 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 869, i32 33}
!338 = !{ptr @digital_capture_ops, !339, !"digital_capture_ops", i1 false, i1 false}
!339 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 879, i32 33}
!340 = !{ptr @snd_echo_midi_input, !341, !"snd_echo_midi_input", i1 false, i1 false}
!341 = !{!"../sound/pci/echoaudio/midi.c", i32 291, i32 37}
!342 = !{ptr @snd_echo_midi_output, !343, !"snd_echo_midi_output", i1 false, i1 false}
!343 = !{!"../sound/pci/echoaudio/midi.c", i32 297, i32 37}
!344 = !{ptr @.str.142, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../sound/pci/echoaudio/midi.c", i32 256, i32 2}
!346 = !{ptr @.str.143, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @snd_echo_midi_output_trigger.__UNIQUE_ID_ddebug285, !345, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!348 = !{ptr @snd_echo_midi_output_trigger.__key, !349, !"__key", i1 false, i1 false}
!349 = !{!"../sound/pci/echoaudio/midi.c", i32 260, i32 4}
!350 = !{ptr @.str.144, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @.str.145, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../sound/pci/echoaudio/midi.c", i32 269, i32 4}
!353 = !{ptr @snd_echo_midi_output_trigger.__UNIQUE_ID_ddebug286, !352, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!354 = !{ptr @.str.146, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../sound/pci/echoaudio/midi.c", i32 217, i32 3}
!356 = !{ptr @.str.147, !355, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @snd_echo_midi_output_write.__UNIQUE_ID_ddebug281, !355, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!358 = !{ptr @.str.148, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../sound/pci/echoaudio/midi.c", i32 220, i32 4}
!360 = !{ptr @snd_echo_midi_output_write._entry, !359, !"_entry", i1 false, i1 false}
!361 = !{ptr @snd_echo_midi_output_write._entry_ptr, !359, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.149, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../sound/pci/echoaudio/midi.c", i32 226, i32 4}
!364 = !{ptr @snd_echo_midi_output_write.__UNIQUE_ID_ddebug282, !363, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!365 = !{ptr @.str.150, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../sound/pci/echoaudio/midi.c", i32 231, i32 4}
!367 = !{ptr @snd_echo_midi_output_write.__UNIQUE_ID_ddebug283, !366, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!368 = !{ptr @.str.151, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../sound/pci/echoaudio/midi.c", i32 243, i32 3}
!370 = !{ptr @snd_echo_midi_output_write.__UNIQUE_ID_ddebug284, !369, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!371 = !{ptr @.str.152, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../sound/pci/echoaudio/midi.c", i32 77, i32 2}
!373 = !{ptr @.str.153, !372, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @write_midi.__UNIQUE_ID_ddebug280, !372, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!375 = !{ptr @.str.154, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1062, i32 10}
!377 = !{ptr @snd_echo_pcm_output_gain, !378, !"snd_echo_pcm_output_gain", i1 false, i1 false}
!378 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1061, i32 38}
!379 = !{ptr @db_scale_output_gain, !380, !"db_scale_output_gain", i1 false, i1 false}
!380 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 27, i32 14}
!381 = !{ptr @.str.155, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1132, i32 10}
!383 = !{ptr @snd_echo_line_input_gain, !384, !"snd_echo_line_input_gain", i1 false, i1 false}
!384 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1131, i32 38}
!385 = !{ptr @db_scale_input_gain, !386, !"db_scale_input_gain", i1 false, i1 false}
!386 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1129, i32 14}
!387 = !{ptr @.str.156, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1196, i32 10}
!389 = !{ptr @snd_echo_output_nominal_level, !390, !"snd_echo_output_nominal_level", i1 false, i1 false}
!390 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1195, i32 38}
!391 = !{ptr @.str.157, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1716, i32 10}
!393 = !{ptr @snd_echo_vumeters_switch, !394, !"snd_echo_vumeters_switch", i1 false, i1 false}
!394 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1715, i32 38}
!395 = !{ptr @.str.158, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1747, i32 10}
!397 = !{ptr @snd_echo_vumeters, !398, !"snd_echo_vumeters", i1 false, i1 false}
!398 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1746, i32 38}
!399 = !{ptr @.str.159, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1327, i32 10}
!401 = !{ptr @snd_echo_monitor_mixer, !402, !"snd_echo_monitor_mixer", i1 false, i1 false}
!402 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1326, i32 32}
!403 = !{ptr @.str.160, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1800, i32 10}
!405 = !{ptr @snd_echo_channels_info, !406, !"snd_echo_channels_info", i1 false, i1 false}
!406 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1799, i32 38}
!407 = !{ptr @.str.161, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1603, i32 10}
!409 = !{ptr @snd_echo_clock_source_switch, !410, !"snd_echo_clock_source_switch", i1 false, i1 false}
!410 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1602, i32 38}
!411 = !{ptr @.str.162, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1547, i32 3}
!413 = !{ptr @.str.163, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1547, i32 15}
!415 = !{ptr @.str.164, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1547, i32 23}
!417 = !{ptr @.str.165, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1547, i32 32}
!419 = !{ptr @.str.166, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1547, i32 42}
!421 = !{ptr @.str.167, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1547, i32 50}
!423 = !{ptr @.str.168, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1548, i32 3}
!425 = !{ptr @.str.169, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1548, i32 14}
!427 = !{ptr @snd_echo_clock_source_info.names, !428, !"names", i1 false, i1 false}
!428 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1546, i32 28}
!429 = !{ptr @.str.170, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1596, i32 3}
!431 = !{ptr @.str.171, !430, !"<string literal>", i1 false, i1 false}
!432 = !{ptr @snd_echo_clock_source_put.__UNIQUE_ID_ddebug274, !430, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!433 = !{ptr @.str.172, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1529, i32 10}
!435 = !{ptr @snd_echo_spdif_mode_switch, !436, !"snd_echo_spdif_mode_switch", i1 false, i1 false}
!436 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1528, i32 38}
!437 = !{ptr @.str.173, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1496, i32 40}
!439 = !{ptr @.str.174, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1496, i32 52}
!441 = !{ptr @snd_echo_spdif_mode_info.names, !442, !"names", i1 false, i1 false}
!442 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 1496, i32 28}
!443 = !{ptr @snd_echo_pm, !444, !"snd_echo_pm", i1 false, i1 false}
!444 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 2235, i32 8}
!445 = !{ptr @.str.175, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 2192, i32 3}
!447 = !{ptr @.str.176, !446, !"<string literal>", i1 false, i1 false}
!448 = !{ptr @snd_echo_resume._entry, !446, !"_entry", i1 false, i1 false}
!449 = !{ptr @snd_echo_resume._entry_ptr, !446, !"_entry_ptr", i1 false, i1 false}
!450 = !{ptr @snd_echo_resume._entry.177, !451, !"_entry", i1 false, i1 false}
!451 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 2218, i32 3}
!452 = !{ptr @snd_echo_resume._entry_ptr.178, !451, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @.str.179, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../sound/pci/echoaudio/echoaudio.c", i32 2223, i32 2}
!455 = !{ptr @snd_echo_resume.__UNIQUE_ID_ddebug277, !454, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!456 = !{i32 1, !"wchar_size", i32 2}
!457 = !{i32 1, !"min_enum_size", i32 4}
!458 = !{i32 8, !"branch-target-enforcement", i32 0}
!459 = !{i32 8, !"sign-return-address", i32 0}
!460 = !{i32 8, !"sign-return-address-all", i32 0}
!461 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!462 = !{i32 7, !"uwtable", i32 1}
!463 = !{i32 7, !"frame-pointer", i32 2}
!464 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!465 = !{!"auto-init"}
!466 = !{i8 0, i8 2}
!467 = !{i64 2148757535, i64 2148757540, i64 2148757553, i64 2148757597, i64 2148757631, i64 2148757652}
!468 = !{!"branch_weights", i32 2000, i32 1}
!469 = !{i64 4207062}
!470 = !{i64 2154755061}
!471 = !{!"branch_weights", i32 1, i32 2000}
!472 = !{i64 2154819712}
!473 = !{i64 2154755456}
!474 = !{i64 4206644}
!475 = !{i64 2154817288}
!476 = !{i64 2154822048}
!477 = !{i64 2154998902}
!478 = !{!"branch_weights", i32 2002, i32 2000}
