; ModuleID = '/llk/IR_all_yes/sound/pci/azt3328.c_pt.bc'
source_filename = "../sound/pci/azt3328.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.88 = type { i16 }
%struct.anon.89 = type { i32, i32 }
%struct.snd_timer_hardware = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.snd_timer_id = type { i32, i32, i32, i32, i32 }
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
%struct.snd_azf3328 = type { i32, i32, i32, i32, i32, %struct.spinlock, ptr, [3 x ptr], [3 x %struct.snd_azf3328_codec_data], ptr, ptr, ptr, ptr, [4 x i16], ptr, i32, i16, [28 x i32], [2 x i32], [1 x i32], [2 x i32], [9 x i32] }
%struct.snd_azf3328_codec_data = type { i32, i32, ptr, ptr, i8, i32, ptr }
%struct.snd_timer = type { i32, ptr, ptr, i32, i32, [64 x i8], [80 x i8], i32, i32, i32, ptr, ptr, %struct.snd_timer_hardware, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, i32, i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_opl3 = type { i32, i32, ptr, ptr, i16, ptr, i16, i32, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, %struct.spinlock, ptr, i8, i8, i8, i32, i32, ptr, ptr, ptr, ptr, [32 x ptr], [18 x %struct.snd_opl3_voice], i32, i16, i8, %struct.spinlock, %struct.timer_list, i32, %struct.spinlock }
%struct.snd_opl3_voice = type { i32, i32, i8, i32, i32, i8, ptr }
%struct.gameport = type { ptr, [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, i32, %struct.spinlock, i32, ptr, ptr, ptr, ptr, %struct.mutex, %struct.device, %struct.list_head }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
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

@__UNIQUE_ID_author242 = internal constant [51 x i8] c"snd_azt3328.author=Andreas Mohr <andi AT lisas.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [48 x i8] c"snd_azt3328.description=Aztech AZF3328 (PCI168)\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [39 x i8] c"snd_azt3328.file=sound/pci/snd-azt3328\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [24 x i8] c"snd_azt3328.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [18 x i8] c"snd_azt3328.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [40 x i8] c"snd_azt3328.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [58 x i8] c"snd_azt3328.parm=index:Index value for AZF3328 soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [15 x i8] c"snd_azt3328.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [39 x i8] c"snd_azt3328.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [53 x i8] c"snd_azt3328.parm=id:ID string for AZF3328 soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [19 x i8] c"snd_azt3328.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype250 = internal constant [42 x i8] c"snd_azt3328.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable251 = internal constant [50 x i8] c"snd_azt3328.parm=enable:Enable AZF3328 soundcard.\00", section ".modinfo", align 1
@__param_str_seqtimer_scaling = internal constant [29 x i8] c"snd_azt3328.seqtimer_scaling\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@seqtimer_scaling = internal global { i32, [28 x i8] } { i32 128, [28 x i8] zeroinitializer }, align 32
@__param_seqtimer_scaling = internal constant %struct.kernel_param { ptr @__param_str_seqtimer_scaling, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @seqtimer_scaling } }, section "__param", align 4
@__UNIQUE_ID_seqtimer_scalingtype252 = internal constant [42 x i8] c"snd_azt3328.parmtype=seqtimer_scaling:int\00", section ".modinfo", align 1
@__UNIQUE_ID_seqtimer_scaling253 = internal constant [108 x i8] c"snd_azt3328.parm=seqtimer_scaling:Set 1024000Hz sequencer timer scale factor (lockup danger!). Default 128.\00", section ".modinfo", align 1
@__initcall__kmod_snd_azt3328__287_2654_azf3328_driver_init6 = internal global ptr @azf3328_driver_init, section ".initcall6.init", align 4
@azf3328_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_azf3328_ids, ptr @snd_azf3328_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_azf3328_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_azf3328_driver_exit = internal global ptr @azf3328_driver_exit, section ".exitcall.exit", align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd_azt3328\00", [20 x i8] zeroinitializer }, align 32
@snd_azf3328_ids = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4653, i32 20700, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4653, i32 32986, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_azf3328_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @snd_azf3328_suspend, ptr @snd_azf3328_resume, ptr @snd_azf3328_suspend, ptr @snd_azf3328_resume, ptr @snd_azf3328_suspend, ptr @snd_azf3328_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@snd_azf3328_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AZF3328\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Aztech AZF3328 (PCI168)\00", [40 x i8] zeroinitializer }, align 32
@snd_azf3328_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 2469, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no MPU-401 device at 0x%lx?\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_azf3328_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sound/pci/azt3328.c\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_azf3328_probe._entry_ptr = internal global ptr @snd_azf3328_probe._entry, section ".printk_index", align 4
@snd_azf3328_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 2485, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"no OPL3 device at 0x%lx-0x%lx?\0A\00", [32 x i8] zeroinitializer }, align 32
@snd_azf3328_probe._entry_ptr.10 = internal global ptr @snd_azf3328_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s at 0x%lx, irq %i\00", [44 x i8] zeroinitializer }, align 32
@snd_azf3328_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->reg_lock\00", [16 x i8] zeroinitializer }, align 32
@snd_azf3328_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.5, i32 2357, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"architecture does not support 24bit PCI busmaster DMA\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_azf3328_create\00", [45 x i8] zeroinitializer }, align 32
@snd_azf3328_create._entry_ptr = internal global ptr @snd_azf3328_create._entry, section ".printk_index", align 4
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Aztech AZF3328\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PLAYBACK\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CAPTURE\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"I2S_OUT\00", [24 x i8] zeroinitializer }, align 32
@snd_azf3328_create._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.14, ptr @.str.5, i32 2391, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to grab IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@snd_azf3328_create._entry_ptr.21 = internal global ptr @snd_azf3328_create._entry.19, section ".printk_index", align 4
@snd_azf3328_interrupt.irq_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@snd_azf3328_interrupt.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.5, ptr @.str.23, i8 1, i8 -33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_azf3328_interrupt\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"irq_count %ld! IDX_IO_IRQSTATUS %04x\0A\00", [58 x i8] zeroinitializer }, align 32
@snd_azf3328_interrupt.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.5, ptr @.str.24, i8 1, i8 -30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer IRQ\0A\00", [21 x i8] zeroinitializer }, align 32
@snd_azf3328_interrupt.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.5, ptr @.str.25, i8 1, i8 -26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MPU401 IRQ\0A\00", [20 x i8] zeroinitializer }, align 32
@snd_azf3328_pcm_interrupt.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.5, ptr @.str.27, i8 1, i8 -40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snd_azf3328_pcm_interrupt\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s period done (#%x), @ %x\0A\00", [36 x i8] zeroinitializer }, align 32
@snd_azf3328_pcm_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.5, i32 1891, ptr @.str.29, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"irq handler problem!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@snd_azf3328_pcm_interrupt._entry_ptr = internal global ptr @snd_azf3328_pcm_interrupt._entry, section ".printk_index", align 4
@snd_azf3328_irq_log_unknown_type.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.5, ptr @.str.31, i8 1, i8 -48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"snd_azf3328_irq_log_unknown_type\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"unknown IRQ type (%x) occurred, please report!\0A\00", [48 x i8] zeroinitializer }, align 32
@snd_azf3328_gameport_interrupt.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.5, ptr @.str.33, i8 1, i8 -90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"snd_azf3328_gameport_interrupt\00", [33 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gameport irq\0A\00", [18 x i8] zeroinitializer }, align 32
@snd_azf3328_debug_show_ports.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.5, ptr @.str.35, i8 2, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"snd_azf3328_debug_show_ports\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"ctrl_io 0x%lx, game_io 0x%lx, mpu_io 0x%lx, opl3_io 0x%lx, mixer_io 0x%lx, irq %d\0A\00", [45 x i8] zeroinitializer }, align 32
@snd_azf3328_debug_show_ports.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.5, ptr @.str.36, i8 2, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"game %02x %02x %02x %02x %02x %02x\0A\00", [60 x i8] zeroinitializer }, align 32
@snd_azf3328_debug_show_ports.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.5, ptr @.str.37, i8 2, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mpu_io 0x%04x\0A\00", [17 x i8] zeroinitializer }, align 32
@snd_azf3328_debug_show_ports.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.5, ptr @.str.38, i8 2, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"0x%02x: game200 0x%04x, game208 0x%04x\0A\00", [56 x i8] zeroinitializer }, align 32
@snd_azf3328_debug_show_ports.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.5, ptr @.str.39, i8 2, i8 68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"0x%02x: mpu300 0x%04x, mpu310 0x%04x, mpu320 0x%04x, mpu330 0x%04x opl388 0x%04x opl38c 0x%04x\0A\00", [32 x i8] zeroinitializer }, align 32
@snd_azf3328_debug_show_ports.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.5, ptr @.str.40, i8 2, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ctrl 0x%02x: 0x%04x\0A\00", [43 x i8] zeroinitializer }, align 32
@snd_azf3328_debug_show_ports.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.5, ptr @.str.41, i8 2, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mixer 0x%02x: 0x%04x\0A\00", [42 x i8] zeroinitializer }, align 32
@snd_azf3328_mixer_new.ops = internal constant { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr null, ptr null, ptr @snd_azf3328_mixer_ac97_write, ptr @snd_azf3328_mixer_ac97_read, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snd_azf3328_mixer_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.5, i32 787, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AC97 init failed, err %d!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_azf3328_mixer_new\00", [42 x i8] zeroinitializer }, align 32
@snd_azf3328_mixer_new._entry_ptr = internal global ptr @snd_azf3328_mixer_new._entry, section ".printk_index", align 4
@snd_azf3328_mixer_ac97_write.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.5, ptr @.str.45, i8 0, i8 -77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"snd_azf3328_mixer_ac97_write\00", [35 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"snd_azf3328_mixer_ac97_write reg_ac97 %u val %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@snd_azf3328_mixer_ac97_map_reg_idx.azf_reg_mapper = internal constant { [18 x %struct.anon.88], [60 x i8] } { [18 x %struct.anon.88] [%struct.anon.88 { i16 9216 }, %struct.anon.88 { i16 2 }, %struct.anon.88 { i16 24 }, %struct.anon.88 { i16 4 }, %struct.anon.88 { i16 6 }, %struct.anon.88 { i16 8 }, %struct.anon.88 { i16 10 }, %struct.anon.88 { i16 12 }, %struct.anon.88 { i16 14 }, %struct.anon.88 { i16 16 }, %struct.anon.88 { i16 18 }, %struct.anon.88 { i16 20 }, %struct.anon.88 { i16 22 }, %struct.anon.88 { i16 26 }, %struct.anon.88 { i16 28 }, %struct.anon.88 { i16 1536 }, %struct.anon.88 { i16 32 }, %struct.anon.88 { i16 30 }], [60 x i8] zeroinitializer }, align 32
@snd_azf3328_mixer_ac97_map_unsupported._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.5, i32 523, ptr @.str.29, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"missing %s emulation for AC97 register 0x%02x!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"snd_azf3328_mixer_ac97_map_unsupported\00", [57 x i8] zeroinitializer }, align 32
@snd_azf3328_mixer_ac97_map_unsupported._entry_ptr = internal global ptr @snd_azf3328_mixer_ac97_map_unsupported._entry, section ".printk_index", align 4
@snd_azf3328_mixer_ac97_read.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.5, ptr @.str.50, i8 0, i8 -92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"snd_azf3328_mixer_ac97_read\00", [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"snd_azf3328_mixer_ac97_read reg_ac97 %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@snd_azf3328_ctrl_codec_activity.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.5, ptr @.str.53, i8 1, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"snd_azf3328_ctrl_codec_activity\00", [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"codec_activity: %s codec, enable %d, need_change %d\0A\00", [43 x i8] zeroinitializer }, align 32
@snd_azf3328_ctrl_codec_activity.peer_codecs = internal constant { [3 x %struct.anon.89], [40 x i8] } { [3 x %struct.anon.89] [%struct.anon.89 { i32 1, i32 2 }, %struct.anon.89 { i32 0, i32 2 }, %struct.anon.89 { i32 0, i32 1 }], [40 x i8] zeroinitializer }, align 32
@snd_azf3328_ctrl_enable_codecs.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.5, ptr @.str.55, i8 1, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"snd_azf3328_ctrl_enable_codecs\00", [33 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"codec_enable %d\0A\00", [47 x i8] zeroinitializer }, align 32
@snd_azf3328_ctrl_reg_6AH_update.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.5, ptr @.str.57, i8 1, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"snd_azf3328_ctrl_reg_6AH_update\00", [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"6AH_update mask 0x%04x do_mask %d: val 0x%04x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014unknown bitrate %d, assuming 44.1kHz!\0A\00", [55 x i8] zeroinitializer }, align 32
@snd_azf3328_timer_hw = internal global { %struct.snd_timer_hardware, [48 x i8] } { %struct.snd_timer_hardware { i32 1, i32 977, i32 0, i32 0, i32 1024000, ptr null, ptr null, ptr null, ptr @snd_azf3328_timer_start, ptr @snd_azf3328_timer_stop, ptr null, ptr @snd_azf3328_timer_precise_resolution }, [48 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AZF3328 timer\00", [18 x i8] zeroinitializer }, align 32
@snd_azf3328_timer_start.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.5, ptr @.str.61, i8 2, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snd_azf3328_timer_start\00", [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"delay was too low (%d)!\0A\00", [39 x i8] zeroinitializer }, align 32
@snd_azf3328_timer_start.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.5, ptr @.str.62, i8 2, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"setting timer countdown value %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AZF3328 DSP\00", [20 x i8] zeroinitializer }, align 32
@snd_azf3328_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_azf3328_pcm_playback_open, ptr @snd_azf3328_pcm_close, ptr null, ptr null, ptr null, ptr @snd_azf3328_pcm_prepare, ptr @snd_azf3328_pcm_trigger, ptr null, ptr @snd_azf3328_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_azf3328_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_azf3328_pcm_capture_open, ptr @snd_azf3328_pcm_close, ptr null, ptr null, ptr null, ptr @snd_azf3328_pcm_prepare, ptr @snd_azf3328_pcm_trigger, ptr null, ptr @snd_azf3328_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AZF3328 I2S OUT\00", [16 x i8] zeroinitializer }, align 32
@snd_azf3328_i2s_out_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_azf3328_pcm_i2s_out_open, ptr @snd_azf3328_pcm_close, ptr null, ptr null, ptr null, ptr @snd_azf3328_pcm_prepare, ptr @snd_azf3328_pcm_trigger, ptr null, ptr @snd_azf3328_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_azf3328_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 259, i64 23, i32 -2147483393, i32 4000, i32 66200, i32 1, i32 2, i32 65536, i32 1024, i32 32768, i32 2, i32 2, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_azf3328_hw_constraints_rates = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @snd_azf3328_fixed_rates, i32 14, i32 0 }, [20 x i8] zeroinitializer }, align 32
@snd_azf3328_fixed_rates = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 4000, i32 4800, i32 5512, i32 6620, i32 8000, i32 9600, i32 11025, i32 13240, i32 16000, i32 22050, i32 32000, i32 44100, i32 48000, i32 66200], [40 x i8] zeroinitializer }, align 32
@snd_azf3328_pcm_trigger.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.5, ptr @.str.66, i8 1, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snd_azf3328_pcm_trigger\00", [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"START PCM %s\0A\00", [18 x i8] zeroinitializer }, align 32
@snd_azf3328_pcm_trigger.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.5, ptr @.str.67, i8 1, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PCM STARTED %s\0A\00", [16 x i8] zeroinitializer }, align 32
@snd_azf3328_pcm_trigger.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.5, ptr @.str.68, i8 1, i8 127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PCM RESUME %s\0A\00", [17 x i8] zeroinitializer }, align 32
@snd_azf3328_pcm_trigger.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.5, ptr @.str.69, i8 1, i8 -126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PCM STOP %s\0A\00", [19 x i8] zeroinitializer }, align 32
@snd_azf3328_pcm_trigger.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.5, ptr @.str.70, i8 1, i8 -117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PCM STOPPED %s\0A\00", [16 x i8] zeroinitializer }, align 32
@snd_azf3328_pcm_trigger.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.5, ptr @.str.71, i8 1, i8 -116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PCM SUSPEND %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"FIXME: SNDRV_PCM_TRIGGER_PAUSE_PUSH NIY!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"FIXME: SNDRV_PCM_TRIGGER_PAUSE_RELEASE NIY!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"FIXME: unknown trigger mode!\0A\00", [34 x i8] zeroinitializer }, align 32
@snd_azf3328_codec_setdmaa.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"odd period length!?\0A\00", [43 x i8] zeroinitializer }, align 32
@snd_azf3328_codec_setdmaa.__already_done.76 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.77 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"missed our input expectations! %u vs. %u\0A\00", [54 x i8] zeroinitializer }, align 32
@snd_azf3328_codec_setdmaa.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.5, ptr @.str.79, i8 1, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snd_azf3328_codec_setdmaa\00", [38 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"setdma: buffers %08x[%u] / %08x[%u], %u, %u\0A\00", [51 x i8] zeroinitializer }, align 32
@snd_azf3328_pcm_pointer.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.5, ptr @.str.81, i8 1, i8 -106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snd_azf3328_pcm_pointer\00", [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%08li %s @ 0x%8lx, frames %8ld\0A\00", [32 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@snd_azf3328_gameport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.5, i32 1801, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cannot alloc memory for gameport\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_azf3328_gameport\00", [43 x i8] zeroinitializer }, align 32
@snd_azf3328_gameport._entry_ptr = internal global ptr @snd_azf3328_gameport._entry, section ".printk_index", align 4
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AZF3328 Gameport\00", [47 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pci%s/gameport0\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@snd_azf3328_gameport_open.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.5, ptr @.str.87, i8 1, i8 -87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snd_azf3328_gameport_open\00", [38 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gameport_open, mode %d\0A\00", [40 x i8] zeroinitializer }, align 32
@snd_azf3328_gameport_close.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.5, ptr @.str.89, i8 1, i8 -82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"snd_azf3328_gameport_close\00", [37 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gameport_close\0A\00", [16 x i8] zeroinitializer }, align 32
@snd_azf3328_gameport_cooked_read.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.5, ptr @.str.91, i8 1, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"snd_azf3328_gameport_cooked_read\00", [63 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cooked_read: axes %d %d %d %d buttons %d\0A\00", [54 x i8] zeroinitializer }, align 32
@snd_azf3328_suspend_regs.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.92, ptr @.str.5, ptr @.str.93, i8 2, i8 121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_azf3328_suspend_regs\00", [39 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"suspend: io 0x%04lx: 0x%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@snd_azf3328_resume_regs.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.5, ptr @.str.95, i8 2, i8 126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snd_azf3328_resume_regs\00", [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"resume: io 0x%04lx: 0x%08x --> 0x%08x\0A\00", [57 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 38, i64 40, i64 42, i64 124, i64 126]
@__sancov_gen_cov_switch_values.96 = internal global [5 x i64] [i64 3, i64 16, i64 30, i64 38, i64 42]
@__sancov_gen_cov_switch_values.97 = internal global [7 x i64] [i64 5, i64 16, i64 38, i64 40, i64 42, i64 124, i64 126]
@__sancov_gen_cov_switch_values.98 = internal global [8 x i64] [i64 6, i64 16, i64 0, i64 38, i64 40, i64 42, i64 124, i64 126]
@__sancov_gen_cov_switch_values.99 = internal global [16 x i64] [i64 14, i64 32, i64 4000, i64 4800, i64 5512, i64 6620, i64 8000, i64 9600, i64 11025, i64 13240, i64 16000, i64 22050, i64 32000, i64 44100, i64 48000, i64 66200]
@__sancov_gen_cov_switch_values.100 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"seqtimer_scaling\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 238, i32 12 }
@___asan_gen_.104 = private unnamed_addr constant [15 x i8] c"azf3328_driver\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2645, i32 26 }
@___asan_gen_.107 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 226, i32 12 }
@___asan_gen_.110 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 230, i32 14 }
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 234, i32 13 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2654, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant [16 x i8] c"snd_azf3328_ids\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 309, i32 35 }
@___asan_gen_.122 = private unnamed_addr constant [15 x i8] c"snd_azf3328_pm\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2639, i32 8 }
@___asan_gen_.125 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2432, i32 13 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2451, i32 23 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2452, i32 26 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2467, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2483, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2497, i32 26 }
@___asan_gen_.161 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2348, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2355, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2361, i32 33 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2375, i32 22 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2381, i32 22 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2387, i32 22 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2391, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [10 x i8] c"irq_count\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1902, i32 23 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1913, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1929, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1945, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1885, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1891, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1854, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1688, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2286, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2292, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2302, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2306, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2311, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2323, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2328, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 759, i32 39 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 787, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 716, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 751, i32 58 }
@___asan_gen_.281 = private unnamed_addr constant [15 x i8] c"azf_reg_mapper\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 545, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 521, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 657, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 703, i32 58 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1332, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant [12 x i8] c"peer_codecs\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1340, i32 5 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1315, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1306, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1234, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant [21 x i8] c"snd_azf3328_timer_hw\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2202, i32 34 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2231, i32 22 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2161, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2164, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2098, i32 32 }
@___asan_gen_.344 = private unnamed_addr constant [25 x i8] c"snd_azf3328_playback_ops\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2065, i32 33 }
@___asan_gen_.347 = private unnamed_addr constant [24 x i8] c"snd_azf3328_capture_ops\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2073, i32 33 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2117, i32 32 }
@___asan_gen_.353 = private unnamed_addr constant [24 x i8] c"snd_azf3328_i2s_out_ops\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2081, i32 33 }
@___asan_gen_.356 = private unnamed_addr constant [21 x i8] c"snd_azf3328_hardware\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1956, i32 38 }
@___asan_gen_.359 = private unnamed_addr constant [33 x i8] c"snd_azf3328_hw_constraints_rates\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2006, i32 48 }
@___asan_gen_.362 = private unnamed_addr constant [24 x i8] c"snd_azf3328_fixed_rates\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1989, i32 27 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1463, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1530, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1533, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1545, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1581, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1584, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1593, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1596, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1599, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1380, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1381, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1402, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1624, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1801, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1805, i32 24 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1806, i32 24 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1700, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1723, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 1788, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2532, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.456 = private constant [23 x i8] c"../sound/pci/azt3328.c\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 2550, i32 3 }
@llvm.compiler.used = appending global [146 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_enable251, ptr @__UNIQUE_ID_enabletype250, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_license245, ptr @__UNIQUE_ID_seqtimer_scaling253, ptr @__UNIQUE_ID_seqtimer_scalingtype252, ptr @__exitcall_azf3328_driver_exit, ptr @__initcall__kmod_snd_azt3328__287_2654_azf3328_driver_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @__param_seqtimer_scaling, ptr @azf3328_driver_exit, ptr @snd_azf3328_create._entry, ptr @snd_azf3328_create._entry.19, ptr @snd_azf3328_create._entry_ptr, ptr @snd_azf3328_create._entry_ptr.21, ptr @snd_azf3328_gameport._entry, ptr @snd_azf3328_gameport._entry_ptr, ptr @snd_azf3328_mixer_ac97_map_unsupported._entry, ptr @snd_azf3328_mixer_ac97_map_unsupported._entry_ptr, ptr @snd_azf3328_mixer_new._entry, ptr @snd_azf3328_mixer_new._entry_ptr, ptr @snd_azf3328_pcm_interrupt._entry, ptr @snd_azf3328_pcm_interrupt._entry_ptr, ptr @snd_azf3328_probe._entry, ptr @snd_azf3328_probe._entry.8, ptr @snd_azf3328_probe._entry_ptr, ptr @snd_azf3328_probe._entry_ptr.10, ptr @seqtimer_scaling, ptr @azf3328_driver, ptr @index, ptr @id, ptr @enable, ptr @.str, ptr @snd_azf3328_ids, ptr @snd_azf3328_pm, ptr @snd_azf3328_probe.dev, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @snd_azf3328_create.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @snd_azf3328_interrupt.irq_count, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @snd_azf3328_mixer_new.ops, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @snd_azf3328_mixer_ac97_map_reg_idx.azf_reg_mapper, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @snd_azf3328_ctrl_codec_activity.peer_codecs, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @snd_azf3328_timer_hw, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @snd_azf3328_playback_ops, ptr @snd_azf3328_capture_ops, ptr @.str.64, ptr @snd_azf3328_i2s_out_ops, ptr @snd_azf3328_hardware, ptr @snd_azf3328_hw_constraints_rates, ptr @snd_azf3328_fixed_rates, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95], section "llvm.metadata"
@0 = internal global [119 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seqtimer_scaling to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @azf3328_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_azf3328_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_azf3328_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_azf3328_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_azf3328_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_azf3328_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_azf3328_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_azf3328_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_azf3328_create._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_azf3328_interrupt.irq_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_azf3328_pcm_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_azf3328_mixer_new.ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_azf3328_mixer_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_azf3328_mixer_ac97_map_reg_idx.azf_reg_mapper to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_azf3328_mixer_ac97_map_unsupported._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_azf3328_ctrl_codec_activity.peer_codecs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_azf3328_timer_hw to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_azf3328_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_azf3328_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_azf3328_i2s_out_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_azf3328_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_azf3328_hw_constraints_rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_azf3328_fixed_rates to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_azf3328_gameport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @azf3328_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @azf3328_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @azf3328_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @azf3328_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_azf3328_probe(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #2 align 64 {
entry:
  %pcm.i = alloca ptr, align 4
  %timer.i = alloca ptr, align 4
  %tid.i = alloca %struct.snd_timer_id, align 4
  %bus.i.i = alloca ptr, align 4
  %ac97.i.i = alloca %struct.snd_ac97_template, align 4
  %card = alloca ptr, align 4
  %opl3 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #12
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !289
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opl3) #12
  %1 = ptrtoint ptr %opl3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %opl3, align 4, !annotation !289
  %2 = load i32, ptr @snd_azf3328_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %2)
  %cmp = icmp sgt i32 %2, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1, !range !290
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr @snd_azf3328_probe.dev, align 4
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
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %6, ptr noundef %8, ptr noundef null, i32 noundef 368, ptr noundef nonnull %card) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_data, align 8
  %driver = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %driver to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 4709153546085480448, ptr %driver, align 1
  %shortname = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 3
  %14 = call ptr @memcpy(ptr %shortname, ptr @.str.2, i32 24)
  %call.i = call i32 @pcim_enable_device(ptr noundef %pci) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end7.cleanup_crit_edge, label %do.body.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body.i:                                        ; preds = %if.end7
  %reg_lock.i = getelementptr inbounds %struct.snd_azf3328, ptr %12, i32 0, i32 5
  call void @__raw_spin_lock_init(ptr noundef %reg_lock.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @snd_azf3328_create.__key, i16 noundef signext 3) #12
  %card2.i = getelementptr inbounds %struct.snd_azf3328, ptr %12, i32 0, i32 10
  %15 = ptrtoint ptr %card2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %10, ptr %card2.i, align 4
  %pci3.i = getelementptr inbounds %struct.snd_azf3328, ptr %12, i32 0, i32 14
  %16 = ptrtoint ptr %pci3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pci, ptr %pci3.i, align 4
  %irq.i = getelementptr inbounds %struct.snd_azf3328, ptr %12, i32 0, i32 15
  %17 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %irq.i, align 4
  %call.i.i = call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 16777215) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end10.i, label %do.end8.i

