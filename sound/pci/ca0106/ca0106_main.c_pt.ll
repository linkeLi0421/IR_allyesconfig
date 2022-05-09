; ModuleID = '/llk/IR_all_yes/sound/pci/ca0106/ca0106_main.c_pt.bc'
source_filename = "../sound/pci/ca0106/ca0106_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_ca0106_details = type { i32, ptr, i32, i32, i32, i16 }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_chmap_elem = type { i8, [15 x i8] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_ca0106 = type { ptr, ptr, ptr, i32, i32, i32, i16, %struct.spinlock, ptr, [4 x ptr], [4 x %struct.snd_ca0106_channel], [4 x %struct.snd_ca0106_channel], [4 x i32], [4 x i32], i32, i32, i32, [4 x [2 x i8]], i32, ptr, %struct.snd_ca_midi, %struct.snd_ca_midi, [16 x i16], [9 x i32] }
%struct.snd_ca0106_channel = type { ptr, i32, i32, ptr, ptr }
%struct.snd_ca_midi = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_ac97_template = type { ptr, ptr, ptr, i16, i16, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.73, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.73 = type { ptr }
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
%struct.snd_ac97_bus = type { ptr, ptr, ptr, ptr, i16, i8, i32, %struct.spinlock, [2 x [4 x i16]], i16, ptr, [4 x ptr], ptr }
%struct.snd_ca0106_pcm = type { ptr, ptr, i32, i16 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.75, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.75 = type { i32, [28 x i8] }

@__UNIQUE_ID_author242 = internal constant [69 x i8] c"snd_ca0106.author=James Courtier-Dutton <James@superbug.demon.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [30 x i8] c"snd_ca0106.description=CA0106\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [44 x i8] c"snd_ca0106.file=sound/pci/ca0106/snd-ca0106\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [23 x i8] c"snd_ca0106.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [17 x i8] c"snd_ca0106.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [39 x i8] c"snd_ca0106.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [60 x i8] c"snd_ca0106.parm=index:Index value for the CA0106 soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [14 x i8] c"snd_ca0106.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [38 x i8] c"snd_ca0106.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [55 x i8] c"snd_ca0106.parm=id:ID string for the CA0106 soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [18 x i8] c"snd_ca0106.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype250 = internal constant [41 x i8] c"snd_ca0106.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable251 = internal constant [52 x i8] c"snd_ca0106.parm=enable:Enable the CA0106 soundcard.\00", section ".modinfo", align 1
@__param_str_subsystem = internal constant [21 x i8] c"snd_ca0106.subsystem\00", align 1
@__param_arr_subsystem = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_uint, ptr @subsystem }, align 4
@__param_subsystem = internal constant %struct.kernel_param { ptr @__param_str_subsystem, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_subsystem } }, section "__param", align 4
@__UNIQUE_ID_subsystemtype252 = internal constant [44 x i8] c"snd_ca0106.parmtype=subsystem:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_subsystem253 = internal constant [54 x i8] c"snd_ca0106.parm=subsystem:Force card subsystem model.\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@snd_ca0106_i2c_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 405, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"i2c_write: invalid values.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_ca0106_i2c_write\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound/pci/ca0106/ca0106_main.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_ca0106_i2c_write._entry_ptr = internal global ptr @snd_ca0106_i2c_write._entry, section ".printk_index", align 4
@snd_ca0106_i2c_write._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 444, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Writing to ADC failed!\0A\00", [40 x i8] zeroinitializer }, align 32
@snd_ca0106_i2c_write._entry_ptr.7 = internal global ptr @snd_ca0106_i2c_write._entry.5, section ".printk_index", align 4
@__initcall__kmod_snd_ca0106__257_1847_ca0106_driver_init6 = internal global ptr @ca0106_driver_init, section ".initcall6.init", align 4
@ca0106_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.8, ptr @snd_ca0106_ids, ptr @snd_ca0106_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_ca0106_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ca0106_driver_exit = internal global ptr @ca0106_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@subsystem = internal global { [32 x i32], [32 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snd_ca0106\00", [21 x i8] zeroinitializer }, align 32
@snd_ca0106_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4354, i32 7, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_ca0106_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @snd_ca0106_suspend, ptr @snd_ca0106_resume, ptr @snd_ca0106_suspend, ptr @snd_ca0106_resume, ptr @snd_ca0106_suspend, ptr @snd_ca0106_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@snd_ca0106_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@snd_ca0106_probe.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 1, i8 -70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_ca0106_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"probe for MIDI channel A ...\00", [35 x i8] zeroinitializer }, align 32
@snd_ca0106_probe.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 1, i8 -69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" done.\0A\00", [24 x i8] zeroinitializer }, align 32
@snd_ca0106_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1586, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error to set 32bit mask DMA\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_ca0106_create\00", [46 x i8] zeroinitializer }, align 32
@snd_ca0106_create._entry_ptr = internal global ptr @snd_ca0106_create._entry, section ".printk_index", align 4
@snd_ca0106_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->emu_lock\00", [16 x i8] zeroinitializer }, align 32
@snd_ca0106_create._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.2, i32 1603, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cannot grab irq\0A\00", [47 x i8] zeroinitializer }, align 32
@snd_ca0106_create._entry_ptr.17 = internal global ptr @snd_ca0106_create._entry.15, section ".printk_index", align 4
@snd_ca0106_create._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.2, i32 1619, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Model %04x Rev %08x Serial %08x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@snd_ca0106_create._entry_ptr.21 = internal global ptr @snd_ca0106_create._entry.18, section ".printk_index", align 4
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CA0106\00", [25 x i8] zeroinitializer }, align 32
@ca0106_chip_details = internal constant { [15 x %struct.snd_ca0106_details], [88 x i8] } { [15 x %struct.snd_ca0106_details] [%struct.snd_ca0106_details { i32 269684994, ptr @.str.27, i32 0, i32 1, i32 1, i16 0 }, %struct.snd_ca0106_details { i32 269619458, ptr @.str.28, i32 0, i32 1, i32 1, i16 0 }, %struct.snd_ca0106_details { i32 268570882, ptr @.str.29, i32 1, i32 0, i32 0, i16 0 }, %struct.snd_ca0106_details { i32 268767490, ptr @.str.30, i32 1, i32 0, i32 0, i16 0 }, %struct.snd_ca0106_details { i32 268833026, ptr @.str.31, i32 0, i32 1, i32 1, i16 0 }, %struct.snd_ca0106_details { i32 268898562, ptr @.str.32, i32 0, i32 1, i32 1, i16 0 }, %struct.snd_ca0106_details { i32 269095170, ptr @.str.33, i32 0, i32 1, i32 1, i16 16417 }, %struct.snd_ca0106_details { i32 269553922, ptr @.str.34, i32 0, i32 1, i32 1, i16 16417 }, %struct.snd_ca0106_details { i32 268701954, ptr @.str.35, i32 0, i32 1, i32 0, i16 292 }, %struct.snd_ca0106_details { i32 269030498, ptr @.str.36, i32 0, i32 2, i32 1, i16 0 }, %struct.snd_ca0106_details { i32 269029634, ptr @.str.37, i32 0, i32 2, i32 1, i16 16417 }, %struct.snd_ca0106_details { i32 341352454, ptr @.str.38, i32 0, i32 1, i32 1, i16 0 }, %struct.snd_ca0106_details { i32 808981143, ptr @.str.39, i32 0, i32 1, i32 1, i16 0 }, %struct.snd_ca0106_details { i32 809570967, ptr @.str.40, i32 0, i32 1, i32 1, i16 0 }, %struct.snd_ca0106_details { i32 0, ptr @.str.41, i32 0, i32 0, i32 0, i16 0 }], [88 x i8] zeroinitializer }, align 32
@snd_ca0106_create._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.13, ptr @.str.2, i32 1634, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Sound card name=%s, subsystem=0x%x. Forced to subsystem=0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@snd_ca0106_create._entry_ptr.25 = internal global ptr @snd_ca0106_create._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s at 0x%lx irq %i\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"X-Fi Extreme Audio [SBxxxx]\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"X-Fi Extreme Audio [SB0790]\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AudigyLS [SB0310]\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AudigyLS [SB0310b]\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Live! 7.1 24bit [SB0410]\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Live! 7.1 24bit [SB0413]\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Audigy SE [SB0570]\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Audigy SE OEM [SB0570a]\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Sound Blaster 5.1vx [SB1070]\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MSI K8N Diamond MB [SB0438]\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MSI K8N Diamond MB\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Giga-byte GA-G1975X\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Shuttle XPC SD31P [SD31P]\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Shuttle XPC SD11G5 [SD11G5]\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AudigyLS [Unknown]\00", [45 x i8] zeroinitializer }, align 32
@spi_dacd_reg = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 10, i32 10, i32 10, i32 0, i32 15], [44 x i8] zeroinitializer }, align 32
@spi_dacd_bit = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 2, i32 4, i32 8, i32 0, i32 1], [44 x i8] zeroinitializer }, align 32
@snd_ca0106_channel_dac.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 -127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_ca0106_channel_dac\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ca0106: unknown channel_id %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ca0106\00", [25 x i8] zeroinitializer }, align 32
@snd_ca0106_playback_front_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_ca0106_pcm_open_playback_front, ptr @snd_ca0106_pcm_close_playback, ptr null, ptr null, ptr null, ptr @snd_ca0106_pcm_prepare_playback, ptr @snd_ca0106_pcm_trigger_playback, ptr null, ptr @snd_ca0106_pcm_pointer_playback, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_ca0106_capture_0_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_ca0106_pcm_open_0_capture, ptr @snd_ca0106_pcm_close_capture, ptr null, ptr null, ptr null, ptr @snd_ca0106_pcm_prepare_capture, ptr @snd_ca0106_pcm_trigger_capture, ptr null, ptr @snd_ca0106_pcm_pointer_capture, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_pcm_std_chmaps = external dso_local constant [0 x %struct.snd_pcm_chmap_elem], align 1
@snd_ca0106_playback_rear_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_ca0106_pcm_open_playback_rear, ptr @snd_ca0106_pcm_close_playback, ptr null, ptr null, ptr null, ptr @snd_ca0106_pcm_prepare_playback, ptr @snd_ca0106_pcm_trigger_playback, ptr null, ptr @snd_ca0106_pcm_pointer_playback, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_ca0106_capture_1_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_ca0106_pcm_open_1_capture, ptr @snd_ca0106_pcm_close_capture, ptr null, ptr null, ptr null, ptr @snd_ca0106_pcm_prepare_capture, ptr @snd_ca0106_pcm_trigger_capture, ptr null, ptr @snd_ca0106_pcm_pointer_capture, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_ca0106_playback_center_lfe_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_ca0106_pcm_open_playback_center_lfe, ptr @snd_ca0106_pcm_close_playback, ptr null, ptr null, ptr null, ptr @snd_ca0106_pcm_prepare_playback, ptr @snd_ca0106_pcm_trigger_playback, ptr null, ptr @snd_ca0106_pcm_pointer_playback, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_ca0106_capture_2_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_ca0106_pcm_open_2_capture, ptr @snd_ca0106_pcm_close_capture, ptr null, ptr null, ptr null, ptr @snd_ca0106_pcm_prepare_capture, ptr @snd_ca0106_pcm_trigger_capture, ptr null, ptr @snd_ca0106_pcm_pointer_capture, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_ca0106_playback_unknown_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_ca0106_pcm_open_playback_unknown, ptr @snd_ca0106_pcm_close_playback, ptr null, ptr null, ptr null, ptr @snd_ca0106_pcm_prepare_playback, ptr @snd_ca0106_pcm_trigger_playback, ptr null, ptr @snd_ca0106_pcm_pointer_playback, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_ca0106_capture_3_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_ca0106_pcm_open_3_capture, ptr @snd_ca0106_pcm_close_capture, ptr null, ptr null, ptr null, ptr @snd_ca0106_pcm_prepare_capture, ptr @snd_ca0106_pcm_trigger_capture, ptr null, ptr @snd_ca0106_pcm_pointer_capture, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_ca0106_playback_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4260099, i64 1028, i32 5248, i32 48000, i32 192000, i32 2, i32 2, i32 523776, i32 64, i32 65472, i32 2, i32 8, i32 0 }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@snd_ca0106_pcm_pointer_playback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 1039, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ca0106: unstable DMA pointer!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"snd_ca0106_pcm_pointer_playback\00", [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@snd_ca0106_pcm_pointer_playback._entry_ptr = internal global ptr @snd_ca0106_pcm_pointer_playback._entry, section ".printk_index", align 4
@snd_ca0106_capture_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65795, i64 1028, i32 5248, i32 48000, i32 192000, i32 2, i32 2, i32 65408, i32 64, i32 32704, i32 2, i32 2, i32 0 }, [32 x i8] zeroinitializer }, align 32
@surround_map = internal constant { <{ { i8, <{ i8, i8, [13 x i8] }> }, %struct.snd_pcm_chmap_elem }>, [32 x i8] } { <{ { i8, <{ i8, i8, [13 x i8] }> }, %struct.snd_pcm_chmap_elem }> <{ { i8, <{ i8, i8, [13 x i8] }> } { i8 2, <{ i8, i8, [13 x i8] }> <{ i8 5, i8 6, [13 x i8] zeroinitializer }> }, %struct.snd_pcm_chmap_elem zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@clfe_map = internal constant { <{ { i8, <{ i8, i8, [13 x i8] }> }, %struct.snd_pcm_chmap_elem }>, [32 x i8] } { <{ { i8, <{ i8, i8, [13 x i8] }> }, %struct.snd_pcm_chmap_elem }> <{ { i8, <{ i8, i8, [13 x i8] }> } { i8 2, <{ i8, i8, [13 x i8] }> <{ i8 7, i8 8, [13 x i8] zeroinitializer }> }, %struct.snd_pcm_chmap_elem zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@side_map = internal constant { <{ { i8, <{ i8, i8, [13 x i8] }> }, %struct.snd_pcm_chmap_elem }>, [32 x i8] } { <{ { i8, <{ i8, i8, [13 x i8] }> }, %struct.snd_pcm_chmap_elem }> <{ { i8, <{ i8, i8, [13 x i8] }> } { i8 2, <{ i8, i8, [13 x i8] }> <{ i8 9, i8 10, [13 x i8] zeroinitializer }> }, %struct.snd_pcm_chmap_elem zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@snd_ca0106_ac97.ops = internal constant { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr null, ptr null, ptr @snd_ca0106_ac97_write, ptr @snd_ca0106_ac97_read, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CA0106 MPU-401 (UART)\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 268570882, i64 268701954, i64 268767490, i64 268833026, i64 268898562, i64 269029634, i64 269030498, i64 269095170, i64 269553922, i64 269619458, i64 269684994, i64 341352454, i64 808981143, i64 809570967]
@__sancov_gen_cov_switch_values.53 = internal global [16 x i64] [i64 14, i64 32, i64 268570882, i64 268701954, i64 268767490, i64 268833026, i64 268898562, i64 269029634, i64 269030498, i64 269095170, i64 269553922, i64 269619458, i64 269684994, i64 341352454, i64 808981143, i64 809570967]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.56 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 32, i64 44100, i64 96000, i64 192000]
@__sancov_gen_cov_switch_values.58 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 6]
@__sancov_gen_cov_switch_values.59 = internal global [6 x i64] [i64 4, i64 32, i64 44100, i64 48000, i64 96000, i64 192000]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 405, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 444, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [14 x i8] c"ca0106_driver\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1838, i32 26 }
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 142, i32 12 }
@___asan_gen_.91 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 143, i32 14 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 144, i32 13 }
@___asan_gen_.97 = private unnamed_addr constant [10 x i8] c"subsystem\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 145, i32 13 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1847, i32 1 }
@___asan_gen_.103 = private unnamed_addr constant [15 x i8] c"snd_ca0106_ids\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1831, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant [14 x i8] c"snd_ca0106_pm\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1824, i32 8 }
@___asan_gen_.109 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1731, i32 13 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1770, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1774, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1586, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1594, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1603, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1618, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1620, i32 23 }
@___asan_gen_.154 = private unnamed_addr constant [20 x i8] c"ca0106_chip_details\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 158, i32 40 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1632, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1637, i32 26 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 165, i32 15 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 183, i32 15 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 189, i32 15 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 193, i32 15 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 197, i32 15 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 202, i32 15 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 212, i32 15 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 223, i32 15 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 232, i32 14 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 244, i32 15 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 249, i32 15 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 258, i32 12 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 267, i32 15 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 276, i32 12 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 280, i32 15 }
@___asan_gen_.211 = private unnamed_addr constant [13 x i8] c"spi_dacd_reg\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 480, i32 18 }
@___asan_gen_.214 = private unnamed_addr constant [13 x i8] c"spi_dacd_bit\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 487, i32 18 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 518, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1288, i32 31 }
@___asan_gen_.226 = private unnamed_addr constant [30 x i8] c"snd_ca0106_playback_front_ops\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1072, i32 33 }
@___asan_gen_.229 = private unnamed_addr constant [25 x i8] c"snd_ca0106_capture_0_ops\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1080, i32 33 }
@___asan_gen_.232 = private unnamed_addr constant [29 x i8] c"snd_ca0106_playback_rear_ops\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1128, i32 33 }
@___asan_gen_.235 = private unnamed_addr constant [25 x i8] c"snd_ca0106_capture_1_ops\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1088, i32 33 }
@___asan_gen_.238 = private unnamed_addr constant [35 x i8] c"snd_ca0106_playback_center_lfe_ops\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1112, i32 33 }
@___asan_gen_.241 = private unnamed_addr constant [25 x i8] c"snd_ca0106_capture_2_ops\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1096, i32 33 }
@___asan_gen_.244 = private unnamed_addr constant [32 x i8] c"snd_ca0106_playback_unknown_ops\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1120, i32 33 }
@___asan_gen_.247 = private unnamed_addr constant [25 x i8] c"snd_ca0106_capture_3_ops\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1104, i32 33 }
@___asan_gen_.250 = private unnamed_addr constant [23 x i8] c"snd_ca0106_playback_hw\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 284, i32 38 }
@___asan_gen_.253 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1039, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant [22 x i8] c"snd_ca0106_capture_hw\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 305, i32 38 }
@___asan_gen_.268 = private unnamed_addr constant [13 x i8] c"surround_map\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1263, i32 40 }
@___asan_gen_.271 = private unnamed_addr constant [9 x i8] c"clfe_map\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1269, i32 40 }
@___asan_gen_.274 = private unnamed_addr constant [9 x i8] c"side_map\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1275, i32 40 }
@___asan_gen_.277 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1168, i32 39 }
@___asan_gen_.280 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.281 = private constant [34 x i8] c"../sound/pci/ca0106/ca0106_main.c\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 1691, i32 10 }
@llvm.compiler.used = appending global [100 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_enable251, ptr @__UNIQUE_ID_enabletype250, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_license245, ptr @__UNIQUE_ID_subsystem253, ptr @__UNIQUE_ID_subsystemtype252, ptr @__exitcall_ca0106_driver_exit, ptr @__initcall__kmod_snd_ca0106__257_1847_ca0106_driver_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @__param_subsystem, ptr @ca0106_driver_exit, ptr @snd_ca0106_create._entry, ptr @snd_ca0106_create._entry.15, ptr @snd_ca0106_create._entry.18, ptr @snd_ca0106_create._entry.23, ptr @snd_ca0106_create._entry_ptr, ptr @snd_ca0106_create._entry_ptr.17, ptr @snd_ca0106_create._entry_ptr.21, ptr @snd_ca0106_create._entry_ptr.25, ptr @snd_ca0106_i2c_write._entry, ptr @snd_ca0106_i2c_write._entry.5, ptr @snd_ca0106_i2c_write._entry_ptr, ptr @snd_ca0106_i2c_write._entry_ptr.7, ptr @snd_ca0106_pcm_pointer_playback._entry, ptr @snd_ca0106_pcm_pointer_playback._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @ca0106_driver, ptr @index, ptr @id, ptr @enable, ptr @subsystem, ptr @.str.8, ptr @snd_ca0106_ids, ptr @snd_ca0106_pm, ptr @snd_ca0106_probe.dev, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @snd_ca0106_create.__key, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @ca0106_chip_details, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @spi_dacd_reg, ptr @spi_dacd_bit, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @snd_ca0106_playback_front_ops, ptr @snd_ca0106_capture_0_ops, ptr @snd_ca0106_playback_rear_ops, ptr @snd_ca0106_capture_1_ops, ptr @snd_ca0106_playback_center_lfe_ops, ptr @snd_ca0106_capture_2_ops, ptr @snd_ca0106_playback_unknown_ops, ptr @snd_ca0106_capture_3_ops, ptr @snd_ca0106_playback_hw, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @snd_ca0106_capture_hw, ptr @surround_map, ptr @clfe_map, ptr @side_map, ptr @snd_ca0106_ac97.ops, ptr @.str.52], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_i2c_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_i2c_write._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca0106_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @subsystem to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_create._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_create._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ca0106_chip_details to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_create._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_dacd_reg to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_dacd_bit to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_playback_front_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_capture_0_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_playback_rear_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_capture_1_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_playback_center_lfe_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_capture_2_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_playback_unknown_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_capture_3_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_playback_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_pcm_pointer_playback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_capture_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @surround_map to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clfe_map to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @side_map to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ca0106_ac97.ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ca0106_ptr_read(ptr noundef %emu, i32 noundef %reg, i32 noundef %chn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %reg, 16
  %or = or i32 %shl, %chn
  %emu_lock = getelementptr inbounds %struct.snd_ca0106, ptr %emu, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %0 = tail call i32 @llvm.bswap.i32(i32 %or)
  %port = getelementptr inbounds %struct.snd_ca0106, ptr %emu, i32 0, i32 3
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %port, align 4
  %and = and i32 %2, 1048575
  %add8 = or i32 %and, -18874368
  %3 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %3, i32 %0) #10, !srcloc !193
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %add11 = add i32 %5, 4
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %6 = inttoptr i32 %add13 to ptr
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #10, !srcloc !194
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call2) #10
  ret i32 %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_ca0106_ptr_write(ptr noundef %emu, i32 noundef %reg, i32 noundef %chn, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %reg, 16
  %or = or i32 %shl, %chn
  %emu_lock = getelementptr inbounds %struct.snd_ca0106, ptr %emu, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %0 = tail call i32 @llvm.bswap.i32(i32 %or)
  %port = getelementptr inbounds %struct.snd_ca0106, ptr %emu, i32 0, i32 3
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %port, align 4
  %and = and i32 %2, 1048575
  %add8 = or i32 %and, -18874368
  %3 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %3, i32 %0) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %4 = tail call i32 @llvm.bswap.i32(i32 %data)
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port, align 4
  %add14 = add i32 %6, 4
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %7 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %7, i32 %4) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ca0106_spi_write(ptr noundef %emu, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %data)
  %cmp = icmp ugt i32 %data, 65535
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %emu_lock.i = getelementptr inbounds %struct.snd_ca0106, ptr %emu, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %port.i = getelementptr inbounds %struct.snd_ca0106, ptr %emu, i32 0, i32 3
  %0 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port.i, align 4
  %and.i = and i32 %1, 1048575
  %add8.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 31232) #10, !srcloc !193
  %3 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port.i, align 4
  %add11.i = add i32 %4, 4
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %5 = inttoptr i32 %add13.i to ptr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %5) #10, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #10
  %7 = and i32 %6, 64767
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %or = or i32 %8, %data
  %or2 = or i32 %or, 131072
  %call2.i40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port.i, align 4
  %and.i42 = and i32 %10, 1048575
  %add8.i43 = or i32 %and.i42, -18874368
  %11 = inttoptr i32 %add8.i43 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 31232) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %or2) #10
  %13 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port.i, align 4
  %add14.i = add i32 %14, 4
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %15 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 %12) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i40) #10
  %call2.i45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port.i, align 4
  %and.i47 = and i32 %17, 1048575
  %add8.i48 = or i32 %and.i47, -18874368
  %18 = inttoptr i32 %add8.i48 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %18, i32 31232) #10, !srcloc !193
  %19 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port.i, align 4
  %add11.i49 = add i32 %20, 4
  %and12.i50 = and i32 %add11.i49, 1048575
  %add13.i51 = or i32 %and12.i50, -18874368
  %21 = inttoptr i32 %add13.i51 to ptr
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %21) #10, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i45) #10
  %or4 = or i32 %or, 196608
  %call2.i53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %23 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port.i, align 4
  %and.i55 = and i32 %24, 1048575
  %add8.i56 = or i32 %and.i55, -18874368
  %25 = inttoptr i32 %add8.i56 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %25, i32 31232) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %26 = tail call i32 @llvm.bswap.i32(i32 %or4) #10
  %27 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port.i, align 4
  %add14.i57 = add i32 %28, 4
  %and15.i58 = and i32 %add14.i57, 1048575
  %add16.i59 = or i32 %and15.i58, -18874368
  %29 = inttoptr i32 %add16.i59 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %29, i32 %26) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i53) #10
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %n.084, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end
  %n.084 = phi i32 [ 0, %if.end ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 2147480) #10
  %call2.i61 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %31 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port.i, align 4
  %and.i63 = and i32 %32, 1048575
  %add8.i64 = or i32 %and.i63, -18874368
  %33 = inttoptr i32 %add8.i64 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %33, i32 31232) #10, !srcloc !193
  %34 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port.i, align 4
  %add11.i65 = add i32 %35, 4
  %and12.i66 = and i32 %add11.i65, 1048575
  %add13.i67 = or i32 %and12.i66, -18874368
  %36 = inttoptr i32 %add13.i67 to ptr
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %36) #10, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i61) #10
  %38 = and i32 %37, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not = icmp eq i32 %38, 0
  br i1 %tobool.not, label %if.end12, label %for.cond