do.end8.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev9.i = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 27
  %18 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev9.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.13) #15
  br label %cleanup

if.end10.i:                                       ; preds = %do.body.i
  %call1.i.i = call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 16777215) #12
  %call11.i = call i32 @pci_request_regions(ptr noundef %pci, ptr noundef nonnull @.str.15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.end10.i.cleanup_crit_edge, label %if.end14.i

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14.i:                                       ; preds = %if.end10.i
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %20 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %resource.i, align 8
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %12, align 4
  %arrayidx16.i = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 1
  %23 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx16.i, align 8
  %game_io.i = getelementptr inbounds %struct.snd_azf3328, ptr %12, i32 0, i32 1
  %25 = ptrtoint ptr %game_io.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %game_io.i, align 4
  %arrayidx19.i = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 2
  %26 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx19.i, align 8
  %mpu_io.i = getelementptr inbounds %struct.snd_azf3328, ptr %12, i32 0, i32 2
  %28 = ptrtoint ptr %mpu_io.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %mpu_io.i, align 4
  %arrayidx22.i = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 3
  %29 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx22.i, align 8
  %opl3_io.i = getelementptr inbounds %struct.snd_azf3328, ptr %12, i32 0, i32 3
  %31 = ptrtoint ptr %opl3_io.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %opl3_io.i, align 4
  %arrayidx25.i = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 4
  %32 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx25.i, align 8
  %mixer_io.i = getelementptr inbounds %struct.snd_azf3328, ptr %12, i32 0, i32 4
  %34 = ptrtoint ptr %mixer_io.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %mixer_io.i, align 4
  %codecs.i = getelementptr %struct.snd_azf3328, ptr %12, i32 0, i32 8
  %35 = ptrtoint ptr %codecs.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %21, ptr %codecs.i, align 4
  %lock.i = getelementptr %struct.snd_azf3328, ptr %12, i32 0, i32 8, i32 0, i32 2
  %36 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %reg_lock.i, ptr %lock.i, align 4
  %type.i = getelementptr inbounds %struct.snd_azf3328, ptr %12, i32 0, i32 8, i32 0, i32 5
  %37 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %type.i, align 4
  %name.i = getelementptr inbounds %struct.snd_azf3328, ptr %12, i32 0, i32 8, i32 0, i32 6
  %38 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.16, ptr %name.i, align 4
  %arrayidx31.i = getelementptr %struct.snd_azf3328, ptr %12, i32 0, i32 8, i32 1
  %add33.i = add i32 %21, 32
  %39 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add33.i, ptr %arrayidx31.i, align 4
  %lock36.i = getelementptr %struct.snd_azf3328, ptr %12, i32 0, i32 8, i32 1, i32 2
  %40 = ptrtoint ptr %lock36.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %reg_lock.i, ptr %lock36.i, align 4
  %type37.i = getelementptr %struct.snd_azf3328, ptr %12, i32 0, i32 8, i32 1, i32 5
  %41 = ptrtoint ptr %type37.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %type37.i, align 4
  %name38.i = getelementptr %struct.snd_azf3328, ptr %12, i32 0, i32 8, i32 1, i32 6
  %42 = ptrtoint ptr %name38.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.17, ptr %name38.i, align 4
  %arrayidx40.i = getelementptr %struct.snd_azf3328, ptr %12, i32 0, i32 8, i32 2
  %add42.i = add i32 %21, 64
  %43 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add42.i, ptr %arrayidx40.i, align 4
  %lock45.i = getelementptr %struct.snd_azf3328, ptr %12, i32 0, i32 8, i32 2, i32 2
  %44 = ptrtoint ptr %lock45.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %reg_lock.i, ptr %lock45.i, align 4
  %type46.i = getelementptr %struct.snd_azf3328, ptr %12, i32 0, i32 8, i32 2, i32 5
  %45 = ptrtoint ptr %type46.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %type46.i, align 4
  %name47.i = getelementptr %struct.snd_azf3328, ptr %12, i32 0, i32 8, i32 2, i32 6
  %46 = ptrtoint ptr %name47.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.18, ptr %name47.i, align 4
  %irq49.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %47 = ptrtoint ptr %irq49.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq49.i, align 4
  %call.i1.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %48, ptr noundef nonnull @snd_azf3328_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool51.not.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool51.not.i, label %if.end58.i, label %do.end55.i

do.end55.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev56.i = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 27
  %49 = ptrtoint ptr %dev56.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev56.i, align 8
  %51 = ptrtoint ptr %irq49.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %irq49.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.20, i32 noundef %52) #15
  br label %cleanup

if.end58.i:                                       ; preds = %if.end14.i
  %53 = ptrtoint ptr %irq49.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %irq49.i, align 4
  %55 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %irq.i, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 33
  %56 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %54, ptr %sync_irq.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 10
  %57 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @snd_azf3328_free, ptr %private_free.i, align 4
  call void @pci_set_master(ptr noundef %pci) #12
  call fastcc void @snd_azf3328_debug_show_ports(ptr noundef %12) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus.i.i) #12
  %58 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 -1 to ptr), ptr %bus.i.i, align 4, !annotation !289
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ac97.i.i) #12
  %59 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i.i, i32 0, i32 2
  %60 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i.i, i32 0, i32 5
  %61 = getelementptr inbounds i8, ptr %ac97.i.i, i32 4
  %62 = call ptr @memset(ptr %61, i32 0, i32 20)
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 545, ptr %60, align 4
  %64 = ptrtoint ptr %ac97.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %12, ptr %ac97.i.i, align 4
  %65 = ptrtoint ptr %pci3.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pci3.i, align 4
  %67 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %59, align 4
  %68 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %card2.i, align 4
  %call.i2.i = call i32 @snd_ac97_bus(ptr noundef %69, i32 noundef 0, ptr noundef nonnull @snd_azf3328_mixer_new.ops, ptr noundef null, ptr noundef nonnull %bus.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool.not.i.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end58.i.snd_azf3328_mixer_new.exit.i_crit_edge

if.end58.i.snd_azf3328_mixer_new.exit.i_crit_edge: ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_azf3328_mixer_new.exit.i

if.end.i.i:                                       ; preds = %if.end58.i
  %70 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bus.i.i, align 4
  %ac972.i.i = getelementptr inbounds %struct.snd_azf3328, ptr %12, i32 0, i32 9
  %call3.i.i = call i32 @snd_ac97_mixer(ptr noundef %71, ptr noundef nonnull %ac97.i.i, ptr noundef %ac972.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %snd_azf3328_mixer_new.exit.thread.i, label %if.end.i.i.snd_azf3328_mixer_new.exit.i_crit_edge

if.end.i.i.snd_azf3328_mixer_new.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_azf3328_mixer_new.exit.i

snd_azf3328_mixer_new.exit.thread.i:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus.i.i) #12
  br label %if.end14

snd_azf3328_mixer_new.exit.i:                     ; preds = %if.end.i.i.snd_azf3328_mixer_new.exit.i_crit_edge, %if.end58.i.snd_azf3328_mixer_new.exit.i_crit_edge
  %rc.017.i.i = phi i32 [ %call3.i.i, %if.end.i.i.snd_azf3328_mixer_new.exit.i_crit_edge ], [ %call.i2.i, %if.end58.i.snd_azf3328_mixer_new.exit.i_crit_edge ]
  %72 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %card2.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %73, i32 0, i32 27
  %74 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.42, i32 noundef %rc.017.i.i) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.017.i.i)
  %cmp63.i = icmp slt i32 %rc.017.i.i, 0
  br i1 %cmp63.i, label %snd_azf3328_mixer_new.exit.i.cleanup_crit_edge, label %snd_azf3328_mixer_new.exit.i.if.end14_crit_edge

snd_azf3328_mixer_new.exit.i.if.end14_crit_edge:  ; preds = %snd_azf3328_mixer_new.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

snd_azf3328_mixer_new.exit.i.cleanup_crit_edge:   ; preds = %snd_azf3328_mixer_new.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %snd_azf3328_mixer_new.exit.i.if.end14_crit_edge, %snd_azf3328_mixer_new.exit.thread.i
  %running.i = getelementptr %struct.snd_azf3328, ptr %12, i32 0, i32 8, i32 0, i32 4
  %76 = ptrtoint ptr %running.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %running.i, align 4
  call fastcc void @snd_azf3328_ctrl_codec_activity(ptr noundef %12, i32 noundef 0, i1 noundef zeroext false) #12
  %77 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %lock.i, align 4
  call void @_raw_spin_lock_irq(ptr noundef %78) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !291
  call void @arm_heavy_mb() #12
  %79 = ptrtoint ptr %codecs.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %codecs.i, align 4
  %and.i.i = and i32 %80, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %81 = inttoptr i32 %add1.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %81, i8 52) #12, !srcloc !292
  %82 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %lock.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %83) #12
  %running.1.i = getelementptr %struct.snd_azf3328, ptr %12, i32 0, i32 8, i32 1, i32 4
  %84 = ptrtoint ptr %running.1.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %running.1.i, align 4
  call fastcc void @snd_azf3328_ctrl_codec_activity(ptr noundef %12, i32 noundef 1, i1 noundef zeroext false) #12
  %85 = ptrtoint ptr %lock36.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %lock36.i, align 4
  call void @_raw_spin_lock_irq(ptr noundef %86) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !291
  call void @arm_heavy_mb() #12
  %87 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx31.i, align 4
  %and.i.1.i = and i32 %88, 1048575
  %add1.i.1.i = or i32 %and.i.1.i, -18874368
  %89 = inttoptr i32 %add1.i.1.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %89, i8 52) #12, !srcloc !292
  %90 = ptrtoint ptr %lock36.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %lock36.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %91) #12
  %running.2.i = getelementptr %struct.snd_azf3328, ptr %12, i32 0, i32 8, i32 2, i32 4
  %92 = ptrtoint ptr %running.2.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %running.2.i, align 4
  call fastcc void @snd_azf3328_ctrl_codec_activity(ptr noundef %12, i32 noundef 2, i1 noundef zeroext false) #12
  %93 = ptrtoint ptr %lock45.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %lock45.i, align 4
  call void @_raw_spin_lock_irq(ptr noundef %94) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !291
  call void @arm_heavy_mb() #12
  %95 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx40.i, align 4
  %and.i.2.i = and i32 %96, 1048575
  %add1.i.2.i = or i32 %and.i.2.i, -18874368
  %97 = inttoptr i32 %add1.i.2.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %97, i8 52) #12, !srcloc !292
  %98 = ptrtoint ptr %lock45.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %lock45.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %99) #12
  %100 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %card, align 4
  %102 = ptrtoint ptr %mpu_io.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %mpu_io.i, align 4
  %rmidi = getelementptr inbounds %struct.snd_azf3328, ptr %12, i32 0, i32 11
  %call15 = call i32 @snd_mpu401_uart_new(ptr noundef %101, i32 noundef 0, i16 noundef zeroext 10, i32 noundef %103, i32 noundef 36, i32 noundef -1, ptr noundef %rmidi) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %do.end, label %if.end20

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %104 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %card, align 4
  %dev18 = getelementptr inbounds %struct.snd_card, ptr %105, i32 0, i32 27
  %106 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev18, align 8
  %108 = ptrtoint ptr %mpu_io.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %mpu_io.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.3, i32 noundef %109) #15
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timer.i) #12
  %110 = ptrtoint ptr %timer.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %timer.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tid.i) #12
  %111 = getelementptr inbounds %struct.snd_timer_id, ptr %tid.i, i32 0, i32 1
  %112 = getelementptr inbounds %struct.snd_timer_id, ptr %tid.i, i32 0, i32 2
  %113 = getelementptr inbounds %struct.snd_timer_id, ptr %tid.i, i32 0, i32 3
  %114 = getelementptr inbounds %struct.snd_timer_id, ptr %tid.i, i32 0, i32 4
  %115 = ptrtoint ptr %tid.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 2, ptr %tid.i, align 4
  %116 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %111, align 4
  %117 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %card2.i, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %118, align 8
  %121 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %112, align 4
  %122 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %113, align 4
  %123 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %114, align 4
  %124 = load i32, ptr @seqtimer_scaling, align 4
  %125 = load i32, ptr getelementptr inbounds (%struct.snd_timer_hardware, ptr @snd_azf3328_timer_hw, i32 0, i32 1), align 4
  %mul.i = mul i32 %125, %124
  store i32 %mul.i, ptr getelementptr inbounds (%struct.snd_timer_hardware, ptr @snd_azf3328_timer_hw, i32 0, i32 1), align 4
  %126 = load i32, ptr getelementptr inbounds (%struct.snd_timer_hardware, ptr @snd_azf3328_timer_hw, i32 0, i32 4), align 4
  %div.i = udiv i32 %126, %124
  store i32 %div.i, ptr getelementptr inbounds (%struct.snd_timer_hardware, ptr @snd_azf3328_timer_hw, i32 0, i32 4), align 4
  %call.i92 = call i32 @snd_timer_new(ptr noundef %118, ptr noundef nonnull @.str.1, ptr noundef nonnull %tid.i, ptr noundef nonnull %timer.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %cmp.i93 = icmp slt i32 %call.i92, 0
  br i1 %cmp.i93, label %snd_azf3328_timer.exit.thread, label %if.end24

snd_azf3328_timer.exit.thread:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tid.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timer.i) #12
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %127 = ptrtoint ptr %timer.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %timer.i, align 4
  %name.i94 = getelementptr inbounds %struct.snd_timer, ptr %128, i32 0, i32 6
  %129 = call ptr @memcpy(ptr %name.i94, ptr @.str.59, i32 14)
  %private_data.i95 = getelementptr inbounds %struct.snd_timer, ptr %128, i32 0, i32 10
  %130 = ptrtoint ptr %private_data.i95 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %12, ptr %private_data.i95, align 4
  %hw.i = getelementptr inbounds %struct.snd_timer, ptr %128, i32 0, i32 12
  %131 = call ptr @memcpy(ptr %hw.i, ptr @snd_azf3328_timer_hw, i32 48)
  %timer5.i = getelementptr inbounds %struct.snd_azf3328, ptr %12, i32 0, i32 6
  %132 = ptrtoint ptr %timer5.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %128, ptr %timer5.i, align 4
  %133 = load ptr, ptr %private_data.i95, align 4
  %reg_lock.i.i = getelementptr inbounds %struct.snd_azf3328, ptr %133, i32 0, i32 5
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !293
  call void @arm_heavy_mb() #12
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %133, align 4
  %add.i.i.i = add i32 %135, 99
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %136 = inttoptr i32 %add1.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %136, i8 4) #12, !srcloc !292
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i.i, i32 noundef %call2.i.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tid.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timer.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i) #12
  %137 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i, align 4, !annotation !289
  %138 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %card2.i, align 4
  %call.i97 = call i32 @snd_pcm_new(ptr noundef %139, ptr noundef nonnull @.str.63, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %pcm.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %cmp.i98 = icmp slt i32 %call.i97, 0
  br i1 %cmp.i98, label %if.end24.snd_azf3328_pcm.exit.thread_crit_edge, label %if.end.i102

if.end24.snd_azf3328_pcm.exit.thread_crit_edge:   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_azf3328_pcm.exit.thread

if.end.i102:                                      ; preds = %if.end24
  %140 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %141, i32 noundef 0, ptr noundef nonnull @snd_azf3328_playback_ops) #12
  %142 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %143, i32 noundef 1, ptr noundef nonnull @snd_azf3328_capture_ops) #12
  %144 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pcm.i, align 4
  %private_data.i99 = getelementptr inbounds %struct.snd_pcm, ptr %145, i32 0, i32 11
  %146 = ptrtoint ptr %private_data.i99 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %12, ptr %private_data.i99, align 8
  %info_flags.i = getelementptr inbounds %struct.snd_pcm, ptr %145, i32 0, i32 3
  %147 = ptrtoint ptr %info_flags.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %info_flags.i, align 8
  %name.i100 = getelementptr inbounds %struct.snd_pcm, ptr %145, i32 0, i32 7
  %148 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %card2.i, align 4
  %shortname.i = getelementptr inbounds %struct.snd_card, ptr %149, i32 0, i32 3
  %call3.i = call ptr @strcpy(ptr noundef %name.i100, ptr noundef %shortname.i) #16
  %pcm4.i = getelementptr inbounds %struct.snd_azf3328, ptr %12, i32 0, i32 7
  %150 = ptrtoint ptr %pcm4.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %145, ptr %pcm4.i, align 4
  %arrayidx6.i = getelementptr %struct.snd_azf3328, ptr %12, i32 0, i32 7, i32 1
  %151 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %145, ptr %arrayidx6.i, align 4
  %152 = ptrtoint ptr %pci3.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pci3.i, align 4
  %dev.i101 = getelementptr inbounds %struct.pci_dev, ptr %153, i32 0, i32 44
  %call7.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %145, i32 noundef 2, ptr noundef %dev.i101, i32 noundef 65536, i32 noundef 65536) #12
  %154 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %card2.i, align 4
  %call9.i = call i32 @snd_pcm_new(ptr noundef %155, ptr noundef nonnull @.str.64, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %pcm.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end.i102.snd_azf3328_pcm.exit.thread_crit_edge, label %if.end28

if.end.i102.snd_azf3328_pcm.exit.thread_crit_edge: ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_azf3328_pcm.exit.thread

snd_azf3328_pcm.exit.thread:                      ; preds = %if.end.i102.snd_azf3328_pcm.exit.thread_crit_edge, %if.end24.snd_azf3328_pcm.exit.thread_crit_edge
  %retval.0.i104.ph = phi i32 [ %call9.i, %if.end.i102.snd_azf3328_pcm.exit.thread_crit_edge ], [ %call.i97, %if.end24.snd_azf3328_pcm.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #12
  br label %cleanup

if.end28:                                         ; preds = %if.end.i102
  %156 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %157, i32 noundef 0, ptr noundef nonnull @snd_azf3328_i2s_out_ops) #12
  %158 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pcm.i, align 4
  %private_data13.i = getelementptr inbounds %struct.snd_pcm, ptr %159, i32 0, i32 11
  %160 = ptrtoint ptr %private_data13.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %12, ptr %private_data13.i, align 8
  %info_flags14.i = getelementptr inbounds %struct.snd_pcm, ptr %159, i32 0, i32 3
  %161 = ptrtoint ptr %info_flags14.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %info_flags14.i, align 8
  %name15.i = getelementptr inbounds %struct.snd_pcm, ptr %159, i32 0, i32 7
  %162 = ptrtoint ptr %card2.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %card2.i, align 4
  %shortname18.i = getelementptr inbounds %struct.snd_card, ptr %163, i32 0, i32 3
  %call20.i = call ptr @strcpy(ptr noundef %name15.i, ptr noundef %shortname18.i) #16
  %arrayidx22.i103 = getelementptr %struct.snd_azf3328, ptr %12, i32 0, i32 7, i32 2
  %164 = ptrtoint ptr %arrayidx22.i103 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %159, ptr %arrayidx22.i103, align 4
  %165 = ptrtoint ptr %pci3.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %pci3.i, align 4
  %dev24.i = getelementptr inbounds %struct.pci_dev, ptr %166, i32 0, i32 44
  %call25.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %159, i32 noundef 2, ptr noundef %dev24.i, i32 noundef 65536, i32 noundef 65536) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #12
  %167 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %card, align 4
  %169 = ptrtoint ptr %opl3_io.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %opl3_io.i, align 4
  %add = add i32 %170, 2
  %call30 = call i32 @snd_opl3_create(ptr noundef %168, i32 noundef %170, i32 noundef %add, i16 noundef zeroext 0, i32 noundef 1, ptr noundef nonnull %opl3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %do.end35, label %if.else

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %171 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %card, align 4
  %dev36 = getelementptr inbounds %struct.snd_card, ptr %172, i32 0, i32 27
  %173 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev36, align 8
  %175 = ptrtoint ptr %opl3_io.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %opl3_io.i, align 4
  %add39 = add i32 %176, 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %174, ptr noundef nonnull @.str.9, i32 noundef %176, i32 noundef %add39) #15
  br label %if.end49

if.else:                                          ; preds = %if.end28
  %177 = ptrtoint ptr %opl3 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %opl3, align 4
  %call40 = call i32 @snd_opl3_timer_new(ptr noundef %178, i32 noundef 1, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.else.cleanup_crit_edge, label %if.end43

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end43:                                         ; preds = %if.else
  %179 = ptrtoint ptr %opl3 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %opl3, align 4
  %call44 = call i32 @snd_opl3_hwdep_new(ptr noundef %180, i32 noundef 0, i32 noundef 1, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.end43.cleanup_crit_edge, label %if.end47

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %181 = ptrtoint ptr %opl3 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %opl3, align 4
  %private_data48 = getelementptr inbounds %struct.snd_opl3, ptr %182, i32 0, i32 11
  %183 = ptrtoint ptr %private_data48 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %12, ptr %private_data48, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end47, %do.end35
  %184 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %185, i32 0, i32 4
  %shortname51 = getelementptr inbounds %struct.snd_card, ptr %185, i32 0, i32 3
  %186 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %12, align 4
  %188 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %irq.i, align 4
  %call53 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.11, ptr noundef %shortname51, i32 noundef %187, i32 noundef %189)
  %190 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %card, align 4
  %call54 = call i32 @snd_card_register(ptr noundef %191) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end49.cleanup_crit_edge, label %if.end57

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end57:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @snd_azf3328_gameport(ptr noundef %12)
  %192 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %194 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %193, ptr %driver_data.i.i, align 4
  %195 = load i32, ptr @snd_azf3328_probe.dev, align 4
  %inc59 = add i32 %195, 1
  store i32 %inc59, ptr @snd_azf3328_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.end49.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.else.cleanup_crit_edge, %snd_azf3328_pcm.exit.thread, %snd_azf3328_timer.exit.thread, %do.end, %snd_azf3328_mixer_new.exit.i.cleanup_crit_edge, %do.end55.i, %if.end10.i.cleanup_crit_edge, %do.end8.i, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %do.end ], [ 0, %if.end57 ], [ -2, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ %call40, %if.else.cleanup_crit_edge ], [ %call44, %if.end43.cleanup_crit_edge ], [ %call54, %if.end49.cleanup_crit_edge ], [ %call.i92, %snd_azf3328_timer.exit.thread ], [ %retval.0.i104.ph, %snd_azf3328_pcm.exit.thread ], [ %rc.017.i.i, %snd_azf3328_mixer_new.exit.i.cleanup_crit_edge ], [ %call11.i, %if.end10.i.cleanup_crit_edge ], [ %call.i, %if.end7.cleanup_crit_edge ], [ -16, %do.end55.i ], [ -6, %do.end8.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opl3) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mpu401_uart_new(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_opl3_create(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_opl3_timer_new(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_opl3_hwdep_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_azf3328_gameport(ptr noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1248) #17
  %gameport = getelementptr inbounds %struct.snd_azf3328, ptr %chip, i32 0, i32 12
  %1 = ptrtoint ptr %gameport to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %gameport, align 4
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %card = getelementptr inbounds %struct.snd_azf3328, ptr %chip, i32 0, i32 10
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %dev1 = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.82) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %name1.i = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 1
  %call.i = tail call i32 @strlcpy(ptr noundef %name1.i, ptr noundef nonnull @.str.84, i32 noundef 32) #12
  %pci = getelementptr inbounds %struct.snd_azf3328, ptr %chip, i32 0, i32 14
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.pci_name.exit_crit_edge

if.end.pci_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %if.end.pci_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @gameport_set_phys(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.85, ptr noundef %retval.0.i.i) #12
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci, align 4
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %parent = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 21, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev4, ptr %parent, align 8
  %game_io = getelementptr inbounds %struct.snd_azf3328, ptr %chip, i32 0, i32 1
  %15 = ptrtoint ptr %game_io to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %game_io, align 4
  %io = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %io to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %io, align 4
  %18 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %chip, ptr %call7.i.i.i, align 8
  %open = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 10
  %19 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @snd_azf3328_gameport_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 11
  %20 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @snd_azf3328_gameport_close, ptr %close, align 4
  %fuzz = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %fuzz to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16, ptr %fuzz, align 4
  %cooked_read = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 8
  %22 = ptrtoint ptr %cooked_read to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @snd_azf3328_gameport_cooked_read, ptr %cooked_read, align 8
  %add.i = add i32 %16, 4
  %and.i.i = and i32 %add.i, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %23 = inttoptr i32 %add.i.i to ptr
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %23) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !295
  %and5.i.i = and i8 %24, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !296
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %and5.i.i) #12, !srcloc !292
  %25 = ptrtoint ptr %game_io to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %game_io, align 4
  %add.i2 = add i32 %26, 4
  %and.i.i3 = and i32 %add.i2, 1048575
  %add.i.i4 = or i32 %and.i.i3, -18874368
  %27 = inttoptr i32 %add.i.i4 to ptr
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !295
  %cond.i.i = or i8 %28, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !296
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %cond.i.i) #12, !srcloc !292
  %29 = ptrtoint ptr %game_io to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %game_io, align 4
  %add2.i = add i32 %30, 4
  %and.i8.i = and i32 %add2.i, 1048575
  %add.i9.i = or i32 %and.i8.i, -18874368
  %31 = inttoptr i32 %add.i9.i to ptr
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %31) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !295
  %cond.i12.i = or i8 %32, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !296
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %cond.i12.i) #12, !srcloc !292
  %shadow_reg_ctrl_6AH4.i.i = getelementptr inbounds %struct.snd_azf3328, ptr %chip, i32 0, i32 16
  %33 = ptrtoint ptr %shadow_reg_ctrl_6AH4.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %shadow_reg_ctrl_6AH4.i.i, align 4
  %conv3.sink.i.i = or i16 %34, 1024
  store i16 %conv3.sink.i.i, ptr %shadow_reg_ctrl_6AH4.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_ctrl_reg_6AH_update.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_gameport, %if.then12.i.i)) #12
          to label %snd_azf3328_gameport_axis_circuit_enable.exit [label %if.then12.i.i], !srcloc !297

if.then12.i.i:                                    ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  %card.i.i = getelementptr inbounds %struct.snd_azf3328, ptr %chip, i32 0, i32 10
  %35 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %card.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %36, i32 0, i32 27
  %37 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i.i, align 8
  %39 = ptrtoint ptr %shadow_reg_ctrl_6AH4.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %shadow_reg_ctrl_6AH4.i.i, align 4
  %conv16.i.i = zext i16 %40 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_ctrl_reg_6AH_update.__UNIQUE_ID_ddebug256, ptr noundef %38, ptr noundef nonnull @.str.57, i32 noundef 1024, i32 noundef 1, i32 noundef %conv16.i.i) #12
  br label %snd_azf3328_gameport_axis_circuit_enable.exit

snd_azf3328_gameport_axis_circuit_enable.exit:    ; preds = %if.then12.i.i, %pci_name.exit
  %41 = ptrtoint ptr %shadow_reg_ctrl_6AH4.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %shadow_reg_ctrl_6AH4.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !298
  tail call void @arm_heavy_mb() #12
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #12
  %44 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %chip, align 4
  %add.i.i.i = add i32 %45, 106
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %46 = inttoptr i32 %add1.i.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %46, i16 %43) #12, !srcloc !299
  %47 = ptrtoint ptr %gameport to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %gameport, align 4
  tail call void @__gameport_register_port(ptr noundef %48, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %snd_azf3328_gameport_axis_circuit_enable.exit, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_azf3328_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_id, align 4
  %add.i = add i32 %1, 100
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !300
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_interrupt.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_interrupt, %if.then5)) #12
          to label %do.end [label %if.then5], !srcloc !297

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %card = getelementptr inbounds %struct.snd_azf3328, ptr %dev_id, i32 0, i32 10
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %8 = load i32, ptr @snd_azf3328_interrupt.irq_count, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr @snd_azf3328_interrupt.irq_count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_interrupt.__UNIQUE_ID_ddebug273, ptr noundef %7, ptr noundef nonnull @.str.23, i32 noundef %8, i32 noundef %conv) #12
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %and9 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.end.if.end36_crit_edge, label %if.then11

do.end.if.end36_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then11:                                        ; preds = %do.end
  %timer = getelementptr inbounds %struct.snd_azf3328, ptr %dev_id, i32 0, i32 6
  %9 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %timer, align 4
  %tobool12.not = icmp eq ptr %10, null
  br i1 %tobool12.not, label %if.then11.if.end16_crit_edge, label %if.then13

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then13:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %sticks = getelementptr inbounds %struct.snd_timer, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %sticks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sticks, align 4
  tail call void @snd_timer_interrupt(ptr noundef nonnull %10, i32 noundef %12) #12
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.then11.if.end16_crit_edge
  %reg_lock = getelementptr inbounds %struct.snd_azf3328, ptr %dev_id, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !293
  tail call void @arm_heavy_mb() #12
  %13 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dev_id, align 4
  %add.i97 = add i32 %14, 99
  %and.i98 = and i32 %add.i97, 1048575
  %add1.i99 = or i32 %and.i98, -18874368
  %15 = inttoptr i32 %add1.i99 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 7) #12, !srcloc !292
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_interrupt.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_interrupt, %if.then30)) #12
          to label %if.end36 [label %if.then30], !srcloc !297

if.then30:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %card31 = getelementptr inbounds %struct.snd_azf3328, ptr %dev_id, i32 0, i32 10
  %16 = ptrtoint ptr %card31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card31, align 4
  %dev32 = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev32, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_interrupt.__UNIQUE_ID_ddebug274, ptr noundef %19, ptr noundef nonnull @.str.24) #12
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %if.end16, %do.end.if.end36_crit_edge
  %and38 = and i32 %conv, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end36.if.end41_crit_edge, label %if.then40

if.end36.if.end41_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %codecs = getelementptr inbounds %struct.snd_azf3328, ptr %dev_id, i32 0, i32 8
  tail call fastcc void @snd_azf3328_pcm_interrupt(ptr noundef %dev_id, ptr noundef %codecs, i8 noundef zeroext %3)
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end36.if.end41_crit_edge
  %and43 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end41.if.end46_crit_edge, label %if.then45

if.end41.if.end46_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then45:                                        ; preds = %if.end41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_gameport_interrupt.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_interrupt, %if.then.i)) #12
          to label %snd_azf3328_gameport_interrupt.exit [label %if.then.i], !srcloc !297

if.then.i:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  %card.i = getelementptr inbounds %struct.snd_azf3328, ptr %dev_id, i32 0, i32 10
  %20 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_gameport_interrupt.__UNIQUE_ID_ddebug267, ptr noundef %23, ptr noundef nonnull @.str.33) #12
  br label %snd_azf3328_gameport_interrupt.exit

snd_azf3328_gameport_interrupt.exit:              ; preds = %if.then.i, %if.then45
  %game_io.i.i = getelementptr inbounds %struct.snd_azf3328, ptr %dev_id, i32 0, i32 1
  %24 = ptrtoint ptr %game_io.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %game_io.i.i, align 4
  %add.i.i = add i32 %25, 2
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %26 = inttoptr i32 %add1.i.i to ptr
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %26) #12, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !302
  br label %if.end46

if.end46:                                         ; preds = %snd_azf3328_gameport_interrupt.exit, %if.end41.if.end46_crit_edge
  %and48 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end46.cleanup_crit_edge, label %if.then50

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %rmidi = getelementptr inbounds %struct.snd_azf3328, ptr %dev_id, i32 0, i32 11
  %28 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %private_data, align 4
  %call51 = tail call i32 @snd_mpu401_uart_interrupt(i32 noundef %irq, ptr noundef %31) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_interrupt.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_interrupt, %if.then64)) #12
          to label %cleanup [label %if.then64], !srcloc !297

if.then64:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  %card65 = getelementptr inbounds %struct.snd_azf3328, ptr %dev_id, i32 0, i32 10
  %32 = ptrtoint ptr %card65 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %card65, align 4
  %dev66 = getelementptr inbounds %struct.snd_card, ptr %33, i32 0, i32 27
  %34 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev66, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_interrupt.__UNIQUE_ID_ddebug275, ptr noundef %35, ptr noundef nonnull @.str.25) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %if.then50, %if.end46.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then64 ], [ 1, %if.end46.cleanup_crit_edge ], [ 1, %if.then50 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_azf3328_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %mixer_io.i.i.i = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mixer_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mixer_io.i.i.i, align 4
  %add1.i.i.i = add i32 %3, 3
  %and.i.i.i.i = and i32 %add1.i.i.i, 1048575
  %add.i.i.i.i = or i32 %and.i.i.i.i, -18874368
  %4 = inttoptr i32 %add.i.i.i.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !295
  %cond.i.i.i.i = or i8 %5, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !296
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %cond.i.i.i.i) #12, !srcloc !292
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !303
  tail call void @arm_heavy_mb() #12
  %6 = ptrtoint ptr %mixer_io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mixer_io.i.i.i, align 4
  %and.i.i = and i32 %7, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %8 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 0) #12, !srcloc !299
  %timer = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %timer, align 4
  %private_data.i = getelementptr inbounds %struct.snd_timer, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_data.i, align 4
  %reg_lock.i = getelementptr inbounds %struct.snd_azf3328, ptr %12, i32 0, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !293
  tail call void @arm_heavy_mb() #12
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %add.i.i = add i32 %14, 99
  %and.i.i3 = and i32 %add.i.i, 1048575
  %add1.i.i4 = or i32 %and.i.i3, -18874368
  %15 = inttoptr i32 %add1.i.i4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 4) #12, !srcloc !292
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call2.i) #12
  %gameport.i = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %gameport.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gameport.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %entry.snd_azf3328_gameport_free.exit_crit_edge, label %if.then.i

entry.snd_azf3328_gameport_free.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_azf3328_gameport_free.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gameport_unregister_port(ptr noundef nonnull %17) #12
  %18 = ptrtoint ptr %gameport.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %gameport.i, align 4
  br label %snd_azf3328_gameport_free.exit

snd_azf3328_gameport_free.exit:                   ; preds = %if.then.i, %entry.snd_azf3328_gameport_free.exit_crit_edge
  %game_io.i.i = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %game_io.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %game_io.i.i, align 4
  %add.i.i5 = add i32 %20, 4
  %and.i.i.i = and i32 %add.i.i5, 1048575
  %add.i.i.i = or i32 %and.i.i.i, -18874368
  %21 = inttoptr i32 %add.i.i.i to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !295
  %and5.i.i.i = and i8 %22, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !296
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %and5.i.i.i) #12, !srcloc !292
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_azf3328_debug_show_ports(ptr noundef readonly %chip) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_debug_show_ports.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_debug_show_ports, %if.then)) #12
          to label %do.body4 [label %if.then], !srcloc !297

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %card = getelementptr inbounds %struct.snd_azf3328, ptr %chip, i32 0, i32 10
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip, align 4
  %game_io = getelementptr inbounds %struct.snd_azf3328, ptr %chip, i32 0, i32 1
  %6 = ptrtoint ptr %game_io to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %game_io, align 4
  %mpu_io = getelementptr inbounds %struct.snd_azf3328, ptr %chip, i32 0, i32 2
  %8 = ptrtoint ptr %mpu_io to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mpu_io, align 4
  %opl3_io = getelementptr inbounds %struct.snd_azf3328, ptr %chip, i32 0, i32 3
  %10 = ptrtoint ptr %opl3_io to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %opl3_io, align 4
  %mixer_io = getelementptr inbounds %struct.snd_azf3328, ptr %chip, i32 0, i32 4
  %12 = ptrtoint ptr %mixer_io to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mixer_io, align 4
  %irq = getelementptr inbounds %struct.snd_azf3328, ptr %chip, i32 0, i32 15
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_debug_show_ports.__UNIQUE_ID_ddebug278, ptr noundef %3, ptr noundef nonnull @.str.35, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #12
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_debug_show_ports.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_debug_show_ports, %if.then16)) #12
          to label %do.end32 [label %if.then16], !srcloc !297

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #14
  %card17 = getelementptr inbounds %struct.snd_azf3328, ptr %chip, i32 0, i32 10
  %16 = ptrtoint ptr %card17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card17, align 4
  %dev18 = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev18, align 8
  %game_io.i = getelementptr inbounds %struct.snd_azf3328, ptr %chip, i32 0, i32 1
  %20 = ptrtoint ptr %game_io.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %game_io.i, align 4
  %and.i = and i32 %21, 1048575
  %add1.i = or i32 %and.i, -18874368
  %22 = inttoptr i32 %add1.i to ptr
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !304
  %conv = zext i8 %23 to i32
  %24 = ptrtoint ptr %game_io.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %game_io.i, align 4
  %add.i = add i32 %25, 1
  %and.i321 = and i32 %add.i, 1048575
  %add1.i322 = or i32 %and.i321, -18874368
  %26 = inttoptr i32 %add1.i322 to ptr
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !304
  %conv21 = zext i8 %27 to i32
  %28 = ptrtoint ptr %game_io.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %game_io.i, align 4
  %add.i324 = add i32 %29, 2
  %and.i325 = and i32 %add.i324, 1048575
  %add1.i326 = or i32 %and.i325, -18874368
  %30 = inttoptr i32 %add1.i326 to ptr
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %30) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !304
  %conv23 = zext i8 %31 to i32
  %32 = ptrtoint ptr %game_io.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %game_io.i, align 4
  %add.i328 = add i32 %33, 3
  %and.i329 = and i32 %add.i328, 1048575
  %add1.i330 = or i32 %and.i329, -18874368
  %34 = inttoptr i32 %add1.i330 to ptr
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %34) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !304
  %conv25 = zext i8 %35 to i32
  %36 = ptrtoint ptr %game_io.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %game_io.i, align 4
  %add.i332 = add i32 %37, 4
  %and.i333 = and i32 %add.i332, 1048575
  %add1.i334 = or i32 %and.i333, -18874368
  %38 = inttoptr i32 %add1.i334 to ptr
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %38) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !304
  %conv27 = zext i8 %39 to i32
  %40 = ptrtoint ptr %game_io.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %game_io.i, align 4
  %add.i336 = add i32 %41, 5
  %and.i337 = and i32 %add.i336, 1048575
  %add1.i338 = or i32 %and.i337, -18874368
  %42 = inttoptr i32 %add1.i338 to ptr
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %42) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !304
  %conv29 = zext i8 %43 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_debug_show_ports.__UNIQUE_ID_ddebug279, ptr noundef %19, ptr noundef nonnull @.str.36, i32 noundef %conv, i32 noundef %conv21, i32 noundef %conv23, i32 noundef %conv25, i32 noundef %conv27, i32 noundef %conv29) #12
  br label %do.end32

do.end32:                                         ; preds = %if.then16, %do.body4
  %card48 = getelementptr inbounds %struct.snd_azf3328, ptr %chip, i32 0, i32 10
  %mpu_io50 = getelementptr inbounds %struct.snd_azf3328, ptr %chip, i32 0, i32 2
  br label %do.body35

do.body35:                                        ; preds = %for.inc.do.body35_crit_edge, %do.end32
  %conv33352 = phi i32 [ 0, %do.end32 ], [ %conv33, %for.inc.do.body35_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_debug_show_ports.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_debug_show_ports, %if.then47)) #12
          to label %for.inc [label %if.then47], !srcloc !297

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %card48 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %card48, align 4
  %dev49 = getelementptr inbounds %struct.snd_card, ptr %45, i32 0, i32 27
  %46 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev49, align 8
  %48 = ptrtoint ptr %mpu_io50 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mpu_io50, align 4
  %add = add i32 %49, %conv33352
  %and = and i32 %add, 1048575
  %add52 = or i32 %and, -18874368
  %50 = inttoptr i32 %add52 to ptr
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %50) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !305
  %conv56 = zext i8 %51 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_debug_show_ports.__UNIQUE_ID_ddebug280, ptr noundef %47, ptr noundef nonnull @.str.37, i32 noundef %conv56) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then47, %do.body35
  %add61 = add nuw nsw i32 %conv33352, 1
  %conv33 = and i32 %add61, 65535
  %cmp = icmp ult i32 %conv33, 7
  br i1 %cmp, label %for.inc.do.body35_crit_edge, label %for.inc.do.body68_crit_edge

for.inc.do.body68_crit_edge:                      ; preds = %for.inc
  br label %do.body68

for.inc.do.body35_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

do.body68:                                        ; preds = %for.inc105.do.body68_crit_edge, %for.inc.do.body68_crit_edge
  %conv64353 = phi i32 [ %conv64, %for.inc105.do.body68_crit_edge ], [ 0, %for.inc.do.body68_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_debug_show_ports.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_debug_show_ports, %if.then80)) #12
          to label %for.inc105 [label %if.then80], !srcloc !297

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %card48 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %card48, align 4
  %dev82 = getelementptr inbounds %struct.snd_card, ptr %53, i32 0, i32 27
  %54 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev82, align 8
  %add88 = add nuw nsw i32 %conv64353, -18873856
  %56 = inttoptr i32 %add88 to ptr
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %56) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !306
  %conv92 = zext i8 %57 to i32
  %add97 = add nuw nsw i32 %conv64353, -18873848
  %58 = inttoptr i32 %add97 to ptr
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %58) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !307
  %conv101 = zext i8 %59 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_debug_show_ports.__UNIQUE_ID_ddebug281, ptr noundef %55, ptr noundef nonnull @.str.38, i32 noundef %conv64353, i32 noundef %conv92, i32 noundef %conv101) #12
  br label %for.inc105