if.end12:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i69 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %39 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port.i, align 4
  %and.i71 = and i32 %40, 1048575
  %add8.i72 = or i32 %and.i71, -18874368
  %41 = inttoptr i32 %add8.i72 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %41, i32 31232) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %42 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port.i, align 4
  %add14.i73 = add i32 %43, 4
  %and15.i74 = and i32 %add14.i73, 1048575
  %add16.i75 = or i32 %and15.i74, -18874368
  %44 = inttoptr i32 %add16.i75 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %44, i32 %12) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i69) #10
  %call2.i77 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %45 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port.i, align 4
  %and.i79 = and i32 %46, 1048575
  %add8.i80 = or i32 %and.i79, -18874368
  %47 = inttoptr i32 %add8.i80 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %47, i32 31232) #10, !srcloc !193
  %48 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port.i, align 4
  %add11.i81 = add i32 %49, 4
  %and12.i82 = and i32 %add11.i81, 1048575
  %add13.i83 = or i32 %and12.i82, -18874368
  %50 = inttoptr i32 %add13.i83 to ptr
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %50) #10, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i77) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ca0106_i2c_write(ptr noundef %emu, i32 noundef %reg, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %reg)
  %cmp = icmp ugt i32 %reg, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %value)
  %cmp1 = icmp ugt i32 %value, 511
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %shl = shl nuw i32 %reg, 25
  %shl2 = shl nuw nsw i32 %value, 16
  %or = or i32 %shl2, %shl
  %emu_lock.i = getelementptr inbounds %struct.snd_ca0106, ptr %emu, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %port.i = getelementptr inbounds %struct.snd_ca0106, ptr %emu, i32 0, i32 3
  %0 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port.i, align 4
  %and.i = and i32 %1, 1048575
  %add8.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 32000) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %3 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %4 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port.i, align 4
  %add14.i = add i32 %5, 4
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %6 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %6, i32 %3) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %retry.054 = phi i32 [ 0, %if.end ], [ %inc15, %for.inc.for.body_crit_edge ]
  %timeout.053 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %call2.i41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %7 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port.i, align 4
  %and.i43 = and i32 %8, 1048575
  %add8.i44 = or i32 %and.i43, -18874368
  %9 = inttoptr i32 %add8.i44 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 31488) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port.i, align 4
  %add14.i45 = add i32 %11, 4
  %and15.i46 = and i32 %add14.i45, 1048575
  %add16.i47 = or i32 %and15.i46, -18874368
  %12 = inttoptr i32 %add16.i47 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %12, i32 872742912) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i41) #10
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %for.body
  %timeout.1 = phi i32 [ %timeout.053, %for.body ], [ %inc, %while.cond.while.cond_crit_edge ]
  %call2.i49 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port.i, align 4
  %and.i51 = and i32 %14, 1048575
  %add8.i52 = or i32 %and.i51, -18874368
  %15 = inttoptr i32 %add8.i52 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 31488) #10, !srcloc !193
  %16 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port.i, align 4
  %add11.i = add i32 %17, 4
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %18 = inttoptr i32 %add13.i to ptr
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %18) #10, !srcloc !194
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i49) #10
  %inc = add i32 %timeout.1, 1
  %and = and i32 %20, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp5 = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %inc)
  %cmp8 = icmp sgt i32 %inc, 1000
  %or.cond39 = select i1 %cmp5, i1 true, i1 %cmp8
  br i1 %or.cond39, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %and11 = and i32 %20, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %cmp12 = icmp eq i32 %and11, 0
  br i1 %cmp12, label %for.end, label %for.inc

for.inc:                                          ; preds = %while.end
  %inc15 = add nuw nsw i32 %retry.054, 1
  %exitcond.not = icmp eq i32 %inc15, 10
  br i1 %exitcond.not, label %for.inc.cleanup.sink.split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup.sink.split_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.end:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %retry.054)
  %cmp16 = icmp eq i32 %retry.054, 10
  br i1 %cmp16, label %for.end.cleanup.sink.split_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end.cleanup.sink.split_crit_edge, %for.inc.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.6.sink = phi ptr [ @.str, %entry.cleanup.sink.split_crit_edge ], [ @.str.6, %for.end.cleanup.sink.split_crit_edge ], [ @.str.6, %for.inc.cleanup.sink.split_crit_edge ]
  %21 = ptrtoint ptr %emu to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %emu, align 4
  %dev22 = getelementptr inbounds %struct.snd_card, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev22, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull %.str.6.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ca0106_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @ca0106_driver, ptr noundef null, ptr noundef nonnull @.str.8) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ca0106_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @ca0106_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_probe(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #0 align 64 {
entry:
  %pbus.i = alloca ptr, align 4
  %ac97.i = alloca %struct.snd_ac97_template, align 4
  %pcm.i = alloca ptr, align 4
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #10
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !198
  %1 = load i32, ptr @snd_ca0106_probe.dev, align 4
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
  %3 = load i8, ptr %arrayidx, align 1, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @snd_ca0106_probe.dev, align 4
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
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %5, ptr noundef %7, ptr noundef null, i32 noundef 828, ptr noundef nonnull %card) #10
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
  %12 = load i32, ptr @snd_ca0106_probe.dev, align 4
  %call.i = call i32 @pcim_enable_device(ptr noundef %pci) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end7.cleanup_crit_edge, label %if.end.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end7
  %call.i.i = call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end5.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev4.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %13 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev4.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.12) #13
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %call1.i.i = call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #10
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %9, ptr %11, align 4
  %pci7.i = getelementptr inbounds %struct.snd_ca0106, ptr %11, i32 0, i32 2
  %16 = ptrtoint ptr %pci7.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pci, ptr %pci7.i, align 4
  %irq.i = getelementptr inbounds %struct.snd_ca0106, ptr %11, i32 0, i32 4
  %17 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %irq.i, align 4
  %emu_lock.i = getelementptr inbounds %struct.snd_ca0106, ptr %11, i32 0, i32 7
  call void @__raw_spin_lock_init(ptr noundef %emu_lock.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @snd_ca0106_create.__key, i16 noundef signext 3) #10
  %call12.i = call i32 @pci_request_regions(ptr noundef %pci, ptr noundef nonnull @.str.8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end5.i.cleanup_crit_edge, label %if.end15.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15.i:                                       ; preds = %if.end5.i
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %18 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %resource.i, align 8
  %port.i = getelementptr inbounds %struct.snd_ca0106, ptr %11, i32 0, i32 3
  %20 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %port.i, align 4
  %irq17.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %21 = ptrtoint ptr %irq17.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq17.i, align 4
  %call.i136.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %22, ptr noundef nonnull @snd_ca0106_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.8, ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136.i)
  %tobool19.not.i = icmp eq i32 %call.i136.i, 0
  br i1 %tobool19.not.i, label %if.end25.i, label %do.end23.i

do.end23.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev24.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %23 = ptrtoint ptr %dev24.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev24.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.16) #13
  br label %cleanup

if.end25.i:                                       ; preds = %if.end15.i
  %25 = ptrtoint ptr %irq17.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq17.i, align 4
  %27 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %irq.i, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 33
  %28 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %26, ptr %sync_irq.i, align 4
  %call.i137.i = call ptr @snd_devm_alloc_dir_pages(ptr noundef %dev, i32 noundef 2, i32 noundef 0, i32 noundef 1024) #10
  %buffer.i = getelementptr inbounds %struct.snd_ca0106, ptr %11, i32 0, i32 19
  %29 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i137.i, ptr %buffer.i, align 4
  %tobool32.not.i = icmp eq ptr %call.i137.i, null
  br i1 %tobool32.not.i, label %if.end25.i.cleanup_crit_edge, label %if.end34.i

if.end25.i.cleanup_crit_edge:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end34.i:                                       ; preds = %if.end25.i
  call void @pci_set_master(ptr noundef %pci) #10
  %serial.i = getelementptr inbounds %struct.snd_ca0106, ptr %11, i32 0, i32 5
  %call35.i = call i32 @pci_read_config_dword(ptr noundef %pci, i32 noundef 44, ptr noundef %serial.i) #10
  %model.i = getelementptr inbounds %struct.snd_ca0106, ptr %11, i32 0, i32 6
  %call36.i = call i32 @pci_read_config_word(ptr noundef %pci, i32 noundef 46, ptr noundef %model.i) #10
  %dev40.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %30 = ptrtoint ptr %dev40.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev40.i, align 8
  %32 = ptrtoint ptr %model.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %model.i, align 4
  %conv.i = zext i16 %33 to i32
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 12
  %34 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %revision.i, align 4
  %conv42.i = zext i8 %35 to i32
  %36 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %serial.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.19, i32 noundef %conv.i, i32 noundef %conv42.i, i32 noundef %37) #13
  %driver.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 2
  %38 = call ptr @memcpy(ptr %driver.i, ptr @.str.22, i32 7)
  %shortname.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 3
  %39 = call ptr @memcpy(ptr %shortname.i, ptr @.str.22, i32 7)
  %arrayidx49.i = getelementptr [32 x i32], ptr @subsystem, i32 0, i32 %12
  %40 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx49.i, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i32 %41, label %if.end34.i.for.inc.13.i_crit_edge [
    i32 0, label %if.else.i
    i32 269684994, label %if.end34.i.for.end.i_crit_edge
    i32 269619458, label %for.end.fold.split.i
    i32 268570882, label %for.end.fold.split140.i
    i32 268767490, label %for.end.fold.split141.i
    i32 268833026, label %for.end.fold.split142.i
    i32 268898562, label %for.end.fold.split143.i
    i32 269095170, label %for.end.fold.split144.i
    i32 269553922, label %for.end.fold.split145.i
    i32 268701954, label %for.end.fold.split146.i
    i32 269030498, label %for.end.fold.split147.i
    i32 269029634, label %for.end.fold.split148.i
    i32 341352454, label %for.end.fold.split149.i
    i32 808981143, label %for.end.fold.split150.i
    i32 809570967, label %for.end.fold.split151.i
  ]

if.end34.i.for.end.i_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end34.i.for.inc.13.i_crit_edge:                ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.13.i

if.else.i:                                        ; preds = %if.end34.i
  %43 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %serial.i, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %44, label %if.else.i.for.inc.13.i_crit_edge [
    i32 269684994, label %if.else.i.for.end.i_crit_edge
    i32 269619458, label %for.end.i.fold.split
    i32 268570882, label %for.end.i.fold.split112
    i32 268767490, label %for.end.i.fold.split113
    i32 268833026, label %for.end.i.fold.split114
    i32 268898562, label %for.end.i.fold.split115
    i32 269095170, label %for.end.i.fold.split116
    i32 269553922, label %for.end.i.fold.split117
    i32 268701954, label %for.end.i.fold.split118
    i32 269030498, label %for.end.i.fold.split119
    i32 269029634, label %for.end.i.fold.split120
    i32 341352454, label %for.end.i.fold.split121
    i32 808981143, label %for.end.i.fold.split122
    i32 809570967, label %for.end.i.fold.split123
  ]

if.else.i.for.end.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.else.i.for.inc.13.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.13.i

for.inc.13.i:                                     ; preds = %if.else.i.for.inc.13.i_crit_edge, %if.end34.i.for.inc.13.i_crit_edge
  br label %for.end.i

for.end.fold.split.i:                             ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.fold.split140.i:                          ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.fold.split141.i:                          ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.fold.split142.i:                          ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.fold.split143.i:                          ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.fold.split144.i:                          ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.fold.split145.i:                          ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.fold.split146.i:                          ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.fold.split147.i:                          ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.fold.split148.i:                          ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.fold.split149.i:                          ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.fold.split150.i:                          ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.fold.split151.i:                          ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i.fold.split:                             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i.fold.split112:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i.fold.split113:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i.fold.split114:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i.fold.split115:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i.fold.split116:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i.fold.split117:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i.fold.split118:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i.fold.split119:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i.fold.split120:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i.fold.split121:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i.fold.split122:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i.fold.split123:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.i.fold.split123, %for.end.i.fold.split122, %for.end.i.fold.split121, %for.end.i.fold.split120, %for.end.i.fold.split119, %for.end.i.fold.split118, %for.end.i.fold.split117, %for.end.i.fold.split116, %for.end.i.fold.split115, %for.end.i.fold.split114, %for.end.i.fold.split113, %for.end.i.fold.split112, %for.end.i.fold.split, %for.end.fold.split151.i, %for.end.fold.split150.i, %for.end.fold.split149.i, %for.end.fold.split148.i, %for.end.fold.split147.i, %for.end.fold.split146.i, %for.end.fold.split145.i, %for.end.fold.split144.i, %for.end.fold.split143.i, %for.end.fold.split142.i, %for.end.fold.split141.i, %for.end.fold.split140.i, %for.end.fold.split.i, %for.inc.13.i, %if.else.i.for.end.i_crit_edge, %if.end34.i.for.end.i_crit_edge
  %c.0.lcssa.i = phi ptr [ @ca0106_chip_details, %if.else.i.for.end.i_crit_edge ], [ getelementptr inbounds ([15 x %struct.snd_ca0106_details], ptr @ca0106_chip_details, i32 0, i32 14, i32 0), %for.inc.13.i ], [ @ca0106_chip_details, %if.end34.i.for.end.i_crit_edge ], [ getelementptr inbounds ([15 x %struct.snd_ca0106_details], ptr @ca0106_chip_details, i32 0, i32 1), %for.end.fold.split.i ], [ getelementptr inbounds ([15 x %struct.snd_ca0106_details], ptr @ca0106_chip_details, i32 0, i32 2), %for.end.fold.split140.i ], [ getelementptr inbounds ([15 x %struct.snd_ca0106_details], ptr @ca0106_chip_details, i32 0, i32 3), %for.end.fold.split141.i ], [ getelementptr inbounds ([15 x %struct.snd_ca0106_details], ptr @ca0106_chip_details, i32 0, i32 4), %for.end.fold.split142.i ], [ getelementptr inbounds ([15 x %struct.snd_ca0106_details], ptr @ca0106_chip_details, i32 0, i32 5), %for.end.fold.split143.i ], [ getelementptr inbounds ([15 x %struct.snd_ca0106_details], ptr @ca0106_chip_details, i32 0, i32 6), %for.end.fold.split144.i ], [ getelementptr inbounds ([15 x %struct.snd_ca0106_details], ptr @ca0106_chip_details, i32 0, i32 7), %for.end.fold.split145.i ], [ getelementptr inbounds ([15 x %struct.snd_ca0106_details], ptr @ca0106_chip_details, i32 0, i32 8), %for.end.fold.split146.i ], [ getelementptr inbounds ([15 x %struct.snd_ca0106_details], ptr @ca0106_chip_details, i32 0, i32 9), %for.end.fold.split147.i ], [ getelementptr inbounds ([15 x %struct.snd_ca0106_details], ptr @ca0106_chip_details, i32 0, i32 10), %for.end.fold.split148.i ], [ getelementptr inbounds ([15 x %struct.snd_ca0106_details], ptr @ca0106_chip_details, i32 0, i32 11), %for.end.fold.split149.i ], [ getelementptr inbounds ([15 x %struct.snd_ca0106_details], ptr @ca0106_chip_details, i32 0, i32 12), %for.end.fold.split150.i ], [ getelementptr inbounds ([15 x %struct.snd_ca0106_details], ptr @ca0106_chip_details, i32 0, i32 13), %for.end.fold.split151.i ], [ getelementptr inbounds ([15 x %struct.snd_ca0106_details], ptr @ca0106_chip_details, i32 0, i32 1), %for.end.i.fold.split ], [ getelementptr inbounds ([15 x %struct.snd_ca0106_details], ptr @ca0106_chip_details, i32 0, i32 2), %for.end.i.fold.split112 ], [ getelementptr inbounds ([15 x %struct.snd_ca0106_details], ptr @ca0106_chip_details, i32 0, i32 3), %for.end.i.fold.split113 ], [ getelementptr inbounds ([15 x %struct.snd_ca0106_details], ptr @ca0106_chip_details, i32 0, i32 4), %for.end.i.fold.split114 ], [ getelementptr inbounds ([15 x %struct.snd_ca0106_details], ptr @ca0106_chip_details, i32 0, i32 5), %for.end.i.fold.split115 ], [ getelementptr inbounds ([15 x %struct.snd_ca0106_details], ptr @ca0106_chip_details, i32 0, i32 6), %for.end.i.fold.split116 ], [ getelementptr inbounds ([15 x %struct.snd_ca0106_details], ptr @ca0106_chip_details, i32 0, i32 7), %for.end.i.fold.split117 ], [ getelementptr inbounds ([15 x %struct.snd_ca0106_details], ptr @ca0106_chip_details, i32 0, i32 8), %for.end.i.fold.split118 ], [ getelementptr inbounds ([15 x %struct.snd_ca0106_details], ptr @ca0106_chip_details, i32 0, i32 9), %for.end.i.fold.split119 ], [ getelementptr inbounds ([15 x %struct.snd_ca0106_details], ptr @ca0106_chip_details, i32 0, i32 10), %for.end.i.fold.split120 ], [ getelementptr inbounds ([15 x %struct.snd_ca0106_details], ptr @ca0106_chip_details, i32 0, i32 11), %for.end.i.fold.split121 ], [ getelementptr inbounds ([15 x %struct.snd_ca0106_details], ptr @ca0106_chip_details, i32 0, i32 12), %for.end.i.fold.split122 ], [ getelementptr inbounds ([15 x %struct.snd_ca0106_details], ptr @ca0106_chip_details, i32 0, i32 13), %for.end.i.fold.split123 ]
  %details.i = getelementptr inbounds %struct.snd_ca0106, ptr %11, i32 0, i32 1
  %46 = ptrtoint ptr %details.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %c.0.lcssa.i, ptr %details.i, align 4
  %47 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx49.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool66.not.i = icmp eq i32 %48, 0
  br i1 %tobool66.not.i, label %for.end.i.if.end11_crit_edge, label %do.end70.i

for.end.i.if.end11_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

do.end70.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %dev40.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev40.i, align 8
  %name.i = getelementptr inbounds %struct.snd_ca0106_details, ptr %c.0.lcssa.i, i32 0, i32 1
  %51 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name.i, align 4
  %53 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %serial.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.24, ptr noundef %52, i32 noundef %54, i32 noundef %48) #13
  br label %if.end11

if.end11:                                         ; preds = %do.end70.i, %for.end.i.if.end11_crit_edge
  %longname.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 4
  %name76.i = getelementptr inbounds %struct.snd_ca0106_details, ptr %c.0.lcssa.i, i32 0, i32 1
  %55 = ptrtoint ptr %name76.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name76.i, align 4
  %57 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port.i, align 4
  %59 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %irq.i, align 4
  %call79.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname.i, ptr noundef nonnull @.str.26, ptr noundef %56, i32 noundef %58, i32 noundef %60) #10
  call fastcc void @ca0106_init_chip(ptr noundef %11, i32 noundef 0) #10
  %61 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %card, align 4
  %private_free = getelementptr inbounds %struct.snd_card, ptr %62, i32 0, i32 10
  %63 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @snd_ca0106_free, ptr %private_free, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end11
  %i.0124 = phi i32 [ 0, %if.end11 ], [ %inc17, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i) #10
  %64 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i, align 4, !annotation !198
  %65 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %11, align 4
  %call.i92 = call i32 @snd_pcm_new(ptr noundef %66, ptr noundef nonnull @.str.44, i32 noundef %i.0124, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %pcm.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %cmp.i93 = icmp slt i32 %call.i92, 0
  br i1 %cmp.i93, label %for.body.snd_ca0106_pcm.exit.thread_crit_edge, label %if.end.i95

for.body.snd_ca0106_pcm.exit.thread_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_ca0106_pcm.exit.thread

if.end.i95:                                       ; preds = %for.body
  %67 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pcm.i, align 4
  %private_data.i94 = getelementptr inbounds %struct.snd_pcm, ptr %68, i32 0, i32 11
  %69 = ptrtoint ptr %private_data.i94 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %11, ptr %private_data.i94, align 8
  %70 = zext i32 %i.0124 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %i.0124, label %if.end.i95.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb3.i
  ]