for.inc105:                                       ; preds = %if.then80, %do.body68
  %add107 = add nuw nsw i32 %conv64353, 1
  %conv64 = and i32 %add107, 65535
  %cmp65 = icmp ult i32 %conv64, 8
  br i1 %cmp65, label %for.inc105.do.body68_crit_edge, label %for.inc105.do.body115_crit_edge

for.inc105.do.body115_crit_edge:                  ; preds = %for.inc105
  br label %do.body115

for.inc105.do.body68_crit_edge:                   ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body68

do.body115:                                       ; preds = %for.inc188.do.body115_crit_edge, %for.inc105.do.body115_crit_edge
  %conv111355 = phi i32 [ %conv111, %for.inc188.do.body115_crit_edge ], [ 0, %for.inc105.do.body115_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_debug_show_ports.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_debug_show_ports, %if.then127)) #12
          to label %for.inc188 [label %if.then127], !srcloc !297

if.then127:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %card48 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %card48, align 4
  %dev129 = getelementptr inbounds %struct.snd_card, ptr %61, i32 0, i32 27
  %62 = ptrtoint ptr %dev129 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev129, align 8
  %add135 = add nuw nsw i32 %conv111355, -18873600
  %64 = inttoptr i32 %add135 to ptr
  %65 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %64) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !308
  %conv139 = zext i8 %65 to i32
  %add144 = add nuw nsw i32 %conv111355, -18873584
  %66 = inttoptr i32 %add144 to ptr
  %67 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %66) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !309
  %conv148 = zext i8 %67 to i32
  %add153 = add nuw nsw i32 %conv111355, -18873568
  %68 = inttoptr i32 %add153 to ptr
  %69 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %68) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !310
  %conv157 = zext i8 %69 to i32
  %add162 = add nuw nsw i32 %conv111355, -18873552
  %70 = inttoptr i32 %add162 to ptr
  %71 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %70) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !311
  %conv166 = zext i8 %71 to i32
  %add171 = add nuw nsw i32 %conv111355, -18873464
  %72 = inttoptr i32 %add171 to ptr
  %73 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %72) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !312
  %conv175 = zext i8 %73 to i32
  %add180 = add nuw nsw i32 %conv111355, -18873460
  %74 = inttoptr i32 %add180 to ptr
  %75 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %74) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !313
  %conv184 = zext i8 %75 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_debug_show_ports.__UNIQUE_ID_ddebug282, ptr noundef %63, ptr noundef nonnull @.str.39, i32 noundef %conv111355, i32 noundef %conv139, i32 noundef %conv148, i32 noundef %conv157, i32 noundef %conv166, i32 noundef %conv175, i32 noundef %conv184) #12
  br label %for.inc188

for.inc188:                                       ; preds = %if.then127, %do.body115
  %add190 = add nuw nsw i32 %conv111355, 1
  %conv111 = and i32 %add190, 65535
  %cmp112 = icmp ult i32 %conv111, 2
  br i1 %cmp112, label %for.inc188.do.body115_crit_edge, label %for.inc188.do.body198_crit_edge

for.inc188.do.body198_crit_edge:                  ; preds = %for.inc188
  br label %do.body198

for.inc188.do.body115_crit_edge:                  ; preds = %for.inc188
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body115

for.cond225.preheader:                            ; preds = %for.inc220
  %mixer_io.i = getelementptr inbounds %struct.snd_azf3328, ptr %chip, i32 0, i32 4
  br label %do.body230

do.body198:                                       ; preds = %for.inc220.do.body198_crit_edge, %for.inc188.do.body198_crit_edge
  %conv194357 = phi i32 [ %conv194, %for.inc220.do.body198_crit_edge ], [ 0, %for.inc188.do.body198_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_debug_show_ports.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_debug_show_ports, %if.then210)) #12
          to label %for.inc220 [label %if.then210], !srcloc !297

if.then210:                                       ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %card48 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %card48, align 4
  %dev212 = getelementptr inbounds %struct.snd_card, ptr %77, i32 0, i32 27
  %78 = ptrtoint ptr %dev212 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev212, align 8
  %80 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %chip, align 4
  %add.i339 = add i32 %81, %conv194357
  %and.i340 = and i32 %add.i339, 1048575
  %add1.i341 = or i32 %and.i340, -18874368
  %82 = inttoptr i32 %add1.i341 to ptr
  %83 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %82) #12, !srcloc !301
  %84 = tail call i16 @llvm.bswap.i16(i16 %83) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !314
  %conv216 = zext i16 %84 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_debug_show_ports.__UNIQUE_ID_ddebug283, ptr noundef %79, ptr noundef nonnull @.str.40, i32 noundef %conv194357, i32 noundef %conv216) #12
  br label %for.inc220

for.inc220:                                       ; preds = %if.then210, %do.body198
  %add222 = add nuw nsw i32 %conv194357, 2
  %conv194 = and i32 %add222, 65535
  %cmp195 = icmp ult i32 %conv194, 128
  br i1 %cmp195, label %for.inc220.do.body198_crit_edge, label %for.cond225.preheader

for.inc220.do.body198_crit_edge:                  ; preds = %for.inc220
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body198

do.body230:                                       ; preds = %for.inc252.do.body230_crit_edge, %for.cond225.preheader
  %conv226359 = phi i32 [ 0, %for.cond225.preheader ], [ %conv226, %for.inc252.do.body230_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_debug_show_ports.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_debug_show_ports, %if.then242)) #12
          to label %for.inc252 [label %if.then242], !srcloc !297

if.then242:                                       ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #14
  %85 = ptrtoint ptr %card48 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %card48, align 4
  %dev244 = getelementptr inbounds %struct.snd_card, ptr %86, i32 0, i32 27
  %87 = ptrtoint ptr %dev244 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev244, align 8
  %89 = ptrtoint ptr %mixer_io.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %mixer_io.i, align 4
  %add.i342 = add i32 %90, %conv226359
  %and.i343 = and i32 %add.i342, 1048575
  %add1.i344 = or i32 %and.i343, -18874368
  %91 = inttoptr i32 %add1.i344 to ptr
  %92 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %91) #12, !srcloc !301
  %93 = tail call i16 @llvm.bswap.i16(i16 %92) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !315
  %conv248 = zext i16 %93 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_debug_show_ports.__UNIQUE_ID_ddebug284, ptr noundef %88, ptr noundef nonnull @.str.41, i32 noundef %conv226359, i32 noundef %conv248) #12
  br label %for.inc252

for.inc252:                                       ; preds = %if.then242, %do.body230
  %add254 = add nuw nsw i32 %conv226359, 2
  %conv226 = and i32 %add254, 65535
  %cmp227 = icmp ult i32 %conv226, 64
  br i1 %cmp227, label %for.inc252.do.body230_crit_edge, label %for.end256

for.inc252.do.body230_crit_edge:                  ; preds = %for.inc252
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body230

for.end256:                                       ; preds = %for.inc252
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_azf3328_ctrl_codec_activity(ptr nocapture noundef %chip, i32 noundef %codec_type, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %arrayidx = getelementptr %struct.snd_azf3328, ptr %chip, i32 0, i32 8, i32 %codec_type
  %running = getelementptr %struct.snd_azf3328, ptr %chip, i32 0, i32 8, i32 %codec_type, i32 4
  %0 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %running, align 4, !range !290
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %frombool)
  %cmp = icmp ne i8 %1, %frombool
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_ctrl_codec_activity.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_ctrl_codec_activity, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !297

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv2 = zext i1 %enable to i32
  %card = getelementptr inbounds %struct.snd_azf3328, ptr %chip, i32 0, i32 10
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %name = getelementptr %struct.snd_azf3328, ptr %chip, i32 0, i32 8, i32 %codec_type, i32 6
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %conv12 = zext i1 %cmp to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_ctrl_codec_activity.__UNIQUE_ID_ddebug258, ptr noundef %5, ptr noundef nonnull @.str.53, ptr noundef %7, i32 noundef %conv2, i32 noundef %conv12) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  br i1 %cmp, label %if.then14, label %do.end.if.end41_crit_edge

do.end.if.end41_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then14:                                        ; preds = %do.end
  br i1 %enable, label %if.end37.critedge, label %if.else

if.else:                                          ; preds = %if.then14
  %arrayidx18 = getelementptr [3 x %struct.anon.89], ptr @snd_azf3328_ctrl_codec_activity.peer_codecs, i32 0, i32 %codec_type
  %8 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx18, align 4
  %running20 = getelementptr %struct.snd_azf3328, ptr %chip, i32 0, i32 8, i32 %9, i32 4
  %10 = ptrtoint ptr %running20 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %running20, align 4, !range !290
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool21.not = icmp eq i8 %11, 0
  br i1 %tobool21.not, label %land.rhs, label %if.else.if.then36_crit_edge

if.else.if.then36_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36

land.rhs:                                         ; preds = %if.else
  %other2 = getelementptr [3 x %struct.anon.89], ptr @snd_azf3328_ctrl_codec_activity.peer_codecs, i32 0, i32 %codec_type, i32 1
  %12 = ptrtoint ptr %other2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %other2, align 4
  %running25 = getelementptr %struct.snd_azf3328, ptr %chip, i32 0, i32 8, i32 %13, i32 4
  %14 = ptrtoint ptr %running25 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %running25, align 4, !range !290
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool26.not = icmp eq i8 %15, 0
  br i1 %tobool26.not, label %if.then36.critedge58, label %land.rhs.if.then36_crit_edge

land.rhs.if.then36_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36

if.then36.critedge58:                             ; preds = %land.rhs
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_ctrl_enable_codecs.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_ctrl_codec_activity, %if.then.i)) #12
          to label %do.end.i [label %if.then.i], !srcloc !297

if.then.i:                                        ; preds = %if.then36.critedge58
  call void @__sanitizer_cov_trace_pc() #14
  %card.i = getelementptr inbounds %struct.snd_azf3328, ptr %chip, i32 0, i32 10
  %16 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_ctrl_enable_codecs.__UNIQUE_ID_ddebug257, ptr noundef %19, ptr noundef nonnull @.str.55, i32 noundef 0) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then36.critedge58
  %shadow_reg_ctrl_6AH4.i.i = getelementptr inbounds %struct.snd_azf3328, ptr %chip, i32 0, i32 16
  %20 = ptrtoint ptr %shadow_reg_ctrl_6AH4.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %shadow_reg_ctrl_6AH4.i.i, align 4
  %conv3.sink.i.i = or i16 %21, 256
  store i16 %conv3.sink.i.i, ptr %shadow_reg_ctrl_6AH4.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_ctrl_reg_6AH_update.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_ctrl_codec_activity, %if.then12.i.i)) #12
          to label %snd_azf3328_ctrl_enable_codecs.exit [label %if.then12.i.i], !srcloc !297

if.then12.i.i:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %card.i.i = getelementptr inbounds %struct.snd_azf3328, ptr %chip, i32 0, i32 10
  %22 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i.i, align 8
  %26 = ptrtoint ptr %shadow_reg_ctrl_6AH4.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %shadow_reg_ctrl_6AH4.i.i, align 4
  %conv16.i.i = zext i16 %27 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_ctrl_reg_6AH_update.__UNIQUE_ID_ddebug256, ptr noundef %25, ptr noundef nonnull @.str.57, i32 noundef 256, i32 noundef 1, i32 noundef %conv16.i.i) #12
  br label %snd_azf3328_ctrl_enable_codecs.exit

snd_azf3328_ctrl_enable_codecs.exit:              ; preds = %if.then12.i.i, %do.end.i
  %28 = ptrtoint ptr %shadow_reg_ctrl_6AH4.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %shadow_reg_ctrl_6AH4.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !298
  tail call void @arm_heavy_mb() #12
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #12
  %31 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chip, align 4
  %add.i.i.i = add i32 %32, 106
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %33 = inttoptr i32 %add1.i.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %33, i16 %30) #12, !srcloc !299
  br label %if.then36

if.then36:                                        ; preds = %snd_azf3328_ctrl_enable_codecs.exit, %land.rhs.if.then36_crit_edge, %if.else.if.then36_crit_edge
  tail call fastcc void @snd_azf3328_codec_setfmt(ptr noundef %arrayidx, i32 noundef 4000, i32 noundef 8, i32 noundef 1) #12
  br label %if.end37

if.end37.critedge:                                ; preds = %if.then14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_ctrl_enable_codecs.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_ctrl_codec_activity, %if.then.i61)) #12
          to label %do.end.i64 [label %if.then.i61], !srcloc !297

if.then.i61:                                      ; preds = %if.end37.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %card.i59 = getelementptr inbounds %struct.snd_azf3328, ptr %chip, i32 0, i32 10
  %34 = ptrtoint ptr %card.i59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %card.i59, align 4
  %dev.i60 = getelementptr inbounds %struct.snd_card, ptr %35, i32 0, i32 27
  %36 = ptrtoint ptr %dev.i60 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i60, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_ctrl_enable_codecs.__UNIQUE_ID_ddebug257, ptr noundef %37, ptr noundef nonnull @.str.55, i32 noundef 1) #12
  br label %do.end.i64

do.end.i64:                                       ; preds = %if.then.i61, %if.end37.critedge
  %shadow_reg_ctrl_6AH4.i.i62 = getelementptr inbounds %struct.snd_azf3328, ptr %chip, i32 0, i32 16
  %38 = ptrtoint ptr %shadow_reg_ctrl_6AH4.i.i62 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %shadow_reg_ctrl_6AH4.i.i62, align 4
  %conv6.i.i63 = and i16 %39, -257
  store i16 %conv6.i.i63, ptr %shadow_reg_ctrl_6AH4.i.i62, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_ctrl_reg_6AH_update.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_ctrl_codec_activity, %if.then12.i.i68)) #12
          to label %snd_azf3328_ctrl_enable_codecs.exit72 [label %if.then12.i.i68], !srcloc !297

if.then12.i.i68:                                  ; preds = %do.end.i64
  call void @__sanitizer_cov_trace_pc() #14
  %card.i.i65 = getelementptr inbounds %struct.snd_azf3328, ptr %chip, i32 0, i32 10
  %40 = ptrtoint ptr %card.i.i65 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %card.i.i65, align 4
  %dev.i.i66 = getelementptr inbounds %struct.snd_card, ptr %41, i32 0, i32 27
  %42 = ptrtoint ptr %dev.i.i66 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i.i66, align 8
  %44 = ptrtoint ptr %shadow_reg_ctrl_6AH4.i.i62 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %shadow_reg_ctrl_6AH4.i.i62, align 4
  %conv16.i.i67 = zext i16 %45 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_ctrl_reg_6AH_update.__UNIQUE_ID_ddebug256, ptr noundef %43, ptr noundef nonnull @.str.57, i32 noundef 256, i32 noundef 0, i32 noundef %conv16.i.i67) #12
  br label %snd_azf3328_ctrl_enable_codecs.exit72

snd_azf3328_ctrl_enable_codecs.exit72:            ; preds = %if.then12.i.i68, %do.end.i64
  %46 = ptrtoint ptr %shadow_reg_ctrl_6AH4.i.i62 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %shadow_reg_ctrl_6AH4.i.i62, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !298
  tail call void @arm_heavy_mb() #12
  %48 = tail call i16 @llvm.bswap.i16(i16 %47) #12
  %49 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %chip, align 4
  %add.i.i.i69 = add i32 %50, 106
  %and.i.i.i70 = and i32 %add.i.i.i69, 1048575
  %add1.i.i.i71 = or i32 %and.i.i.i70, -18874368
  %51 = inttoptr i32 %add1.i.i.i71 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %51, i16 %48) #12, !srcloc !299
  br label %if.end37

if.end37:                                         ; preds = %snd_azf3328_ctrl_enable_codecs.exit72, %if.then36
  %52 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %frombool, ptr %running, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end37, %do.end.if.end41_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_timer_interrupt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_azf3328_pcm_interrupt(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %first_codec, i8 noundef zeroext %status) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %status to i32
  %card = getelementptr inbounds %struct.snd_azf3328, ptr %chip, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %codec_type.049 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %codec.046 = phi ptr [ %first_codec, %entry ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %codec_type.049
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %lock = getelementptr inbounds %struct.snd_azf3328_codec_data, ptr %codec.046, i32 0, i32 2
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #12
  %2 = ptrtoint ptr %codec.046 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %codec.046, align 4
  %add.i = add i32 %3, 2
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !291
  tail call void @arm_heavy_mb() #12
  %6 = ptrtoint ptr %codec.046 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %codec.046, align 4
  %add.i39 = add i32 %7, 2
  %and.i40 = and i32 %add.i39, 1048575
  %add1.i41 = or i32 %and.i40, -18874368
  %8 = inttoptr i32 %add1.i41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %5) #12, !srcloc !292
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock(ptr noundef %10) #12
  %substream = getelementptr inbounds %struct.snd_azf3328_codec_data, ptr %codec.046, i32 0, i32 3
  %11 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %substream, align 4
  %tobool2.not = icmp eq ptr %12, null
  br i1 %tobool2.not, label %do.end15, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %12) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_pcm_interrupt.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_pcm_interrupt, %if.then9)) #12
          to label %if.end18 [label %if.then9], !srcloc !297

if.then9:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.snd_azf3328_codec_data, ptr %codec.046, i32 0, i32 6
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 4
  %conv10 = zext i8 %5 to i32
  %19 = ptrtoint ptr %codec.046 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %codec.046, align 4
  %add.i42 = add i32 %20, 16
  %and.i43 = and i32 %add.i42, 1048575
  %add1.i44 = or i32 %and.i43, -18874368
  %21 = inttoptr i32 %add1.i44 to ptr
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %21) #12, !srcloc !317
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !318
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_pcm_interrupt.__UNIQUE_ID_ddebug272, ptr noundef %16, ptr noundef nonnull @.str.27, ptr noundef %18, i32 noundef %conv10, i32 noundef %23) #12
  br label %if.end18

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card, align 4
  %dev17 = getelementptr inbounds %struct.snd_card, ptr %25, i32 0, i32 27
  %26 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev17, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.28) #15
  br label %if.end18

if.end18:                                         ; preds = %do.end15, %if.then9, %if.then3
  %28 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool21.not = icmp eq i8 %28, 0
  br i1 %tobool21.not, label %if.end18.for.inc_crit_edge, label %if.then22

if.end18.for.inc_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_irq_log_unknown_type.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_pcm_interrupt, %if.then.i)) #12
          to label %for.inc [label %if.then.i], !srcloc !297

if.then.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %card, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %30, i32 0, i32 27
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 8
  %conv.i = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_irq_log_unknown_type.__UNIQUE_ID_ddebug271, ptr noundef %32, ptr noundef nonnull @.str.31, i32 noundef %conv.i) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %if.then22, %if.end18.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %codec_type.049, 1
  %incdec.ptr = getelementptr %struct.snd_azf3328_codec_data, ptr %codec.046, i32 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mpu401_uart_interrupt(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_azf3328_timer_stop(ptr nocapture noundef readonly %timer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_timer, ptr %timer, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !293
  tail call void @arm_heavy_mb() #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add.i = add i32 %3, 99
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 4) #12, !srcloc !292
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call2) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_azf3328_mixer_ac97_write(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg_ac97, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 35, i16 %reg_ac97)
  %cmp.i = icmp ult i16 %reg_ac97, 35
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = lshr i16 %reg_ac97, 1
  %idxprom.i = zext i16 %2 to i32
  %arrayidx.i = getelementptr [18 x %struct.anon.88], ptr @snd_azf3328_mixer_ac97_map_reg_idx.azf_reg_mapper, i32 0, i32 %idxprom.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %4)
  %tobool.not.i = icmp ult i16 %4, 64
  %or.i = or i16 %4, 24576
  %spec.select.i = select i1 %tobool.not.i, i16 %or.i, i16 %4
  %phi.cast = zext i16 %spec.select.i to i32
  br label %snd_azf3328_mixer_ac97_map_reg_idx.exit

if.else.i:                                        ; preds = %entry
  %5 = zext i16 %reg_ac97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i16 %reg_ac97, label %if.else.i.snd_azf3328_mixer_ac97_map_reg_idx.exit_crit_edge [
    i16 38, label %sw.bb.i
    i16 40, label %sw.bb9.i
    i16 42, label %sw.bb10.i
    i16 124, label %if.else.i.sw.bb11.i_crit_edge
    i16 126, label %if.else.i.sw.bb11.i_crit_edge38
  ]

if.else.i.sw.bb11.i_crit_edge38:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb11.i

if.else.i.sw.bb11.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb11.i

if.else.i.snd_azf3328_mixer_ac97_map_reg_idx.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_azf3328_mixer_ac97_map_reg_idx.exit

sw.bb.i:                                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_azf3328_mixer_ac97_map_reg_idx.exit

sw.bb9.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_azf3328_mixer_ac97_map_reg_idx.exit

sw.bb10.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_azf3328_mixer_ac97_map_reg_idx.exit

sw.bb11.i:                                        ; preds = %if.else.i.sw.bb11.i_crit_edge, %if.else.i.sw.bb11.i_crit_edge38
  br label %snd_azf3328_mixer_ac97_map_reg_idx.exit

snd_azf3328_mixer_ac97_map_reg_idx.exit:          ; preds = %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb.i, %if.else.i.snd_azf3328_mixer_ac97_map_reg_idx.exit_crit_edge, %if.then.i
  %reg_azf.1.i = phi i32 [ %phi.cast, %if.then.i ], [ 32768, %if.else.i.snd_azf3328_mixer_ac97_map_reg_idx.exit_crit_edge ], [ 1024, %sw.bb11.i ], [ 1536, %sw.bb10.i ], [ 1024, %sw.bb9.i ], [ 1536, %sw.bb.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_mixer_ac97_write.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_mixer_ac97_write, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !297

if.then:                                          ; preds = %snd_azf3328_mixer_ac97_map_reg_idx.exit
  call void @__sanitizer_cov_trace_pc() #14
  %card = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %conv = zext i16 %reg_ac97 to i32
  %conv4 = zext i16 %val to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_mixer_ac97_write.__UNIQUE_ID_ddebug255, ptr noundef %9, ptr noundef nonnull @.str.45, i32 noundef %conv, i32 noundef %conv4) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %snd_azf3328_mixer_ac97_map_reg_idx.exit
  %and = and i32 %reg_azf.1.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.else, label %do.end.if.then24_crit_edge

do.end.if.then24_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