if.end.i95.sw.epilog.i_crit_edge:                 ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #12
  call void @snd_pcm_set_ops(ptr noundef %68, i32 noundef 0, ptr noundef nonnull @snd_ca0106_playback_front_ops) #10
  %71 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %72, i32 noundef 1, ptr noundef nonnull @snd_ca0106_capture_0_ops) #10
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #12
  call void @snd_pcm_set_ops(ptr noundef %68, i32 noundef 0, ptr noundef nonnull @snd_ca0106_playback_rear_ops) #10
  %73 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %74, i32 noundef 1, ptr noundef nonnull @snd_ca0106_capture_1_ops) #10
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #12
  call void @snd_pcm_set_ops(ptr noundef %68, i32 noundef 0, ptr noundef nonnull @snd_ca0106_playback_center_lfe_ops) #10
  %75 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %76, i32 noundef 1, ptr noundef nonnull @snd_ca0106_capture_2_ops) #10
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #12
  call void @snd_pcm_set_ops(ptr noundef %68, i32 noundef 0, ptr noundef nonnull @snd_ca0106_playback_unknown_ops) #10
  %77 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %78, i32 noundef 1, ptr noundef nonnull @snd_ca0106_capture_3_ops) #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %if.end.i95.sw.epilog.i_crit_edge
  %map.0.i = phi ptr [ null, %if.end.i95.sw.epilog.i_crit_edge ], [ @side_map, %sw.bb3.i ], [ @clfe_map, %sw.bb2.i ], [ @surround_map, %sw.bb1.i ], [ @snd_pcm_std_chmaps, %sw.bb.i ]
  %79 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pcm.i, align 4
  %info_flags.i = getelementptr inbounds %struct.snd_pcm, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %info_flags.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %info_flags.i, align 8
  %name.i96 = getelementptr inbounds %struct.snd_pcm, ptr %80, i32 0, i32 7
  %82 = call ptr @memcpy(ptr %name.i96, ptr @.str.22, i32 7)
  %substream5.i = getelementptr inbounds %struct.snd_pcm, ptr %80, i32 0, i32 8, i32 0, i32 4
  %83 = ptrtoint ptr %substream5.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %substream.042.i = load ptr, ptr %substream5.i, align 4
  %tobool.not43.i = icmp eq ptr %substream.042.i, null
  br i1 %tobool.not43.i, label %sw.epilog.i.for.end.i97_crit_edge, label %sw.epilog.i.for.body.i_crit_edge

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  br label %for.body.i

sw.epilog.i.for.end.i97_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i97

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.epilog.i.for.body.i_crit_edge
  %substream.044.i = phi ptr [ %substream.0.i, %for.body.i.for.body.i_crit_edge ], [ %substream.042.i, %sw.epilog.i.for.body.i_crit_edge ]
  %84 = ptrtoint ptr %pci7.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pci7.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %85, i32 0, i32 44
  %call6.i = call i32 @snd_pcm_set_managed_buffer(ptr noundef nonnull %substream.044.i, i32 noundef 2, ptr noundef %dev.i, i32 noundef 65536, i32 noundef 65536) #10
  %next.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.044.i, i32 0, i32 15
  %86 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %substream.0.i = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %substream.0.i, null
  br i1 %tobool.not.i, label %for.body.i.for.end.i97_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.for.end.i97_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i97

for.end.i97:                                      ; preds = %for.body.i.for.end.i97_crit_edge, %sw.epilog.i.for.end.i97_crit_edge
  %87 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pcm.i, align 4
  %substream9.i = getelementptr %struct.snd_pcm, ptr %88, i32 0, i32 8, i32 1, i32 4
  %89 = ptrtoint ptr %substream9.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %substream.145.i = load ptr, ptr %substream9.i, align 4
  %tobool11.not46.i = icmp eq ptr %substream.145.i, null
  br i1 %tobool11.not46.i, label %for.end.i97.for.end18.i_crit_edge, label %for.end.i97.for.body12.i_crit_edge

for.end.i97.for.body12.i_crit_edge:               ; preds = %for.end.i97
  br label %for.body12.i

for.end.i97.for.end18.i_crit_edge:                ; preds = %for.end.i97
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end18.i

for.body12.i:                                     ; preds = %for.body12.i.for.body12.i_crit_edge, %for.end.i97.for.body12.i_crit_edge
  %substream.147.i = phi ptr [ %substream.1.i, %for.body12.i.for.body12.i_crit_edge ], [ %substream.145.i, %for.end.i97.for.body12.i_crit_edge ]
  %90 = ptrtoint ptr %pci7.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pci7.i, align 4
  %dev14.i = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 44
  %call15.i = call i32 @snd_pcm_set_managed_buffer(ptr noundef nonnull %substream.147.i, i32 noundef 2, ptr noundef %dev14.i, i32 noundef 65536, i32 noundef 65536) #10
  %next17.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream.147.i, i32 0, i32 15
  %92 = ptrtoint ptr %next17.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %substream.1.i = load ptr, ptr %next17.i, align 4
  %tobool11.not.i = icmp eq ptr %substream.1.i, null
  br i1 %tobool11.not.i, label %for.body12.i.for.end18.i_crit_edge, label %for.body12.i.for.body12.i_crit_edge

for.body12.i.for.body12.i_crit_edge:              ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body12.i

for.body12.i.for.end18.i_crit_edge:               ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end18.i

for.end18.i:                                      ; preds = %for.body12.i.for.end18.i_crit_edge, %for.end.i97.for.end18.i_crit_edge
  %93 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pcm.i, align 4
  %call19.i = call i32 @snd_pcm_add_chmap_ctls(ptr noundef %94, i32 noundef 0, ptr noundef %map.0.i, i32 noundef 2, i32 noundef 4, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  br i1 %cmp20.i, label %for.end18.i.snd_ca0106_pcm.exit.thread_crit_edge, label %for.inc

for.end18.i.snd_ca0106_pcm.exit.thread_crit_edge: ; preds = %for.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_ca0106_pcm.exit.thread

snd_ca0106_pcm.exit.thread:                       ; preds = %for.end18.i.snd_ca0106_pcm.exit.thread_crit_edge, %for.body.snd_ca0106_pcm.exit.thread_crit_edge
  %retval.0.i98.ph = phi i32 [ %call19.i, %for.end18.i.snd_ca0106_pcm.exit.thread_crit_edge ], [ %call.i92, %for.body.snd_ca0106_pcm.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #10
  br label %cleanup

for.inc:                                          ; preds = %for.end18.i
  %95 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pcm.i, align 4
  %arrayidx24.i = getelementptr %struct.snd_ca0106, ptr %11, i32 0, i32 9, i32 %i.0124
  %97 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %96, ptr %arrayidx24.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #10
  %inc17 = add nuw nsw i32 %i.0124, 1
  %exitcond.not = icmp eq i32 %inc17, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %98 = ptrtoint ptr %details.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %details.i, align 4
  %ac97 = getelementptr inbounds %struct.snd_ca0106_details, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ac97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %101)
  %cmp18 = icmp eq i32 %101, 1
  br i1 %cmp18, label %if.then19, label %for.end.if.end24_crit_edge

for.end.if.end24_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then19:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pbus.i) #10
  %102 = ptrtoint ptr %pbus.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr inttoptr (i32 -1 to ptr), ptr %pbus.i, align 4, !annotation !198
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ac97.i) #10
  %103 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %11, align 4
  %call.i99 = call i32 @snd_ac97_bus(ptr noundef %104, i32 noundef 0, ptr noundef nonnull @snd_ca0106_ac97.ops, ptr noundef null, ptr noundef nonnull %pbus.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %cmp.i100 = icmp slt i32 %call.i99, 0
  br i1 %cmp.i100, label %snd_ca0106_ac97.exit.thread, label %snd_ca0106_ac97.exit

snd_ca0106_ac97.exit.thread:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus.i) #10
  br label %cleanup

snd_ca0106_ac97.exit:                             ; preds = %if.then19
  %105 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 5
  %106 = ptrtoint ptr %pbus.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pbus.i, align 4
  %no_vra.i = getelementptr inbounds %struct.snd_ac97_bus, ptr %107, i32 0, i32 5
  %108 = ptrtoint ptr %no_vra.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %bf.load.i = load i8, ptr %no_vra.i, align 2
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %no_vra.i, align 2
  %109 = getelementptr inbounds i8, ptr %ac97.i, i32 4
  %110 = call ptr @memset(ptr %109, i32 0, i32 20)
  %111 = ptrtoint ptr %ac97.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %11, ptr %ac97.i, align 4
  %112 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 512, ptr %105, align 4
  %ac971.i = getelementptr inbounds %struct.snd_ca0106, ptr %11, i32 0, i32 8
  %call2.i = call i32 @snd_ac97_mixer(ptr noundef %107, ptr noundef nonnull %ac97.i, ptr noundef %ac971.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp21 = icmp slt i32 %call2.i, 0
  br i1 %cmp21, label %snd_ca0106_ac97.exit.cleanup_crit_edge, label %snd_ca0106_ac97.exit.if.end24_crit_edge

snd_ca0106_ac97.exit.if.end24_crit_edge:          ; preds = %snd_ca0106_ac97.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

snd_ca0106_ac97.exit.cleanup_crit_edge:           ; preds = %snd_ca0106_ac97.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %snd_ca0106_ac97.exit.if.end24_crit_edge, %for.end.if.end24_crit_edge
  %call25 = call i32 @snd_ca0106_mixer(ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end24.cleanup_crit_edge, label %do.body

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ca0106_probe.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ca0106_probe, %if.then33)) #10
          to label %do.end [label %if.then33], !srcloc !200

if.then33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %113 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %card, align 4
  %dev34 = getelementptr inbounds %struct.snd_card, ptr %114, i32 0, i32 27
  %115 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev34, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ca0106_probe.__UNIQUE_ID_ddebug255, ptr noundef %116, ptr noundef nonnull @.str.10) #10
  br label %do.end

do.end:                                           ; preds = %if.then33, %do.body
  %tx_enable2.i = getelementptr inbounds %struct.snd_ca0106, ptr %11, i32 0, i32 20, i32 10
  %117 = ptrtoint ptr %tx_enable2.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 2, ptr %tx_enable2.i, align 4
  %rx_enable3.i = getelementptr inbounds %struct.snd_ca0106, ptr %11, i32 0, i32 20, i32 11
  %118 = ptrtoint ptr %rx_enable3.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 65536, ptr %rx_enable3.i, align 4
  %ipr_tx4.i = getelementptr inbounds %struct.snd_ca0106, ptr %11, i32 0, i32 20, i32 12
  %119 = ptrtoint ptr %ipr_tx4.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 2, ptr %ipr_tx4.i, align 4
  %ipr_rx5.i = getelementptr inbounds %struct.snd_ca0106, ptr %11, i32 0, i32 20, i32 13
  %120 = ptrtoint ptr %ipr_rx5.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 4, ptr %ipr_rx5.i, align 4
  %port6.i = getelementptr inbounds %struct.snd_ca0106, ptr %11, i32 0, i32 20, i32 9
  %121 = ptrtoint ptr %port6.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 108, ptr %port6.i, align 4
  %midi1.i = getelementptr inbounds %struct.snd_ca0106, ptr %11, i32 0, i32 20
  %reset.i = getelementptr inbounds %struct.snd_ca0106, ptr %11, i32 0, i32 20, i32 17
  %122 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 255, ptr %reset.i, align 4
  %enter_uart.i = getelementptr inbounds %struct.snd_ca0106, ptr %11, i32 0, i32 20, i32 18
  %123 = ptrtoint ptr %enter_uart.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 63, ptr %enter_uart.i, align 4
  %ack.i = getelementptr inbounds %struct.snd_ca0106, ptr %11, i32 0, i32 20, i32 16
  %124 = ptrtoint ptr %ack.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 254, ptr %ack.i, align 4
  %input_avail.i = getelementptr inbounds %struct.snd_ca0106, ptr %11, i32 0, i32 20, i32 14
  %125 = ptrtoint ptr %input_avail.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 128, ptr %input_avail.i, align 4
  %output_ready.i = getelementptr inbounds %struct.snd_ca0106, ptr %11, i32 0, i32 20, i32 15
  %126 = ptrtoint ptr %output_ready.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 64, ptr %output_ready.i, align 4
  %channel7.i = getelementptr inbounds %struct.snd_ca0106, ptr %11, i32 0, i32 20, i32 7
  %127 = ptrtoint ptr %channel7.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 1, ptr %channel7.i, align 4
  %interrupt_enable.i = getelementptr inbounds %struct.snd_ca0106, ptr %11, i32 0, i32 20, i32 20
  %128 = ptrtoint ptr %interrupt_enable.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @ca0106_midi_interrupt_enable, ptr %interrupt_enable.i, align 4
  %interrupt_disable.i = getelementptr inbounds %struct.snd_ca0106, ptr %11, i32 0, i32 20, i32 21
  %129 = ptrtoint ptr %interrupt_disable.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @ca0106_midi_interrupt_disable, ptr %interrupt_disable.i, align 4
  %read.i = getelementptr inbounds %struct.snd_ca0106, ptr %11, i32 0, i32 20, i32 22
  %130 = ptrtoint ptr %read.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @ca0106_midi_read, ptr %read.i, align 4
  %write.i = getelementptr inbounds %struct.snd_ca0106, ptr %11, i32 0, i32 20, i32 23
  %131 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @ca0106_midi_write, ptr %write.i, align 4
  %get_dev_id_card.i = getelementptr inbounds %struct.snd_ca0106, ptr %11, i32 0, i32 20, i32 24
  %132 = ptrtoint ptr %get_dev_id_card.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @ca0106_dev_id_card, ptr %get_dev_id_card.i, align 4
  %get_dev_id_port.i = getelementptr inbounds %struct.snd_ca0106, ptr %11, i32 0, i32 20, i32 25
  %133 = ptrtoint ptr %get_dev_id_port.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @ca0106_dev_id_port, ptr %get_dev_id_port.i, align 4
  %dev_id.i = getelementptr inbounds %struct.snd_ca0106, ptr %11, i32 0, i32 20, i32 3
  %134 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %11, ptr %dev_id.i, align 4
  %call.i103 = call i32 @ca_midi_init(ptr noundef %11, ptr noundef %midi1.i, i32 noundef 0, ptr noundef nonnull @.str.52) #10
  %135 = call i32 @llvm.smin.i32(i32 %call.i103, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %cmp37 = icmp slt i32 %call.i103, 0
  br i1 %cmp37, label %do.end.cleanup_crit_edge, label %do.body40

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body40:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ca0106_probe.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ca0106_probe, %if.then52)) #10
          to label %do.end56 [label %if.then52], !srcloc !200

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #12
  %136 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %card, align 4
  %dev53 = getelementptr inbounds %struct.snd_card, ptr %137, i32 0, i32 27
  %138 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev53, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ca0106_probe.__UNIQUE_ID_ddebug256, ptr noundef %139, ptr noundef nonnull @.str.11) #10
  br label %do.end56

do.end56:                                         ; preds = %if.then52, %do.body40
  %call57 = call i32 @snd_ca0106_proc_init(ptr noundef %11) #10
  %140 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %card, align 4
  %call58 = call i32 @snd_card_register(ptr noundef %141) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %do.end56.cleanup_crit_edge, label %if.end61

do.end56.cleanup_crit_edge:                       ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end61:                                         ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #12
  %142 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %144 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %143, ptr %driver_data.i.i, align 4
  %145 = load i32, ptr @snd_ca0106_probe.dev, align 4
  %inc62 = add i32 %145, 1
  store i32 %inc62, ptr @snd_ca0106_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %do.end56.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %snd_ca0106_ac97.exit.cleanup_crit_edge, %snd_ca0106_ac97.exit.thread, %snd_ca0106_pcm.exit.thread, %if.end25.i.cleanup_crit_edge, %do.end23.i, %if.end5.i.cleanup_crit_edge, %do.end.i, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end61 ], [ -2, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ %call2.i, %snd_ca0106_ac97.exit.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ %135, %do.end.cleanup_crit_edge ], [ %call58, %do.end56.cleanup_crit_edge ], [ %retval.0.i98.ph, %snd_ca0106_pcm.exit.thread ], [ %call.i99, %snd_ca0106_ac97.exit.thread ], [ -12, %if.end25.i.cleanup_crit_edge ], [ %call12.i, %if.end5.i.cleanup_crit_edge ], [ %call.i, %if.end7.cleanup_crit_edge ], [ -16, %do.end23.i ], [ -6, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ca0106_free(ptr nocapture noundef readonly %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  tail call fastcc void @ca0106_stop_chip(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ca0106_mixer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ca0106_proc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_interrupt(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.snd_ca0106, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 8
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #10, !srcloc !194
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !201
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %emu_lock.i = getelementptr inbounds %struct.snd_ca0106, ptr %dev_id, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port, align 4
  %and.i = and i32 %6, 1048575
  %add8.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %7, i32 30208) #10, !srcloc !193
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %add11.i = add i32 %9, 4
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %10 = inttoptr i32 %add13.i to ptr
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %10) #10, !srcloc !194
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #10
  %and4 = and i32 %12, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end10_crit_edge, label %if.then6

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then6:                                         ; preds = %if.end
  %use = getelementptr %struct.snd_ca0106, ptr %dev_id, i32 0, i32 10, i32 0, i32 2
  %13 = ptrtoint ptr %use to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not = icmp eq i32 %14, 0
  br i1 %tobool7.not, label %if.then6.if.end10_crit_edge, label %if.then8

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %epcm = getelementptr %struct.snd_ca0106, ptr %dev_id, i32 0, i32 10, i32 0, i32 4
  %15 = ptrtoint ptr %epcm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %epcm, align 4
  %substream = getelementptr inbounds %struct.snd_ca0106_pcm, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %18) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then6.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %and4.1 = and i32 %12, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.1)
  %tobool5.not.1 = icmp eq i32 %and4.1, 0
  br i1 %tobool5.not.1, label %if.end10.if.end10.1_crit_edge, label %if.then6.1

if.end10.if.end10.1_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.1

if.then6.1:                                       ; preds = %if.end10
  %use.1 = getelementptr %struct.snd_ca0106, ptr %dev_id, i32 0, i32 10, i32 1, i32 2
  %19 = ptrtoint ptr %use.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %use.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool7.not.1 = icmp eq i32 %20, 0
  br i1 %tobool7.not.1, label %if.then6.1.if.end10.1_crit_edge, label %if.then8.1

if.then6.1.if.end10.1_crit_edge:                  ; preds = %if.then6.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.1

if.then8.1:                                       ; preds = %if.then6.1
  call void @__sanitizer_cov_trace_pc() #12
  %epcm.1 = getelementptr %struct.snd_ca0106, ptr %dev_id, i32 0, i32 10, i32 1, i32 4
  %21 = ptrtoint ptr %epcm.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %epcm.1, align 4
  %substream.1 = getelementptr inbounds %struct.snd_ca0106_pcm, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %substream.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %substream.1, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %24) #10
  br label %if.end10.1

if.end10.1:                                       ; preds = %if.then8.1, %if.then6.1.if.end10.1_crit_edge, %if.end10.if.end10.1_crit_edge
  %and4.2 = and i32 %12, 68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.2)
  %tobool5.not.2 = icmp eq i32 %and4.2, 0
  br i1 %tobool5.not.2, label %if.end10.1.if.end10.2_crit_edge, label %if.then6.2

if.end10.1.if.end10.2_crit_edge:                  ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.2

if.then6.2:                                       ; preds = %if.end10.1
  %use.2 = getelementptr %struct.snd_ca0106, ptr %dev_id, i32 0, i32 10, i32 2, i32 2
  %25 = ptrtoint ptr %use.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %use.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool7.not.2 = icmp eq i32 %26, 0
  br i1 %tobool7.not.2, label %if.then6.2.if.end10.2_crit_edge, label %if.then8.2

if.then6.2.if.end10.2_crit_edge:                  ; preds = %if.then6.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.2

if.then8.2:                                       ; preds = %if.then6.2
  call void @__sanitizer_cov_trace_pc() #12
  %epcm.2 = getelementptr %struct.snd_ca0106, ptr %dev_id, i32 0, i32 10, i32 2, i32 4
  %27 = ptrtoint ptr %epcm.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %epcm.2, align 4
  %substream.2 = getelementptr inbounds %struct.snd_ca0106_pcm, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %substream.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %substream.2, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %30) #10
  br label %if.end10.2

if.end10.2:                                       ; preds = %if.then8.2, %if.then6.2.if.end10.2_crit_edge, %if.end10.1.if.end10.2_crit_edge
  %and4.3 = and i32 %12, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.3)
  %tobool5.not.3 = icmp eq i32 %and4.3, 0
  br i1 %tobool5.not.3, label %if.end10.2.if.end10.3_crit_edge, label %if.then6.3

if.end10.2.if.end10.3_crit_edge:                  ; preds = %if.end10.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.3

if.then6.3:                                       ; preds = %if.end10.2
  %use.3 = getelementptr %struct.snd_ca0106, ptr %dev_id, i32 0, i32 10, i32 3, i32 2
  %31 = ptrtoint ptr %use.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %use.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool7.not.3 = icmp eq i32 %32, 0
  br i1 %tobool7.not.3, label %if.then6.3.if.end10.3_crit_edge, label %if.then8.3

if.then6.3.if.end10.3_crit_edge:                  ; preds = %if.then6.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.3

if.then8.3:                                       ; preds = %if.then6.3
  call void @__sanitizer_cov_trace_pc() #12
  %epcm.3 = getelementptr %struct.snd_ca0106, ptr %dev_id, i32 0, i32 10, i32 3, i32 4
  %33 = ptrtoint ptr %epcm.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %epcm.3, align 4
  %substream.3 = getelementptr inbounds %struct.snd_ca0106_pcm, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %substream.3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %substream.3, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %36) #10
  br label %if.end10.3

if.end10.3:                                       ; preds = %if.then8.3, %if.then6.3.if.end10.3_crit_edge, %if.end10.2.if.end10.3_crit_edge
  %and15 = and i32 %12, 1114112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end10.3.if.end24_crit_edge, label %if.then17

if.end10.3.if.end24_crit_edge:                    ; preds = %if.end10.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then17:                                        ; preds = %if.end10.3
  %use18 = getelementptr %struct.snd_ca0106, ptr %dev_id, i32 0, i32 11, i32 0, i32 2
  %37 = ptrtoint ptr %use18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %use18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool19.not = icmp eq i32 %38, 0
  br i1 %tobool19.not, label %if.then17.if.end24_crit_edge, label %if.then20

if.then17.if.end24_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %epcm21 = getelementptr %struct.snd_ca0106, ptr %dev_id, i32 0, i32 11, i32 0, i32 4
  %39 = ptrtoint ptr %epcm21 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %epcm21, align 4
  %substream22 = getelementptr inbounds %struct.snd_ca0106_pcm, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %substream22 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %substream22, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %42) #10
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.then17.if.end24_crit_edge, %if.end10.3.if.end24_crit_edge
  %and15.1 = and i32 %12, 2228224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.1)
  %tobool16.not.1 = icmp eq i32 %and15.1, 0
  br i1 %tobool16.not.1, label %if.end24.if.end24.1_crit_edge, label %if.then17.1

if.end24.if.end24.1_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.1

if.then17.1:                                      ; preds = %if.end24
  %use18.1 = getelementptr %struct.snd_ca0106, ptr %dev_id, i32 0, i32 11, i32 1, i32 2
  %43 = ptrtoint ptr %use18.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %use18.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool19.not.1 = icmp eq i32 %44, 0
  br i1 %tobool19.not.1, label %if.then17.1.if.end24.1_crit_edge, label %if.then20.1

if.then17.1.if.end24.1_crit_edge:                 ; preds = %if.then17.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.1

if.then20.1:                                      ; preds = %if.then17.1
  call void @__sanitizer_cov_trace_pc() #12
  %epcm21.1 = getelementptr %struct.snd_ca0106, ptr %dev_id, i32 0, i32 11, i32 1, i32 4
  %45 = ptrtoint ptr %epcm21.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %epcm21.1, align 4
  %substream22.1 = getelementptr inbounds %struct.snd_ca0106_pcm, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %substream22.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %substream22.1, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %48) #10
  br label %if.end24.1

if.end24.1:                                       ; preds = %if.then20.1, %if.then17.1.if.end24.1_crit_edge, %if.end24.if.end24.1_crit_edge
  %and15.2 = and i32 %12, 4456448
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.2)
  %tobool16.not.2 = icmp eq i32 %and15.2, 0
  br i1 %tobool16.not.2, label %if.end24.1.if.end24.2_crit_edge, label %if.then17.2

if.end24.1.if.end24.2_crit_edge:                  ; preds = %if.end24.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.2

if.then17.2:                                      ; preds = %if.end24.1
  %use18.2 = getelementptr %struct.snd_ca0106, ptr %dev_id, i32 0, i32 11, i32 2, i32 2
  %49 = ptrtoint ptr %use18.2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %use18.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool19.not.2 = icmp eq i32 %50, 0
  br i1 %tobool19.not.2, label %if.then17.2.if.end24.2_crit_edge, label %if.then20.2

if.then17.2.if.end24.2_crit_edge:                 ; preds = %if.then17.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.2

if.then20.2:                                      ; preds = %if.then17.2
  call void @__sanitizer_cov_trace_pc() #12
  %epcm21.2 = getelementptr %struct.snd_ca0106, ptr %dev_id, i32 0, i32 11, i32 2, i32 4
  %51 = ptrtoint ptr %epcm21.2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %epcm21.2, align 4
  %substream22.2 = getelementptr inbounds %struct.snd_ca0106_pcm, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %substream22.2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %substream22.2, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %54) #10
  br label %if.end24.2

if.end24.2:                                       ; preds = %if.then20.2, %if.then17.2.if.end24.2_crit_edge, %if.end24.1.if.end24.2_crit_edge
  %and15.3 = and i32 %12, 8912896
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.3)
  %tobool16.not.3 = icmp eq i32 %and15.3, 0
  br i1 %tobool16.not.3, label %if.end24.2.if.end24.3_crit_edge, label %if.then17.3

if.end24.2.if.end24.3_crit_edge:                  ; preds = %if.end24.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.3

if.then17.3:                                      ; preds = %if.end24.2
  %use18.3 = getelementptr %struct.snd_ca0106, ptr %dev_id, i32 0, i32 11, i32 3, i32 2
  %55 = ptrtoint ptr %use18.3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %use18.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool19.not.3 = icmp eq i32 %56, 0
  br i1 %tobool19.not.3, label %if.then17.3.if.end24.3_crit_edge, label %if.then20.3

if.then17.3.if.end24.3_crit_edge:                 ; preds = %if.then17.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.3

if.then20.3:                                      ; preds = %if.then17.3
  call void @__sanitizer_cov_trace_pc() #12
  %epcm21.3 = getelementptr %struct.snd_ca0106, ptr %dev_id, i32 0, i32 11, i32 3, i32 4
  %57 = ptrtoint ptr %epcm21.3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %epcm21.3, align 4
  %substream22.3 = getelementptr inbounds %struct.snd_ca0106_pcm, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %substream22.3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %substream22.3, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %60) #10
  br label %if.end24.3

if.end24.3:                                       ; preds = %if.then20.3, %if.then17.3.if.end24.3_crit_edge, %if.end24.2.if.end24.3_crit_edge
  %call2.i92 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %61 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %port, align 4
  %and.i94 = and i32 %62, 1048575
  %add8.i95 = or i32 %and.i94, -18874368
  %63 = inttoptr i32 %add8.i95 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %63, i32 30208) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %64 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %port, align 4
  %add14.i = add i32 %65, 4
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %66 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %66, i32 %11) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i92) #10
  %midi = getelementptr inbounds %struct.snd_ca0106, ptr %dev_id, i32 0, i32 20
  %dev_id29 = getelementptr inbounds %struct.snd_ca0106, ptr %dev_id, i32 0, i32 20, i32 3
  %67 = ptrtoint ptr %dev_id29 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev_id29, align 4
  %tobool30.not = icmp eq ptr %68, null
  br i1 %tobool30.not, label %if.end24.3.do.body_crit_edge, label %land.lhs.true

if.end24.3.do.body_crit_edge:                     ; preds = %if.end24.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true:                                    ; preds = %if.end24.3
  %ipr_tx = getelementptr inbounds %struct.snd_ca0106, ptr %dev_id, i32 0, i32 20, i32 12
  %69 = ptrtoint ptr %ipr_tx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ipr_tx, align 4
  %ipr_rx = getelementptr inbounds %struct.snd_ca0106, ptr %dev_id, i32 0, i32 20, i32 13
  %71 = ptrtoint ptr %ipr_rx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ipr_rx, align 4
  %or = or i32 %72, %70
  %and33 = and i32 %or, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %land.lhs.true.do.body_crit_edge, label %if.then35

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then35:                                        ; preds = %land.lhs.true
  %interrupt = getelementptr inbounds %struct.snd_ca0106, ptr %dev_id, i32 0, i32 20, i32 19
  %73 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %interrupt, align 4
  %tobool37.not = icmp eq ptr %74, null
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %74(ptr noundef %midi, i32 noundef %4) #10
  br label %do.body

if.else:                                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  %interrupt_disable = getelementptr inbounds %struct.snd_ca0106, ptr %dev_id, i32 0, i32 20, i32 21
  %75 = ptrtoint ptr %interrupt_disable to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %interrupt_disable, align 4
  %tx_enable = getelementptr inbounds %struct.snd_ca0106, ptr %dev_id, i32 0, i32 20, i32 10
  %77 = ptrtoint ptr %tx_enable to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tx_enable, align 4
  %rx_enable = getelementptr inbounds %struct.snd_ca0106, ptr %dev_id, i32 0, i32 20, i32 11
  %79 = ptrtoint ptr %rx_enable to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rx_enable, align 4
  %or46 = or i32 %80, %78
  tail call void %76(ptr noundef %midi, i32 noundef %or46) #10
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then38, %land.lhs.true.do.body_crit_edge, %if.end24.3.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !202
  tail call void @arm_heavy_mb() #10
  %81 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %port, align 4
  %add50 = add i32 %82, 8
  %and51 = and i32 %add50, 1048575
  %add52 = or i32 %and51, -18874368
  %83 = inttoptr i32 %add52 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %83, i32 %3) #10, !srcloc !193
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ca0106_init_chip(ptr noundef %chip, i32 noundef %resume) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !203
  tail call void @arm_heavy_mb() #10
  %port = getelementptr inbounds %struct.snd_ca0106, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 12
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 0) #10, !srcloc !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %resume)
  %tobool.not = icmp eq i32 %resume, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %spdif_bits = getelementptr inbounds %struct.snd_ca0106, ptr %chip, i32 0, i32 12
  %3 = ptrtoint ptr %spdif_bits to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 34640388, ptr %spdif_bits, align 4
  %spdif_str_bits = getelementptr inbounds %struct.snd_ca0106, ptr %chip, i32 0, i32 13
  %4 = ptrtoint ptr %spdif_str_bits to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 34640388, ptr %spdif_str_bits, align 4
  %arrayidx4 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 12, i32 1
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 34640388, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 34640388, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 12, i32 2
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 34640388, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 13, i32 2
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 34640388, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 12, i32 3
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 34640388, ptr %arrayidx12, align 4
  %arrayidx14 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 13, i32 3
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 34640388, ptr %arrayidx14, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %spdif_str_bits15 = getelementptr inbounds %struct.snd_ca0106, ptr %chip, i32 0, i32 13
  %arrayidx16 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 13, i32 1
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx16, align 4
  %emu_lock.i = getelementptr inbounds %struct.snd_ca0106, ptr %chip, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port, align 4
  %and.i = and i32 %14, 1048575
  %add8.i = or i32 %and.i, -18874368
  %15 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 16896) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %16 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port, align 4
  %add14.i = add i32 %18, 4
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %19 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %19, i32 %16) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #10
  %20 = ptrtoint ptr %spdif_str_bits15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %spdif_str_bits15, align 4
  %call2.i255 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port, align 4
  %and.i257 = and i32 %23, 1048575
  %add8.i258 = or i32 %and.i257, -18874368
  %24 = inttoptr i32 %add8.i258 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %24, i32 16640) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %25 = tail call i32 @llvm.bswap.i32(i32 %21) #10
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port, align 4
  %add14.i259 = add i32 %27, 4
  %and15.i260 = and i32 %add14.i259, 1048575
  %add16.i261 = or i32 %and15.i260, -18874368
  %28 = inttoptr i32 %add16.i261 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %28, i32 %25) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i255) #10
  %arrayidx20 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 13, i32 2
  %29 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx20, align 4
  %call2.i263 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %31 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port, align 4
  %and.i265 = and i32 %32, 1048575
  %add8.i266 = or i32 %and.i265, -18874368
  %33 = inttoptr i32 %add8.i266 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %33, i32 17152) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %34 = tail call i32 @llvm.bswap.i32(i32 %30) #10
  %35 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port, align 4
  %add14.i267 = add i32 %36, 4
  %and15.i268 = and i32 %add14.i267, 1048575
  %add16.i269 = or i32 %and15.i268, -18874368
  %37 = inttoptr i32 %add16.i269 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %37, i32 %34) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i263) #10
  %arrayidx22 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 13, i32 3
  %38 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx22, align 4
  %call2.i271 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port, align 4
  %and.i273 = and i32 %41, 1048575
  %add8.i274 = or i32 %and.i273, -18874368
  %42 = inttoptr i32 %add8.i274 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %42, i32 17408) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %43 = tail call i32 @llvm.bswap.i32(i32 %39) #10
  %44 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port, align 4
  %add14.i275 = add i32 %45, 4
  %and15.i276 = and i32 %add14.i275, 1048575
  %add16.i277 = or i32 %and15.i276, -18874368
  %46 = inttoptr i32 %add16.i277 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %46, i32 %43) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i271) #10
  %call2.i279 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %47 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port, align 4
  %and.i281 = and i32 %48, 1048575
  %add8.i282 = or i32 %and.i281, -18874368
  %49 = inttoptr i32 %add8.i282 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %49, i32 25856) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %50 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port, align 4
  %add14.i283 = add i32 %51, 4
  %and15.i284 = and i32 %add14.i283, 1048575
  %add16.i285 = or i32 %and15.i284, -18874368
  %52 = inttoptr i32 %add16.i285 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %52, i32 64512) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i279) #10
  %call2.i287 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %53 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %port, align 4
  %and.i289 = and i32 %54, 1048575
  %add8.i290 = or i32 %and.i289, -18874368
  %55 = inttoptr i32 %add8.i290 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %55, i32 26880) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %56 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port, align 4
  %add14.i291 = add i32 %57, 4
  %and15.i292 = and i32 %add14.i291, 1048575
  %add16.i293 = or i32 %and15.i292, -18874368
  %58 = inttoptr i32 %add16.i293 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %58, i32 64512) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i287) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !204
  tail call void @arm_heavy_mb() #10
  %59 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %port, align 4
  %add27 = add i32 %60, 30
  %and28 = and i32 %add27, 1048575
  %add29 = or i32 %and28, -18874368
  %61 = inttoptr i32 %add29 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 28) #10, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !206
  tail call void @arm_heavy_mb() #10
  %62 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %port, align 4
  %add35 = add i32 %63, 28
  %and36 = and i32 %add35, 1048575
  %add37 = or i32 %and36, -18874368
  %64 = inttoptr i32 %add37 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %64, i16 128) #10, !srcloc !207
  %call2.i295 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %65 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %port, align 4
  %and.i297 = and i32 %66, 1048575
  %add8.i298 = or i32 %and.i297, -18874368
  %67 = inttoptr i32 %add8.i298 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %67, i32 17664) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %68 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port, align 4
  %add14.i299 = add i32 %69, 4
  %and15.i300 = and i32 %add14.i299, 1048575
  %add16.i301 = or i32 %and15.i300, -18874368
  %70 = inttoptr i32 %add16.i301 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %70, i32 251658240) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i295) #10
  %call2.i303 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %71 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %port, align 4
  %and.i305 = and i32 %72, 1048575
  %add8.i306 = or i32 %and.i305, -18874368
  %73 = inttoptr i32 %add8.i306 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %73, i32 29184) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %74 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %port, align 4
  %add14.i307 = add i32 %75, 4
  %and15.i308 = and i32 %add14.i307, 1048575
  %add16.i309 = or i32 %and15.i308, -18874368
  %76 = inttoptr i32 %add16.i309 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %76, i32 3840) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i303) #10
  %spdif_enable = getelementptr inbounds %struct.snd_ca0106, ptr %chip, i32 0, i32 14
  %77 = ptrtoint ptr %spdif_enable to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %spdif_enable, align 4
  %call2.i311 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %78 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %port, align 4
  %and.i313 = and i32 %79, 1048575
  %add8.i314 = or i32 %and.i313, -18874368
  %80 = inttoptr i32 %add8.i314 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %80, i32 28928) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %81 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %port, align 4
  %add14.i315 = add i32 %82, 4
  %and15.i316 = and i32 %add14.i315, 1048575
  %add16.i317 = or i32 %and15.i316, -18874368
  %83 = inttoptr i32 %add16.i317 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %83, i32 1099840) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i311) #10
  %call2.i319 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %84 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %port, align 4
  %and.i321 = and i32 %85, 1048575
  %add8.i322 = or i32 %and.i321, -18874368
  %86 = inttoptr i32 %add8.i322 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %86, i32 16806144) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %87 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %port, align 4
  %add14.i323 = add i32 %88, 4
  %and15.i324 = and i32 %add14.i323, 1048575
  %add16.i325 = or i32 %and15.i324, -18874368
  %89 = inttoptr i32 %add16.i325 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %89, i32 -1) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i319) #10
  %call2.i327 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %90 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %port, align 4
  %and.i329 = and i32 %91, 1048575
  %add8.i330 = or i32 %and.i329, -18874368
  %92 = inttoptr i32 %add8.i330 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %92, i32 33583360) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %93 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %port, align 4
  %add14.i331 = add i32 %94, 4
  %and15.i332 = and i32 %add14.i331, 1048575
  %add16.i333 = or i32 %and15.i332, -18874368
  %95 = inttoptr i32 %add16.i333 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %95, i32 12336) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i327) #10
  %call2.i335 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %96 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %port, align 4
  %and.i337 = and i32 %97, 1048575
  %add8.i338 = or i32 %and.i337, -18874368
  %98 = inttoptr i32 %add8.i338 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %98, i32 50360576) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %99 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %port, align 4
  %add14.i339 = add i32 %100, 4
  %and15.i340 = and i32 %add14.i339, 1048575
  %add16.i341 = or i32 %and15.i340, -18874368
  %101 = inttoptr i32 %add16.i341 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %101, i32 28672) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i335) #10
  %call2.i343 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %102 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %port, align 4
  %and.i345 = and i32 %103, 1048575
  %add8.i346 = or i32 %and.i345, -18874368
  %104 = inttoptr i32 %add8.i346 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %104, i32 25344) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %105 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %port, align 4
  %add14.i347 = add i32 %106, 4
  %and15.i348 = and i32 %add14.i347, 1048575
  %add16.i349 = or i32 %and15.i348, -18874368
  %107 = inttoptr i32 %add16.i349 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %107, i32 273970738) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i343) #10
  %call2.i351 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %108 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %port, align 4
  %and.i353 = and i32 %109, 1048575
  %add8.i354 = or i32 %and.i353, -18874368
  %110 = inttoptr i32 %add8.i354 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %110, i32 25600) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %111 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %port, align 4
  %add14.i355 = add i32 %112, 4
  %and15.i356 = and i32 %add14.i355, 1048575
  %add16.i357 = or i32 %and15.i356, -18874368
  %113 = inttoptr i32 %add16.i357 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %113, i32 1987475062) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i351) #10
  %call2.i359 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %114 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %port, align 4
  %and.i361 = and i32 %115, 1048575
  %add8.i362 = or i32 %and.i361, -18874368
  %116 = inttoptr i32 %add8.i362 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %116, i32 26368) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %117 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %port, align 4
  %add14.i363 = add i32 %118, 4
  %and15.i364 = and i32 %add14.i363, 1048575
  %add16.i365 = or i32 %and15.i364, -18874368
  %119 = inttoptr i32 %add16.i365 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %119, i32 273970738) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i359) #10
  %call2.i367 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %120 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %port, align 4
  %and.i369 = and i32 %121, 1048575
  %add8.i370 = or i32 %and.i369, -18874368
  %122 = inttoptr i32 %add8.i370 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %122, i32 26624) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %123 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %port, align 4
  %add14.i371 = add i32 %124, 4
  %and15.i372 = and i32 %add14.i371, 1048575
  %add16.i373 = or i32 %and15.i372, -18874368
  %125 = inttoptr i32 %add16.i373 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %125, i32 1987475062) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i367) #10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %ch.0420 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %or.i = or i32 %ch.0420, 6356992
  %call2.i375 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %126 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %127 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %port, align 4
  %and.i377 = and i32 %128, 1048575
  %add8.i378 = or i32 %and.i377, -18874368
  %129 = inttoptr i32 %add8.i378 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %129, i32 %126) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %130 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %port, align 4
  %add14.i379 = add i32 %131, 4
  %and15.i380 = and i32 %add14.i379, 1048575
  %add16.i381 = or i32 %and15.i380, -18874368
  %132 = inttoptr i32 %add16.i381 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %132, i32 808464432) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i375) #10
  %or.i382 = or i32 %ch.0420, 6422528
  %call2.i384 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %133 = tail call i32 @llvm.bswap.i32(i32 %or.i382) #10
  %134 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %port, align 4
  %and.i386 = and i32 %135, 1048575
  %add8.i387 = or i32 %and.i386, -18874368
  %136 = inttoptr i32 %add8.i387 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %136, i32 %133) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %137 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %port, align 4
  %add14.i388 = add i32 %138, 4
  %and15.i389 = and i32 %add14.i388, 1048575
  %add16.i390 = or i32 %and15.i389, -18874368
  %139 = inttoptr i32 %add16.i390 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %139, i32 808464432) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i384) #10
  %inc = add nuw nsw i32 %ch.0420, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %details = getelementptr inbounds %struct.snd_ca0106, ptr %chip, i32 0, i32 1
  %140 = ptrtoint ptr %details to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %details, align 4
  %i2c_adc = getelementptr inbounds %struct.snd_ca0106_details, ptr %141, i32 0, i32 4
  %142 = ptrtoint ptr %i2c_adc to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %i2c_adc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %143)
  %cmp39 = icmp eq i32 %143, 1
  br i1 %cmp39, label %if.then40, label %if.else

if.then40:                                        ; preds = %for.end
  %call2.i392 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %144 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %port, align 4
  %and.i394 = and i32 %145, 1048575
  %add8.i395 = or i32 %and.i394, -18874368
  %146 = inttoptr i32 %add8.i395 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %146, i32 24576) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %147 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %port, align 4
  %add14.i396 = add i32 %148, 4
  %and15.i397 = and i32 %add14.i396, 1048575
  %add16.i398 = or i32 %and15.i397, -18874368
  %149 = inttoptr i32 %add16.i398 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %149, i32 -469748941) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i392) #10
  br i1 %tobool.not, label %if.then40.if.end57.sink.split_crit_edge, label %if.then40.if.end57_crit_edge

if.then40.if.end57_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then40.if.end57.sink.split_crit_edge:          ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57.sink.split

if.else:                                          ; preds = %for.end
  %ac97 = getelementptr inbounds %struct.snd_ca0106_details, ptr %141, i32 0, i32 2
  %150 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %ac97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %151)
  %cmp45 = icmp eq i32 %151, 1
  %call2.i400 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %152 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %port, align 4
  %and.i402 = and i32 %153, 1048575
  %add8.i403 = or i32 %and.i402, -18874368
  %154 = inttoptr i32 %add8.i403 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %154, i32 24576) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %155 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %port, align 4
  %add14.i404 = add i32 %156, 4
  %and15.i405 = and i32 %add14.i404, 1048575
  %add16.i406 = or i32 %and15.i405, -18874368
  %157 = inttoptr i32 %add16.i406 to ptr
  br i1 %cmp45, label %if.then46, label %if.else51

if.then46:                                        ; preds = %if.else
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %157, i32 -469744572) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i400) #10
  br i1 %tobool.not, label %if.then46.if.end57.sink.split_crit_edge, label %if.then46.if.end57_crit_edge

if.then46.if.end57_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then46.if.end57.sink.split_crit_edge:          ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57.sink.split