if.else:                                          ; preds = %do.end
  %and9 = and i32 %reg_azf.1.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else14, label %if.then11

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %and13 = and i32 %reg_azf.1.i, 63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !303
  tail call void @arm_heavy_mb() #12
  %10 = tail call i16 @llvm.bswap.i16(i16 %val) #12
  %mixer_io.i = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %mixer_io.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mixer_io.i, align 4
  %add.i = add i32 %12, %and13
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %13 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 %10) #12, !srcloc !299
  br label %if.end25

if.else14:                                        ; preds = %if.else
  %and16 = and i32 %reg_azf.1.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else14.if.end25_crit_edge, label %if.then18

if.else14.if.end25_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then18:                                        ; preds = %if.else14
  %14 = zext i16 %reg_ac97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.96)
  switch i16 %reg_ac97, label %if.then18.if.then24_crit_edge [
    i16 30, label %if.then18.if.end25_crit_edge
    i16 38, label %if.then18.if.end25_crit_edge39
    i16 42, label %if.then18.if.end25_crit_edge40
  ]

if.then18.if.end25_crit_edge40:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then18.if.end25_crit_edge39:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then18.if.end25_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then18.if.then24_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

if.then24:                                        ; preds = %if.then18.if.then24_crit_edge, %do.end.if.then24_crit_edge
  %card.i = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 8
  %conv.i = zext i16 %reg_ac97 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %conv.i) #15
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.then18.if.end25_crit_edge, %if.then18.if.end25_crit_edge39, %if.then18.if.end25_crit_edge40, %if.else14.if.end25_crit_edge, %if.then11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @snd_azf3328_mixer_ac97_read(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg_ac97) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 35, i16 %reg_ac97)
  %cmp.i = icmp ult i16 %reg_ac97, 35
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = lshr i16 %reg_ac97, 1
  %idxprom.i = zext i16 %2 to i32
  %arrayidx.i = getelementptr [18 x %struct.anon.88], ptr @snd_azf3328_mixer_ac97_map_reg_idx.azf_reg_mapper, i32 0, i32 %idxprom.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %4)
  %tobool.not.i = icmp ult i16 %4, 64
  %or.i = or i16 %4, 24576
  %spec.select.i = select i1 %tobool.not.i, i16 %or.i, i16 %4
  %phi.cast = zext i16 %spec.select.i to i32
  br label %snd_azf3328_mixer_ac97_map_reg_idx.exit

if.else.i:                                        ; preds = %entry
  %5 = zext i16 %reg_ac97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.97)
  switch i16 %reg_ac97, label %if.else.i.snd_azf3328_mixer_ac97_map_reg_idx.exit_crit_edge [
    i16 38, label %sw.bb.i
    i16 40, label %sw.bb9.i
    i16 42, label %sw.bb10.i
    i16 124, label %if.else.i.sw.bb11.i_crit_edge
    i16 126, label %if.else.i.sw.bb11.i_crit_edge59
  ]

if.else.i.sw.bb11.i_crit_edge59:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb11.i

if.else.i.sw.bb11.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb11.i

if.else.i.snd_azf3328_mixer_ac97_map_reg_idx.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_azf3328_mixer_ac97_map_reg_idx.exit

sw.bb.i:                                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_azf3328_mixer_ac97_map_reg_idx.exit

sw.bb9.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_azf3328_mixer_ac97_map_reg_idx.exit

sw.bb10.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %snd_azf3328_mixer_ac97_map_reg_idx.exit

sw.bb11.i:                                        ; preds = %if.else.i.sw.bb11.i_crit_edge, %if.else.i.sw.bb11.i_crit_edge59
  br label %snd_azf3328_mixer_ac97_map_reg_idx.exit

snd_azf3328_mixer_ac97_map_reg_idx.exit:          ; preds = %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb.i, %if.else.i.snd_azf3328_mixer_ac97_map_reg_idx.exit_crit_edge, %if.then.i
  %reg_azf.1.i = phi i32 [ %phi.cast, %if.then.i ], [ 32768, %if.else.i.snd_azf3328_mixer_ac97_map_reg_idx.exit_crit_edge ], [ 1024, %sw.bb11.i ], [ 1536, %sw.bb10.i ], [ 1024, %sw.bb9.i ], [ 1536, %sw.bb.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_mixer_ac97_read.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_mixer_ac97_read, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !297

if.then:                                          ; preds = %snd_azf3328_mixer_ac97_map_reg_idx.exit
  call void @__sanitizer_cov_trace_pc() #14
  %card = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %conv = zext i16 %reg_ac97 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_mixer_ac97_read.__UNIQUE_ID_ddebug254, ptr noundef %9, ptr noundef nonnull @.str.50, i32 noundef %conv) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %snd_azf3328_mixer_ac97_map_reg_idx.exit
  %and = and i32 %reg_azf.1.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.else, label %do.end.if.then37_crit_edge

do.end.if.then37_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then37

if.else:                                          ; preds = %do.end
  %and8 = and i32 %reg_azf.1.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else14, label %if.then10

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %and12 = and i32 %reg_azf.1.i, 63
  %mixer_io.i = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %mixer_io.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mixer_io.i, align 4
  %add.i = add i32 %11, %and12
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %12 = inttoptr i32 %add1.i to ptr
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %12) #12, !srcloc !301
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !315
  br label %if.end16

if.else14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %mixer_io.i51 = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %mixer_io.i51 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mixer_io.i51, align 4
  %add.i52 = add i32 %16, 48
  %and.i53 = and i32 %add.i52, 1048575
  %add1.i54 = or i32 %and.i53, -18874368
  %17 = inttoptr i32 %add1.i54 to ptr
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %17) #12, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !315
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.then10
  %reg_val.0 = phi i16 [ %14, %if.then10 ], [ 0, %if.else14 ]
  %and18 = and i32 %reg_azf.1.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end16.if.end38_crit_edge, label %if.then20

if.end16.if.end38_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then20:                                        ; preds = %if.end16
  %19 = zext i16 %reg_ac97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.98)
  switch i16 %reg_ac97, label %if.then20.if.then37_crit_edge [
    i16 0, label %sw.bb
    i16 38, label %sw.bb24
    i16 40, label %if.then20.if.end38_crit_edge
    i16 42, label %if.then20.if.end38_crit_edge60
    i16 124, label %sw.bb32
    i16 126, label %sw.bb33
  ]

if.then20.if.end38_crit_edge60:                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then20.if.end38_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then20.if.then37_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then37

sw.bb:                                            ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  %20 = or i16 %reg_val.0, 13333
  br label %if.end38

sw.bb24:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  %21 = or i16 %reg_val.0, 15
  br label %if.end38

sw.bb32:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

sw.bb33:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then37:                                        ; preds = %if.then20.if.then37_crit_edge, %do.end.if.then37_crit_edge
  %reg_val.1 = phi i16 [ 0, %do.end.if.then37_crit_edge ], [ %reg_val.0, %if.then20.if.then37_crit_edge ]
  %card.i = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 10
  %22 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 8
  %conv.i = zext i16 %reg_ac97 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.51, i32 noundef %conv.i) #15
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %sw.bb33, %sw.bb32, %sw.bb24, %sw.bb, %if.then20.if.end38_crit_edge, %if.then20.if.end38_crit_edge60, %if.end16.if.end38_crit_edge
  %reg_val.158 = phi i16 [ %reg_val.1, %if.then37 ], [ %reg_val.0, %if.then20.if.end38_crit_edge ], [ %reg_val.0, %if.then20.if.end38_crit_edge60 ], [ %reg_val.0, %if.end16.if.end38_crit_edge ], [ %20, %sw.bb ], [ %21, %sw.bb24 ], [ 16730, %sw.bb32 ], [ 21505, %sw.bb33 ]
  ret i16 %reg_val.158
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_bus(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_mixer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_azf3328_codec_setfmt(ptr nocapture noundef readonly %codec, i32 noundef %bitrate, i32 noundef %format_width, i32 noundef %channels) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %bitrate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %bitrate, label %sw.default [
    i32 4000, label %entry.sw.epilog_crit_edge
    i32 4800, label %sw.bb1
    i32 5512, label %sw.bb2
    i32 6620, label %sw.bb3
    i32 8000, label %sw.bb4
    i32 9600, label %sw.bb5
    i32 11025, label %sw.bb6
    i32 13240, label %sw.bb7
    i32 16000, label %sw.bb8
    i32 22050, label %sw.bb9
    i32 32000, label %sw.bb10
    i32 44100, label %entry.sw.bb11_crit_edge
    i32 48000, label %sw.bb12
    i32 66200, label %sw.bb13
  ]

entry.sw.bb11_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb11

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.5, i32 noundef 1234, ptr noundef nonnull @.str.58, i32 noundef %bitrate) #12
  br label %sw.bb11

sw.bb11:                                          ; preds = %sw.default, %entry.sw.bb11_crit_edge
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %freq.0 = phi i16 [ -251, %sw.bb11 ], [ -249, %sw.bb13 ], [ -250, %sw.bb12 ], [ -252, %sw.bb10 ], [ -253, %sw.bb9 ], [ -254, %sw.bb8 ], [ -247, %sw.bb7 ], [ -255, %sw.bb6 ], [ -248, %sw.bb5 ], [ -256, %sw.bb4 ], [ -245, %sw.bb3 ], [ -243, %sw.bb2 ], [ -246, %sw.bb1 ], [ -244, %entry.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %channels)
  %cmp = icmp eq i32 %channels, 2
  %1 = or i16 %freq.0, 32
  %spec.select = select i1 %cmp, i16 %1, i16 %freq.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %format_width)
  %cmp20 = icmp eq i32 %format_width, 16
  %2 = or i16 %spec.select, 16
  %val.1 = select i1 %cmp20, i16 %2, i16 %spec.select
  %lock = getelementptr inbounds %struct.snd_azf3328_codec_data, ptr %codec, i32 0, i32 2
  %3 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock, align 4
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !319
  tail call void @arm_heavy_mb() #12
  %5 = tail call i16 @llvm.bswap.i16(i16 %val.1) #12
  %6 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %codec, align 4
  %add.i = add i32 %7, 22
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 %5) #12, !srcloc !299
  %type = getelementptr inbounds %struct.snd_azf3328_codec_data, ptr %codec, i32 0, i32 5
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp33.not = icmp eq i32 %10, 1
  br i1 %cmp33.not, label %sw.epilog.if.end44_crit_edge, label %if.then35

sw.epilog.if.end44_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then35:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %codec, align 4
  %and.i55 = and i32 %12, 1048575
  %add1.i56 = or i32 %and.i55, -18874368
  %13 = inttoptr i32 %add1.i56 to ptr
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %13) #12, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !320
  %15 = or i16 %14, 15872
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !319
  tail call void @arm_heavy_mb() #12
  %16 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %codec, align 4
  %and.i57 = and i32 %17, 1048575
  %add1.i58 = or i32 %and.i57, -18874368
  %18 = inttoptr i32 %add1.i58 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %18, i16 %15) #12, !srcloc !299
  br label %if.end44

if.end44:                                         ; preds = %if.then35, %sw.epilog.if.end44_crit_edge
  %19 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %call30) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_printk(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_timer_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_azf3328_timer_start(ptr nocapture noundef readonly %timer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_timer, ptr %timer, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %sticks = getelementptr inbounds %struct.snd_timer, ptr %timer, i32 0, i32 9
  %2 = ptrtoint ptr %sticks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sticks, align 4
  %4 = load i32, ptr @seqtimer_scaling, align 4
  %mul = mul i32 %4, %3
  %sub = add i32 %mul, 1048575
  %and = and i32 %sub, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %and)
  %cmp = icmp ult i32 %and, 49
  br i1 %cmp, label %do.body, label %entry.do.body5_crit_edge

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_timer_start.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_timer_start, %if.then3)) #12
          to label %do.body5 [label %if.then3], !srcloc !297

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %card = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_timer_start.__UNIQUE_ID_ddebug276, ptr noundef %8, ptr noundef nonnull @.str.61, i32 noundef %and) #12
  br label %do.body5

do.body5:                                         ; preds = %if.then3, %do.body, %entry.do.body5_crit_edge
  %delay.0 = phi i32 [ %and, %entry.do.body5_crit_edge ], [ 49, %if.then3 ], [ 49, %do.body ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_timer_start.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_timer_start, %if.then17)) #12
          to label %do.end22 [label %if.then17], !srcloc !297

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #14
  %card18 = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %card18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card18, align 4
  %dev19 = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev19, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_timer_start.__UNIQUE_ID_ddebug277, ptr noundef %12, ptr noundef nonnull @.str.62, i32 noundef %delay.0) #12
  br label %do.end22

do.end22:                                         ; preds = %if.then17, %do.body5
  %or = or i32 %delay.0, 50331648
  %reg_lock = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 5
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !321
  tail call void @arm_heavy_mb() #12
  %13 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  %add.i = add i32 %15, 96
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %16 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 %13) #12, !srcloc !322
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call28) #12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_azf3328_timer_precise_resolution(ptr nocapture noundef readnone %timer, ptr nocapture noundef writeonly %num, ptr nocapture noundef writeonly %den) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %num, align 4
  %1 = load i32, ptr @seqtimer_scaling, align 4
  %div = sdiv i32 1024000, %1
  %2 = ptrtoint ptr %den to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %div, ptr %den, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_azf3328_pcm_playback_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i, align 4
  %arrayidx.i = getelementptr %struct.snd_azf3328, ptr %1, i32 0, i32 8, i32 0
  %substream2.i = getelementptr %struct.snd_azf3328, ptr %1, i32 0, i32 8, i32 0, i32 3
  %4 = ptrtoint ptr %substream2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %substream2.i, align 4
  %hw.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %5 = call ptr @memcpy(ptr %hw.i, ptr @snd_azf3328_hardware, i32 64)
  %call.i = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @snd_azf3328_hw_constraints_rates) #12
  %private_data3.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %6 = ptrtoint ptr %private_data3.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx.i, ptr %private_data3.i, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_azf3328_pcm_close(ptr nocapture noundef readonly %substream) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %substream1 = getelementptr inbounds %struct.snd_azf3328_codec_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %substream1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %substream1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_azf3328_pcm_prepare(ptr nocapture noundef readonly %substream) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 51
  %4 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_addr, align 8
  %dma_base = getelementptr inbounds %struct.snd_azf3328_codec_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %dma_base to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %dma_base, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_azf3328_pcm_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
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
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 8
  %type = getelementptr inbounds %struct.snd_azf3328_codec_data, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %cmd, label %do.end227 [
    i32 1, label %do.body
    i32 6, label %do.body47
    i32 0, label %do.body75
    i32 5, label %do.body139
    i32 3, label %do.end174
    i32 4, label %do.end201
  ]

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_pcm_trigger.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_pcm_trigger, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !297

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %card = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.snd_azf3328_codec_data, ptr %5, i32 0, i32 6
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_pcm_trigger.__UNIQUE_ID_ddebug260, ptr noundef %12, ptr noundef nonnull @.str.66, ptr noundef %14) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  br i1 %cmp, label %if.then7, label %do.end.if.end10_crit_edge

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %mixer_io.i.i = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %mixer_io.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mixer_io.i.i, align 4
  %add1.i.i = add i32 %16, 23
  %and.i.i.i = and i32 %add1.i.i, 1048575
  %add.i.i.i = or i32 %and.i.i.i, -18874368
  %17 = inttoptr i32 %add.i.i.i to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !295
  %cond.i.i.i = or i8 %18, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !296
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %cond.i.i.i) #12, !srcloc !292
  call void @__sanitizer_cov_trace_cmp1(i8 %cond.i.i.i, i8 %18)
  %cmp.not.i.i.i.not = icmp eq i8 %cond.i.i.i, %18
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %do.end.if.end10_crit_edge
  %previously_muted.0.off0 = phi i1 [ %cmp.not.i.i.i.not, %if.then7 ], [ false, %do.end.if.end10_crit_edge ]
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %19 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rate, align 4
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %21 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %format, align 4
  %call11 = tail call i32 @snd_pcm_format_width(i32 noundef %22) #12
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %23 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %channels, align 8
  tail call fastcc void @snd_azf3328_codec_setfmt(ptr noundef %5, i32 noundef %20, i32 noundef %call11, i32 noundef %24)
  %lock = getelementptr inbounds %struct.snd_azf3328_codec_data, ptr %5, i32 0, i32 2
  %25 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_lock(ptr noundef %26) #12
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %5, align 4
  %and.i = and i32 %28, 1048575
  %add1.i = or i32 %and.i, -18874368
  %29 = inttoptr i32 %add1.i to ptr
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %29) #12, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !320
  %31 = and i16 %30, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !319
  tail call void @arm_heavy_mb() #12
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %5, align 4
  %and.i331 = and i32 %33, 1048575
  %add1.i332 = or i32 %and.i331, -18874368
  %34 = inttoptr i32 %add1.i332 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %34, i16 %31) #12, !srcloc !299
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !319
  tail call void @arm_heavy_mb() #12
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %5, align 4
  %add.i = add i32 %36, 2
  %and.i333 = and i32 %add.i, 1048575
  %add1.i334 = or i32 %and.i333, -18874368
  %37 = inttoptr i32 %add1.i334 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %37, i16 -1) #12, !srcloc !299
  %38 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock(ptr noundef %39) #12
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %40 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma_addr, align 8
  %42 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %runtime1, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %43, i32 0, i32 16
  %44 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %43, i32 0, i32 21
  %46 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %47, %45
  %div1.i.i = lshr i32 %mul.i.i, 3
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %43, i32 0, i32 18
  %48 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %buffer_size.i, align 4
  %mul.i.i337 = mul i32 %49, %47
  %div1.i.i338 = lshr i32 %mul.i.i337, 3
  tail call fastcc void @snd_azf3328_codec_setdmaa(ptr noundef %1, ptr noundef %5, i32 noundef %41, i32 noundef %div1.i.i, i32 noundef %div1.i.i338)
  %50 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_lock(ptr noundef %51) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !319
  tail call void @arm_heavy_mb() #12
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %5, align 4
  %and.i339 = and i32 %53, 1048575
  %add1.i340 = or i32 %and.i339, -18874368
  %54 = inttoptr i32 %add1.i340 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %54, i16 0) #12, !srcloc !299
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !319
  tail call void @arm_heavy_mb() #12
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %5, align 4
  %and.i341 = and i32 %56, 1048575
  %add1.i342 = or i32 %and.i341, -18874368
  %57 = inttoptr i32 %add1.i342 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %57, i16 512) #12, !srcloc !299
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !319
  tail call void @arm_heavy_mb() #12
  %58 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %5, align 4
  %and.i343 = and i32 %59, 1048575
  %add1.i344 = or i32 %and.i343, -18874368
  %60 = inttoptr i32 %add1.i344 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %60, i16 1536) #12, !srcloc !299
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !319
  tail call void @arm_heavy_mb() #12
  %61 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %5, align 4
  %and.i345 = and i32 %62, 1048575
  %add1.i346 = or i32 %and.i345, -18874368
  %63 = inttoptr i32 %add1.i346 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %63, i16 14592) #12, !srcloc !299
  %64 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock(ptr noundef %65) #12
  %66 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %type, align 4
  tail call fastcc void @snd_azf3328_ctrl_codec_activity(ptr noundef %1, i32 noundef %67, i1 noundef zeroext true)
  %cmp.not = xor i1 %cmp, true
  %brmerge = select i1 %cmp.not, i1 true, i1 %previously_muted.0.off0
  br i1 %brmerge, label %if.end10.do.body27_crit_edge, label %if.then23

if.end10.do.body27_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27

if.then23:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %mixer_io.i.i347 = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 4
  %68 = ptrtoint ptr %mixer_io.i.i347 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mixer_io.i.i347, align 4
  %add1.i.i348 = add i32 %69, 23
  %and.i.i.i349 = and i32 %add1.i.i348, 1048575
  %add.i.i.i350 = or i32 %and.i.i.i349, -18874368
  %70 = inttoptr i32 %add.i.i.i350 to ptr
  %71 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %70) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !295
  %and5.i.i.i351 = and i8 %71, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !296
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %70, i8 %and5.i.i.i351) #12, !srcloc !292
  br label %do.body27

do.body27:                                        ; preds = %if.then23, %if.end10.do.body27_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_pcm_trigger.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_pcm_trigger, %if.then39)) #12
          to label %cleanup [label %if.then39], !srcloc !297

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #14
  %card40 = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 10
  %72 = ptrtoint ptr %card40 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %card40, align 4
  %dev41 = getelementptr inbounds %struct.snd_card, ptr %73, i32 0, i32 27
  %74 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev41, align 8
  %name42 = getelementptr inbounds %struct.snd_azf3328_codec_data, ptr %5, i32 0, i32 6
  %76 = ptrtoint ptr %name42 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %name42, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_pcm_trigger.__UNIQUE_ID_ddebug261, ptr noundef %75, ptr noundef nonnull @.str.67, ptr noundef %77) #12
  br label %cleanup

do.body47:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_pcm_trigger.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_pcm_trigger, %if.then59)) #12
          to label %do.end65 [label %if.then59], !srcloc !297

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #14
  %card60 = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 10
  %78 = ptrtoint ptr %card60 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %card60, align 4
  %dev61 = getelementptr inbounds %struct.snd_card, ptr %79, i32 0, i32 27
  %80 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev61, align 8
  %name62 = getelementptr inbounds %struct.snd_azf3328_codec_data, ptr %5, i32 0, i32 6
  %82 = ptrtoint ptr %name62 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %name62, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_pcm_trigger.__UNIQUE_ID_ddebug262, ptr noundef %81, ptr noundef nonnull @.str.68, ptr noundef %83) #12
  br label %do.end65

do.end65:                                         ; preds = %if.then59, %do.body47
  %lock66 = getelementptr inbounds %struct.snd_azf3328_codec_data, ptr %5, i32 0, i32 2
  %84 = ptrtoint ptr %lock66 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %lock66, align 4
  tail call void @_raw_spin_lock(ptr noundef %85) #12
  %running = getelementptr inbounds %struct.snd_azf3328_codec_data, ptr %5, i32 0, i32 4
  %86 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %running, align 4, !range !290
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool67.not = icmp eq i8 %87, 0
  br i1 %tobool67.not, label %do.end65.if.end72_crit_edge, label %if.then68

do.end65.if.end72_crit_edge:                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then68:                                        ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %5, align 4
  %and.i353 = and i32 %89, 1048575
  %add1.i354 = or i32 %and.i353, -18874368
  %90 = inttoptr i32 %add1.i354 to ptr
  %91 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %90) #12, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !320
  %92 = or i16 %91, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !319
  tail call void @arm_heavy_mb() #12
  %93 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %5, align 4
  %and.i355 = and i32 %94, 1048575
  %add1.i356 = or i32 %and.i355, -18874368
  %95 = inttoptr i32 %add1.i356 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %95, i16 %92) #12, !srcloc !299
  br label %if.end72

if.end72:                                         ; preds = %if.then68, %do.end65.if.end72_crit_edge
  %96 = ptrtoint ptr %lock66 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %lock66, align 4
  tail call void @_raw_spin_unlock(ptr noundef %97) #12
  br label %cleanup

do.body75:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_pcm_trigger.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_pcm_trigger, %if.then87)) #12
          to label %do.end93 [label %if.then87], !srcloc !297

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #14
  %card88 = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 10
  %98 = ptrtoint ptr %card88 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %card88, align 4
  %dev89 = getelementptr inbounds %struct.snd_card, ptr %99, i32 0, i32 27
  %100 = ptrtoint ptr %dev89 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev89, align 8
  %name90 = getelementptr inbounds %struct.snd_azf3328_codec_data, ptr %5, i32 0, i32 6
  %102 = ptrtoint ptr %name90 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %name90, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_pcm_trigger.__UNIQUE_ID_ddebug263, ptr noundef %101, ptr noundef nonnull @.str.69, ptr noundef %103) #12
  br label %do.end93

do.end93:                                         ; preds = %if.then87, %do.body75
  br i1 %cmp, label %if.then95, label %do.end93.if.end98_crit_edge

do.end93.if.end98_crit_edge:                      ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98

if.then95:                                        ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #14
  %mixer_io.i.i357 = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 4
  %104 = ptrtoint ptr %mixer_io.i.i357 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %mixer_io.i.i357, align 4
  %add1.i.i358 = add i32 %105, 23
  %and.i.i.i359 = and i32 %add1.i.i358, 1048575
  %add.i.i.i360 = or i32 %and.i.i.i359, -18874368
  %106 = inttoptr i32 %add.i.i.i360 to ptr
  %107 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %106) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !295
  %cond.i.i.i362 = or i8 %107, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !296
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %106, i8 %cond.i.i.i362) #12, !srcloc !292
  call void @__sanitizer_cov_trace_cmp1(i8 %cond.i.i.i362, i8 %107)
  %cmp.not.i.i.i363.not = icmp eq i8 %cond.i.i.i362, %107
  br label %if.end98

if.end98:                                         ; preds = %if.then95, %do.end93.if.end98_crit_edge
  %previously_muted.1.off0 = phi i1 [ %cmp.not.i.i.i363.not, %if.then95 ], [ false, %do.end93.if.end98_crit_edge ]
  %lock99 = getelementptr inbounds %struct.snd_azf3328_codec_data, ptr %5, i32 0, i32 2
  %108 = ptrtoint ptr %lock99 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %lock99, align 4
  tail call void @_raw_spin_lock(ptr noundef %109) #12
  %110 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %5, align 4
  %and.i365 = and i32 %111, 1048575
  %add1.i366 = or i32 %and.i365, -18874368
  %112 = inttoptr i32 %add1.i366 to ptr
  %113 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %112) #12, !srcloc !301
  %114 = tail call i16 @llvm.bswap.i16(i16 %113) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !320
  %115 = and i16 %114, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !319
  tail call void @arm_heavy_mb() #12
  %116 = tail call i16 @llvm.bswap.i16(i16 %115) #12
  %117 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %5, align 4
  %and.i367 = and i32 %118, 1048575
  %add1.i368 = or i32 %and.i367, -18874368
  %119 = inttoptr i32 %add1.i368 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %119, i16 %116) #12, !srcloc !299
  %120 = or i16 %115, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !319
  tail call void @arm_heavy_mb() #12
  %121 = tail call i16 @llvm.bswap.i16(i16 %120) #12
  %122 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %5, align 4
  %and.i369 = and i32 %123, 1048575
  %add1.i370 = or i32 %and.i369, -18874368
  %124 = inttoptr i32 %add1.i370 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %124, i16 %121) #12, !srcloc !299
  %125 = and i16 %114, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !319
  tail call void @arm_heavy_mb() #12
  %126 = tail call i16 @llvm.bswap.i16(i16 %125) #12
  %127 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %5, align 4
  %and.i371 = and i32 %128, 1048575
  %add1.i372 = or i32 %and.i371, -18874368
  %129 = inttoptr i32 %add1.i372 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %129, i16 %126) #12, !srcloc !299
  %130 = ptrtoint ptr %lock99 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %lock99, align 4
  tail call void @_raw_spin_unlock(ptr noundef %131) #12
  %132 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %type, align 4
  tail call fastcc void @snd_azf3328_ctrl_codec_activity(ptr noundef %1, i32 noundef %133, i1 noundef zeroext false)
  %cmp.not314 = xor i1 %cmp, true
  %brmerge315 = select i1 %cmp.not314, i1 true, i1 %previously_muted.1.off0
  br i1 %brmerge315, label %if.end98.do.body119_crit_edge, label %if.then115

if.end98.do.body119_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body119

if.then115:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #14
  %mixer_io.i.i373 = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 4
  %134 = ptrtoint ptr %mixer_io.i.i373 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %mixer_io.i.i373, align 4
  %add1.i.i374 = add i32 %135, 23
  %and.i.i.i375 = and i32 %add1.i.i374, 1048575
  %add.i.i.i376 = or i32 %and.i.i.i375, -18874368
  %136 = inttoptr i32 %add.i.i.i376 to ptr
  %137 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %136) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !295
  %and5.i.i.i377 = and i8 %137, 127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !296
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %136, i8 %and5.i.i.i377) #12, !srcloc !292
  br label %do.body119

do.body119:                                       ; preds = %if.then115, %if.end98.do.body119_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_pcm_trigger.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_pcm_trigger, %if.then131)) #12
          to label %cleanup [label %if.then131], !srcloc !297

if.then131:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #14
  %card132 = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 10
  %138 = ptrtoint ptr %card132 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %card132, align 4
  %dev133 = getelementptr inbounds %struct.snd_card, ptr %139, i32 0, i32 27
  %140 = ptrtoint ptr %dev133 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev133, align 8
  %name134 = getelementptr inbounds %struct.snd_azf3328_codec_data, ptr %5, i32 0, i32 6
  %142 = ptrtoint ptr %name134 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %name134, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_pcm_trigger.__UNIQUE_ID_ddebug264, ptr noundef %141, ptr noundef nonnull @.str.70, ptr noundef %143) #12
  br label %cleanup

do.body139:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_pcm_trigger.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_pcm_trigger, %if.then151)) #12
          to label %do.end157 [label %if.then151], !srcloc !297

if.then151:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #14
  %card152 = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 10
  %144 = ptrtoint ptr %card152 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %card152, align 4
  %dev153 = getelementptr inbounds %struct.snd_card, ptr %145, i32 0, i32 27
  %146 = ptrtoint ptr %dev153 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev153, align 8
  %name154 = getelementptr inbounds %struct.snd_azf3328_codec_data, ptr %5, i32 0, i32 6
  %148 = ptrtoint ptr %name154 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %name154, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_pcm_trigger.__UNIQUE_ID_ddebug265, ptr noundef %147, ptr noundef nonnull @.str.71, ptr noundef %149) #12
  br label %do.end157

do.end157:                                        ; preds = %if.then151, %do.body139
  %150 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %5, align 4
  %and.i379 = and i32 %151, 1048575
  %add1.i380 = or i32 %and.i379, -18874368
  %152 = inttoptr i32 %add1.i380 to ptr
  %153 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %152) #12, !srcloc !301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !320
  %154 = and i16 %153, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !319
  tail call void @arm_heavy_mb() #12
  %155 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %5, align 4
  %and.i381 = and i32 %156, 1048575
  %add1.i382 = or i32 %and.i381, -18874368
  %157 = inttoptr i32 %add1.i382 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %157, i16 %154) #12, !srcloc !299
  br label %cleanup

do.end174:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1593, i32 noundef 9, ptr noundef nonnull @.str.72) #12
  br label %cleanup

do.end201:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1596, i32 noundef 9, ptr noundef nonnull @.str.73) #12
  br label %cleanup

do.end227:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1599, i32 noundef 9, ptr noundef nonnull @.str.74) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end227, %do.end201, %do.end174, %do.end157, %if.then131, %do.body119, %if.end72, %if.then39, %do.body27
  %retval.0 = phi i32 [ -22, %do.end227 ], [ 0, %if.then131 ], [ 0, %if.then39 ], [ 0, %do.end201 ], [ 0, %do.end174 ], [ 0, %do.end157 ], [ 0, %if.end72 ], [ 0, %do.body27 ], [ 0, %do.body119 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_azf3328_pcm_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %5 = load i32, ptr %3, align 4
  %add.i = add i32 %5, 16
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #12, !srcloc !317
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !318
  %dma_base = getelementptr inbounds %struct.snd_azf3328_codec_data, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %dma_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_base, align 4
  %sub = sub i32 %8, %10
  %11 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %runtime, align 4
  %mul.i = shl i32 %sub, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %12, i32 0, i32 21
  %13 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_pcm_pointer.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_pcm_pointer, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !297

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %substream, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 27
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %name = getelementptr inbounds %struct.snd_azf3328_codec_data, ptr %3, i32 0, i32 6
  %22 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_pcm_pointer.__UNIQUE_ID_ddebug266, ptr noundef %20, ptr noundef nonnull @.str.81, i32 noundef %21, ptr noundef %23, i32 noundef %sub, i32 noundef %div.i) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 %div.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_azf3328_codec_setdmaa(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %codec, i32 noundef %addr, i32 noundef %period_bytes, i32 noundef %buffer_bytes) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %period_bytes, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %land.rhs

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b140 = load i1, ptr @snd_azf3328_codec_setdmaa.__already_done, align 1
  br i1 %.b140, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !323

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @snd_azf3328_codec_setdmaa.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1380, i32 noundef 9, ptr noundef nonnull @.str.75) #12
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  %mul = shl i32 %period_bytes, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %buffer_bytes)
  %cmp.not = icmp eq i32 %mul, %buffer_bytes
  br i1 %cmp.not, label %if.end28.if.end81_crit_edge, label %land.rhs43

if.end28.if.end81_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

land.rhs43:                                       ; preds = %if.end28
  %.b137139 = load i1, ptr @snd_azf3328_codec_setdmaa.__already_done.76, align 1
  br i1 %.b137139, label %land.rhs43.if.end81_crit_edge, label %if.then54, !prof !323

land.rhs43.if.end81_crit_edge:                    ; preds = %land.rhs43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.then54:                                        ; preds = %land.rhs43
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @snd_azf3328_codec_setdmaa.__already_done.76, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1383, i32 noundef 9, ptr noundef nonnull @.str.77, i32 noundef %buffer_bytes, i32 noundef %period_bytes) #12
  br label %if.end81

if.end81:                                         ; preds = %if.then54, %land.rhs43.if.end81_crit_edge, %if.end28.if.end81_crit_edge
  %running = getelementptr inbounds %struct.snd_azf3328_codec_data, ptr %codec, i32 0, i32 4
  %0 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %running, align 4, !range !290
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool89.not = icmp eq i8 %1, 0
  br i1 %tobool89.not, label %if.then90, label %if.end81.if.end118_crit_edge

if.end81.if.end118_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

if.then90:                                        ; preds = %if.end81
  %div138 = lshr i32 %buffer_bytes, 1
  %add = add i32 %div138, %addr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_codec_setdmaa.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_codec_setdmaa, %if.then101)) #12
          to label %do.end106 [label %if.then101], !srcloc !297

if.then101:                                       ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  %card = getelementptr inbounds %struct.snd_azf3328, ptr %chip, i32 0, i32 10
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_codec_setdmaa.__UNIQUE_ID_ddebug259, ptr noundef %5, ptr noundef nonnull @.str.79, i32 noundef %addr, i32 noundef %div138, i32 noundef %add, i32 noundef %div138, i32 noundef %period_bytes, i32 noundef %buffer_bytes) #12
  br label %do.end106

do.end106:                                        ; preds = %if.then101, %if.then90
  %shl = shl i32 %div138, 16
  %or = or i32 %shl, %div138
  %lock = getelementptr inbounds %struct.snd_azf3328_codec_data, ptr %codec, i32 0, i32 2
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock, align 4
  %call112 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #12
  %8 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %codec, align 4
  %addr.0.i = add i32 %9, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !324
  tail call void @arm_heavy_mb() #12
  %10 = tail call i32 @llvm.bswap.i32(i32 %addr) #12
  %and.i = and i32 %addr.0.i, 1048575
  %add2.i = or i32 %and.i, -18874368
  %11 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 %10) #12, !srcloc !322
  %addr.0.1.i = add i32 %9, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !324
  tail call void @arm_heavy_mb() #12
  %12 = tail call i32 @llvm.bswap.i32(i32 %add) #12
  %and.1.i = and i32 %addr.0.1.i, 1048575
  %add2.1.i = or i32 %and.1.i, -18874368
  %13 = inttoptr i32 %add2.1.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %13, i32 %12) #12, !srcloc !322
  %addr.0.2.i = add i32 %9, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !324
  tail call void @arm_heavy_mb() #12
  %14 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %and.2.i = and i32 %addr.0.2.i, 1048575
  %add2.2.i = or i32 %and.2.i, -18874368
  %15 = inttoptr i32 %add2.2.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 %14) #12, !srcloc !322
  %16 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %call112) #12
  br label %if.end118

if.end118:                                        ; preds = %do.end106, %if.end81.if.end118_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_azf3328_pcm_capture_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i, align 4
  %arrayidx.i = getelementptr %struct.snd_azf3328, ptr %1, i32 0, i32 8, i32 1
  %substream2.i = getelementptr %struct.snd_azf3328, ptr %1, i32 0, i32 8, i32 1, i32 3
  %4 = ptrtoint ptr %substream2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %substream2.i, align 4
  %hw.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %5 = call ptr @memcpy(ptr %hw.i, ptr @snd_azf3328_hardware, i32 64)
  %call.i = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @snd_azf3328_hw_constraints_rates) #12
  %private_data3.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %6 = ptrtoint ptr %private_data3.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx.i, ptr %private_data3.i, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_azf3328_pcm_i2s_out_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i, align 4
  %arrayidx.i = getelementptr %struct.snd_azf3328, ptr %1, i32 0, i32 8, i32 2
  %substream2.i = getelementptr %struct.snd_azf3328, ptr %1, i32 0, i32 8, i32 2, i32 3
  %4 = ptrtoint ptr %substream2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %substream2.i, align 4
  %hw.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %5 = call ptr @memcpy(ptr %hw.i, ptr @snd_azf3328_hardware, i32 64)
  %call.i = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @snd_azf3328_hw_constraints_rates) #12
  %private_data3.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %6 = ptrtoint ptr %private_data3.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx.i, ptr %private_data3.i, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_set_phys(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_azf3328_gameport_open(ptr nocapture noundef readonly %gameport, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gameport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gameport, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_gameport_open.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_gameport_open, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !297

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %card = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_gameport_open.__UNIQUE_ID_ddebug268, ptr noundef %5, ptr noundef nonnull @.str.87, i32 noundef %mode) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mode.off = add i32 %mode, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode.off)
  %switch = icmp ult i32 %mode.off, 2
  %game_io.i = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %game_io.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %game_io.i, align 4
  %add.i = add i32 %7, 4
  %and.i.i = and i32 %add.i, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %8 = inttoptr i32 %add.i.i to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !295
  %and5.i.i = and i8 %9, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !296
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %and5.i.i) #12, !srcloc !292
  %10 = ptrtoint ptr %game_io.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %game_io.i, align 4
  %add2.i = add i32 %11, 4
  %and.i8.i = and i32 %add2.i, 1048575
  %add.i9.i = or i32 %and.i8.i, -18874368
  %12 = inttoptr i32 %add.i9.i to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !295
  %and5.i11.i = and i8 %13, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !296
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %and5.i11.i) #12, !srcloc !292
  %shadow_reg_ctrl_6AH4.i.i = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %shadow_reg_ctrl_6AH4.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %shadow_reg_ctrl_6AH4.i.i, align 4
  %conv6.i.i = and i16 %15, -1025
  %masksel.i = select i1 %switch, i16 0, i16 1024
  %conv3.sink.i.i = or i16 %conv6.i.i, %masksel.i
  store i16 %conv3.sink.i.i, ptr %shadow_reg_ctrl_6AH4.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_ctrl_reg_6AH_update.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_gameport_open, %if.then12.i.i)) #12
          to label %snd_azf3328_gameport_axis_circuit_enable.exit [label %if.then12.i.i], !srcloc !297

if.then12.i.i:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %lnot.i.i = xor i1 %switch, true
  %card.i.i = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i, align 8
  %conv14.i.i = zext i1 %lnot.i.i to i32
  %20 = ptrtoint ptr %shadow_reg_ctrl_6AH4.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %shadow_reg_ctrl_6AH4.i.i, align 4
  %conv16.i.i = zext i16 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_ctrl_reg_6AH_update.__UNIQUE_ID_ddebug256, ptr noundef %19, ptr noundef nonnull @.str.57, i32 noundef 1024, i32 noundef %conv14.i.i, i32 noundef %conv16.i.i) #12
  br label %snd_azf3328_gameport_axis_circuit_enable.exit

snd_azf3328_gameport_axis_circuit_enable.exit:    ; preds = %if.then12.i.i, %do.end
  %not.switch = xor i1 %switch, true
  %.7 = sext i1 %not.switch to i32
  %22 = ptrtoint ptr %shadow_reg_ctrl_6AH4.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %shadow_reg_ctrl_6AH4.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !298
  tail call void @arm_heavy_mb() #12
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #12
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 4
  %add.i.i.i = add i32 %26, 106
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %27 = inttoptr i32 %add1.i.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %27, i16 %24) #12, !srcloc !299
  ret i32 %.7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_azf3328_gameport_close(ptr nocapture noundef readonly %gameport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gameport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gameport, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_gameport_close.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_gameport_close, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !297

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %card = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_gameport_close.__UNIQUE_ID_ddebug269, ptr noundef %5, ptr noundef nonnull @.str.89) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %game_io.i = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %game_io.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %game_io.i, align 4
  %add.i = add i32 %7, 4
  %and.i.i = and i32 %add.i, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %8 = inttoptr i32 %add.i.i to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !295
  %cond.i.i = or i8 %9, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !296
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %cond.i.i) #12, !srcloc !292
  %10 = ptrtoint ptr %game_io.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %game_io.i, align 4
  %add2.i = add i32 %11, 4
  %and.i8.i = and i32 %add2.i, 1048575
  %add.i9.i = or i32 %and.i8.i, -18874368
  %12 = inttoptr i32 %add.i9.i to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !295
  %cond.i12.i = or i8 %13, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !296
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %cond.i12.i) #12, !srcloc !292
  %shadow_reg_ctrl_6AH4.i.i = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %shadow_reg_ctrl_6AH4.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %shadow_reg_ctrl_6AH4.i.i, align 4
  %conv3.sink.i.i = or i16 %15, 1024
  store i16 %conv3.sink.i.i, ptr %shadow_reg_ctrl_6AH4.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_ctrl_reg_6AH_update.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_gameport_close, %if.then12.i.i)) #12
          to label %snd_azf3328_gameport_axis_circuit_enable.exit [label %if.then12.i.i], !srcloc !297

if.then12.i.i:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %card.i.i = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i, align 8
  %20 = ptrtoint ptr %shadow_reg_ctrl_6AH4.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %shadow_reg_ctrl_6AH4.i.i, align 4
  %conv16.i.i = zext i16 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_ctrl_reg_6AH_update.__UNIQUE_ID_ddebug256, ptr noundef %19, ptr noundef nonnull @.str.57, i32 noundef 1024, i32 noundef 1, i32 noundef %conv16.i.i) #12
  br label %snd_azf3328_gameport_axis_circuit_enable.exit

snd_azf3328_gameport_axis_circuit_enable.exit:    ; preds = %if.then12.i.i, %do.end
  %22 = ptrtoint ptr %shadow_reg_ctrl_6AH4.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %shadow_reg_ctrl_6AH4.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !298
  tail call void @arm_heavy_mb() #12
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #12
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 4
  %add.i.i.i = add i32 %26, 106
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %27 = inttoptr i32 %add1.i.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %27, i16 %24) #12, !srcloc !299
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_azf3328_gameport_cooked_read(ptr nocapture noundef readonly %gameport, ptr nocapture noundef %axes, ptr nocapture noundef %buttons) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gameport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gameport, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %do.body25, !prof !325

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1740, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

do.body25:                                        ; preds = %entry
  %reg_lock = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 5
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #12
  %game_io.i = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %game_io.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %game_io.i, align 4
  %and.i = and i32 %3, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !304
  %6 = xor i8 %5, -1
  %7 = lshr i8 %6, 4
  %and = zext i8 %7 to i32
  %8 = ptrtoint ptr %buttons to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %buttons, align 4
  %9 = ptrtoint ptr %game_io.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %game_io.i, align 4
  %add.i = add i32 %10, 1
  %and.i116 = and i32 %add.i, 1048575
  %add1.i117 = or i32 %and.i116, -18874368
  %11 = inttoptr i32 %add1.i117 to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #12, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %tobool37.not = icmp sgt i8 %12, -1
  br i1 %tobool37.not, label %do.body25.if.end44_crit_edge, label %for.body.preheader

do.body25.if.end44_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