if.else51:                                        ; preds = %if.else
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %157, i32 -469748941) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i400) #10
  br i1 %tobool.not, label %if.else51.if.end57.sink.split_crit_edge, label %if.else51.if.end57_crit_edge

if.else51.if.end57_crit_edge:                     ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.else51.if.end57.sink.split_crit_edge:          ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57.sink.split

if.end57.sink.split:                              ; preds = %if.else51.if.end57.sink.split_crit_edge, %if.then46.if.end57.sink.split_crit_edge, %if.then40.if.end57.sink.split_crit_edge
  %.sink = phi i32 [ 3, %if.then40.if.end57.sink.split_crit_edge ], [ 4, %if.then46.if.end57.sink.split_crit_edge ], [ 3, %if.else51.if.end57.sink.split_crit_edge ]
  %capture_source49 = getelementptr inbounds %struct.snd_ca0106, ptr %chip, i32 0, i32 15
  %158 = ptrtoint ptr %capture_source49 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %.sink, ptr %capture_source49, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.end57.sink.split, %if.else51.if.end57_crit_edge, %if.then46.if.end57_crit_edge, %if.then40.if.end57_crit_edge
  %159 = ptrtoint ptr %details to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %details, align 4
  %gpio_type = getelementptr inbounds %struct.snd_ca0106_details, ptr %160, i32 0, i32 3
  %161 = ptrtoint ptr %gpio_type to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %gpio_type, align 4
  %163 = zext i32 %162 to i64
  call void @__sanitizer_cov_trace_switch(i64 %163, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %162, label %do.body99 [
    i32 2, label %do.body61
    i32 1, label %do.body82
  ]

do.body61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  tail call void @arm_heavy_mb() #10
  %164 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %port, align 4
  %add65 = add i32 %165, 24
  %and66 = and i32 %add65, 1048575
  %add67 = or i32 %and66, -18874368
  %166 = inttoptr i32 %add67 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %166, i32 0) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !209
  tail call void @arm_heavy_mb() #10
  %167 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %port, align 4
  %add73 = add i32 %168, 24
  %and74 = and i32 %add73, 1048575
  %add75 = or i32 %and74, -18874368
  %169 = inttoptr i32 %add75 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %169, i32 22241024) #10, !srcloc !193
  br label %if.end116

do.body82:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !210
  tail call void @arm_heavy_mb() #10
  %170 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %port, align 4
  %add86 = add i32 %171, 24
  %and87 = and i32 %add86, 1048575
  %add88 = or i32 %and87, -18874368
  %172 = inttoptr i32 %add88 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %172, i32 0) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  tail call void @arm_heavy_mb() #10
  %173 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %port, align 4
  %add94 = add i32 %174, 24
  %and95 = and i32 %add94, 1048575
  %add96 = or i32 %and95, -18874368
  %175 = inttoptr i32 %add96 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %175, i32 22241024) #10, !srcloc !193
  br label %if.end116

do.body99:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !212
  tail call void @arm_heavy_mb() #10
  %176 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %port, align 4
  %add103 = add i32 %177, 24
  %and104 = and i32 %add103, 1048575
  %add105 = or i32 %and104, -18874368
  %178 = inttoptr i32 %add105 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %178, i32 0) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  tail call void @arm_heavy_mb() #10
  %179 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %port, align 4
  %add111 = add i32 %180, 24
  %and112 = and i32 %add111, 1048575
  %add113 = or i32 %and112, -18874368
  %181 = inttoptr i32 %add113 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %181, i32 -1560060160) #10, !srcloc !193
  br label %if.end116

if.end116:                                        ; preds = %do.body99, %do.body82, %do.body61
  %call2.i416 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  %182 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %port, align 4
  %add.i = add i32 %183, 12
  %and.i418 = and i32 %add.i, 1048575
  %add5.i = or i32 %and.i418, -18874368
  %184 = inttoptr i32 %add5.i to ptr
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %184) #10, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  %186 = or i32 %185, 83951616
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %187 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %port, align 4
  %add13.i = add i32 %188, 12
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %189 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %189, i32 %186) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i416) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !216
  tail call void @arm_heavy_mb() #10
  %190 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %port, align 4
  %add121 = add i32 %191, 20
  %and122 = and i32 %add121, 1048575
  %add123 = or i32 %and122, -18874368
  %192 = inttoptr i32 %add123 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %192, i32 150994944) #10, !srcloc !193
  %193 = ptrtoint ptr %details to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %details, align 4
  %i2c_adc126 = getelementptr inbounds %struct.snd_ca0106_details, ptr %194, i32 0, i32 4
  %195 = ptrtoint ptr %i2c_adc126 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %i2c_adc126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %196)
  %cmp127 = icmp eq i32 %196, 1
  br i1 %cmp127, label %for.body131.preheader, label %if.end116.if.end151_crit_edge

if.end116.if.end151_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end151

for.body131.preheader:                            ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  %call136 = tail call i32 @snd_ca0106_i2c_write(ptr noundef %chip, i32 noundef 23, i32 noundef 0)
  %call136.1 = tail call i32 @snd_ca0106_i2c_write(ptr noundef %chip, i32 noundef 7, i32 noundef 0)
  %call136.2 = tail call i32 @snd_ca0106_i2c_write(ptr noundef %chip, i32 noundef 11, i32 noundef 34)
  %call136.3 = tail call i32 @snd_ca0106_i2c_write(ptr noundef %chip, i32 noundef 12, i32 noundef 34)
  %call136.4 = tail call i32 @snd_ca0106_i2c_write(ptr noundef %chip, i32 noundef 13, i32 noundef 8)
  %call136.5 = tail call i32 @snd_ca0106_i2c_write(ptr noundef %chip, i32 noundef 14, i32 noundef 207)
  %call136.6 = tail call i32 @snd_ca0106_i2c_write(ptr noundef %chip, i32 noundef 15, i32 noundef 207)
  %call136.7 = tail call i32 @snd_ca0106_i2c_write(ptr noundef %chip, i32 noundef 16, i32 noundef 123)
  %call136.8 = tail call i32 @snd_ca0106_i2c_write(ptr noundef %chip, i32 noundef 17, i32 noundef 0)
  %call136.9 = tail call i32 @snd_ca0106_i2c_write(ptr noundef %chip, i32 noundef 18, i32 noundef 50)
  %call136.10 = tail call i32 @snd_ca0106_i2c_write(ptr noundef %chip, i32 noundef 19, i32 noundef 0)
  %call136.11 = tail call i32 @snd_ca0106_i2c_write(ptr noundef %chip, i32 noundef 20, i32 noundef 166)
  %call136.12 = tail call i32 @snd_ca0106_i2c_write(ptr noundef %chip, i32 noundef 21, i32 noundef 4)
  %uglygep = getelementptr i8, ptr %chip, i32 296
  %197 = ptrtoint ptr %uglygep to i32
  call void @__asan_storeN_noabort(i32 %197, i32 8)
  store i64 -3472328296227680305, ptr %uglygep, align 2
  %i2c_capture_source = getelementptr inbounds %struct.snd_ca0106, ptr %chip, i32 0, i32 16
  %198 = ptrtoint ptr %i2c_capture_source to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 2, ptr %i2c_capture_source, align 4
  br label %if.end151

if.end151:                                        ; preds = %for.body131.preheader, %if.end116.if.end151_crit_edge
  %199 = ptrtoint ptr %details to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %details, align 4
  %spi_dac = getelementptr inbounds %struct.snd_ca0106_details, ptr %200, i32 0, i32 5
  %201 = ptrtoint ptr %spi_dac to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %spi_dac, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %202)
  %tobool153.not = icmp eq i16 %202, 0
  br i1 %tobool153.not, label %if.end151.if.end172_crit_edge, label %for.body159.preheader

if.end151.if.end172_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end172

for.body159.preheader:                            ; preds = %if.end151
  %call162 = tail call i32 @snd_ca0106_spi_write(ptr noundef %chip, i32 noundef 255)
  %arrayidx166 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 22, i32 0
  %203 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 255, ptr %arrayidx166, align 2
  %call162.1 = tail call i32 @snd_ca0106_spi_write(ptr noundef %chip, i32 noundef 767)
  %arrayidx166.1 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 22, i32 1
  %204 = ptrtoint ptr %arrayidx166.1 to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 767, ptr %arrayidx166.1, align 2
  %call162.2 = tail call i32 @snd_ca0106_spi_write(ptr noundef %chip, i32 noundef 1312)
  %arrayidx166.2 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 22, i32 2
  %205 = ptrtoint ptr %arrayidx166.2 to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 1312, ptr %arrayidx166.2, align 2
  %call162.3 = tail call i32 @snd_ca0106_spi_write(ptr noundef %chip, i32 noundef 1570)
  %arrayidx166.3 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 22, i32 3
  %206 = ptrtoint ptr %arrayidx166.3 to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 1570, ptr %arrayidx166.3, align 2
  %call162.4 = tail call i32 @snd_ca0106_spi_write(ptr noundef %chip, i32 noundef 2303)
  %arrayidx166.4 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 22, i32 4
  %207 = ptrtoint ptr %arrayidx166.4 to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 2303, ptr %arrayidx166.4, align 2
  %call162.5 = tail call i32 @snd_ca0106_spi_write(ptr noundef %chip, i32 noundef 2815)
  %arrayidx166.5 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 22, i32 5
  %208 = ptrtoint ptr %arrayidx166.5 to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 2815, ptr %arrayidx166.5, align 2
  %call162.6 = tail call i32 @snd_ca0106_spi_write(ptr noundef %chip, i32 noundef 3327)
  %arrayidx166.6 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 22, i32 6
  %209 = ptrtoint ptr %arrayidx166.6 to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 3327, ptr %arrayidx166.6, align 2
  %call162.7 = tail call i32 @snd_ca0106_spi_write(ptr noundef %chip, i32 noundef 3839)
  %arrayidx166.7 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 22, i32 7
  %210 = ptrtoint ptr %arrayidx166.7 to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 3839, ptr %arrayidx166.7, align 2
  %call162.8 = tail call i32 @snd_ca0106_spi_write(ptr noundef %chip, i32 noundef 4351)
  %arrayidx166.8 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 22, i32 8
  %211 = ptrtoint ptr %arrayidx166.8 to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 4351, ptr %arrayidx166.8, align 2
  %call162.9 = tail call i32 @snd_ca0106_spi_write(ptr noundef %chip, i32 noundef 4608)
  %arrayidx166.9 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 22, i32 9
  %212 = ptrtoint ptr %arrayidx166.9 to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 4608, ptr %arrayidx166.9, align 2
  %call162.10 = tail call i32 @snd_ca0106_spi_write(ptr noundef %chip, i32 noundef 5134)
  %arrayidx166.10 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 22, i32 10
  %213 = ptrtoint ptr %arrayidx166.10 to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 5134, ptr %arrayidx166.10, align 2
  %call162.11 = tail call i32 @snd_ca0106_spi_write(ptr noundef %chip, i32 noundef 6144)
  %arrayidx166.11 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 22, i32 12
  %214 = ptrtoint ptr %arrayidx166.11 to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 6144, ptr %arrayidx166.11, align 2
  %call162.12 = tail call i32 @snd_ca0106_spi_write(ptr noundef %chip, i32 noundef 6911)
  %arrayidx166.12 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 22, i32 13
  %215 = ptrtoint ptr %arrayidx166.12 to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 6911, ptr %arrayidx166.12, align 2
  %call162.13 = tail call i32 @snd_ca0106_spi_write(ptr noundef %chip, i32 noundef 7679)
  %arrayidx166.13 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 22, i32 14
  %216 = ptrtoint ptr %arrayidx166.13 to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 7679, ptr %arrayidx166.13, align 2
  %call162.14 = tail call i32 @snd_ca0106_spi_write(ptr noundef %chip, i32 noundef 7681)
  %arrayidx166.14 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 22, i32 15
  %217 = ptrtoint ptr %arrayidx166.14 to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 7681, ptr %arrayidx166.14, align 2
  %218 = ptrtoint ptr %details to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %details, align 4
  %spi_dac.i = getelementptr inbounds %struct.snd_ca0106_details, ptr %219, i32 0, i32 5
  %220 = ptrtoint ptr %spi_dac.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %spi_dac.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %221)
  %tobool.not.i = icmp eq i16 %221, 0
  br i1 %tobool.not.i, label %for.body159.preheader.if.end172_crit_edge, label %if.then.i

for.body159.preheader.if.end172_crit_edge:        ; preds = %for.body159.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end172

if.then.i:                                        ; preds = %for.body159.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %222 = lshr i16 %221, 12
  %retval.0.i.i = zext i16 %222 to i32
  %arrayidx.i = getelementptr [5 x i32], ptr @spi_dacd_reg, i32 0, i32 %retval.0.i.i
  %223 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr [5 x i32], ptr @spi_dacd_bit, i32 0, i32 %retval.0.i.i
  %225 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %arrayidx2.i, align 4
  %arrayidx8.i = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 22, i32 %224
  %227 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %arrayidx8.i, align 2
  %229 = trunc i32 %226 to i16
  %230 = xor i16 %229, -1
  %conv6.i = and i16 %228, %230
  store i16 %conv6.i, ptr %arrayidx8.i, align 2
  %conv13.i = zext i16 %conv6.i to i32
  %call14.i = tail call i32 @snd_ca0106_spi_write(ptr noundef %chip, i32 noundef %conv13.i) #10
  br label %if.end172

if.end172:                                        ; preds = %if.then.i, %for.body159.preheader.if.end172_crit_edge, %if.end151.if.end172_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_devm_alloc_dir_pages(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_ca0106_pcm_power_dac(ptr noundef %chip, i32 noundef %channel_id, i32 noundef %power) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %details = getelementptr inbounds %struct.snd_ca0106, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %details to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %details, align 4
  %spi_dac = getelementptr inbounds %struct.snd_ca0106_details, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %spi_dac to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %spi_dac, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.then

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then:                                          ; preds = %entry
  %4 = zext i32 %channel_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %channel_id, label %do.body.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb6.i
    i32 3, label %sw.bb11.i
  ]

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %5 = lshr i16 %3, 12
  br label %snd_ca0106_channel_dac.exit

sw.bb1.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %6 = lshr i16 %3, 8
  %7 = and i16 %6, 15
  br label %snd_ca0106_channel_dac.exit

sw.bb6.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %8 = lshr i16 %3, 4
  %9 = and i16 %8, 15
  br label %snd_ca0106_channel_dac.exit

sw.bb11.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %10 = and i16 %3, 15
  br label %snd_ca0106_channel_dac.exit

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ca0106_channel_dac.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ca0106_pcm_power_dac, %if.then.i)) #10
          to label %snd_ca0106_channel_dac.exit [label %if.then.i], !srcloc !200

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ca0106_channel_dac.__UNIQUE_ID_ddebug254, ptr noundef %14, ptr noundef nonnull @.str.43, i32 noundef %channel_id) #10
  br label %snd_ca0106_channel_dac.exit

snd_ca0106_channel_dac.exit:                      ; preds = %if.then.i, %do.body.i, %sw.bb11.i, %sw.bb6.i, %sw.bb1.i, %sw.bb.i
  %retval.0.shrunk.i = phi i16 [ %10, %sw.bb11.i ], [ %9, %sw.bb6.i ], [ %7, %sw.bb1.i ], [ %5, %sw.bb.i ], [ 0, %if.then.i ], [ 0, %do.body.i ]
  %retval.0.i = zext i16 %retval.0.shrunk.i to i32
  %arrayidx = getelementptr [5 x i32], ptr @spi_dacd_reg, i32 0, i32 %retval.0.i
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [5 x i32], ptr @spi_dacd_bit, i32 0, i32 %retval.0.i
  %17 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %power)
  %tobool3.not = icmp eq i32 %power, 0
  %arrayidx8 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 22, i32 %16
  %19 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx8, align 2
  %21 = trunc i32 %18 to i16
  %conv10 = or i16 %20, %21
  %22 = xor i16 %21, -1
  %conv6 = and i16 %20, %22
  %conv10.sink = select i1 %tobool3.not, i16 %conv10, i16 %conv6
  store i16 %conv10.sink, ptr %arrayidx8, align 2
  %conv13 = zext i16 %conv10.sink to i32
  %call14 = tail call i32 @snd_ca0106_spi_write(ptr noundef %chip, i32 noundef %conv13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp.not = icmp eq i32 %call14, 0
  br i1 %cmp.not, label %snd_ca0106_channel_dac.exit.if.end20_crit_edge, label %snd_ca0106_channel_dac.exit.return_crit_edge

snd_ca0106_channel_dac.exit.return_crit_edge:     ; preds = %snd_ca0106_channel_dac.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

snd_ca0106_channel_dac.exit.if.end20_crit_edge:   ; preds = %snd_ca0106_channel_dac.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end20:                                         ; preds = %snd_ca0106_channel_dac.exit.if.end20_crit_edge, %entry.if.end20_crit_edge
  br label %return

return:                                           ; preds = %if.end20, %snd_ca0106_channel_dac.exit.return_crit_edge
  %retval.1 = phi i32 [ -6, %snd_ca0106_channel_dac.exit.return_crit_edge ], [ 0, %if.end20 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ca0106_stop_chip(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %emu_lock.i = getelementptr inbounds %struct.snd_ca0106, ptr %chip, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %port.i = getelementptr inbounds %struct.snd_ca0106, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port.i, align 4
  %and.i = and i32 %1, 1048575
  %add8.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 16384) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %3 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port.i, align 4
  %add14.i = add i32 %4, 4
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %5 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %5, i32 0) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port.i, align 4
  %add = add i32 %7, 12
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %8 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %8, i32 0) #10, !srcloc !193
  %call2.i13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port.i, align 4
  %and.i15 = and i32 %10, 1048575
  %add8.i16 = or i32 %and.i15, -18874368
  %11 = inttoptr i32 %add8.i16 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 29952) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i, align 4
  %add14.i17 = add i32 %13, 4
  %and15.i18 = and i32 %add14.i17, 1048575
  %add16.i19 = or i32 %and15.i18, -18874368
  %14 = inttoptr i32 %add16.i19 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 0) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i13) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port.i, align 4
  %add5 = add i32 %17, 20
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %18 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %18, i32 0) #10, !srcloc !193
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_add_chmap_ctls(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_pcm_open_playback_front(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @snd_ca0106_pcm_open_playback_channel(ptr noundef %substream, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_pcm_close_playback(ptr nocapture noundef readonly %substream) #0 align 64 {
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
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 8
  %channel_id = getelementptr inbounds %struct.snd_ca0106_pcm, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel_id, align 4
  %use = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 10, i32 %7, i32 2
  %8 = ptrtoint ptr %use to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %use, align 4
  %9 = load i32, ptr %channel_id, align 4
  tail call fastcc void @restore_spdif_bits(ptr noundef %1, i32 noundef %9)
  %10 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @snd_ca0106_pcm_power_dac(ptr noundef %1, i32 noundef %11, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp slt i32 %call, 0
  br i1 %cmp6, label %if.then.cleanup9_crit_edge, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then.cleanup9_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup9

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  br label %cleanup9

cleanup9:                                         ; preds = %if.end8, %if.then.cleanup9_crit_edge
  %retval.1 = phi i32 [ 0, %if.end8 ], [ %call, %if.then.cleanup9_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_pcm_prepare_playback(ptr nocapture noundef readonly %substream) #0 align 64 {
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
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 8
  %channel_id = getelementptr inbounds %struct.snd_ca0106_pcm, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel_id, align 4
  %buffer = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %area = getelementptr inbounds %struct.snd_dma_buffer, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %area, align 4
  %mul = shl i32 %7, 7
  %add.ptr = getelementptr i8, ptr %11, i32 %mul
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %12 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %period_size, align 4
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %14 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frame_bits.i, align 8
  %mul.i = mul i32 %15, %13
  %div1.i = lshr i32 %mul.i, 3
  %shl = shl i32 %7, 1
  %shl3 = shl i32 196608, %shl
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %16 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rate, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %17, label %entry.sw.epilog_crit_edge [
    i32 44100, label %sw.bb
    i32 192000, label %sw.bb10
    i32 96000, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %shl5 = shl i32 65536, %shl
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %shl9 = shl i32 131072, %shl
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb7, %sw.bb, %entry.sw.epilog_crit_edge
  %reg40_set.0 = phi i32 [ %shl3, %sw.bb10 ], [ %shl9, %sw.bb7 ], [ %shl5, %sw.bb ], [ 0, %entry.sw.epilog_crit_edge ]
  %reg71_set.0 = phi i32 [ 50528256, %sw.bb10 ], [ 33685504, %sw.bb7 ], [ 16842752, %sw.bb ], [ 0, %entry.sw.epilog_crit_edge ]
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %19 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %20)
  %switch.selectcmp = icmp eq i32 %20, 10
  %switch.select = select i1 %switch.selectcmp, i32 2048, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %switch.selectcmp101 = icmp eq i32 %20, 2
  %switch.select102 = select i1 %switch.selectcmp101, i32 0, i32 %switch.select
  %port = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port, align 4
  %add = add i32 %22, 20
  %and = and i32 %add, 1048575
  %add17 = or i32 %and, -18874368
  %23 = inttoptr i32 %add17 to ptr
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %23) #10, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  %25 = and i32 %24, -524289
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %or = or i32 %26, %switch.select102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !220
  tail call void @arm_heavy_mb() #10
  %27 = tail call i32 @llvm.bswap.i32(i32 %or)
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port, align 4
  %add22 = add i32 %29, 20
  %and23 = and i32 %add22, 1048575
  %add24 = or i32 %and23, -18874368
  %30 = inttoptr i32 %add24 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %30, i32 %27) #10, !srcloc !193
  %emu_lock.i = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %31 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port, align 4
  %and.i = and i32 %32, 1048575
  %add8.i = or i32 %and.i, -18874368
  %33 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %33, i32 16384) #10, !srcloc !193
  %34 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port, align 4
  %add11.i = add i32 %35, 4
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %36 = inttoptr i32 %add13.i to ptr
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %36) #10, !srcloc !194
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #10
  %neg27 = xor i32 %shl3, -1
  %and28 = and i32 %38, %neg27
  %or29 = or i32 %and28, %reg40_set.0
  %call2.i104 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %39 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port, align 4
  %and.i106 = and i32 %40, 1048575
  %add8.i107 = or i32 %and.i106, -18874368
  %41 = inttoptr i32 %add8.i107 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %41, i32 16384) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %42 = tail call i32 @llvm.bswap.i32(i32 %or29) #10
  %43 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port, align 4
  %add14.i = add i32 %44, 4
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %45 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %45, i32 %42) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i104) #10
  %call2.i109 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %46 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port, align 4
  %and.i111 = and i32 %47, 1048575
  %add8.i112 = or i32 %and.i111, -18874368
  %48 = inttoptr i32 %add8.i112 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %48, i32 28928) #10, !srcloc !193
  %49 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %port, align 4
  %add11.i113 = add i32 %50, 4
  %and12.i114 = and i32 %add11.i113, 1048575
  %add13.i115 = or i32 %and12.i114, -18874368
  %51 = inttoptr i32 %add13.i115 to ptr
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %51) #10, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i109) #10
  %53 = and i32 %52, -772
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %or33 = or i32 %54, %reg71_set.0
  %call2.i117 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %55 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %port, align 4
  %and.i119 = and i32 %56, 1048575
  %add8.i120 = or i32 %and.i119, -18874368
  %57 = inttoptr i32 %add8.i120 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %57, i32 28928) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %58 = tail call i32 @llvm.bswap.i32(i32 %or33) #10
  %59 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %port, align 4
  %add14.i121 = add i32 %60, 4
  %and15.i122 = and i32 %add14.i121, 1048575
  %add16.i123 = or i32 %and15.i122, -18874368
  %61 = inttoptr i32 %add16.i123 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %61, i32 %58) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i117) #10
  %periods = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 17
  %62 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %periods, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp214.not = icmp eq i32 %63, 0
  br i1 %cmp214.not, label %sw.epilog.for.end_crit_edge, label %for.body.lr.ph

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %sw.epilog
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %shl37 = shl i32 %div1.i, 16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0215 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %64 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dma_addr, align 8
  %mul34 = mul i32 %i.0215, %div1.i
  %add35 = add i32 %65, %mul34
  %mul36 = shl i32 %i.0215, 1
  %arrayidx = getelementptr i32, ptr %add.ptr, i32 %mul36
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add35, ptr %arrayidx, align 4
  %add39 = or i32 %mul36, 1
  %arrayidx40 = getelementptr i32, ptr %add.ptr, i32 %add39
  %67 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %shl37, ptr %arrayidx40, align 4
  %inc = add nuw i32 %i.0215, 1
  %68 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %periods, align 8
  %cmp = icmp ult i32 %inc, %69
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  %70 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %buffer, align 4
  %addr = getelementptr inbounds %struct.snd_dma_buffer, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %addr, align 4
  %add43 = add i32 %73, %mul
  %call2.i125 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %74 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  %75 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %port, align 4
  %and.i127 = and i32 %76, 1048575
  %add8.i128 = or i32 %and.i127, -18874368
  %77 = inttoptr i32 %add8.i128 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %77, i32 %74) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %78 = tail call i32 @llvm.bswap.i32(i32 %add43) #10
  %79 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %port, align 4
  %add14.i129 = add i32 %80, 4
  %and15.i130 = and i32 %add14.i129, 1048575
  %add16.i131 = or i32 %and15.i130, -18874368
  %81 = inttoptr i32 %add16.i131 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %81, i32 %78) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i125) #10
  %82 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %periods, align 8
  %sub = shl i32 %83, 19
  %shl45 = add i32 %sub, -524288
  %or.i = or i32 %7, 65536
  %call2.i133 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %84 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %85 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %port, align 4
  %and.i135 = and i32 %86, 1048575
  %add8.i136 = or i32 %and.i135, -18874368
  %87 = inttoptr i32 %add8.i136 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %87, i32 %84) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %88 = tail call i32 @llvm.bswap.i32(i32 %shl45) #10
  %89 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %port, align 4
  %add14.i137 = add i32 %90, 4
  %and15.i138 = and i32 %add14.i137, 1048575
  %add16.i139 = or i32 %and15.i138, -18874368
  %91 = inttoptr i32 %add16.i139 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %91, i32 %88) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i133) #10
  %or.i140 = or i32 %7, 131072
  %call2.i142 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %92 = tail call i32 @llvm.bswap.i32(i32 %or.i140) #10
  %93 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %port, align 4
  %and.i144 = and i32 %94, 1048575
  %add8.i145 = or i32 %and.i144, -18874368
  %95 = inttoptr i32 %add8.i145 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %95, i32 %92) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %96 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %port, align 4
  %add14.i146 = add i32 %97, 4
  %and15.i147 = and i32 %add14.i146, 1048575
  %add16.i148 = or i32 %and15.i147, -18874368
  %98 = inttoptr i32 %add16.i148 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %98, i32 0) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i142) #10
  %dma_addr46 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %99 = ptrtoint ptr %dma_addr46 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dma_addr46, align 8
  %or.i149 = or i32 %7, 262144
  %call2.i151 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %101 = tail call i32 @llvm.bswap.i32(i32 %or.i149) #10
  %102 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %port, align 4
  %and.i153 = and i32 %103, 1048575
  %add8.i154 = or i32 %and.i153, -18874368
  %104 = inttoptr i32 %add8.i154 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %104, i32 %101) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %105 = tail call i32 @llvm.bswap.i32(i32 %100) #10
  %106 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %port, align 4
  %add14.i155 = add i32 %107, 4
  %and15.i156 = and i32 %add14.i155, 1048575
  %add16.i157 = or i32 %and15.i156, -18874368
  %108 = inttoptr i32 %add16.i157 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %108, i32 %105) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i151) #10
  %109 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %period_size, align 4
  %111 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %frame_bits.i, align 8
  %mul.i159 = shl i32 %110, 13
  %113 = mul i32 %mul.i159, %112
  %shl49 = and i32 %113, -65536
  %or.i161 = or i32 %7, 327680
  %call2.i163 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %114 = tail call i32 @llvm.bswap.i32(i32 %or.i161) #10
  %115 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %port, align 4
  %and.i165 = and i32 %116, 1048575
  %add8.i166 = or i32 %and.i165, -18874368
  %117 = inttoptr i32 %add8.i166 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %117, i32 %114) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %118 = tail call i32 @llvm.bswap.i32(i32 %shl49) #10
  %119 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %port, align 4
  %add14.i167 = add i32 %120, 4
  %and15.i168 = and i32 %add14.i167, 1048575
  %add16.i169 = or i32 %and15.i168, -18874368
  %121 = inttoptr i32 %add16.i169 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %121, i32 %118) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i163) #10
  %call2.i172 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %122 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %port, align 4
  %and.i174 = and i32 %123, 1048575
  %add8.i175 = or i32 %and.i174, -18874368
  %124 = inttoptr i32 %add8.i175 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %124, i32 %114) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %125 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %port, align 4
  %add14.i176 = add i32 %126, 4
  %and15.i177 = and i32 %add14.i176, 1048575
  %add16.i178 = or i32 %and15.i177, -18874368
  %127 = inttoptr i32 %add16.i178 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %127, i32 0) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i172) #10
  %or.i179 = or i32 %7, 393216
  %call2.i181 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %128 = tail call i32 @llvm.bswap.i32(i32 %or.i179) #10
  %129 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %port, align 4
  %and.i183 = and i32 %130, 1048575
  %add8.i184 = or i32 %and.i183, -18874368
  %131 = inttoptr i32 %add8.i184 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %131, i32 %128) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %132 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %port, align 4
  %add14.i185 = add i32 %133, 4
  %and15.i186 = and i32 %add14.i185, 1048575
  %add16.i187 = or i32 %and15.i186, -18874368
  %134 = inttoptr i32 %add16.i187 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %134, i32 0) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i181) #10
  %or.i188 = or i32 %7, 458752
  %call2.i190 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %135 = tail call i32 @llvm.bswap.i32(i32 %or.i188) #10
  %136 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %port, align 4
  %and.i192 = and i32 %137, 1048575
  %add8.i193 = or i32 %and.i192, -18874368
  %138 = inttoptr i32 %add8.i193 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %138, i32 %135) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %139 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %port, align 4
  %add14.i194 = add i32 %140, 4
  %and15.i195 = and i32 %add14.i194, 1048575
  %add16.i196 = or i32 %and15.i195, -18874368
  %141 = inttoptr i32 %add16.i196 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %141, i32 0) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i190) #10
  %or.i197 = or i32 %7, 524288
  %call2.i199 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %142 = tail call i32 @llvm.bswap.i32(i32 %or.i197) #10
  %143 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %port, align 4
  %and.i201 = and i32 %144, 1048575
  %add8.i202 = or i32 %and.i201, -18874368
  %145 = inttoptr i32 %add8.i202 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %145, i32 %142) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %146 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %port, align 4
  %add14.i203 = add i32 %147, 4
  %and15.i204 = and i32 %add14.i203, 1048575
  %add16.i205 = or i32 %and15.i204, -18874368
  %148 = inttoptr i32 %add16.i205 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %148, i32 0) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i199) #10
  %call2.i207 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %149 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %port, align 4
  %and.i209 = and i32 %150, 1048575
  %add8.i210 = or i32 %and.i209, -18874368
  %151 = inttoptr i32 %add8.i210 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %151, i32 25856) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %152 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %port, align 4
  %add14.i211 = add i32 %153, 4
  %and15.i212 = and i32 %add14.i211, 1048575
  %add16.i213 = or i32 %and15.i212, -18874368
  %154 = inttoptr i32 %add16.i213 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %154, i32 0) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i207) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_pcm_trigger_playback(ptr noundef %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cmd)
  %switch.selectcmp.case1 = icmp eq i32 %cmd, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %cmd)
  %switch.selectcmp.case2 = icmp eq i32 %cmd, 6
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %2 = zext i1 %switch.selectcmp to i16
  %group = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 18
  %3 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %group, align 4
  %substreams = getelementptr inbounds %struct.snd_pcm_group, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %substreams to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn111 = load ptr, ptr %substreams, align 4
  %cmp.not113 = icmp eq ptr %.pn111, %substreams
  br i1 %cmp.not113, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn116 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn111, %entry.for.body_crit_edge ]
  %extended.0115 = phi i32 [ %extended.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %basic.0114 = phi i32 [ %basic.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %private_data4 = getelementptr i8, ptr %.pn116, i32 -132
  %6 = ptrtoint ptr %private_data4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data4, align 4
  %cmp5.not = icmp eq ptr %7, %1
  br i1 %cmp5.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %stream = getelementptr i8, ptr %.pn116, i32 -92
  %8 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp6.not = icmp eq i32 %9, 0
  br i1 %cmp6.not, label %if.end, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %runtime7 = getelementptr i8, ptr %.pn116, i32 -20
  %10 = ptrtoint ptr %runtime7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime7, align 4
  %private_data8 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %private_data8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data8, align 8
  %channel_id = getelementptr inbounds %struct.snd_ca0106_pcm, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel_id, align 4
  %running9 = getelementptr inbounds %struct.snd_ca0106_pcm, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %running9 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %2, ptr %running9, align 4
  %shl = shl nuw i32 1, %15
  %or = or i32 %shl, %basic.0114
  %shl10 = shl i32 16, %15
  %or11 = or i32 %shl10, %extended.0115
  %17 = load ptr, ptr %runtime7, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %substream, ptr %17, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %basic.1 = phi i32 [ %basic.0114, %for.body.for.inc_crit_edge ], [ %basic.0114, %lor.lhs.false.for.inc_crit_edge ], [ %or, %if.end ]
  %extended.1 = phi i32 [ %extended.0115, %for.body.for.inc_crit_edge ], [ %extended.0115, %lor.lhs.false.for.inc_crit_edge ], [ %or11, %if.end ]
  %19 = ptrtoint ptr %.pn116 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load ptr, ptr %.pn116, align 4
  %20 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %group, align 4
  %substreams3 = getelementptr inbounds %struct.snd_pcm_group, ptr %21, i32 0, i32 2
  %cmp.not = icmp eq ptr %.pn, %substreams3
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %basic.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %basic.1, %for.inc.for.end_crit_edge ]
  %extended.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %extended.1, %for.inc.for.end_crit_edge ]
  %22 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %cmd, label %for.end.sw.epilog27_crit_edge [
    i32 1, label %for.end.sw.bb17_crit_edge
    i32 6, label %for.end.sw.bb17_crit_edge118
    i32 0, label %for.end.sw.bb21_crit_edge
    i32 5, label %for.end.sw.bb21_crit_edge119
  ]

for.end.sw.bb21_crit_edge119:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb21

for.end.sw.bb21_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb21

for.end.sw.bb17_crit_edge118:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb17

for.end.sw.bb17_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb17

for.end.sw.epilog27_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog27

sw.bb17:                                          ; preds = %for.end.sw.bb17_crit_edge, %for.end.sw.bb17_crit_edge118
  %emu_lock.i = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %port.i = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port.i, align 4
  %and.i = and i32 %24, 1048575
  %add8.i = or i32 %and.i, -18874368
  %25 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %25, i32 29952) #10, !srcloc !193
  %26 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port.i, align 4
  %add11.i = add i32 %27, 4
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %28 = inttoptr i32 %add13.i to ptr
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %28) #10, !srcloc !194
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #10
  %or18 = or i32 %30, %extended.0.lcssa
  %call2.i59 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %31 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port.i, align 4
  %and.i61 = and i32 %32, 1048575
  %add8.i62 = or i32 %and.i61, -18874368
  %33 = inttoptr i32 %add8.i62 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %33, i32 29952) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %34 = tail call i32 @llvm.bswap.i32(i32 %or18) #10
  %35 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port.i, align 4
  %add14.i = add i32 %36, 4
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %37 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %37, i32 %34) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i59) #10
  %call2.i64 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %38 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port.i, align 4
  %and.i66 = and i32 %39, 1048575
  %add8.i67 = or i32 %and.i66, -18874368
  %40 = inttoptr i32 %add8.i67 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %40, i32 16384) #10, !srcloc !193
  %41 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port.i, align 4
  %add11.i68 = add i32 %42, 4
  %and12.i69 = and i32 %add11.i68, 1048575
  %add13.i70 = or i32 %and12.i69, -18874368
  %43 = inttoptr i32 %add13.i70 to ptr
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %43) #10, !srcloc !194
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i64) #10
  %or20 = or i32 %45, %basic.0.lcssa
  %call2.i72 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %46 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port.i, align 4
  %and.i74 = and i32 %47, 1048575
  %add8.i75 = or i32 %and.i74, -18874368
  %48 = inttoptr i32 %add8.i75 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %48, i32 16384) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %49 = tail call i32 @llvm.bswap.i32(i32 %or20) #10
  %50 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port.i, align 4
  %add14.i76 = add i32 %51, 4
  %and15.i77 = and i32 %add14.i76, 1048575
  %add16.i78 = or i32 %and15.i77, -18874368
  %52 = inttoptr i32 %add16.i78 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %52, i32 %49) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i72) #10
  br label %sw.epilog27

sw.bb21:                                          ; preds = %for.end.sw.bb21_crit_edge, %for.end.sw.bb21_crit_edge119
  %emu_lock.i79 = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 7
  %call2.i80 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i79) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %port.i81 = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 3
  %53 = ptrtoint ptr %port.i81 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %port.i81, align 4
  %and.i82 = and i32 %54, 1048575
  %add8.i83 = or i32 %and.i82, -18874368
  %55 = inttoptr i32 %add8.i83 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %55, i32 16384) #10, !srcloc !193
  %56 = ptrtoint ptr %port.i81 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port.i81, align 4
  %add11.i84 = add i32 %57, 4
  %and12.i85 = and i32 %add11.i84, 1048575
  %add13.i86 = or i32 %and12.i85, -18874368
  %58 = inttoptr i32 %add13.i86 to ptr
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %58) #10, !srcloc !194
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i79, i32 noundef %call2.i80) #10
  %neg = xor i32 %basic.0.lcssa, -1
  %and = and i32 %60, %neg
  %call2.i88 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i79) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %61 = ptrtoint ptr %port.i81 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %port.i81, align 4
  %and.i90 = and i32 %62, 1048575
  %add8.i91 = or i32 %and.i90, -18874368
  %63 = inttoptr i32 %add8.i91 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %63, i32 16384) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %64 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  %65 = ptrtoint ptr %port.i81 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %port.i81, align 4
  %add14.i92 = add i32 %66, 4
  %and15.i93 = and i32 %add14.i92, 1048575
  %add16.i94 = or i32 %and15.i93, -18874368
  %67 = inttoptr i32 %add16.i94 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %67, i32 %64) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i79, i32 noundef %call2.i88) #10
  %call2.i96 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i79) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %68 = ptrtoint ptr %port.i81 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port.i81, align 4
  %and.i98 = and i32 %69, 1048575
  %add8.i99 = or i32 %and.i98, -18874368
  %70 = inttoptr i32 %add8.i99 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %70, i32 29952) #10, !srcloc !193
  %71 = ptrtoint ptr %port.i81 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %port.i81, align 4
  %add11.i100 = add i32 %72, 4
  %and12.i101 = and i32 %add11.i100, 1048575
  %add13.i102 = or i32 %and12.i101, -18874368
  %73 = inttoptr i32 %add13.i102 to ptr
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %73) #10, !srcloc !194
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i79, i32 noundef %call2.i96) #10
  %neg24 = xor i32 %extended.0.lcssa, -1
  %and25 = and i32 %75, %neg24
  %call2.i104 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i79) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %76 = ptrtoint ptr %port.i81 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %port.i81, align 4
  %and.i106 = and i32 %77, 1048575
  %add8.i107 = or i32 %and.i106, -18874368
  %78 = inttoptr i32 %add8.i107 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %78, i32 29952) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %79 = tail call i32 @llvm.bswap.i32(i32 %and25) #10
  %80 = ptrtoint ptr %port.i81 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %port.i81, align 4
  %add14.i108 = add i32 %81, 4
  %and15.i109 = and i32 %add14.i108, 1048575
  %add16.i110 = or i32 %and15.i109, -18874368
  %82 = inttoptr i32 %add16.i110 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %82, i32 %79) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i79, i32 noundef %call2.i104) #10
  br label %sw.epilog27

sw.epilog27:                                      ; preds = %sw.bb21, %sw.bb17, %for.end.sw.epilog27_crit_edge
  %result.0 = phi i32 [ 0, %sw.bb21 ], [ 0, %sw.bb17 ], [ -22, %for.end.sw.epilog27_crit_edge ]
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_pcm_pointer_playback(ptr nocapture noundef readonly %substream) #0 align 64 {
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
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 8
  %running = getelementptr inbounds %struct.snd_ca0106_pcm, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %running to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %channel_id = getelementptr inbounds %struct.snd_ca0106_pcm, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel_id, align 4
  %or.i = or i32 %9, 131072
  %emu_lock.i = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 7
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %port.i = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 3
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %or.i36 = or i32 %9, 393216
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i36) #10
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  br label %do.body

do.body:                                          ; preds = %if.end10.do.body_crit_edge, %do.body.preheader
  %prev_ptr.0 = phi i32 [ %spec.select, %if.end10.do.body_crit_edge ], [ -1, %do.body.preheader ]
  %timeout.0 = phi i32 [ %dec, %if.end10.do.body_crit_edge ], [ 10, %do.body.preheader ]
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i, align 4
  %and.i = and i32 %13, 1048575
  %add8.i = or i32 %and.i, -18874368
  %14 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %10) #10, !srcloc !193
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port.i, align 4
  %add11.i = add i32 %16, 4
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %17 = inttoptr i32 %add13.i to ptr
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %17) #10, !srcloc !194
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #10
  %shr = lshr i32 %19, 3
  %20 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %period_size, align 4
  %mul = mul i32 %21, %shr
  %call2.i38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %22 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port.i, align 4
  %and.i40 = and i32 %23, 1048575
  %add8.i41 = or i32 %and.i40, -18874368
  %24 = inttoptr i32 %add8.i41 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %24, i32 %11) #10, !srcloc !193
  %25 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port.i, align 4
  %add11.i42 = add i32 %26, 4
  %and12.i43 = and i32 %add11.i42, 1048575
  %add13.i44 = or i32 %and12.i43, -18874368
  %27 = inttoptr i32 %add13.i44 to ptr
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %27) #10, !srcloc !194
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i38) #10
  %mul.i = shl i32 %29, 3
  %30 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %31
  %add = add i32 %div.i, %mul
  %32 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %33)
  %cmp.not = icmp ult i32 %add, %33
  %sub = select i1 %cmp.not, i32 0, i32 %33
  %spec.select = sub i32 %add, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %prev_ptr.0, i32 %spec.select)
  %cmp8 = icmp eq i32 %prev_ptr.0, %spec.select
  br i1 %cmp8, label %do.body.cleanup_crit_edge, label %if.end10

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %do.body
  %dec = add nsw i32 %timeout.0, -1
  %tobool11.not = icmp eq i32 %dec, 0
  br i1 %tobool11.not, label %do.end14, label %if.end10.do.body_crit_edge

if.end10.do.body_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %35, i32 0, i32 27
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.45) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end14 ], [ 0, %entry.cleanup_crit_edge ], [ %prev_ptr.0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_ca0106_pcm_open_playback_channel(ptr noundef %substream, i32 noundef %channel_id) unnamed_addr #0 align 64 {
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 16) #14
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 10, i32 %channel_id
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %call7.i.i, align 8
  %substream2 = getelementptr inbounds %struct.snd_ca0106_pcm, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %substream2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %substream, ptr %substream2, align 4
  %channel_id3 = getelementptr inbounds %struct.snd_ca0106_pcm, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %channel_id3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %channel_id, ptr %channel_id3, align 8
  %private_data4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %8 = ptrtoint ptr %private_data4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %private_data4, align 8
  %private_free = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 45
  %9 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @snd_ca0106_pcm_free_substream, ptr %private_free, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %10 = call ptr @memcpy(ptr %hw, ptr @snd_ca0106_playback_hw, i32 64)
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %arrayidx, align 4
  %number = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 10, i32 %channel_id, i32 1
  %12 = ptrtoint ptr %number to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %channel_id, ptr %number, align 4
  %use = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 10, i32 %channel_id, i32 2
  %13 = ptrtoint ptr %use to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %use, align 4
  %epcm6 = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 10, i32 %channel_id, i32 4
  %14 = ptrtoint ptr %epcm6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %epcm6, align 4
  %call7 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %3, i32 noundef 0, i32 noundef 14, i32 noundef 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel_id)
  %cmp15.not = icmp eq i32 %channel_id, 0
  br i1 %cmp15.not, label %if.end14.if.end21_crit_edge, label %if.then16

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then16:                                        ; preds = %if.end14
  %call17 = tail call fastcc i32 @snd_ca0106_pcm_power_dac(ptr noundef %1, i32 noundef %channel_id, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then16.cleanup_crit_edge, label %if.then16.if.end21_crit_edge

if.then16.if.end21_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.then16.if.end21_crit_edge, %if.end14.if.end21_crit_edge
  tail call fastcc void @restore_spdif_bits(ptr noundef %1, i32 noundef %channel_id)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then16.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -12, %entry.cleanup_crit_edge ], [ %call7, %if.end.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ %call17, %if.then16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ca0106_pcm_free_substream(ptr nocapture noundef readonly %runtime) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 44
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @restore_spdif_bits(ptr noundef %chip, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 13, i32 %idx
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr %struct.snd_ca0106, ptr %chip, i32 0, i32 12, i32 %idx
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %arrayidx, align 4
  %add = shl i32 %idx, 16
  %shl.i = add i32 %add, 4259840
  %emu_lock.i = getelementptr inbounds %struct.snd_ca0106, ptr %chip, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %5 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #10
  %port.i = getelementptr inbounds %struct.snd_ca0106, ptr %chip, i32 0, i32 3
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port.i, align 4
  %and.i = and i32 %7, 1048575
  %add8.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %8, i32 %5) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %9 = tail call i32 @llvm.bswap.i32(i32 %3) #10
  %10 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port.i, align 4
  %add14.i = add i32 %11, 4
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %12 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %12, i32 %9) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_pcm_open_0_capture(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 16) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.snd_ca0106_pcm_open_capture_channel.exit_crit_edge, label %if.end.i