for.body.preheader:                               ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !326
  tail call void @arm_heavy_mb() #12
  %13 = ptrtoint ptr %game_io.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %game_io.i, align 4
  %add.i119 = add i32 %14, 1
  %and.i120 = and i32 %add.i119, 1048575
  %add1.i121 = or i32 %and.i120, -18874368
  %15 = inttoptr i32 %add1.i121 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 15) #12, !srcloc !292
  %16 = ptrtoint ptr %game_io.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %game_io.i, align 4
  %add.i123 = add i32 %17, 2
  %and.i124 = and i32 %add.i123, 1048575
  %add1.i125 = or i32 %and.i124, -18874368
  %18 = inttoptr i32 %add1.i125 to ptr
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %18) #12, !srcloc !301
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !302
  %arrayidx = getelementptr %struct.snd_azf3328, ptr %1, i32 0, i32 13, i32 0
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %arrayidx, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !326
  tail call void @arm_heavy_mb() #12
  %22 = ptrtoint ptr %game_io.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %game_io.i, align 4
  %add.i119.1 = add i32 %23, 1
  %and.i120.1 = and i32 %add.i119.1, 1048575
  %add1.i121.1 = or i32 %and.i120.1, -18874368
  %24 = inttoptr i32 %add1.i121.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 31) #12, !srcloc !292
  %25 = ptrtoint ptr %game_io.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %game_io.i, align 4
  %add.i123.1 = add i32 %26, 2
  %and.i124.1 = and i32 %add.i123.1, 1048575
  %add1.i125.1 = or i32 %and.i124.1, -18874368
  %27 = inttoptr i32 %add1.i125.1 to ptr
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %27) #12, !srcloc !301
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !302
  %arrayidx.1 = getelementptr %struct.snd_azf3328, ptr %1, i32 0, i32 13, i32 1
  %30 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %arrayidx.1, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !326
  tail call void @arm_heavy_mb() #12
  %31 = ptrtoint ptr %game_io.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %game_io.i, align 4
  %add.i119.2 = add i32 %32, 1
  %and.i120.2 = and i32 %add.i119.2, 1048575
  %add1.i121.2 = or i32 %and.i120.2, -18874368
  %33 = inttoptr i32 %add1.i121.2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 47) #12, !srcloc !292
  %34 = ptrtoint ptr %game_io.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %game_io.i, align 4
  %add.i123.2 = add i32 %35, 2
  %and.i124.2 = and i32 %add.i123.2, 1048575
  %add1.i125.2 = or i32 %and.i124.2, -18874368
  %36 = inttoptr i32 %add1.i125.2 to ptr
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %36) #12, !srcloc !301
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !302
  %arrayidx.2 = getelementptr %struct.snd_azf3328, ptr %1, i32 0, i32 13, i32 2
  %39 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %arrayidx.2, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !326
  tail call void @arm_heavy_mb() #12
  %40 = ptrtoint ptr %game_io.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %game_io.i, align 4
  %add.i119.3 = add i32 %41, 1
  %and.i120.3 = and i32 %add.i119.3, 1048575
  %add1.i121.3 = or i32 %and.i120.3, -18874368
  %42 = inttoptr i32 %add1.i121.3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 63) #12, !srcloc !292
  %43 = ptrtoint ptr %game_io.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %game_io.i, align 4
  %add.i123.3 = add i32 %44, 2
  %and.i124.3 = and i32 %add.i123.3, 1048575
  %add1.i125.3 = or i32 %and.i124.3, -18874368
  %45 = inttoptr i32 %add1.i125.3 to ptr
  %46 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %45) #12, !srcloc !301
  %47 = tail call i16 @llvm.bswap.i16(i16 %46) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !302
  %arrayidx.3 = getelementptr %struct.snd_azf3328, ptr %1, i32 0, i32 13, i32 3
  %48 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %arrayidx.3, align 2
  br label %if.end44

if.end44:                                         ; preds = %for.body.preheader, %do.body25.if.end44_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !326
  tail call void @arm_heavy_mb() #12
  %49 = ptrtoint ptr %game_io.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %game_io.i, align 4
  %add.i127 = add i32 %50, 1
  %and.i128 = and i32 %add.i127, 1048575
  %add1.i129 = or i32 %and.i128, -18874368
  %51 = inttoptr i32 %add1.i129 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 3) #12, !srcloc !292
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !327
  tail call void @arm_heavy_mb() #12
  %52 = ptrtoint ptr %game_io.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %game_io.i, align 4
  %add.i131 = add i32 %53, 2
  %and.i132 = and i32 %add.i131, 1048575
  %add1.i133 = or i32 %and.i132, -18874368
  %54 = inttoptr i32 %add1.i133 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %54, i16 -1) #12, !srcloc !299
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call27) #12
  %arrayidx51 = getelementptr %struct.snd_azf3328, ptr %1, i32 0, i32 13, i32 0
  %55 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx51, align 2
  %conv52 = zext i16 %56 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %56)
  %cmp55 = icmp eq i16 %56, -1
  %spec.select = select i1 %cmp55, i32 -1, i32 %conv52
  %57 = ptrtoint ptr %axes to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %spec.select, ptr %axes, align 4
  %arrayidx51.1 = getelementptr %struct.snd_azf3328, ptr %1, i32 0, i32 13, i32 1
  %58 = ptrtoint ptr %arrayidx51.1 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx51.1, align 2
  %conv52.1 = zext i16 %59 to i32
  %arrayidx53.1 = getelementptr i32, ptr %axes, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %59)
  %cmp55.1 = icmp eq i16 %59, -1
  %spec.select.1 = select i1 %cmp55.1, i32 -1, i32 %conv52.1
  %60 = ptrtoint ptr %arrayidx53.1 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %spec.select.1, ptr %arrayidx53.1, align 4
  %arrayidx51.2 = getelementptr %struct.snd_azf3328, ptr %1, i32 0, i32 13, i32 2
  %61 = ptrtoint ptr %arrayidx51.2 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx51.2, align 2
  %conv52.2 = zext i16 %62 to i32
  %arrayidx53.2 = getelementptr i32, ptr %axes, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %62)
  %cmp55.2 = icmp eq i16 %62, -1
  %spec.select.2 = select i1 %cmp55.2, i32 -1, i32 %conv52.2
  %63 = ptrtoint ptr %arrayidx53.2 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %spec.select.2, ptr %arrayidx53.2, align 4
  %arrayidx51.3 = getelementptr %struct.snd_azf3328, ptr %1, i32 0, i32 13, i32 3
  %64 = ptrtoint ptr %arrayidx51.3 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx51.3, align 2
  %conv52.3 = zext i16 %65 to i32
  %arrayidx53.3 = getelementptr i32, ptr %axes, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %65)
  %cmp55.3 = icmp eq i16 %65, -1
  %spec.select.3 = select i1 %cmp55.3, i32 -1, i32 %conv52.3
  %66 = ptrtoint ptr %arrayidx53.3 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %spec.select.3, ptr %arrayidx53.3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_gameport_cooked_read.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_gameport_cooked_read, %if.then73)) #12
          to label %cleanup [label %if.then73], !srcloc !297

if.then73:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %card = getelementptr inbounds %struct.snd_azf3328, ptr %1, i32 0, i32 10
  %67 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %68, i32 0, i32 27
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev, align 8
  %71 = ptrtoint ptr %axes to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %axes, align 4
  %73 = ptrtoint ptr %arrayidx53.1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx53.1, align 4
  %75 = ptrtoint ptr %arrayidx53.2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx53.2, align 4
  %77 = ptrtoint ptr %arrayidx53.3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx53.3, align 4
  %79 = ptrtoint ptr %buttons to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %buttons, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_gameport_cooked_read.__UNIQUE_ID_ddebug270, ptr noundef %70, ptr noundef nonnull @.str.91, i32 noundef %72, i32 noundef %74, i32 noundef %76, i32 noundef %78, i32 noundef %80) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %if.end44, %do.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__gameport_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_azf3328_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %ac97.i = getelementptr inbounds %struct.snd_azf3328, ptr %3, i32 0, i32 9
  %5 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ac97.i, align 4
  tail call void @snd_ac97_suspend(ptr noundef %6) #12
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 4
  %saved_regs_ctrl = getelementptr inbounds %struct.snd_azf3328, ptr %3, i32 0, i32 17
  %card.i = getelementptr inbounds %struct.snd_azf3328, ptr %3, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %do.end.i.for.body.i_crit_edge, %entry
  %io_addr.addr.016.i = phi i32 [ %8, %entry ], [ %add6.i, %do.end.i.for.body.i_crit_edge ]
  %saved_regs.addr.015.i = phi ptr [ %saved_regs_ctrl, %entry ], [ %incdec.ptr.i, %do.end.i.for.body.i_crit_edge ]
  %reg.014.i = phi i32 [ 0, %entry ], [ %inc.i, %do.end.i.for.body.i_crit_edge ]
  %and.i = and i32 %io_addr.addr.016.i, 1048575
  %add.i = or i32 %and.i, -18874368
  %9 = inttoptr i32 %add.i to ptr
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #12, !srcloc !317
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !328
  %12 = ptrtoint ptr %saved_regs.addr.015.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %saved_regs.addr.015.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_suspend_regs.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_suspend, %if.then.i)) #12
          to label %do.end.i [label %if.then.i], !srcloc !297

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 8
  %17 = ptrtoint ptr %saved_regs.addr.015.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %saved_regs.addr.015.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_suspend_regs.__UNIQUE_ID_ddebug285, ptr noundef %16, ptr noundef nonnull @.str.93, i32 noundef %io_addr.addr.016.i, i32 noundef %18) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %for.body.i
  %incdec.ptr.i = getelementptr i32, ptr %saved_regs.addr.015.i, i32 1
  %add6.i = add i32 %io_addr.addr.016.i, 4
  %inc.i = add nuw nsw i32 %reg.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 28
  br i1 %exitcond.not.i, label %snd_azf3328_suspend_regs.exit, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

snd_azf3328_suspend_regs.exit:                    ; preds = %do.end.i
  %shadow_reg_ctrl_6AH = getelementptr inbounds %struct.snd_azf3328, ptr %3, i32 0, i32 16
  %19 = ptrtoint ptr %shadow_reg_ctrl_6AH to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %shadow_reg_ctrl_6AH, align 4
  %arrayidx = getelementptr i16, ptr %saved_regs_ctrl, i32 53
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %arrayidx, align 2
  %game_io = getelementptr inbounds %struct.snd_azf3328, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %game_io to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %game_io, align 4
  %saved_regs_game = getelementptr inbounds %struct.snd_azf3328, ptr %3, i32 0, i32 18
  br label %for.body.i27

for.body.i27:                                     ; preds = %do.end.i34.for.body.i27_crit_edge, %snd_azf3328_suspend_regs.exit
  %io_addr.addr.016.i22 = phi i32 [ %23, %snd_azf3328_suspend_regs.exit ], [ %add6.i31, %do.end.i34.for.body.i27_crit_edge ]
  %saved_regs.addr.015.i23 = phi ptr [ %saved_regs_game, %snd_azf3328_suspend_regs.exit ], [ %incdec.ptr.i30, %do.end.i34.for.body.i27_crit_edge ]
  %reg.014.i24 = phi i32 [ 0, %snd_azf3328_suspend_regs.exit ], [ %inc.i32, %do.end.i34.for.body.i27_crit_edge ]
  %and.i25 = and i32 %io_addr.addr.016.i22, 1048575
  %add.i26 = or i32 %and.i25, -18874368
  %24 = inttoptr i32 %add.i26 to ptr
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %24) #12, !srcloc !317
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !328
  %27 = ptrtoint ptr %saved_regs.addr.015.i23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %saved_regs.addr.015.i23, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_suspend_regs.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_suspend, %if.then.i29)) #12
          to label %do.end.i34 [label %if.then.i29], !srcloc !297

if.then.i29:                                      ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card.i, align 4
  %dev.i28 = getelementptr inbounds %struct.snd_card, ptr %29, i32 0, i32 27
  %30 = ptrtoint ptr %dev.i28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i28, align 8
  %32 = ptrtoint ptr %saved_regs.addr.015.i23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %saved_regs.addr.015.i23, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_suspend_regs.__UNIQUE_ID_ddebug285, ptr noundef %31, ptr noundef nonnull @.str.93, i32 noundef %io_addr.addr.016.i22, i32 noundef %33) #12
  br label %do.end.i34

do.end.i34:                                       ; preds = %if.then.i29, %for.body.i27
  %incdec.ptr.i30 = getelementptr i32, ptr %saved_regs.addr.015.i23, i32 1
  %add6.i31 = add i32 %io_addr.addr.016.i22, 4
  %inc.i32 = add nuw nsw i32 %reg.014.i24, 1
  %exitcond.not.i33 = icmp eq i32 %inc.i32, 2
  br i1 %exitcond.not.i33, label %snd_azf3328_suspend_regs.exit35, label %do.end.i34.for.body.i27_crit_edge

do.end.i34.for.body.i27_crit_edge:                ; preds = %do.end.i34
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i27

snd_azf3328_suspend_regs.exit35:                  ; preds = %do.end.i34
  %mpu_io = getelementptr inbounds %struct.snd_azf3328, ptr %3, i32 0, i32 2
  %34 = ptrtoint ptr %mpu_io to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mpu_io, align 4
  %saved_regs_mpu = getelementptr inbounds %struct.snd_azf3328, ptr %3, i32 0, i32 19
  %and.i40 = and i32 %35, 1048575
  %add.i41 = or i32 %and.i40, -18874368
  %36 = inttoptr i32 %add.i41 to ptr
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %36) #12, !srcloc !317
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !328
  %39 = ptrtoint ptr %saved_regs_mpu to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %saved_regs_mpu, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_suspend_regs.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_suspend, %if.then.i44)) #12
          to label %do.end.i49 [label %if.then.i44], !srcloc !297

if.then.i44:                                      ; preds = %snd_azf3328_suspend_regs.exit35
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %card.i, align 4
  %dev.i43 = getelementptr inbounds %struct.snd_card, ptr %41, i32 0, i32 27
  %42 = ptrtoint ptr %dev.i43 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i43, align 8
  %44 = ptrtoint ptr %saved_regs_mpu to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %saved_regs_mpu, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_suspend_regs.__UNIQUE_ID_ddebug285, ptr noundef %43, ptr noundef nonnull @.str.93, i32 noundef %35, i32 noundef %45) #12
  br label %do.end.i49

do.end.i49:                                       ; preds = %if.then.i44, %snd_azf3328_suspend_regs.exit35
  %opl3_io = getelementptr inbounds %struct.snd_azf3328, ptr %3, i32 0, i32 3
  %46 = ptrtoint ptr %opl3_io to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %opl3_io, align 4
  %saved_regs_opl3 = getelementptr inbounds %struct.snd_azf3328, ptr %3, i32 0, i32 20
  br label %for.body.i57

for.body.i57:                                     ; preds = %do.end.i64.for.body.i57_crit_edge, %do.end.i49
  %io_addr.addr.016.i52 = phi i32 [ %47, %do.end.i49 ], [ %add6.i61, %do.end.i64.for.body.i57_crit_edge ]
  %saved_regs.addr.015.i53 = phi ptr [ %saved_regs_opl3, %do.end.i49 ], [ %incdec.ptr.i60, %do.end.i64.for.body.i57_crit_edge ]
  %reg.014.i54 = phi i32 [ 0, %do.end.i49 ], [ %inc.i62, %do.end.i64.for.body.i57_crit_edge ]
  %and.i55 = and i32 %io_addr.addr.016.i52, 1048575
  %add.i56 = or i32 %and.i55, -18874368
  %48 = inttoptr i32 %add.i56 to ptr
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %48) #12, !srcloc !317
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !328
  %51 = ptrtoint ptr %saved_regs.addr.015.i53 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %saved_regs.addr.015.i53, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_suspend_regs.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_suspend, %if.then.i59)) #12
          to label %do.end.i64 [label %if.then.i59], !srcloc !297

if.then.i59:                                      ; preds = %for.body.i57
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %card.i, align 4
  %dev.i58 = getelementptr inbounds %struct.snd_card, ptr %53, i32 0, i32 27
  %54 = ptrtoint ptr %dev.i58 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i58, align 8
  %56 = ptrtoint ptr %saved_regs.addr.015.i53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %saved_regs.addr.015.i53, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_suspend_regs.__UNIQUE_ID_ddebug285, ptr noundef %55, ptr noundef nonnull @.str.93, i32 noundef %io_addr.addr.016.i52, i32 noundef %57) #12
  br label %do.end.i64

do.end.i64:                                       ; preds = %if.then.i59, %for.body.i57
  %incdec.ptr.i60 = getelementptr i32, ptr %saved_regs.addr.015.i53, i32 1
  %add6.i61 = add i32 %io_addr.addr.016.i52, 4
  %inc.i62 = add nuw nsw i32 %reg.014.i54, 1
  %exitcond.not.i63 = icmp eq i32 %inc.i62, 2
  br i1 %exitcond.not.i63, label %snd_azf3328_suspend_regs.exit65, label %do.end.i64.for.body.i57_crit_edge

do.end.i64.for.body.i57_crit_edge:                ; preds = %do.end.i64
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i57

snd_azf3328_suspend_regs.exit65:                  ; preds = %do.end.i64
  call void @__sanitizer_cov_trace_pc() #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_azf3328_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %saved_regs_game = getelementptr inbounds %struct.snd_azf3328, ptr %3, i32 0, i32 18
  %game_io = getelementptr inbounds %struct.snd_azf3328, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %game_io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %game_io, align 4
  %card.i = getelementptr inbounds %struct.snd_azf3328, ptr %3, i32 0, i32 10
  br label %do.body.i

do.body.i:                                        ; preds = %do.end11.i.do.body.i_crit_edge, %entry
  %saved_regs.addr.023.i = phi ptr [ %saved_regs_game, %entry ], [ %incdec.ptr.i, %do.end11.i.do.body.i_crit_edge ]
  %io_addr.addr.022.i = phi i32 [ %5, %entry ], [ %add12.i, %do.end11.i.do.body.i_crit_edge ]
  %reg.021.i = phi i32 [ 0, %entry ], [ %inc.i, %do.end11.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !329
  tail call void @arm_heavy_mb() #12
  %6 = ptrtoint ptr %saved_regs.addr.023.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %saved_regs.addr.023.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #12
  %and.i = and i32 %io_addr.addr.022.i, 1048575
  %add.i = or i32 %and.i, -18874368
  %9 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 %8) #12, !srcloc !322
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_resume_regs.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_resume, %if.then.i)) #12
          to label %do.end11.i [label %if.then.i], !srcloc !297

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 8
  %14 = ptrtoint ptr %saved_regs.addr.023.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %saved_regs.addr.023.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #12, !srcloc !317
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !330
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_resume_regs.__UNIQUE_ID_ddebug286, ptr noundef %13, ptr noundef nonnull @.str.95, i32 noundef %io_addr.addr.022.i, i32 noundef %15, i32 noundef %17) #12
  br label %do.end11.i

do.end11.i:                                       ; preds = %if.then.i, %do.body.i
  %incdec.ptr.i = getelementptr i32, ptr %saved_regs.addr.023.i, i32 1
  %add12.i = add i32 %io_addr.addr.022.i, 4
  %inc.i = add nuw nsw i32 %reg.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2
  br i1 %exitcond.not.i, label %snd_azf3328_resume_regs.exit, label %do.end11.i.do.body.i_crit_edge

do.end11.i.do.body.i_crit_edge:                   ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

snd_azf3328_resume_regs.exit:                     ; preds = %do.end11.i
  %saved_regs_mpu = getelementptr inbounds %struct.snd_azf3328, ptr %3, i32 0, i32 19
  %mpu_io = getelementptr inbounds %struct.snd_azf3328, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %mpu_io to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mpu_io, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !329
  tail call void @arm_heavy_mb() #12
  %20 = ptrtoint ptr %saved_regs_mpu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %saved_regs_mpu, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #12
  %and.i21 = and i32 %19, 1048575
  %add.i22 = or i32 %and.i21, -18874368
  %23 = inttoptr i32 %add.i22 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %23, i32 %22) #12, !srcloc !322
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_resume_regs.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_resume, %if.then.i25)) #12
          to label %do.end11.i30 [label %if.then.i25], !srcloc !297

if.then.i25:                                      ; preds = %snd_azf3328_resume_regs.exit
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card.i, align 4
  %dev.i24 = getelementptr inbounds %struct.snd_card, ptr %25, i32 0, i32 27
  %26 = ptrtoint ptr %dev.i24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i24, align 8
  %28 = ptrtoint ptr %saved_regs_mpu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %saved_regs_mpu, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %23) #12, !srcloc !317
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !330
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_resume_regs.__UNIQUE_ID_ddebug286, ptr noundef %27, ptr noundef nonnull @.str.95, i32 noundef %19, i32 noundef %29, i32 noundef %31) #12
  br label %do.end11.i30

do.end11.i30:                                     ; preds = %if.then.i25, %snd_azf3328_resume_regs.exit
  %saved_regs_opl3 = getelementptr inbounds %struct.snd_azf3328, ptr %3, i32 0, i32 20
  %opl3_io = getelementptr inbounds %struct.snd_azf3328, ptr %3, i32 0, i32 3
  %32 = ptrtoint ptr %opl3_io to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %opl3_io, align 4
  br label %do.body.i38

do.body.i38:                                      ; preds = %do.end11.i45.do.body.i38_crit_edge, %do.end11.i30
  %saved_regs.addr.023.i33 = phi ptr [ %saved_regs_opl3, %do.end11.i30 ], [ %incdec.ptr.i41, %do.end11.i45.do.body.i38_crit_edge ]
  %io_addr.addr.022.i34 = phi i32 [ %33, %do.end11.i30 ], [ %add12.i42, %do.end11.i45.do.body.i38_crit_edge ]
  %reg.021.i35 = phi i32 [ 0, %do.end11.i30 ], [ %inc.i43, %do.end11.i45.do.body.i38_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !329
  tail call void @arm_heavy_mb() #12
  %34 = ptrtoint ptr %saved_regs.addr.023.i33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %saved_regs.addr.023.i33, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #12
  %and.i36 = and i32 %io_addr.addr.022.i34, 1048575
  %add.i37 = or i32 %and.i36, -18874368
  %37 = inttoptr i32 %add.i37 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %37, i32 %36) #12, !srcloc !322
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_resume_regs.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_resume, %if.then.i40)) #12
          to label %do.end11.i45 [label %if.then.i40], !srcloc !297

if.then.i40:                                      ; preds = %do.body.i38
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %card.i, align 4
  %dev.i39 = getelementptr inbounds %struct.snd_card, ptr %39, i32 0, i32 27
  %40 = ptrtoint ptr %dev.i39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i39, align 8
  %42 = ptrtoint ptr %saved_regs.addr.023.i33 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %saved_regs.addr.023.i33, align 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %37) #12, !srcloc !317
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !330
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_resume_regs.__UNIQUE_ID_ddebug286, ptr noundef %41, ptr noundef nonnull @.str.95, i32 noundef %io_addr.addr.022.i34, i32 noundef %43, i32 noundef %45) #12
  br label %do.end11.i45

do.end11.i45:                                     ; preds = %if.then.i40, %do.body.i38
  %incdec.ptr.i41 = getelementptr i32, ptr %saved_regs.addr.023.i33, i32 1
  %add12.i42 = add i32 %io_addr.addr.022.i34, 4
  %inc.i43 = add nuw nsw i32 %reg.021.i35, 1
  %exitcond.not.i44 = icmp eq i32 %inc.i43, 2
  br i1 %exitcond.not.i44, label %snd_azf3328_resume_regs.exit46, label %do.end11.i45.do.body.i38_crit_edge

do.end11.i45.do.body.i38_crit_edge:               ; preds = %do.end11.i45
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i38

snd_azf3328_resume_regs.exit46:                   ; preds = %do.end11.i45
  %ac97.i = getelementptr inbounds %struct.snd_azf3328, ptr %3, i32 0, i32 9
  %46 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ac97.i, align 4
  tail call void @snd_ac97_resume(ptr noundef %47) #12
  %saved_regs_ctrl = getelementptr inbounds %struct.snd_azf3328, ptr %3, i32 0, i32 17
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %3, align 4
  br label %do.body.i53