entry.snd_ca0106_pcm_open_capture_channel.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_ca0106_pcm_open_capture_channel.exit

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 11, i32 0
  %5 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %call7.i.i.i, align 8
  %substream2.i = getelementptr inbounds %struct.snd_ca0106_pcm, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %substream2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %substream, ptr %substream2.i, align 4
  %channel_id3.i = getelementptr inbounds %struct.snd_ca0106_pcm, ptr %call7.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %channel_id3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %channel_id3.i, align 8
  %private_data4.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %8 = ptrtoint ptr %private_data4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i.i, ptr %private_data4.i, align 8
  %private_free.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 45
  %9 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @snd_ca0106_pcm_free_substream, ptr %private_free.i, align 4
  %hw.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %10 = call ptr @memcpy(ptr %hw.i, ptr @snd_ca0106_capture_hw, i32 64)
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %arrayidx.i, align 4
  %number.i = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 11, i32 0, i32 1
  %12 = ptrtoint ptr %number.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %number.i, align 4
  %use.i = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 11, i32 0, i32 2
  %13 = ptrtoint ptr %use.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %use.i, align 4
  %epcm6.i = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 11, i32 0, i32 4
  %14 = ptrtoint ptr %epcm6.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i.i, ptr %epcm6.i, align 4
  %call7.i = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i = icmp slt i32 %call7.i, 0
  br i1 %cmp.i, label %if.end.i.snd_ca0106_pcm_open_capture_channel.exit_crit_edge, label %if.end9.i

if.end.i.snd_ca0106_pcm_open_capture_channel.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_ca0106_pcm_open_capture_channel.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call10.i = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %3, i32 noundef 0, i32 noundef 14, i32 noundef 64) #10
  %15 = tail call i32 @llvm.smin.i32(i32 %call10.i, i32 0) #10
  br label %snd_ca0106_pcm_open_capture_channel.exit

snd_ca0106_pcm_open_capture_channel.exit:         ; preds = %if.end9.i, %if.end.i.snd_ca0106_pcm_open_capture_channel.exit_crit_edge, %entry.snd_ca0106_pcm_open_capture_channel.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %entry.snd_ca0106_pcm_open_capture_channel.exit_crit_edge ], [ %call7.i, %if.end.i.snd_ca0106_pcm_open_capture_channel.exit_crit_edge ], [ %15, %if.end9.i ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ca0106_pcm_close_capture(ptr nocapture noundef readonly %substream) #8 align 64 {
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
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 8
  %channel_id = getelementptr inbounds %struct.snd_ca0106_pcm, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel_id, align 4
  %use = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 11, i32 %7, i32 2
  %8 = ptrtoint ptr %use to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %use, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_pcm_prepare_capture(ptr nocapture noundef readonly %substream) #0 align 64 {
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
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 8
  %channel_id = getelementptr inbounds %struct.snd_ca0106_pcm, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel_id, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %9, label %sw.default [
    i32 44100, label %entry.sw.epilog_crit_edge
    i32 48000, label %sw.bb3
    i32 96000, label %sw.bb4
    i32 192000, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb4, %sw.bb3, %entry.sw.epilog_crit_edge
  %over_sampling.0 = phi i32 [ 2, %sw.default ], [ 10, %sw.bb5 ], [ 10, %sw.bb4 ], [ 2, %sw.bb3 ], [ 2, %entry.sw.epilog_crit_edge ]
  %reg71_set.0 = phi i32 [ 0, %sw.default ], [ 49152, %sw.bb5 ], [ 32768, %sw.bb4 ], [ 0, %sw.bb3 ], [ 16384, %entry.sw.epilog_crit_edge ]
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %11 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %12)
  %switch.selectcmp = icmp eq i32 %12, 10
  %switch.select = select i1 %switch.selectcmp, i32 1024, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %switch.selectcmp44 = icmp eq i32 %12, 2
  %switch.select45 = select i1 %switch.selectcmp44, i32 0, i32 %switch.select
  %port = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port, align 4
  %add = add i32 %14, 20
  %and = and i32 %add, 1048575
  %add10 = or i32 %and, -18874368
  %15 = inttoptr i32 %add10 to ptr
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %15) #10, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !221
  %17 = and i32 %16, -262145
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %or = or i32 %18, %switch.select45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  tail call void @arm_heavy_mb() #10
  %19 = tail call i32 @llvm.bswap.i32(i32 %or)
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port, align 4
  %add14 = add i32 %21, 20
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %22 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 %19) #10, !srcloc !193
  %emu_lock.i = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %23 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port, align 4
  %and.i = and i32 %24, 1048575
  %add8.i = or i32 %and.i, -18874368
  %25 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %25, i32 28928) #10, !srcloc !193
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port, align 4
  %add11.i = add i32 %27, 4
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %28 = inttoptr i32 %add13.i to ptr
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %28) #10, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #10
  %30 = and i32 %29, -12582913
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %or21 = or i32 %31, %reg71_set.0
  %call2.i47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port, align 4
  %and.i49 = and i32 %33, 1048575
  %add8.i50 = or i32 %and.i49, -18874368
  %34 = inttoptr i32 %add8.i50 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %34, i32 28928) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %35 = tail call i32 @llvm.bswap.i32(i32 %or21) #10
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port, align 4
  %add14.i = add i32 %37, 4
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %38 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %38, i32 %35) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i47) #10
  %details = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %details to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %details, align 4
  %i2c_adc = getelementptr inbounds %struct.snd_ca0106_details, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %i2c_adc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i2c_adc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp = icmp eq i32 %42, 1
  br i1 %cmp, label %if.then, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %call22 = tail call i32 @snd_ca0106_i2c_write(ptr noundef %1, i32 noundef 12, i32 noundef %over_sampling.0)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %or.i = or i32 %7, 1245184
  %call2.i52 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %43 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %44 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port, align 4
  %and.i54 = and i32 %45, 1048575
  %add8.i55 = or i32 %and.i54, -18874368
  %46 = inttoptr i32 %add8.i55 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %46, i32 %43) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %47 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port, align 4
  %add14.i56 = add i32 %48, 4
  %and15.i57 = and i32 %add14.i56, 1048575
  %add16.i58 = or i32 %and15.i57, -18874368
  %49 = inttoptr i32 %add16.i58 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %49, i32 0) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i52) #10
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %50 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dma_addr, align 8
  %or.i59 = or i32 %7, 1048576
  %call2.i61 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %52 = tail call i32 @llvm.bswap.i32(i32 %or.i59) #10
  %53 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %port, align 4
  %and.i63 = and i32 %54, 1048575
  %add8.i64 = or i32 %and.i63, -18874368
  %55 = inttoptr i32 %add8.i64 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %55, i32 %52) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %56 = tail call i32 @llvm.bswap.i32(i32 %51) #10
  %57 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port, align 4
  %add14.i65 = add i32 %58, 4
  %and15.i66 = and i32 %add14.i65, 1048575
  %add16.i67 = or i32 %and15.i66, -18874368
  %59 = inttoptr i32 %add16.i67 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %59, i32 %56) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i61) #10
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %60 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %buffer_size, align 4
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %62 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %frame_bits.i, align 8
  %mul.i = shl i32 %61, 13
  %64 = mul i32 %mul.i, %63
  %shl = and i32 %64, -65536
  %or.i68 = or i32 %7, 1114112
  %call2.i70 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %65 = tail call i32 @llvm.bswap.i32(i32 %or.i68) #10
  %66 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %port, align 4
  %and.i72 = and i32 %67, 1048575
  %add8.i73 = or i32 %and.i72, -18874368
  %68 = inttoptr i32 %add8.i73 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %68, i32 %65) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %69 = tail call i32 @llvm.bswap.i32(i32 %shl) #10
  %70 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %port, align 4
  %add14.i74 = add i32 %71, 4
  %and15.i75 = and i32 %add14.i74, 1048575
  %add16.i76 = or i32 %and15.i75, -18874368
  %72 = inttoptr i32 %add16.i76 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %72, i32 %69) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i70) #10
  %or.i77 = or i32 %7, 1179648
  %call2.i79 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %73 = tail call i32 @llvm.bswap.i32(i32 %or.i77) #10
  %74 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %port, align 4
  %and.i81 = and i32 %75, 1048575
  %add8.i82 = or i32 %and.i81, -18874368
  %76 = inttoptr i32 %add8.i82 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %76, i32 %73) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %77 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %port, align 4
  %add14.i83 = add i32 %78, 4
  %and15.i84 = and i32 %add14.i83, 1048575
  %add16.i85 = or i32 %and15.i84, -18874368
  %79 = inttoptr i32 %add16.i85 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %79, i32 0) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i79) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_pcm_trigger_capture(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #0 align 64 {
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
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 8
  %channel_id = getelementptr inbounds %struct.snd_ca0106_pcm, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel_id, align 4
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %emu_lock.i = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %port.i = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port.i, align 4
  %and.i = and i32 %10, 1048575
  %add8.i = or i32 %and.i, -18874368
  %11 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 29952) #10, !srcloc !193
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i, align 4
  %add11.i = add i32 %13, 4
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %14 = inttoptr i32 %add13.i to ptr
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %14) #10, !srcloc !194
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #10
  %shl = shl i32 1114112, %7
  %or = or i32 %16, %shl
  %call2.i28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port.i, align 4
  %and.i30 = and i32 %18, 1048575
  %add8.i31 = or i32 %and.i30, -18874368
  %19 = inttoptr i32 %add8.i31 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %19, i32 29952) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %20 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %21 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port.i, align 4
  %add14.i = add i32 %22, 4
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %23 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %23, i32 %20) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i28) #10
  %call2.i33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %24 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port.i, align 4
  %and.i35 = and i32 %25, 1048575
  %add8.i36 = or i32 %and.i35, -18874368
  %26 = inttoptr i32 %add8.i36 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %26, i32 16384) #10, !srcloc !193
  %27 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port.i, align 4
  %add11.i37 = add i32 %28, 4
  %and12.i38 = and i32 %add11.i37, 1048575
  %add13.i39 = or i32 %and12.i38, -18874368
  %29 = inttoptr i32 %add13.i39 to ptr
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %29) #10, !srcloc !194
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i33) #10
  %shl4 = shl i32 256, %7
  %or5 = or i32 %31, %shl4
  %call2.i41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %32 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port.i, align 4
  %and.i43 = and i32 %33, 1048575
  %add8.i44 = or i32 %and.i43, -18874368
  %34 = inttoptr i32 %add8.i44 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %34, i32 16384) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %35 = tail call i32 @llvm.bswap.i32(i32 %or5) #10
  %36 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port.i, align 4
  %add14.i45 = add i32 %37, 4
  %and15.i46 = and i32 %add14.i45, 1048575
  %add16.i47 = or i32 %and15.i46, -18874368
  %38 = inttoptr i32 %add16.i47 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %38, i32 %35) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i41) #10
  br label %sw.epilog.sink.split

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %emu_lock.i48 = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 7
  %call2.i49 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i48) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %port.i50 = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %port.i50 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port.i50, align 4
  %and.i51 = and i32 %40, 1048575
  %add8.i52 = or i32 %and.i51, -18874368
  %41 = inttoptr i32 %add8.i52 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %41, i32 16384) #10, !srcloc !193
  %42 = ptrtoint ptr %port.i50 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port.i50, align 4
  %add11.i53 = add i32 %43, 4
  %and12.i54 = and i32 %add11.i53, 1048575
  %add13.i55 = or i32 %and12.i54, -18874368
  %44 = inttoptr i32 %add13.i55 to ptr
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %44) #10, !srcloc !194
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i48, i32 noundef %call2.i49) #10
  %shl8 = shl i32 256, %7
  %neg = xor i32 %shl8, -1
  %and = and i32 %46, %neg
  %call2.i57 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i48) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %47 = ptrtoint ptr %port.i50 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port.i50, align 4
  %and.i59 = and i32 %48, 1048575
  %add8.i60 = or i32 %and.i59, -18874368
  %49 = inttoptr i32 %add8.i60 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %49, i32 16384) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %50 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  %51 = ptrtoint ptr %port.i50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %port.i50, align 4
  %add14.i61 = add i32 %52, 4
  %and15.i62 = and i32 %add14.i61, 1048575
  %add16.i63 = or i32 %and15.i62, -18874368
  %53 = inttoptr i32 %add16.i63 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %53, i32 %50) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i48, i32 noundef %call2.i57) #10
  %call2.i65 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i48) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %54 = ptrtoint ptr %port.i50 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port.i50, align 4
  %and.i67 = and i32 %55, 1048575
  %add8.i68 = or i32 %and.i67, -18874368
  %56 = inttoptr i32 %add8.i68 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %56, i32 29952) #10, !srcloc !193
  %57 = ptrtoint ptr %port.i50 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port.i50, align 4
  %add11.i69 = add i32 %58, 4
  %and12.i70 = and i32 %add11.i69, 1048575
  %add13.i71 = or i32 %and12.i70, -18874368
  %59 = inttoptr i32 %add13.i71 to ptr
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %59) #10, !srcloc !194
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i48, i32 noundef %call2.i65) #10
  %shl10 = shl i32 1114112, %7
  %neg11 = xor i32 %shl10, -1
  %and12 = and i32 %61, %neg11
  %call2.i73 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i48) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %62 = ptrtoint ptr %port.i50 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %port.i50, align 4
  %and.i75 = and i32 %63, 1048575
  %add8.i76 = or i32 %and.i75, -18874368
  %64 = inttoptr i32 %add8.i76 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %64, i32 29952) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %65 = tail call i32 @llvm.bswap.i32(i32 %and12) #10
  %66 = ptrtoint ptr %port.i50 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %port.i50, align 4
  %add14.i77 = add i32 %67, 4
  %and15.i78 = and i32 %add14.i77, 1048575
  %add16.i79 = or i32 %and15.i78, -18874368
  %68 = inttoptr i32 %add16.i79 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %68, i32 %65) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i48, i32 noundef %call2.i73) #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb6, %sw.bb
  %.sink = phi i16 [ 0, %sw.bb6 ], [ 1, %sw.bb ]
  %running13 = getelementptr inbounds %struct.snd_ca0106_pcm, ptr %5, i32 0, i32 3
  %69 = ptrtoint ptr %running13 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %.sink, ptr %running13, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %result.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_pcm_pointer_capture(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data2, align 8
  %running = getelementptr inbounds %struct.snd_ca0106_pcm, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %running to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %channel_id = getelementptr inbounds %struct.snd_ca0106_pcm, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel_id, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data, align 4
  %or.i = or i32 %7, 1179648
  %emu_lock.i = getelementptr inbounds %struct.snd_ca0106, ptr %9, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %port.i = getelementptr inbounds %struct.snd_ca0106, ptr %9, i32 0, i32 3
  %11 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port.i, align 4
  %and.i = and i32 %12, 1048575
  %add8.i = or i32 %and.i, -18874368
  %13 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %13, i32 %10) #10, !srcloc !193
  %14 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port.i, align 4
  %add11.i = add i32 %15, 4
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %16 = inttoptr i32 %add13.i to ptr
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %16) #10, !srcloc !194
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #10
  %mul.i = shl i32 %18, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %19 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %20
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 18
  %21 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %22)
  %cmp.not = icmp ult i32 %div.i, %22
  %sub = select i1 %cmp.not, i32 0, i32 %22
  %spec.select = sub i32 %div.i, %sub
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_pcm_open_playback_rear(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @snd_ca0106_pcm_open_playback_channel(ptr noundef %substream, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_pcm_open_1_capture(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 16) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.snd_ca0106_pcm_open_capture_channel.exit_crit_edge, label %if.end.i

entry.snd_ca0106_pcm_open_capture_channel.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_ca0106_pcm_open_capture_channel.exit

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 11, i32 1
  %5 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %call7.i.i.i, align 8
  %substream2.i = getelementptr inbounds %struct.snd_ca0106_pcm, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %substream2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %substream, ptr %substream2.i, align 4
  %channel_id3.i = getelementptr inbounds %struct.snd_ca0106_pcm, ptr %call7.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %channel_id3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %channel_id3.i, align 8
  %private_data4.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %8 = ptrtoint ptr %private_data4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i.i, ptr %private_data4.i, align 8
  %private_free.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 45
  %9 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @snd_ca0106_pcm_free_substream, ptr %private_free.i, align 4
  %hw.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %10 = call ptr @memcpy(ptr %hw.i, ptr @snd_ca0106_capture_hw, i32 64)
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %arrayidx.i, align 4
  %number.i = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 11, i32 1, i32 1
  %12 = ptrtoint ptr %number.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %number.i, align 4
  %use.i = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 11, i32 1, i32 2
  %13 = ptrtoint ptr %use.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %use.i, align 4
  %epcm6.i = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 11, i32 1, i32 4
  %14 = ptrtoint ptr %epcm6.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i.i, ptr %epcm6.i, align 4
  %call7.i = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i = icmp slt i32 %call7.i, 0
  br i1 %cmp.i, label %if.end.i.snd_ca0106_pcm_open_capture_channel.exit_crit_edge, label %if.end9.i

if.end.i.snd_ca0106_pcm_open_capture_channel.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_ca0106_pcm_open_capture_channel.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call10.i = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %3, i32 noundef 0, i32 noundef 14, i32 noundef 64) #10
  %15 = tail call i32 @llvm.smin.i32(i32 %call10.i, i32 0) #10
  br label %snd_ca0106_pcm_open_capture_channel.exit

snd_ca0106_pcm_open_capture_channel.exit:         ; preds = %if.end9.i, %if.end.i.snd_ca0106_pcm_open_capture_channel.exit_crit_edge, %entry.snd_ca0106_pcm_open_capture_channel.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %entry.snd_ca0106_pcm_open_capture_channel.exit_crit_edge ], [ %call7.i, %if.end.i.snd_ca0106_pcm_open_capture_channel.exit_crit_edge ], [ %15, %if.end9.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_pcm_open_playback_center_lfe(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @snd_ca0106_pcm_open_playback_channel(ptr noundef %substream, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_pcm_open_2_capture(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 16) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.snd_ca0106_pcm_open_capture_channel.exit_crit_edge, label %if.end.i

entry.snd_ca0106_pcm_open_capture_channel.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_ca0106_pcm_open_capture_channel.exit

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 11, i32 2
  %5 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %call7.i.i.i, align 8
  %substream2.i = getelementptr inbounds %struct.snd_ca0106_pcm, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %substream2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %substream, ptr %substream2.i, align 4
  %channel_id3.i = getelementptr inbounds %struct.snd_ca0106_pcm, ptr %call7.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %channel_id3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %channel_id3.i, align 8
  %private_data4.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %8 = ptrtoint ptr %private_data4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i.i, ptr %private_data4.i, align 8
  %private_free.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 45
  %9 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @snd_ca0106_pcm_free_substream, ptr %private_free.i, align 4
  %hw.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %10 = call ptr @memcpy(ptr %hw.i, ptr @snd_ca0106_capture_hw, i32 64)
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %arrayidx.i, align 4
  %number.i = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 11, i32 2, i32 1
  %12 = ptrtoint ptr %number.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %number.i, align 4
  %use.i = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 11, i32 2, i32 2
  %13 = ptrtoint ptr %use.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %use.i, align 4
  %epcm6.i = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 11, i32 2, i32 4
  %14 = ptrtoint ptr %epcm6.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i.i, ptr %epcm6.i, align 4
  %call7.i = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i = icmp slt i32 %call7.i, 0
  br i1 %cmp.i, label %if.end.i.snd_ca0106_pcm_open_capture_channel.exit_crit_edge, label %if.end9.i

if.end.i.snd_ca0106_pcm_open_capture_channel.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_ca0106_pcm_open_capture_channel.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call10.i = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %3, i32 noundef 0, i32 noundef 14, i32 noundef 64) #10
  %15 = tail call i32 @llvm.smin.i32(i32 %call10.i, i32 0) #10
  br label %snd_ca0106_pcm_open_capture_channel.exit

snd_ca0106_pcm_open_capture_channel.exit:         ; preds = %if.end9.i, %if.end.i.snd_ca0106_pcm_open_capture_channel.exit_crit_edge, %entry.snd_ca0106_pcm_open_capture_channel.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %entry.snd_ca0106_pcm_open_capture_channel.exit_crit_edge ], [ %call7.i, %if.end.i.snd_ca0106_pcm_open_capture_channel.exit_crit_edge ], [ %15, %if.end9.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_pcm_open_playback_unknown(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @snd_ca0106_pcm_open_playback_channel(ptr noundef %substream, i32 noundef 3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_pcm_open_3_capture(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 16) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.snd_ca0106_pcm_open_capture_channel.exit_crit_edge, label %if.end.i

entry.snd_ca0106_pcm_open_capture_channel.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_ca0106_pcm_open_capture_channel.exit

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 11, i32 3
  %5 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %call7.i.i.i, align 8
  %substream2.i = getelementptr inbounds %struct.snd_ca0106_pcm, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %substream2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %substream, ptr %substream2.i, align 4
  %channel_id3.i = getelementptr inbounds %struct.snd_ca0106_pcm, ptr %call7.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %channel_id3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %channel_id3.i, align 8
  %private_data4.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %8 = ptrtoint ptr %private_data4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i.i, ptr %private_data4.i, align 8
  %private_free.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 45
  %9 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @snd_ca0106_pcm_free_substream, ptr %private_free.i, align 4
  %hw.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %10 = call ptr @memcpy(ptr %hw.i, ptr @snd_ca0106_capture_hw, i32 64)
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %arrayidx.i, align 4
  %number.i = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 11, i32 3, i32 1
  %12 = ptrtoint ptr %number.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %number.i, align 4
  %use.i = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 11, i32 3, i32 2
  %13 = ptrtoint ptr %use.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %use.i, align 4
  %epcm6.i = getelementptr %struct.snd_ca0106, ptr %1, i32 0, i32 11, i32 3, i32 4
  %14 = ptrtoint ptr %epcm6.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i.i, ptr %epcm6.i, align 4
  %call7.i = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i = icmp slt i32 %call7.i, 0
  br i1 %cmp.i, label %if.end.i.snd_ca0106_pcm_open_capture_channel.exit_crit_edge, label %if.end9.i

if.end.i.snd_ca0106_pcm_open_capture_channel.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_ca0106_pcm_open_capture_channel.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call10.i = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %3, i32 noundef 0, i32 noundef 14, i32 noundef 64) #10
  %15 = tail call i32 @llvm.smin.i32(i32 %call10.i, i32 0) #10
  br label %snd_ca0106_pcm_open_capture_channel.exit

snd_ca0106_pcm_open_capture_channel.exit:         ; preds = %if.end9.i, %if.end.i.snd_ca0106_pcm_open_capture_channel.exit_crit_edge, %entry.snd_ca0106_pcm_open_capture_channel.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %entry.snd_ca0106_pcm_open_capture_channel.exit_crit_edge ], [ %call7.i, %if.end.i.snd_ca0106_pcm_open_capture_channel.exit_crit_edge ], [ %15, %if.end9.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ca0106_ac97_write(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg, i16 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %emu_lock = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !223
  tail call void @arm_heavy_mb() #10
  %conv8 = trunc i16 %reg to i8
  %port = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %add = add i32 %3, 30
  %and = and i32 %add, 1048575
  %add9 = or i32 %and, -18874368
  %4 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv8) #10, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !224
  tail call void @arm_heavy_mb() #10
  %5 = tail call i16 @llvm.bswap.i16(i16 %val)
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %add15 = add i32 %7, 28
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %8 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 %5) #10, !srcloc !207
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @snd_ca0106_ac97_read(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %emu_lock = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 7
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !225
  tail call void @arm_heavy_mb() #10
  %conv8 = trunc i16 %reg to i8
  %port = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %add = add i32 %3, 30
  %and = and i32 %add, 1048575
  %add9 = or i32 %and, -18874368
  %4 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv8) #10, !srcloc !205
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port, align 4
  %add12 = add i32 %6, 28
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %7 = inttoptr i32 %add14 to ptr
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %7) #10, !srcloc !226
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !227
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call2) #10
  ret i16 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_bus(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_mixer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ca0106_midi_interrupt_enable(ptr nocapture noundef readonly %midi, i32 noundef %intr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_id = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 3
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %emu_lock.i = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  %port.i = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port.i, align 4
  %add.i = add i32 %3, 12
  %and.i = and i32 %add.i, 1048575
  %add5.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add5.i to ptr
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %4) #10, !srcloc !194
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  %or.i = or i32 %6, %intr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %7 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %8 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port.i, align 4
  %add13.i = add i32 %9, 12
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %10 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 %7) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ca0106_midi_interrupt_disable(ptr nocapture noundef readonly %midi, i32 noundef %intr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_id = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 3
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %emu_lock.i = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  %port.i = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port.i, align 4
  %add.i = add i32 %3, 12
  %and.i = and i32 %add.i, 1048575
  %add5.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add5.i to ptr
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %4) #10, !srcloc !194
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !228
  %neg.i = xor i32 %intr, -1
  %and9.i = and i32 %6, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  tail call void @arm_heavy_mb() #10
  %7 = tail call i32 @llvm.bswap.i32(i32 %and9.i) #10
  %8 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port.i, align 4
  %add14.i = add i32 %9, 12
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %10 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 %7) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ca0106_midi_read(ptr nocapture noundef readonly %midi, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_id = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 3
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %port = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 9
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %add = add i32 %3, %idx
  %emu_lock.i = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %4 = tail call i32 @llvm.bswap.i32(i32 %add)
  %5 = lshr i32 %4, 16
  %port.i = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port.i, align 4
  %and.i = and i32 %7, 1048575
  %add8.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %8, i32 %5) #10, !srcloc !193
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port.i, align 4
  %add11.i = add i32 %10, 4
  %and12.i = and i32 %add11.i, 1048575
  %add13.i = or i32 %and12.i, -18874368
  %11 = inttoptr i32 %add13.i to ptr
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %11) #10, !srcloc !194
  %13 = lshr i32 %12, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #10
  %conv = trunc i32 %13 to i8
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ca0106_midi_write(ptr nocapture noundef readonly %midi, i32 noundef %data, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_id = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 3
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %port = getelementptr inbounds %struct.snd_ca_midi, ptr %midi, i32 0, i32 9
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %add = add i32 %3, %idx
  %emu_lock.i = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %4 = tail call i32 @llvm.bswap.i32(i32 %add)
  %5 = lshr i32 %4, 16
  %port.i = getelementptr inbounds %struct.snd_ca0106, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port.i, align 4
  %and.i = and i32 %7, 1048575
  %add8.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %8, i32 %5) #10, !srcloc !193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %9 = tail call i32 @llvm.bswap.i32(i32 %data) #10
  %10 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port.i, align 4
  %add14.i = add i32 %11, 4
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %12 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %12, i32 %9) #10, !srcloc !193
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ca0106_dev_id_card(ptr nocapture noundef readonly %dev_id) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ca0106_dev_id_port(ptr nocapture noundef readonly %dev_id) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.snd_ca0106, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ca_midi_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
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
  %details = getelementptr inbounds %struct.snd_ca0106, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %details to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %details, align 4
  %ac97 = getelementptr inbounds %struct.snd_ca0106_details, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ac97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ac971 = getelementptr inbounds %struct.snd_ca0106, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %ac971 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ac971, align 4
  tail call void @snd_ac97_suspend(ptr noundef %10) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @snd_ca0106_mixer_suspend(ptr noundef %3) #10
  tail call fastcc void @ca0106_stop_chip(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ca0106_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
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
  tail call fastcc void @ca0106_init_chip(ptr noundef %3, i32 noundef 1)
  %details = getelementptr inbounds %struct.snd_ca0106, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %details to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %details, align 4
  %ac97 = getelementptr inbounds %struct.snd_ca0106_details, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ac97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ac971 = getelementptr inbounds %struct.snd_ca0106, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %ac971 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ac971, align 4
  tail call void @snd_ac97_resume(ptr noundef %9) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @snd_ca0106_mixer_resume(ptr noundef %3) #10
  %10 = ptrtoint ptr %details to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %details, align 4
  %spi_dac = getelementptr inbounds %struct.snd_ca0106_details, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %spi_dac to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %spi_dac, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool3.not = icmp eq i16 %13, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %for.body.preheader

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

for.body.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.snd_ca0106, ptr %3, i32 0, i32 22, i32 0
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %15 to i32
  %call5 = tail call i32 @snd_ca0106_spi_write(ptr noundef %3, i32 noundef %conv)
  %arrayidx.1 = getelementptr %struct.snd_ca0106, ptr %3, i32 0, i32 22, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.1, align 2
  %conv.1 = zext i16 %17 to i32
  %call5.1 = tail call i32 @snd_ca0106_spi_write(ptr noundef %3, i32 noundef %conv.1)
  %arrayidx.2 = getelementptr %struct.snd_ca0106, ptr %3, i32 0, i32 22, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.2, align 2
  %conv.2 = zext i16 %19 to i32
  %call5.2 = tail call i32 @snd_ca0106_spi_write(ptr noundef %3, i32 noundef %conv.2)
  %arrayidx.3 = getelementptr %struct.snd_ca0106, ptr %3, i32 0, i32 22, i32 3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.3, align 2
  %conv.3 = zext i16 %21 to i32
  %call5.3 = tail call i32 @snd_ca0106_spi_write(ptr noundef %3, i32 noundef %conv.3)
  %arrayidx.4 = getelementptr %struct.snd_ca0106, ptr %3, i32 0, i32 22, i32 4
  %22 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.4, align 2
  %conv.4 = zext i16 %23 to i32
  %call5.4 = tail call i32 @snd_ca0106_spi_write(ptr noundef %3, i32 noundef %conv.4)
  %arrayidx.5 = getelementptr %struct.snd_ca0106, ptr %3, i32 0, i32 22, i32 5
  %24 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.5, align 2
  %conv.5 = zext i16 %25 to i32
  %call5.5 = tail call i32 @snd_ca0106_spi_write(ptr noundef %3, i32 noundef %conv.5)
  %arrayidx.6 = getelementptr %struct.snd_ca0106, ptr %3, i32 0, i32 22, i32 6
  %26 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.6, align 2
  %conv.6 = zext i16 %27 to i32
  %call5.6 = tail call i32 @snd_ca0106_spi_write(ptr noundef %3, i32 noundef %conv.6)
  %arrayidx.7 = getelementptr %struct.snd_ca0106, ptr %3, i32 0, i32 22, i32 7
  %28 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.7, align 2
  %conv.7 = zext i16 %29 to i32
  %call5.7 = tail call i32 @snd_ca0106_spi_write(ptr noundef %3, i32 noundef %conv.7)
  %arrayidx.8 = getelementptr %struct.snd_ca0106, ptr %3, i32 0, i32 22, i32 8
  %30 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx.8, align 2
  %conv.8 = zext i16 %31 to i32
  %call5.8 = tail call i32 @snd_ca0106_spi_write(ptr noundef %3, i32 noundef %conv.8)
  %arrayidx.9 = getelementptr %struct.snd_ca0106, ptr %3, i32 0, i32 22, i32 9
  %32 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.9, align 2
  %conv.9 = zext i16 %33 to i32
  %call5.9 = tail call i32 @snd_ca0106_spi_write(ptr noundef %3, i32 noundef %conv.9)
  %arrayidx.10 = getelementptr %struct.snd_ca0106, ptr %3, i32 0, i32 22, i32 10
  %34 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx.10, align 2
  %conv.10 = zext i16 %35 to i32
  %call5.10 = tail call i32 @snd_ca0106_spi_write(ptr noundef %3, i32 noundef %conv.10)
  %arrayidx.11 = getelementptr %struct.snd_ca0106, ptr %3, i32 0, i32 22, i32 11
  %36 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.11, align 2
  %conv.11 = zext i16 %37 to i32
  %call5.11 = tail call i32 @snd_ca0106_spi_write(ptr noundef %3, i32 noundef %conv.11)
  %arrayidx.12 = getelementptr %struct.snd_ca0106, ptr %3, i32 0, i32 22, i32 12
  %38 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx.12, align 2
  %conv.12 = zext i16 %39 to i32
  %call5.12 = tail call i32 @snd_ca0106_spi_write(ptr noundef %3, i32 noundef %conv.12)
  %arrayidx.13 = getelementptr %struct.snd_ca0106, ptr %3, i32 0, i32 22, i32 13
  %40 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.13, align 2
  %conv.13 = zext i16 %41 to i32
  %call5.13 = tail call i32 @snd_ca0106_spi_write(ptr noundef %3, i32 noundef %conv.13)
  %arrayidx.14 = getelementptr %struct.snd_ca0106, ptr %3, i32 0, i32 22, i32 14
  %42 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx.14, align 2
  %conv.14 = zext i16 %43 to i32
  %call5.14 = tail call i32 @snd_ca0106_spi_write(ptr noundef %3, i32 noundef %conv.14)
  %arrayidx.15 = getelementptr %struct.snd_ca0106, ptr %3, i32 0, i32 22, i32 15
  %44 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx.15, align 2
  %conv.15 = zext i16 %45 to i32
  %call5.15 = tail call i32 @snd_ca0106_spi_write(ptr noundef %3, i32 noundef %conv.15)
  br label %if.end6

if.end6:                                          ; preds = %for.body.preheader, %if.end.if.end6_crit_edge
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %46 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ca0106_mixer_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ca0106_mixer_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !61, !63, !65, !67, !68, !69, !71, !72, !74, !75, !76, !77, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !93, !94, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !136, !137, !139, !141, !143, !145, !147, !149, !150, !151, !152, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181}
!llvm.module.flags = !{!183, !184, !185, !186, !187, !188, !189, !190}
!llvm.ident = !{!191}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 137, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 138, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 139, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 147, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype246, !8, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index247, !11, !"__UNIQUE_ID_index247", i1 false, i1 false}
!11 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 148, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 149, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype248, !13, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id249, !16, !"__UNIQUE_ID_id249", i1 false, i1 false}
!16 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 150, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 151, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype250, !18, !"__UNIQUE_ID_enabletype250", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable251, !21, !"__UNIQUE_ID_enable251", i1 false, i1 false}
!21 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 152, i32 1}
!22 = !{ptr @__param_subsystem, !23, !"__param_subsystem", i1 false, i1 false}
!23 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 153, i32 1}
!24 = !{ptr @__UNIQUE_ID_subsystemtype252, !23, !"__UNIQUE_ID_subsystemtype252", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_subsystem253, !26, !"__UNIQUE_ID_subsystem253", i1 false, i1 false}
!26 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 154, i32 1}
!27 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 405, i32 3}
!29 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @snd_ca0106_i2c_write._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @snd_ca0106_i2c_write._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 444, i32 3}
!37 = !{ptr @snd_ca0106_i2c_write._entry.5, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @snd_ca0106_i2c_write._entry_ptr.7, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @__initcall__kmod_snd_ca0106__257_1847_ca0106_driver_init6, !40, !"__initcall__kmod_snd_ca0106__257_1847_ca0106_driver_init6", i1 false, i1 false}
!40 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1847, i32 1}
!41 = !{ptr @__exitcall_ca0106_driver_exit, !40, !"__exitcall_ca0106_driver_exit", i1 false, i1 false}
!42 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!43 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!44 = !{ptr @index, !45, !"index", i1 false, i1 false}
!45 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 142, i32 12}
!46 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!47 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!48 = !{ptr @id, !49, !"id", i1 false, i1 false}
!49 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 143, i32 14}
!50 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!51 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!52 = !{ptr @enable, !53, !"enable", i1 false, i1 false}
!53 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 144, i32 13}
!54 = !{ptr @__param_str_subsystem, !23, !"__param_str_subsystem", i1 false, i1 false}
!55 = !{ptr @__param_arr_subsystem, !23, !"__param_arr_subsystem", i1 false, i1 false}
!56 = !{ptr @subsystem, !57, !"subsystem", i1 false, i1 false}
!57 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 145, i32 13}
!58 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ca0106_driver, !60, !"ca0106_driver", i1 false, i1 false}
!60 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1838, i32 26}
!61 = !{ptr @snd_ca0106_ids, !62, !"snd_ca0106_ids", i1 false, i1 false}
!62 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1831, i32 35}
!63 = !{ptr @snd_ca0106_probe.dev, !64, !"dev", i1 false, i1 false}
!64 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1731, i32 13}
!65 = !{ptr @.str.9, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1770, i32 2}
!67 = !{ptr @.str.10, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @snd_ca0106_probe.__UNIQUE_ID_ddebug255, !66, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!69 = !{ptr @.str.11, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1774, i32 2}
!71 = !{ptr @snd_ca0106_probe.__UNIQUE_ID_ddebug256, !70, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!72 = !{ptr @.str.12, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1586, i32 3}
!74 = !{ptr @.str.13, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @snd_ca0106_create._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @snd_ca0106_create._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @snd_ca0106_create.__key, !78, !"__key", i1 false, i1 false}
!78 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1594, i32 2}
!79 = !{ptr @.str.14, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.16, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1603, i32 3}
!82 = !{ptr @snd_ca0106_create._entry.15, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @snd_ca0106_create._entry_ptr.17, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.19, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1618, i32 2}
!86 = !{ptr @.str.20, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @snd_ca0106_create._entry.18, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @snd_ca0106_create._entry_ptr.21, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.22, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1620, i32 23}
!91 = !{ptr @.str.24, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1632, i32 3}
!93 = !{ptr @snd_ca0106_create._entry.23, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @snd_ca0106_create._entry_ptr.25, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.26, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1637, i32 26}
!97 = !{ptr @.str.27, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 165, i32 15}
!99 = !{ptr @.str.28, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 183, i32 15}
!101 = !{ptr @.str.29, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 189, i32 15}
!103 = !{ptr @.str.30, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 193, i32 15}
!105 = !{ptr @.str.31, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 197, i32 15}
!107 = !{ptr @.str.32, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 202, i32 15}
!109 = !{ptr @.str.33, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 212, i32 15}
!111 = !{ptr @.str.34, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 223, i32 15}
!113 = !{ptr @.str.35, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 232, i32 14}
!115 = !{ptr @.str.36, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 244, i32 15}
!117 = !{ptr @.str.37, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 249, i32 15}
!119 = !{ptr @.str.38, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 258, i32 12}
!121 = !{ptr @.str.39, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 267, i32 15}
!123 = !{ptr @.str.40, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 276, i32 12}
!125 = !{ptr @.str.41, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 280, i32 15}
!127 = !{ptr @ca0106_chip_details, !128, !"ca0106_chip_details", i1 false, i1 false}
!128 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 158, i32 40}
!129 = distinct !{null, !130, !"i2c_adc_init", i1 false, i1 false}
!130 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1365, i32 27}
!131 = distinct !{null, !132, !"spi_dac_init", i1 false, i1 false}
!132 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1347, i32 27}
!133 = !{ptr @.str.42, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 518, i32 3}
!135 = !{ptr @.str.43, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @snd_ca0106_channel_dac.__UNIQUE_ID_ddebug254, !134, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!137 = !{ptr @spi_dacd_reg, !138, !"spi_dacd_reg", i1 false, i1 false}
!138 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 480, i32 18}
!139 = !{ptr @spi_dacd_bit, !140, !"spi_dacd_bit", i1 false, i1 false}
!140 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 487, i32 18}
!141 = !{ptr @.str.44, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1288, i32 31}
!143 = !{ptr @snd_ca0106_playback_front_ops, !144, !"snd_ca0106_playback_front_ops", i1 false, i1 false}
!144 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1072, i32 33}
!145 = !{ptr @snd_ca0106_playback_hw, !146, !"snd_ca0106_playback_hw", i1 false, i1 false}
!146 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 284, i32 38}
!147 = !{ptr @.str.45, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1039, i32 2}
!149 = !{ptr @.str.46, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.47, !148, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @snd_ca0106_pcm_pointer_playback._entry, !148, !"_entry", i1 false, i1 false}
!152 = !{ptr @snd_ca0106_pcm_pointer_playback._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @snd_ca0106_capture_0_ops, !154, !"snd_ca0106_capture_0_ops", i1 false, i1 false}
!154 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1080, i32 33}
!155 = !{ptr @snd_ca0106_capture_hw, !156, !"snd_ca0106_capture_hw", i1 false, i1 false}
!156 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 305, i32 38}
!157 = !{ptr @snd_ca0106_playback_rear_ops, !158, !"snd_ca0106_playback_rear_ops", i1 false, i1 false}
!158 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1128, i32 33}
!159 = !{ptr @snd_ca0106_capture_1_ops, !160, !"snd_ca0106_capture_1_ops", i1 false, i1 false}
!160 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1088, i32 33}
!161 = !{ptr @surround_map, !162, !"surround_map", i1 false, i1 false}
!162 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1263, i32 40}
!163 = !{ptr @snd_ca0106_playback_center_lfe_ops, !164, !"snd_ca0106_playback_center_lfe_ops", i1 false, i1 false}
!164 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1112, i32 33}
!165 = !{ptr @snd_ca0106_capture_2_ops, !166, !"snd_ca0106_capture_2_ops", i1 false, i1 false}
!166 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1096, i32 33}
!167 = !{ptr @clfe_map, !168, !"clfe_map", i1 false, i1 false}
!168 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1269, i32 40}
!169 = !{ptr @snd_ca0106_playback_unknown_ops, !170, !"snd_ca0106_playback_unknown_ops", i1 false, i1 false}
!170 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1120, i32 33}
!171 = !{ptr @snd_ca0106_capture_3_ops, !172, !"snd_ca0106_capture_3_ops", i1 false, i1 false}
!172 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1104, i32 33}
!173 = !{ptr @side_map, !174, !"side_map", i1 false, i1 false}
!174 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1275, i32 40}
!175 = !{ptr @snd_ca0106_ac97.ops, !176, !"ops", i1 false, i1 false}
!176 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1168, i32 39}
!177 = distinct !{null, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1683, i32 10}
!179 = !{ptr @.str.52, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1691, i32 10}
!181 = !{ptr @snd_ca0106_pm, !182, !"snd_ca0106_pm", i1 false, i1 false}
!182 = !{!"../sound/pci/ca0106/ca0106_main.c", i32 1824, i32 8}
!183 = !{i32 1, !"wchar_size", i32 2}
!184 = !{i32 1, !"min_enum_size", i32 4}
!185 = !{i32 8, !"branch-target-enforcement", i32 0}
!186 = !{i32 8, !"sign-return-address", i32 0}
!187 = !{i32 8, !"sign-return-address-all", i32 0}
!188 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!189 = !{i32 7, !"uwtable", i32 1}
!190 = !{i32 7, !"frame-pointer", i32 2}
!191 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!192 = !{i64 2154825557}
!193 = !{i64 4260094}
!194 = !{i64 4260512}
!195 = !{i64 2154826462}
!196 = !{i64 2154827083}
!197 = !{i64 2154827568}
!198 = !{!"auto-init"}
!199 = !{i8 0, i8 2}
!200 = !{i64 2148810985, i64 2148810990, i64 2148811003, i64 2148811047, i64 2148811081, i64 2148811102}
!201 = !{i64 2154849298}
!202 = !{i64 2154849569}
!203 = !{i64 2154850993}
!204 = !{i64 2154851546}
!205 = !{i64 4259897}
!206 = !{i64 2154851934}
!207 = !{i64 4259474}
!208 = !{i64 2154852494}
!209 = !{i64 2154852979}
!210 = !{i64 2154853471}
!211 = !{i64 2154853956}
!212 = !{i64 2154854448}
!213 = !{i64 2154854933}
!214 = !{i64 2154832700}
!215 = !{i64 2154832966}
!216 = !{i64 2154855467}
!217 = !{i64 2154857196}
!218 = !{i64 2154858229}
!219 = !{i64 2154838547}
!220 = !{i64 2154838806}
!221 = !{i64 2154839870}
!222 = !{i64 2154840129}
!223 = !{i64 2154847993}
!224 = !{i64 2154848376}
!225 = !{i64 2154846607}
!226 = !{i64 4259674}
!227 = !{i64 2154847411}
!228 = !{i64 2154834241}
!229 = !{i64 2154834507}