do.body.i53:                                      ; preds = %do.end11.i60.do.body.i53_crit_edge, %snd_azf3328_resume_regs.exit46
  %saved_regs.addr.023.i48 = phi ptr [ %saved_regs_ctrl, %snd_azf3328_resume_regs.exit46 ], [ %incdec.ptr.i56, %do.end11.i60.do.body.i53_crit_edge ]
  %io_addr.addr.022.i49 = phi i32 [ %49, %snd_azf3328_resume_regs.exit46 ], [ %add12.i57, %do.end11.i60.do.body.i53_crit_edge ]
  %reg.021.i50 = phi i32 [ 0, %snd_azf3328_resume_regs.exit46 ], [ %inc.i58, %do.end11.i60.do.body.i53_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !329
  tail call void @arm_heavy_mb() #12
  %50 = ptrtoint ptr %saved_regs.addr.023.i48 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %saved_regs.addr.023.i48, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #12
  %and.i51 = and i32 %io_addr.addr.022.i49, 1048575
  %add.i52 = or i32 %and.i51, -18874368
  %53 = inttoptr i32 %add.i52 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %53, i32 %52) #12, !srcloc !322
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_azf3328_resume_regs.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_azf3328_resume, %if.then.i55)) #12
          to label %do.end11.i60 [label %if.then.i55], !srcloc !297

if.then.i55:                                      ; preds = %do.body.i53
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %card.i, align 4
  %dev.i54 = getelementptr inbounds %struct.snd_card, ptr %55, i32 0, i32 27
  %56 = ptrtoint ptr %dev.i54 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i54, align 8
  %58 = ptrtoint ptr %saved_regs.addr.023.i48 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %saved_regs.addr.023.i48, align 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %53) #12, !srcloc !317
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !330
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_azf3328_resume_regs.__UNIQUE_ID_ddebug286, ptr noundef %57, ptr noundef nonnull @.str.95, i32 noundef %io_addr.addr.022.i49, i32 noundef %59, i32 noundef %61) #12
  br label %do.end11.i60

do.end11.i60:                                     ; preds = %if.then.i55, %do.body.i53
  %incdec.ptr.i56 = getelementptr i32, ptr %saved_regs.addr.023.i48, i32 1
  %add12.i57 = add i32 %io_addr.addr.022.i49, 4
  %inc.i58 = add nuw nsw i32 %reg.021.i50, 1
  %exitcond.not.i59 = icmp eq i32 %inc.i58, 28
  br i1 %exitcond.not.i59, label %snd_azf3328_resume_regs.exit61, label %do.end11.i60.do.body.i53_crit_edge

do.end11.i60.do.body.i53_crit_edge:               ; preds = %do.end11.i60
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i53

snd_azf3328_resume_regs.exit61:                   ; preds = %do.end11.i60
  call void @__sanitizer_cov_trace_pc() #14
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %62 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_resume(ptr noundef) local_unnamed_addr #1

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 119)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 119)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !62, !63, !64, !66, !67, !68, !70, !72, !73, !75, !76, !77, !78, !80, !82, !84, !86, !88, !89, !90, !92, !94, !95, !96, !98, !99, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !145, !146, !147, !148, !150, !151, !152, !154, !156, !158, !159, !160, !161, !163, !164, !165, !167, !169, !170, !171, !173, !175, !176, !177, !179, !180, !181, !183, !185, !187, !189, !190, !191, !193, !194, !196, !198, !200, !202, !204, !206, !208, !209, !210, !212, !213, !215, !216, !218, !219, !221, !222, !224, !225, !227, !229, !231, !233, !234, !236, !237, !239, !240, !241, !243, !244, !245, !247, !249, !251, !252, !253, !254, !256, !258, !260, !261, !262, !264, !265, !266, !268, !269, !270, !272, !274, !275, !276, !278, !279}
!llvm.module.flags = !{!280, !281, !282, !283, !284, !285, !286, !287}
!llvm.ident = !{!288}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/azt3328.c", i32 196, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/azt3328.c", i32 197, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/azt3328.c", i32 198, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/azt3328.c", i32 227, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype246, !8, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index247, !11, !"__UNIQUE_ID_index247", i1 false, i1 false}
!11 = !{!"../sound/pci/azt3328.c", i32 228, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/azt3328.c", i32 231, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype248, !13, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id249, !16, !"__UNIQUE_ID_id249", i1 false, i1 false}
!16 = !{!"../sound/pci/azt3328.c", i32 232, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/pci/azt3328.c", i32 235, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype250, !18, !"__UNIQUE_ID_enabletype250", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable251, !21, !"__UNIQUE_ID_enable251", i1 false, i1 false}
!21 = !{!"../sound/pci/azt3328.c", i32 236, i32 1}
!22 = !{ptr @__param_seqtimer_scaling, !23, !"__param_seqtimer_scaling", i1 false, i1 false}
!23 = !{!"../sound/pci/azt3328.c", i32 239, i32 1}
!24 = !{ptr @__UNIQUE_ID_seqtimer_scalingtype252, !23, !"__UNIQUE_ID_seqtimer_scalingtype252", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_seqtimer_scaling253, !26, !"__UNIQUE_ID_seqtimer_scaling253", i1 false, i1 false}
!26 = !{!"../sound/pci/azt3328.c", i32 240, i32 1}
!27 = !{ptr @__initcall__kmod_snd_azt3328__287_2654_azf3328_driver_init6, !28, !"__initcall__kmod_snd_azt3328__287_2654_azf3328_driver_init6", i1 false, i1 false}
!28 = !{!"../sound/pci/azt3328.c", i32 2654, i32 1}
!29 = !{ptr @__exitcall_azf3328_driver_exit, !28, !"__exitcall_azf3328_driver_exit", i1 false, i1 false}
!30 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!31 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!32 = !{ptr @index, !33, !"index", i1 false, i1 false}
!33 = !{!"../sound/pci/azt3328.c", i32 226, i32 12}
!34 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!35 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!36 = !{ptr @id, !37, !"id", i1 false, i1 false}
!37 = !{!"../sound/pci/azt3328.c", i32 230, i32 14}
!38 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!39 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!40 = !{ptr @enable, !41, !"enable", i1 false, i1 false}
!41 = !{!"../sound/pci/azt3328.c", i32 234, i32 13}
!42 = !{ptr @__param_str_seqtimer_scaling, !23, !"__param_str_seqtimer_scaling", i1 false, i1 false}
!43 = !{ptr @seqtimer_scaling, !44, !"seqtimer_scaling", i1 false, i1 false}
!44 = !{!"../sound/pci/azt3328.c", i32 238, i32 12}
!45 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @azf3328_driver, !47, !"azf3328_driver", i1 false, i1 false}
!47 = !{!"../sound/pci/azt3328.c", i32 2645, i32 26}
!48 = !{ptr @snd_azf3328_ids, !49, !"snd_azf3328_ids", i1 false, i1 false}
!49 = !{!"../sound/pci/azt3328.c", i32 309, i32 35}
!50 = !{ptr @snd_azf3328_probe.dev, !51, !"dev", i1 false, i1 false}
!51 = !{!"../sound/pci/azt3328.c", i32 2432, i32 13}
!52 = !{ptr @.str.1, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/azt3328.c", i32 2451, i32 23}
!54 = !{ptr @.str.2, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/pci/azt3328.c", i32 2452, i32 26}
!56 = !{ptr @.str.3, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/pci/azt3328.c", i32 2467, i32 3}
!58 = !{ptr @.str.4, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.5, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.6, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.7, !57, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @snd_azf3328_probe._entry, !57, !"_entry", i1 false, i1 false}
!63 = !{ptr @snd_azf3328_probe._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.9, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/pci/azt3328.c", i32 2483, i32 3}
!66 = !{ptr @snd_azf3328_probe._entry.8, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @snd_azf3328_probe._entry_ptr.10, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.11, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/pci/azt3328.c", i32 2497, i32 26}
!70 = !{ptr @snd_azf3328_create.__key, !71, !"__key", i1 false, i1 false}
!71 = !{!"../sound/pci/azt3328.c", i32 2348, i32 2}
!72 = !{ptr @.str.12, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.13, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/pci/azt3328.c", i32 2355, i32 3}
!75 = !{ptr @.str.14, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @snd_azf3328_create._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @snd_azf3328_create._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.15, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/pci/azt3328.c", i32 2361, i32 33}
!80 = !{ptr @.str.16, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/pci/azt3328.c", i32 2375, i32 22}
!82 = !{ptr @.str.17, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/pci/azt3328.c", i32 2381, i32 22}
!84 = !{ptr @.str.18, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/pci/azt3328.c", i32 2387, i32 22}
!86 = !{ptr @.str.20, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/pci/azt3328.c", i32 2391, i32 3}
!88 = !{ptr @snd_azf3328_create._entry.19, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @snd_azf3328_create._entry_ptr.21, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @snd_azf3328_interrupt.irq_count, !91, !"irq_count", i1 false, i1 false}
!91 = !{!"../sound/pci/azt3328.c", i32 1902, i32 23}
!92 = !{ptr @.str.22, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/pci/azt3328.c", i32 1913, i32 2}
!94 = !{ptr @.str.23, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @snd_azf3328_interrupt.__UNIQUE_ID_ddebug273, !93, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!96 = !{ptr @.str.24, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/pci/azt3328.c", i32 1929, i32 3}
!98 = !{ptr @snd_azf3328_interrupt.__UNIQUE_ID_ddebug274, !97, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!99 = !{ptr @.str.25, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/pci/azt3328.c", i32 1945, i32 3}
!101 = !{ptr @snd_azf3328_interrupt.__UNIQUE_ID_ddebug275, !100, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!102 = !{ptr @.str.26, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/pci/azt3328.c", i32 1885, i32 4}
!104 = !{ptr @.str.27, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @snd_azf3328_pcm_interrupt.__UNIQUE_ID_ddebug272, !103, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!106 = !{ptr @.str.28, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/pci/azt3328.c", i32 1891, i32 4}
!108 = !{ptr @.str.29, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @snd_azf3328_pcm_interrupt._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @snd_azf3328_pcm_interrupt._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.30, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/pci/azt3328.c", i32 1854, i32 2}
!113 = !{ptr @.str.31, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @snd_azf3328_irq_log_unknown_type.__UNIQUE_ID_ddebug271, !112, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!115 = !{ptr @.str.32, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/pci/azt3328.c", i32 1688, i32 2}
!117 = !{ptr @.str.33, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @snd_azf3328_gameport_interrupt.__UNIQUE_ID_ddebug267, !116, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!119 = !{ptr @.str.34, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/pci/azt3328.c", i32 2286, i32 2}
!121 = !{ptr @.str.35, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @snd_azf3328_debug_show_ports.__UNIQUE_ID_ddebug278, !120, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!123 = !{ptr @.str.36, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/pci/azt3328.c", i32 2292, i32 2}
!125 = !{ptr @snd_azf3328_debug_show_ports.__UNIQUE_ID_ddebug279, !124, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!126 = !{ptr @.str.37, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/pci/azt3328.c", i32 2302, i32 3}
!128 = !{ptr @snd_azf3328_debug_show_ports.__UNIQUE_ID_ddebug280, !127, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!129 = !{ptr @.str.38, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/pci/azt3328.c", i32 2306, i32 3}
!131 = !{ptr @snd_azf3328_debug_show_ports.__UNIQUE_ID_ddebug281, !130, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!132 = !{ptr @.str.39, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/pci/azt3328.c", i32 2311, i32 3}
!134 = !{ptr @snd_azf3328_debug_show_ports.__UNIQUE_ID_ddebug282, !133, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!135 = !{ptr @.str.40, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/pci/azt3328.c", i32 2323, i32 3}
!137 = !{ptr @snd_azf3328_debug_show_ports.__UNIQUE_ID_ddebug283, !136, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!138 = !{ptr @.str.41, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/pci/azt3328.c", i32 2328, i32 3}
!140 = !{ptr @snd_azf3328_debug_show_ports.__UNIQUE_ID_ddebug284, !139, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!141 = !{ptr @snd_azf3328_mixer_new.ops, !142, !"ops", i1 false, i1 false}
!142 = !{!"../sound/pci/azt3328.c", i32 759, i32 39}
!143 = !{ptr @.str.42, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/pci/azt3328.c", i32 787, i32 3}
!145 = !{ptr @.str.43, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @snd_azf3328_mixer_new._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @snd_azf3328_mixer_new._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.44, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/pci/azt3328.c", i32 716, i32 2}
!150 = !{ptr @.str.45, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @snd_azf3328_mixer_ac97_write.__UNIQUE_ID_ddebug255, !149, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!152 = !{ptr @.str.46, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/pci/azt3328.c", i32 751, i32 58}
!154 = !{ptr @snd_azf3328_mixer_ac97_map_reg_idx.azf_reg_mapper, !155, !"azf_reg_mapper", i1 false, i1 false}
!155 = !{!"../sound/pci/azt3328.c", i32 545, i32 4}
!156 = !{ptr @.str.47, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/pci/azt3328.c", i32 521, i32 2}
!158 = !{ptr @.str.48, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @snd_azf3328_mixer_ac97_map_unsupported._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @snd_azf3328_mixer_ac97_map_unsupported._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.49, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/pci/azt3328.c", i32 657, i32 2}
!163 = !{ptr @.str.50, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @snd_azf3328_mixer_ac97_read.__UNIQUE_ID_ddebug254, !162, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!165 = !{ptr @.str.51, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/pci/azt3328.c", i32 703, i32 58}
!167 = !{ptr @.str.52, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/pci/azt3328.c", i32 1332, i32 2}
!169 = !{ptr @.str.53, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @snd_azf3328_ctrl_codec_activity.__UNIQUE_ID_ddebug258, !168, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!171 = !{ptr @snd_azf3328_ctrl_codec_activity.peer_codecs, !172, !"peer_codecs", i1 false, i1 false}
!172 = !{!"../sound/pci/azt3328.c", i32 1340, i32 5}
!173 = !{ptr @.str.54, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/pci/azt3328.c", i32 1315, i32 2}
!175 = !{ptr @.str.55, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @snd_azf3328_ctrl_enable_codecs.__UNIQUE_ID_ddebug257, !174, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!177 = !{ptr @.str.56, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/pci/azt3328.c", i32 1306, i32 2}
!179 = !{ptr @.str.57, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @snd_azf3328_ctrl_reg_6AH_update.__UNIQUE_ID_ddebug256, !178, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!181 = !{ptr @.str.58, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/pci/azt3328.c", i32 1234, i32 3}
!183 = !{ptr @.str.59, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/pci/azt3328.c", i32 2231, i32 22}
!185 = !{ptr @snd_azf3328_timer_hw, !186, !"snd_azf3328_timer_hw", i1 false, i1 false}
!186 = !{!"../sound/pci/azt3328.c", i32 2202, i32 34}
!187 = !{ptr @.str.60, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/pci/azt3328.c", i32 2161, i32 3}
!189 = !{ptr @.str.61, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @snd_azf3328_timer_start.__UNIQUE_ID_ddebug276, !188, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!191 = !{ptr @.str.62, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/pci/azt3328.c", i32 2164, i32 2}
!193 = !{ptr @snd_azf3328_timer_start.__UNIQUE_ID_ddebug277, !192, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!194 = !{ptr @.str.63, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/pci/azt3328.c", i32 2098, i32 32}
!196 = !{ptr @.str.64, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/pci/azt3328.c", i32 2117, i32 32}
!198 = !{ptr @snd_azf3328_playback_ops, !199, !"snd_azf3328_playback_ops", i1 false, i1 false}
!199 = !{!"../sound/pci/azt3328.c", i32 2065, i32 33}
!200 = !{ptr @snd_azf3328_hardware, !201, !"snd_azf3328_hardware", i1 false, i1 false}
!201 = !{!"../sound/pci/azt3328.c", i32 1956, i32 38}
!202 = !{ptr @snd_azf3328_hw_constraints_rates, !203, !"snd_azf3328_hw_constraints_rates", i1 false, i1 false}
!203 = !{!"../sound/pci/azt3328.c", i32 2006, i32 48}
!204 = !{ptr @snd_azf3328_fixed_rates, !205, !"snd_azf3328_fixed_rates", i1 false, i1 false}
!205 = !{!"../sound/pci/azt3328.c", i32 1989, i32 27}
!206 = !{ptr @.str.65, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/pci/azt3328.c", i32 1463, i32 3}
!208 = !{ptr @.str.66, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @snd_azf3328_pcm_trigger.__UNIQUE_ID_ddebug260, !207, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!210 = !{ptr @.str.67, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/pci/azt3328.c", i32 1530, i32 3}
!212 = !{ptr @snd_azf3328_pcm_trigger.__UNIQUE_ID_ddebug261, !211, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!213 = !{ptr @.str.68, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/pci/azt3328.c", i32 1533, i32 3}
!215 = !{ptr @snd_azf3328_pcm_trigger.__UNIQUE_ID_ddebug262, !214, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!216 = !{ptr @.str.69, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/pci/azt3328.c", i32 1545, i32 3}
!218 = !{ptr @snd_azf3328_pcm_trigger.__UNIQUE_ID_ddebug263, !217, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!219 = !{ptr @.str.70, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/pci/azt3328.c", i32 1581, i32 3}
!221 = !{ptr @snd_azf3328_pcm_trigger.__UNIQUE_ID_ddebug264, !220, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!222 = !{ptr @.str.71, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/pci/azt3328.c", i32 1584, i32 3}
!224 = !{ptr @snd_azf3328_pcm_trigger.__UNIQUE_ID_ddebug265, !223, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!225 = !{ptr @.str.72, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/pci/azt3328.c", i32 1593, i32 3}
!227 = !{ptr @.str.73, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/pci/azt3328.c", i32 1596, i32 3}
!229 = !{ptr @.str.74, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/pci/azt3328.c", i32 1599, i32 3}
!231 = distinct !{null, !232, !"__already_done", i1 false, i1 false}
!232 = !{!"../sound/pci/azt3328.c", i32 1380, i32 2}
!233 = !{ptr @.str.75, !232, !"<string literal>", i1 false, i1 false}
!234 = distinct !{null, !235, !"__already_done", i1 false, i1 false}
!235 = !{!"../sound/pci/azt3328.c", i32 1381, i32 2}
!236 = !{ptr @.str.77, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @.str.78, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/pci/azt3328.c", i32 1402, i32 3}
!239 = !{ptr @.str.79, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @snd_azf3328_codec_setdmaa.__UNIQUE_ID_ddebug259, !238, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!241 = !{ptr @.str.80, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/pci/azt3328.c", i32 1624, i32 2}
!243 = !{ptr @.str.81, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @snd_azf3328_pcm_pointer.__UNIQUE_ID_ddebug266, !242, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!245 = !{ptr @snd_azf3328_capture_ops, !246, !"snd_azf3328_capture_ops", i1 false, i1 false}
!246 = !{!"../sound/pci/azt3328.c", i32 2073, i32 33}
!247 = !{ptr @snd_azf3328_i2s_out_ops, !248, !"snd_azf3328_i2s_out_ops", i1 false, i1 false}
!248 = !{!"../sound/pci/azt3328.c", i32 2081, i32 33}
!249 = !{ptr @.str.82, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/pci/azt3328.c", i32 1801, i32 3}
!251 = !{ptr @.str.83, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @snd_azf3328_gameport._entry, !250, !"_entry", i1 false, i1 false}
!253 = !{ptr @snd_azf3328_gameport._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.84, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/pci/azt3328.c", i32 1805, i32 24}
!256 = !{ptr @.str.85, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/pci/azt3328.c", i32 1806, i32 24}
!258 = !{ptr @.str.86, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/pci/azt3328.c", i32 1700, i32 2}
!260 = !{ptr @.str.87, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @snd_azf3328_gameport_open.__UNIQUE_ID_ddebug268, !259, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!262 = !{ptr @.str.88, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/pci/azt3328.c", i32 1723, i32 2}
!264 = !{ptr @.str.89, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @snd_azf3328_gameport_close.__UNIQUE_ID_ddebug269, !263, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!266 = !{ptr @.str.90, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/pci/azt3328.c", i32 1788, i32 2}
!268 = !{ptr @.str.91, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @snd_azf3328_gameport_cooked_read.__UNIQUE_ID_ddebug270, !267, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!270 = !{ptr @snd_azf3328_pm, !271, !"snd_azf3328_pm", i1 false, i1 false}
!271 = !{!"../sound/pci/azt3328.c", i32 2639, i32 8}
!272 = !{ptr @.str.92, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/pci/azt3328.c", i32 2532, i32 3}
!274 = !{ptr @.str.93, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @snd_azf3328_suspend_regs.__UNIQUE_ID_ddebug285, !273, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!276 = !{ptr @.str.94, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/pci/azt3328.c", i32 2550, i32 3}
!278 = !{ptr @.str.95, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @snd_azf3328_resume_regs.__UNIQUE_ID_ddebug286, !277, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!280 = !{i32 1, !"wchar_size", i32 2}
!281 = !{i32 1, !"min_enum_size", i32 4}
!282 = !{i32 8, !"branch-target-enforcement", i32 0}
!283 = !{i32 8, !"sign-return-address", i32 0}
!284 = !{i32 8, !"sign-return-address-all", i32 0}
!285 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!286 = !{i32 7, !"uwtable", i32 1}
!287 = !{i32 7, !"frame-pointer", i32 2}
!288 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!289 = !{!"auto-init"}
!290 = !{i8 0, i8 2}
!291 = !{i64 2154951109}
!292 = !{i64 764708}
!293 = !{i64 2154955756}
!294 = !{i64 765103}
!295 = !{i64 2154950401}
!296 = !{i64 2154950605}
!297 = !{i64 2148232062, i64 2148232067, i64 2148232080, i64 2148232124, i64 2148232158, i64 2148232179}
!298 = !{i64 2154957634}
!299 = !{i64 764285}
!300 = !{i64 2154956352}
!301 = !{i64 764485}
!302 = !{i64 2154961011}
!303 = !{i64 2154961439}
!304 = !{i64 2154960156}
!305 = !{i64 2155052487}
!306 = !{i64 2155055349}
!307 = !{i64 2155055632}
!308 = !{i64 2155059409}
!309 = !{i64 2155059692}
!310 = !{i64 2155059975}
!311 = !{i64 2155060258}
!312 = !{i64 2155060541}
!313 = !{i64 2155060824}
!314 = !{i64 2154957207}
!315 = !{i64 2154962526}
!316 = !{i64 2154951708}
!317 = !{i64 765323}
!318 = !{i64 2154955365}
!319 = !{i64 2154952136}
!320 = !{i64 2154953223}
!321 = !{i64 2154958288}
!322 = !{i64 764905}
!323 = !{!"branch_weights", i32 2000, i32 1}
!324 = !{i64 2154954292}
!325 = !{!"branch_weights", i32 1, i32 2000}
!326 = !{i64 2154958906}
!327 = !{i64 2154959461}
!328 = !{i64 2155073877}
!329 = !{i64 2155076702}
!330 = !{i64 2155080117}
