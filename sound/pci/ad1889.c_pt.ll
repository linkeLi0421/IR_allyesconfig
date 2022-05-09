; ModuleID = '/llk/IR_all_yes/sound/pci/ad1889.c_pt.bc'
source_filename = "../sound/pci/ad1889.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ac97_quirk = type { i16, i16, i16, i32, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.snd_ad1889 = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ad1889_register_state, %struct.ad1889_register_state, %struct.spinlock }
%struct.ad1889_register_state = type { i16, i32, i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.75, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.75 = type { i32, [28 x i8] }
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
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.73, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.73 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }

@__UNIQUE_ID_author242 = internal constant [98 x i8] c"snd_ad1889.author=Kyle McMartin <kyle@parisc-linux.org>, Thibaut Varene <t-bone@parisc-linux.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [63 x i8] c"snd_ad1889.description=Analog Devices AD1889 ALSA sound driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [37 x i8] c"snd_ad1889.file=sound/pci/snd-ad1889\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [23 x i8] c"snd_ad1889.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [17 x i8] c"snd_ad1889.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [39 x i8] c"snd_ad1889.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [60 x i8] c"snd_ad1889.parm=index:Index value for the AD1889 soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [14 x i8] c"snd_ad1889.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [38 x i8] c"snd_ad1889.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [55 x i8] c"snd_ad1889.parm=id:ID string for the AD1889 soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [18 x i8] c"snd_ad1889.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype250 = internal constant [41 x i8] c"snd_ad1889.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable251 = internal constant [48 x i8] c"snd_ad1889.parm=enable:Enable AD1889 soundcard.\00", section ".modinfo", align 1
@__param_str_ac97_quirk = internal constant [22 x i8] c"snd_ad1889.ac97_quirk\00", align 1
@__param_arr_ac97_quirk = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @ac97_quirk }, align 4
@__param_ac97_quirk = internal constant %struct.kernel_param { ptr @__param_str_ac97_quirk, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_ac97_quirk } }, section "__param", align 4
@__UNIQUE_ID_ac97_quirktype252 = internal constant [46 x i8] c"snd_ad1889.parmtype=ac97_quirk:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_ac97_quirk253 = internal constant [66 x i8] c"snd_ad1889.parm=ac97_quirk:AC'97 workaround for strange hardware.\00", section ".modinfo", align 1
@__initcall__kmod_snd_ad1889__258_919_ad1889_pci_driver_init6 = internal global ptr @ad1889_pci_driver_init, section ".initcall6.init", align 4
@ad1889_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_ad1889_ids, ptr @snd_ad1889_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad1889_pci_driver_exit = internal global ptr @ad1889_pci_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@ac97_quirk = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snd_ad1889\00", [21 x i8] zeroinitializer }, align 32
@snd_ad1889_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4564, i32 6281, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_ad1889_probe.devno = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AD1889\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Analog Devices AD1889\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s at 0x%lx irq %i\00", [45 x i8] zeroinitializer }, align 32
@snd_ad1889_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 804, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error setting 32-bit DMA mask.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_ad1889_create\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sound/pci/ad1889.c\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_ad1889_create._entry_ptr = internal global ptr @snd_ad1889_create._entry, section ".printk_index", align 4
@snd_ad1889_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->lock\00", [20 x i8] zeroinitializer }, align 32
@snd_ad1889_create._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 826, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cannot obtain IRQ %d\0A\00", [42 x i8] zeroinitializer }, align 32
@snd_ad1889_create._entry_ptr.12 = internal global ptr @snd_ad1889_create._entry.10, section ".printk_index", align 4
@snd_ad1889_interrupt.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.6, ptr @.str.14, i8 0, i8 -111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_ad1889_interrupt\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Unexpected master or target abort interrupt!\0A\00", [50 x i8] zeroinitializer }, align 32
@snd_ad1889_ac97_init.ops = internal constant { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr null, ptr null, ptr @snd_ad1889_ac97_write, ptr @snd_ad1889_ac97_read, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ac97_quirks = internal constant { [2 x %struct.ac97_quirk], [56 x i8] } { [2 x %struct.ac97_quirk] [%struct.ac97_quirk { i16 4564, i16 6281, i16 0, i32 1094996739, ptr @.str.1, i32 1 }, %struct.ac97_quirk zeroinitializer], [56 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@snd_ad1889_ac97_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.6, i32 251, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%s] Link is not ready.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_ad1889_ac97_ready\00", [42 x i8] zeroinitializer }, align 32
@snd_ad1889_ac97_ready._entry_ptr = internal global ptr @snd_ad1889_ac97_ready._entry, section ".printk_index", align 4
@snd_ad1889_ac97_ready.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.6, ptr @.str.17, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%s] ready after %d ms\0A\00", [40 x i8] zeroinitializer }, align 32
@snd_ad1889_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_ad1889_playback_open, ptr @snd_ad1889_playback_close, ptr null, ptr null, ptr null, ptr @snd_ad1889_playback_prepare, ptr @snd_ad1889_playback_trigger, ptr null, ptr @snd_ad1889_playback_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_ad1889_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_ad1889_capture_open, ptr @snd_ad1889_capture_close, ptr null, ptr null, ptr null, ptr @snd_ad1889_capture_prepare, ptr @snd_ad1889_capture_trigger, ptr null, ptr @snd_ad1889_capture_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_ad1889_playback_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65795, i64 4, i32 1073742078, i32 8000, i32 48000, i32 1, i32 2, i32 262144, i32 32, i32 131072, i32 2, i32 8192, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_ad1889_playback_prepare.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.6, ptr @.str.19, i8 0, i8 94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"snd_ad1889_playback_prepare\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"prepare playback: addr = 0x%x, count = %u, size = %u, reg = 0x%x, rate = %u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUG?\0A\00", [26 x i8] zeroinitializer }, align 32
@snd_ad1889_capture_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65795, i64 4, i32 128, i32 48000, i32 48000, i32 1, i32 2, i32 262144, i32 32, i32 131072, i32 2, i32 8192, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_ad1889_capture_prepare.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.6, ptr @.str.22, i8 0, i8 106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"snd_ad1889_capture_prepare\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"prepare capture: addr = 0x%x, count = %u, size = %u, reg = 0x%x, rate = %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Wave output: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Wave Channels: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"stereo\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mono\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Wave Quality: %d-bit linear\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Wave FIFO: %d %s words\0A\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Synthesis output: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Synthesis FIFO: %d %s words\0A\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ADC input: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADC Channels: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ADC Quality: %d-bit linear\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ADC FIFO: %d %s words\0A\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Resampler input: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Resampler FIFO: %d %s words\0A\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Left: %s, -%d dB\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mute\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"unmute\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Right: %s, -%d dB\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Wave samplerate: %u Hz\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Resampler samplerate: %u Hz\0A\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.46 = private unnamed_addr constant [18 x i8] c"ad1889_pci_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 913, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 47, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 51, i32 14 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 55, i32 13 }
@___asan_gen_.58 = private unnamed_addr constant [11 x i8] c"ac97_quirk\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 59, i32 14 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 919, i32 1 }
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"snd_ad1889_ids\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 907, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant [6 x i8] c"devno\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 851, i32 13 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 870, i32 23 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 871, i32 26 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 879, i32 26 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 804, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 822, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 826, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 580, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 748, i32 39 }
@___asan_gen_.118 = private unnamed_addr constant [12 x i8] c"ac97_quirks\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 708, i32 32 }
@___asan_gen_.121 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 250, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 254, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [24 x i8] c"snd_ad1889_playback_ops\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 547, i32 33 }
@___asan_gen_.136 = private unnamed_addr constant [23 x i8] c"snd_ad1889_capture_ops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 555, i32 33 }
@___asan_gen_.139 = private unnamed_addr constant [23 x i8] c"snd_ad1889_playback_hw\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 259, i32 38 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 377, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 456, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [22 x i8] c"snd_ad1889_capture_hw\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 276, i32 38 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 424, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 628, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 630, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 632, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 640, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 644, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 652, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 656, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 658, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 660, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 668, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 671, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 679, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 687, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 691, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 696, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.224 = private constant [22 x i8] c"../sound/pci/ad1889.c\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 698, i32 2 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @__UNIQUE_ID_ac97_quirk253, ptr @__UNIQUE_ID_ac97_quirktype252, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_enable251, ptr @__UNIQUE_ID_enabletype250, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_license245, ptr @__exitcall_ad1889_pci_driver_exit, ptr @__initcall__kmod_snd_ad1889__258_919_ad1889_pci_driver_init6, ptr @__param_ac97_quirk, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @ad1889_pci_driver_exit, ptr @snd_ad1889_ac97_ready._entry, ptr @snd_ad1889_ac97_ready._entry_ptr, ptr @snd_ad1889_create._entry, ptr @snd_ad1889_create._entry.10, ptr @snd_ad1889_create._entry_ptr, ptr @snd_ad1889_create._entry_ptr.12, ptr @ad1889_pci_driver, ptr @index, ptr @id, ptr @enable, ptr @ac97_quirk, ptr @.str, ptr @snd_ad1889_ids, ptr @snd_ad1889_probe.devno, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @snd_ad1889_create.__key, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @snd_ad1889_ac97_init.ops, ptr @ac97_quirks, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @snd_ad1889_playback_ops, ptr @snd_ad1889_capture_ops, ptr @snd_ad1889_playback_hw, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @snd_ad1889_capture_hw, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad1889_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac97_quirk to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ad1889_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ad1889_probe.devno to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ad1889_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ad1889_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ad1889_create._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ad1889_ac97_init.ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac97_quirks to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ad1889_ac97_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ad1889_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ad1889_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ad1889_playback_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ad1889_capture_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad1889_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @ad1889_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad1889_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @ad1889_pci_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ad1889_probe(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #2 align 64 {
entry:
  %pcm.i = alloca ptr, align 4
  %ac97.i = alloca %struct.snd_ac97_template, align 4
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #10
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !155
  %1 = load i32, ptr @snd_ad1889_probe.devno, align 4
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
  %3 = load i8, ptr %arrayidx, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @snd_ad1889_probe.devno, align 4
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
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %5, ptr noundef %7, ptr noundef null, i32 noundef 112, ptr noundef nonnull %card) #10
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
  %driver = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 2
  %12 = call ptr @memcpy(ptr %driver, ptr @.str.1, i32 7)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 3
  %13 = call ptr @memcpy(ptr %shortname, ptr @.str.2, i32 22)
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
  br i1 %cmp.i.i, label %if.end4.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev3.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %14 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev3.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.4) #13
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %call1.i.i = call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #10
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %9, ptr %11, align 4
  %pci6.i = getelementptr inbounds %struct.snd_ad1889, ptr %11, i32 0, i32 1
  %17 = ptrtoint ptr %pci6.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %pci, ptr %pci6.i, align 4
  %irq.i = getelementptr inbounds %struct.snd_ad1889, ptr %11, i32 0, i32 2
  %18 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %irq.i, align 4
  %call7.i = call i32 @pcim_iomap_regions(ptr noundef %pci, i32 noundef 1, ptr noundef %driver) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end4.i.cleanup_crit_edge, label %if.end10.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10.i:                                       ; preds = %if.end4.i
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %19 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %resource.i, align 8
  %bar.i = getelementptr inbounds %struct.snd_ad1889, ptr %11, i32 0, i32 3
  %21 = ptrtoint ptr %bar.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %bar.i, align 4
  %call11.i = call ptr @pcim_iomap_table(ptr noundef %pci) #10
  %22 = ptrtoint ptr %call11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call11.i, align 4
  %iobase.i = getelementptr inbounds %struct.snd_ad1889, ptr %11, i32 0, i32 4
  %24 = ptrtoint ptr %iobase.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %iobase.i, align 4
  call void @pci_set_master(ptr noundef %pci) #10
  %lock.i = getelementptr inbounds %struct.snd_ad1889, ptr %11, i32 0, i32 13
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @snd_ad1889_create.__key, i16 noundef signext 3) #10
  %irq18.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %25 = ptrtoint ptr %irq18.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq18.i, align 4
  %call.i63.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %26, ptr noundef nonnull @snd_ad1889_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63.i)
  %tobool20.not.i = icmp eq i32 %call.i63.i, 0
  br i1 %tobool20.not.i, label %if.end14, label %do.end24.i

do.end24.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev25.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %27 = ptrtoint ptr %dev25.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev25.i, align 8
  %29 = ptrtoint ptr %irq18.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq18.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.11, i32 noundef %30) #13
  br label %cleanup

if.end14:                                         ; preds = %if.end10.i
  %31 = ptrtoint ptr %irq18.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq18.i, align 4
  %33 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %irq.i, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 33
  %34 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %32, ptr %sync_irq.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 10
  %35 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @snd_ad1889_free, ptr %private_free.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  call void @arm_heavy_mb() #10
  %36 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 12
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 128) #10, !srcloc !158
  %38 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i65.i = getelementptr i8, ptr %39, i32 12
  %40 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i65.i) #10, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  call void @arm_heavy_mb() #10
  %41 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i67.i = getelementptr i8, ptr %42, i32 192
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67.i, i32 768) #10, !srcloc !162
  %43 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %44, i32 0, i32 4
  %shortname16 = getelementptr inbounds %struct.snd_card, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bar.i, align 4
  %47 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq.i, align 4
  %call18 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.3, ptr noundef %shortname16, i32 noundef %46, i32 noundef %48)
  %49 = load i32, ptr @snd_ad1889_probe.devno, align 4
  %arrayidx19 = getelementptr [32 x ptr], ptr @ac97_quirk, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx19, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ac97.i) #10
  %52 = call ptr @memset(ptr %ac97.i, i32 255, i32 24)
  %53 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %54, i32 384
  %55 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #10, !srcloc !159
  %56 = call i16 @llvm.bswap.i16(i16 %55) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  %57 = or i16 %56, 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  call void @arm_heavy_mb() #10
  %58 = call i16 @llvm.bswap.i16(i16 %57) #10
  %59 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %60, i32 384
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i25.i.i, i16 %58) #10, !srcloc !158
  %61 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %62, i32 384
  %63 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i27.i.i) #10, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %64(i32 noundef 2147480) #10
  %65 = or i16 %56, 3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  call void @arm_heavy_mb() #10
  %66 = call i16 @llvm.bswap.i16(i16 %65) #10
  %67 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %68, i32 384
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i29.i.i, i16 %66) #10, !srcloc !158
  call fastcc void @snd_ad1889_ac97_ready(ptr noundef %11) #10
  %69 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i31.i.i = getelementptr i8, ptr %70, i32 384
  %71 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i31.i.i) #10, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  %72 = or i16 %71, 3072
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  call void @arm_heavy_mb() #10
  %73 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i33.i.i = getelementptr i8, ptr %74, i32 384
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i33.i.i, i16 %72) #10, !srcloc !158
  %75 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i35.i.i = getelementptr i8, ptr %76, i32 384
  %77 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i35.i.i) #10, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  %78 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %11, align 4
  %ac97_bus.i = getelementptr inbounds %struct.snd_ad1889, ptr %11, i32 0, i32 6
  %call.i50 = call i32 @snd_ac97_bus(ptr noundef %79, i32 noundef 0, ptr noundef nonnull @snd_ad1889_ac97_init.ops, ptr noundef %11, ptr noundef %ac97_bus.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %cmp.i51 = icmp slt i32 %call.i50, 0
  br i1 %cmp.i51, label %if.end14.snd_ad1889_ac97_init.exit.thread_crit_edge, label %if.end.i52

if.end14.snd_ad1889_ac97_init.exit.thread_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_ad1889_ac97_init.exit.thread

if.end.i52:                                       ; preds = %if.end14
  %80 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 2
  %81 = getelementptr inbounds i8, ptr %ac97.i, i32 4
  %82 = call ptr @memset(ptr %81, i32 0, i32 20)
  %83 = ptrtoint ptr %ac97.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %11, ptr %ac97.i, align 4
  %84 = ptrtoint ptr %pci6.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pci6.i, align 4
  %86 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %85, ptr %80, align 4
  %87 = ptrtoint ptr %ac97_bus.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ac97_bus.i, align 4
  %ac973.i = getelementptr inbounds %struct.snd_ad1889, ptr %11, i32 0, i32 5
  %call4.i = call i32 @snd_ac97_mixer(ptr noundef %88, ptr noundef nonnull %ac97.i, ptr noundef %ac973.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i52.snd_ad1889_ac97_init.exit.thread_crit_edge, label %if.end23

if.end.i52.snd_ad1889_ac97_init.exit.thread_crit_edge: ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_ad1889_ac97_init.exit.thread

snd_ad1889_ac97_init.exit.thread:                 ; preds = %if.end.i52.snd_ad1889_ac97_init.exit.thread_crit_edge, %if.end14.snd_ad1889_ac97_init.exit.thread_crit_edge
  %retval.0.i53.ph = phi i32 [ %call4.i, %if.end.i52.snd_ad1889_ac97_init.exit.thread_crit_edge ], [ %call.i50, %if.end14.snd_ad1889_ac97_init.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #10
  br label %cleanup

if.end23:                                         ; preds = %if.end.i52
  %89 = ptrtoint ptr %ac973.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ac973.i, align 4
  %call9.i = call i32 @snd_ac97_tune_hardware(ptr noundef %90, ptr noundef nonnull @ac97_quirks, ptr noundef %51) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i) #10
  %91 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i, align 4, !annotation !155
  %92 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %11, align 4
  %driver.i54 = getelementptr inbounds %struct.snd_card, ptr %93, i32 0, i32 2
  %call.i55 = call i32 @snd_pcm_new(ptr noundef %93, ptr noundef %driver.i54, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %pcm.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %cmp.i56 = icmp slt i32 %call.i55, 0
  br i1 %cmp.i56, label %snd_ad1889_pcm_init.exit.thread, label %if.end27

snd_ad1889_pcm_init.exit.thread:                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #10
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %94 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %95, i32 noundef 0, ptr noundef nonnull @snd_ad1889_playback_ops) #10
  %96 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %97, i32 noundef 1, ptr noundef nonnull @snd_ad1889_capture_ops) #10
  %98 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pcm.i, align 4
  %private_data.i57 = getelementptr inbounds %struct.snd_pcm, ptr %99, i32 0, i32 11
  %100 = ptrtoint ptr %private_data.i57 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %11, ptr %private_data.i57, align 8
  %info_flags.i = getelementptr inbounds %struct.snd_pcm, ptr %99, i32 0, i32 3
  %101 = ptrtoint ptr %info_flags.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %info_flags.i, align 8
  %name.i = getelementptr inbounds %struct.snd_pcm, ptr %99, i32 0, i32 7
  %102 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %11, align 4
  %shortname.i = getelementptr inbounds %struct.snd_card, ptr %103, i32 0, i32 3
  %call5.i = call ptr @strcpy(ptr noundef %name.i, ptr noundef %shortname.i) #14
  %pcm6.i = getelementptr inbounds %struct.snd_ad1889, ptr %11, i32 0, i32 7
  %104 = ptrtoint ptr %pcm6.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %99, ptr %pcm6.i, align 4
  %psubs.i = getelementptr inbounds %struct.snd_ad1889, ptr %11, i32 0, i32 9
  %105 = ptrtoint ptr %psubs.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %psubs.i, align 4
  %csubs.i = getelementptr inbounds %struct.snd_ad1889, ptr %11, i32 0, i32 10
  %106 = ptrtoint ptr %csubs.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %csubs.i, align 4
  %107 = ptrtoint ptr %pci6.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pci6.i, align 4
  %dev.i59 = getelementptr inbounds %struct.pci_dev, ptr %108, i32 0, i32 44
  %call7.i60 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %99, i32 noundef 2, ptr noundef %dev.i59, i32 noundef 131072, i32 noundef 262144) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #10
  %109 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %11, align 4
  %driver.i63 = getelementptr inbounds %struct.snd_card, ptr %110, i32 0, i32 2
  %call.i.i64 = call i32 @snd_card_rw_proc_new(ptr noundef %110, ptr noundef %driver.i63, ptr noundef %11, ptr noundef nonnull @snd_ad1889_proc_read, ptr noundef null) #10
  %111 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %card, align 4
  %call28 = call i32 @snd_card_register(ptr noundef %112) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end27.cleanup_crit_edge, label %if.end31

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %113 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %115 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %114, ptr %driver_data.i.i, align 4
  %116 = load i32, ptr @snd_ad1889_probe.devno, align 4
  %inc32 = add i32 %116, 1
  store i32 %inc32, ptr @snd_ad1889_probe.devno, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end27.cleanup_crit_edge, %snd_ad1889_pcm_init.exit.thread, %snd_ad1889_ac97_init.exit.thread, %do.end24.i, %if.end4.i.cleanup_crit_edge, %do.end.i, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end31 ], [ -2, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ %call28, %if.end27.cleanup_crit_edge ], [ %retval.0.i53.ph, %snd_ad1889_ac97_init.exit.thread ], [ %call.i55, %snd_ad1889_pcm_init.exit.thread ], [ %call7.i, %if.end4.i.cleanup_crit_edge ], [ %call.i, %if.end7.cleanup_crit_edge ], [ -16, %do.end24.i ], [ -6, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ad1889_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase.i = getelementptr inbounds %struct.snd_ad1889, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 192
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !163
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %5, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %2) #10, !srcloc !162
  %and = and i32 %3, 49167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !165

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and4 = and i32 %3, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end17_crit_edge, label %do.body

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ad1889_interrupt.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ad1889_interrupt, %if.then15)) #10
          to label %if.end17 [label %if.then15], !srcloc !166

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_id, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ad1889_interrupt.__UNIQUE_ID_ddebug257, ptr noundef %9, ptr noundef nonnull @.str.14) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %do.body, %if.end.if.end17_crit_edge
  %and18 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end23_crit_edge, label %land.lhs.true

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end17
  %psubs = getelementptr inbounds %struct.snd_ad1889, ptr %dev_id, i32 0, i32 9
  %10 = ptrtoint ptr %psubs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %psubs, align 4
  %tobool20.not = icmp eq ptr %11, null
  br i1 %tobool20.not, label %land.lhs.true.if.end23_crit_edge, label %if.then21

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %11) #10
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %land.lhs.true.if.end23_crit_edge, %if.end17.if.end23_crit_edge
  %and24 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %land.lhs.true26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true26:                                  ; preds = %if.end23
  %csubs = getelementptr inbounds %struct.snd_ad1889, ptr %dev_id, i32 0, i32 10
  %12 = ptrtoint ptr %csubs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csubs, align 4
  %tobool27.not = icmp eq ptr %13, null
  br i1 %tobool27.not, label %land.lhs.true26.cleanup_crit_edge, label %if.then28

land.lhs.true26.cleanup_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then28:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %13) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %land.lhs.true26.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then28 ], [ 1, %land.lhs.true26.cleanup_crit_edge ], [ 1, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ad1889_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %lock = getelementptr inbounds %struct.snd_ad1889, ptr %1, i32 0, i32 13
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %iobase.i.i = getelementptr inbounds %struct.snd_ad1889, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  %5 = or i16 %4, -32640
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i7.i, i16 %5) #10, !srcloc !158
  %8 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %9, i32 4
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i9.i) #10, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  tail call fastcc void @ad1889_channel_reset(ptr noundef %1, i32 noundef 3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 12582912) #10, !srcloc !162
  %13 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iobase.i.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %14, i32 192
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #10, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
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
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ad1889_channel_reset(ptr nocapture noundef %chip, i32 noundef %channel) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %channel, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %iobase.i = getelementptr inbounds %struct.snd_ad1889, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #10, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  %3 = and i16 %2, -5
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %5 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iobase.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %6, i16 %3) #10, !srcloc !158
  %wave = getelementptr inbounds %struct.snd_ad1889, ptr %chip, i32 0, i32 11
  %7 = ptrtoint ptr %wave to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %4, ptr %wave, align 4
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 184
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  %11 = and i16 %10, -3585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %13, i32 184
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i59, i16 %11) #10, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %17, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 0) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  tail call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i61 = getelementptr i8, ptr %19, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i61, i32 0) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  tail call void @arm_heavy_mb() #10
  %20 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i4.i62 = getelementptr i8, ptr %21, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i62, i32 0) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  tail call void @arm_heavy_mb() #10
  %22 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i64 = getelementptr i8, ptr %23, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i64, i32 0) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  tail call void @arm_heavy_mb() #10
  %24 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i4.i65 = getelementptr i8, ptr %25, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i65, i32 0) #10, !srcloc !162
  %26 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i67 = getelementptr i8, ptr %27, i32 184
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i67) #10, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and12 = and i32 %channel, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end.if.end28_crit_edge, label %if.then14

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %iobase.i68 = getelementptr inbounds %struct.snd_ad1889, ptr %chip, i32 0, i32 4
  %29 = ptrtoint ptr %iobase.i68 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iobase.i68, align 4
  %add.ptr.i69 = getelementptr i8, ptr %30, i32 2
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i69) #10, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  %32 = and i16 %31, -1025
  %33 = tail call i16 @llvm.bswap.i16(i16 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %34 = ptrtoint ptr %iobase.i68 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %iobase.i68, align 4
  %add.ptr.i71 = getelementptr i8, ptr %35, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i71, i16 %32) #10, !srcloc !158
  %ramc = getelementptr inbounds %struct.snd_ad1889, ptr %chip, i32 0, i32 12
  %36 = ptrtoint ptr %ramc to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %33, ptr %ramc, align 4
  %37 = ptrtoint ptr %iobase.i68 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iobase.i68, align 4
  %add.ptr.i73 = getelementptr i8, ptr %38, i32 168
  %39 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i73) #10, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  %40 = and i16 %39, -3585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %41 = ptrtoint ptr %iobase.i68 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %iobase.i68, align 4
  %add.ptr.i75 = getelementptr i8, ptr %42, i32 168
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i75, i16 %40) #10, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  tail call void @arm_heavy_mb() #10
  %43 = ptrtoint ptr %iobase.i68 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %iobase.i68, align 4
  %add.ptr.i.i77 = getelementptr i8, ptr %44, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i77, i32 0) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  tail call void @arm_heavy_mb() #10
  %45 = ptrtoint ptr %iobase.i68 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %iobase.i68, align 4
  %add.ptr.i4.i78 = getelementptr i8, ptr %46, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i78, i32 0) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  tail call void @arm_heavy_mb() #10
  %47 = ptrtoint ptr %iobase.i68 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %iobase.i68, align 4
  %add.ptr.i.i80 = getelementptr i8, ptr %48, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i80, i32 0) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  tail call void @arm_heavy_mb() #10
  %49 = ptrtoint ptr %iobase.i68 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %iobase.i68, align 4
  %add.ptr.i4.i81 = getelementptr i8, ptr %50, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i81, i32 0) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  tail call void @arm_heavy_mb() #10
  %51 = ptrtoint ptr %iobase.i68 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %iobase.i68, align 4
  %add.ptr.i.i83 = getelementptr i8, ptr %52, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i83, i32 0) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  tail call void @arm_heavy_mb() #10
  %53 = ptrtoint ptr %iobase.i68 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %iobase.i68, align 4
  %add.ptr.i4.i84 = getelementptr i8, ptr %54, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i84, i32 0) #10, !srcloc !162
  %55 = ptrtoint ptr %iobase.i68 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %iobase.i68, align 4
  %add.ptr.i86 = getelementptr i8, ptr %56, i32 168
  %57 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i86) #10, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  br label %if.end28

if.end28:                                         ; preds = %if.then14, %if.end.if.end28_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ad1889_ac97_write(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %conv = zext i16 %reg to i32
  %add = add nuw nsw i32 %conv, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %2 = tail call i16 @llvm.bswap.i16(i16 %val) #10
  %iobase.i = getelementptr inbounds %struct.snd_ad1889, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %add
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %2) #10, !srcloc !158
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @snd_ad1889_ac97_read(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %conv = zext i16 %reg to i32
  %add = add nuw nsw i32 %conv, 256
  %iobase.i = getelementptr inbounds %struct.snd_ad1889, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !159
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  ret i16 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_bus(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_mixer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_tune_hardware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_ad1889_ac97_ready(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase.i = getelementptr inbounds %struct.snd_ad1889, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %1, i32 384
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i5) #10, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  %.mask6 = and i16 %2, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask6)
  %tobool.not7 = icmp eq i16 %.mask6, 0
  br i1 %tobool.not7, label %entry.land.rhs_crit_edge, label %entry.do.body3_crit_edge

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %retry.08 = phi i32 [ %dec, %while.body.land.rhs_crit_edge ], [ 400, %entry.land.rhs_crit_edge ]
  %dec = add nsw i32 %retry.08, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool1.not = icmp eq i32 %dec, 0
  br i1 %tobool1.not, label %do.end, label %while.body

while.body:                                       ; preds = %land.rhs
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #10
  %3 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 384
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  %.mask = and i16 %5, 128
  %tobool.not = icmp eq i16 %.mask, 0
  br i1 %tobool.not, label %while.body.land.rhs_crit_edge, label %do.body3.loopexit

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #13
  br label %cleanup

do.body3.loopexit:                                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %phi.bo = sub i32 401, %retry.08
  br label %do.body3

do.body3:                                         ; preds = %do.body3.loopexit, %entry.do.body3_crit_edge
  %retry.0.lcssa = phi i32 [ 0, %entry.do.body3_crit_edge ], [ %phi.bo, %do.body3.loopexit ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ad1889_ac97_ready.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ad1889_ac97_ready, %if.then8)) #10
          to label %cleanup [label %if.then8], !srcloc !166

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip, align 4
  %dev10 = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev10, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ad1889_ac97_ready.__UNIQUE_ID_ddebug254, ptr noundef %13, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef %retry.0.lcssa) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %do.body3, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ad1889_playback_open(ptr noundef %ss) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 11
  %2 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime, align 4
  %psubs = getelementptr inbounds %struct.snd_ad1889, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %psubs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ss, ptr %psubs, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %5 = call ptr @memcpy(ptr %hw, ptr @snd_ad1889_playback_hw, i32 64)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ad1889_playback_close(ptr nocapture noundef readonly %ss) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %psubs = getelementptr inbounds %struct.snd_ad1889, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %psubs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %psubs, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ad1889_playback_prepare(ptr nocapture noundef readonly %ss) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 11
  %2 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime, align 4
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
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %8 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %period_size.i, align 4
  %mul.i.i67 = mul i32 %9, %7
  %div1.i.i68 = lshr i32 %mul.i.i67, 3
  tail call fastcc void @ad1889_channel_reset(ptr noundef %1, i32 noundef 1)
  %iobase.i = getelementptr inbounds %struct.snd_ad1889, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iobase.i, align 4
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %11) #10, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  %13 = and i16 %12, -4
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %15 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %format, align 4
  %call4 = tail call i32 @snd_pcm_format_width(i32 noundef %16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call4)
  %cmp = icmp eq i32 %call4, 16
  %17 = or i16 %14, 256
  %spec.select = select i1 %cmp, i16 %17, i16 %14
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %18 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp8 = icmp ugt i32 %19, 1
  %20 = or i16 %spec.select, 512
  %reg.1 = select i1 %cmp8, i16 %20, i16 %spec.select
  %lock = getelementptr inbounds %struct.snd_ad1889, ptr %1, i32 0, i32 13
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %wave = getelementptr inbounds %struct.snd_ad1889, ptr %1, i32 0, i32 11
  %size15 = getelementptr inbounds %struct.snd_ad1889, ptr %1, i32 0, i32 11, i32 2
  %21 = ptrtoint ptr %size15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div1.i.i, ptr %size15, align 4
  %22 = ptrtoint ptr %wave to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %reg.1, ptr %wave, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %23 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_addr, align 8
  %addr = getelementptr inbounds %struct.snd_ad1889, ptr %1, i32 0, i32 11, i32 1
  %25 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %26 = tail call i16 @llvm.bswap.i16(i16 %reg.1) #10
  %27 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iobase.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %28, i16 %26) #10, !srcloc !158
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %29 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rate, align 4
  %conv21 = trunc i32 %30 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %31 = tail call i16 @llvm.bswap.i16(i16 %conv21) #10
  %32 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %31) #10, !srcloc !158
  %34 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  tail call void @arm_heavy_mb() #10
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #10
  %37 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %36) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  tail call void @arm_heavy_mb() #10
  %39 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %40, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %36) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  tail call void @arm_heavy_mb() #10
  %41 = tail call i32 @llvm.bswap.i32(i32 %div1.i.i) #10
  %42 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i72 = getelementptr i8, ptr %43, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i72, i32 %41) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  tail call void @arm_heavy_mb() #10
  %44 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i4.i73 = getelementptr i8, ptr %45, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i73, i32 %41) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  tail call void @arm_heavy_mb() #10
  %46 = tail call i32 @llvm.bswap.i32(i32 %div1.i.i68) #10
  %47 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i75 = getelementptr i8, ptr %48, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i75, i32 %46) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  tail call void @arm_heavy_mb() #10
  %49 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i4.i76 = getelementptr i8, ptr %50, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i76, i32 %46) #10, !srcloc !162
  %51 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %iobase.i, align 4
  %53 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %52) #10, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ad1889_playback_prepare.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ad1889_playback_prepare, %if.then29)) #10
          to label %do.end [label %if.then29], !srcloc !166

if.then29:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %55, i32 0, i32 27
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 8
  %58 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %addr, align 4
  %conv32 = zext i16 %reg.1 to i32
  %60 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ad1889_playback_prepare.__UNIQUE_ID_ddebug255, ptr noundef %57, ptr noundef nonnull @.str.19, i32 noundef %59, i32 noundef %div1.i.i68, i32 noundef %div1.i.i, i32 noundef %conv32, i32 noundef %61) #10
  br label %do.end

do.end:                                           ; preds = %if.then29, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ad1889_playback_trigger(ptr nocapture noundef readonly %ss, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %iobase.i = getelementptr inbounds %struct.snd_ad1889, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #10, !srcloc !159
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %do.end [
    i32 1, label %sw.bb
    i32 0, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 184
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 1536) #10, !srcloc !158
  %9 = or i16 %5, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %11, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 134217728) #10, !srcloc !162
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 4
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  %15 = and i16 %14, 32639
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i6.i, i16 %15) #10, !srcloc !158
  %18 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %19, i32 4
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i8.i) #10, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i41 = getelementptr i8, ptr %22, i32 4
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i41) #10, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  %24 = or i16 %23, -32640
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %25 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i7.i, i16 %24) #10, !srcloc !158
  %27 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %28, i32 4
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i9.i) #10, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  %30 = and i16 %5, -1025
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 456, i32 noundef 9, ptr noundef nonnull @.str.20) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %wsmc.0 = phi i16 [ %30, %sw.bb2 ], [ %9, %sw.bb ]
  %wave = getelementptr inbounds %struct.snd_ad1889, ptr %1, i32 0, i32 11
  %31 = ptrtoint ptr %wave to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %wsmc.0, ptr %wave, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %32 = tail call i16 @llvm.bswap.i16(i16 %wsmc.0) #10
  %33 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iobase.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %34, i16 %32) #10, !srcloc !158
  %35 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iobase.i, align 4
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %36) #10, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 0
  br i1 %cmp, label %if.then21, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then21:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ad1889_channel_reset(ptr noundef %1, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then21 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ad1889_playback_pointer(ptr nocapture noundef readonly %ss) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %wave = getelementptr inbounds %struct.snd_ad1889, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %wave to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %wave, align 4
  %4 = and i16 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !165

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %iobase.i = getelementptr inbounds %struct.snd_ad1889, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 116
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !163
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  %addr = getelementptr inbounds %struct.snd_ad1889, ptr %1, i32 0, i32 11, i32 1
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr, align 4
  %sub = sub i32 %8, %10
  %size = getelementptr inbounds %struct.snd_ad1889, ptr %1, i32 0, i32 11, i32 2
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %12)
  %cmp.not = icmp ult i32 %sub, %12
  br i1 %cmp.not, label %if.end34, label %do.end, !prof !167

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 522, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end34:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 11
  %13 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %runtime, align 4
  %mul.i = shl i32 %sub, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 21
  %15 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %16
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %div.i, %if.end34 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ad1889_capture_open(ptr noundef %ss) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 11
  %2 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime, align 4
  %csubs = getelementptr inbounds %struct.snd_ad1889, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %csubs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ss, ptr %csubs, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %5 = call ptr @memcpy(ptr %hw, ptr @snd_ad1889_capture_hw, i32 64)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ad1889_capture_close(ptr nocapture noundef readonly %ss) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %csubs = getelementptr inbounds %struct.snd_ad1889, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %csubs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %csubs, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ad1889_capture_prepare(ptr nocapture noundef readonly %ss) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 11
  %2 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime, align 4
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
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %8 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %period_size.i, align 4
  %mul.i.i63 = mul i32 %9, %7
  %div1.i.i64 = lshr i32 %mul.i.i63, 3
  tail call fastcc void @ad1889_channel_reset(ptr noundef %1, i32 noundef 2)
  %iobase.i = getelementptr inbounds %struct.snd_ad1889, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 2
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  %13 = and i16 %12, -769
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %15 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %format, align 4
  %call4 = tail call i32 @snd_pcm_format_width(i32 noundef %16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call4)
  %cmp = icmp eq i32 %call4, 16
  %17 = zext i1 %cmp to i16
  %spec.select = or i16 %14, %17
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %18 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp8 = icmp ugt i32 %19, 1
  %20 = or i16 %spec.select, 2
  %reg.1 = select i1 %cmp8, i16 %20, i16 %spec.select
  %lock = getelementptr inbounds %struct.snd_ad1889, ptr %1, i32 0, i32 13
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %ramc = getelementptr inbounds %struct.snd_ad1889, ptr %1, i32 0, i32 12
  %size15 = getelementptr inbounds %struct.snd_ad1889, ptr %1, i32 0, i32 12, i32 2
  %21 = ptrtoint ptr %size15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div1.i.i, ptr %size15, align 4
  %22 = ptrtoint ptr %ramc to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %reg.1, ptr %ramc, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %23 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_addr, align 8
  %addr = getelementptr inbounds %struct.snd_ad1889, ptr %1, i32 0, i32 12, i32 1
  %25 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %26 = tail call i16 @llvm.bswap.i16(i16 %reg.1) #10
  %27 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %28, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i66, i16 %26) #10, !srcloc !158
  %29 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  tail call void @arm_heavy_mb() #10
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #10
  %32 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %31) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  tail call void @arm_heavy_mb() #10
  %34 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %35, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %31) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  tail call void @arm_heavy_mb() #10
  %36 = tail call i32 @llvm.bswap.i32(i32 %div1.i.i) #10
  %37 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i68 = getelementptr i8, ptr %38, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i68, i32 %36) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  tail call void @arm_heavy_mb() #10
  %39 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i4.i69 = getelementptr i8, ptr %40, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i69, i32 %36) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  tail call void @arm_heavy_mb() #10
  %41 = tail call i32 @llvm.bswap.i32(i32 %div1.i.i64) #10
  %42 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i.i71 = getelementptr i8, ptr %43, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i71, i32 %41) #10, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  tail call void @arm_heavy_mb() #10
  %44 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i4.i72 = getelementptr i8, ptr %45, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i72, i32 %41) #10, !srcloc !162
  %46 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i74 = getelementptr i8, ptr %47, i32 2
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i74) #10, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ad1889_capture_prepare.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ad1889_capture_prepare, %if.then28)) #10
          to label %do.end [label %if.then28], !srcloc !166

if.then28:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %50, i32 0, i32 27
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 8
  %53 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %addr, align 4
  %conv31 = zext i16 %reg.1 to i32
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %55 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ad1889_capture_prepare.__UNIQUE_ID_ddebug256, ptr noundef %52, ptr noundef nonnull @.str.22, i32 noundef %54, i32 noundef %div1.i.i64, i32 noundef %div1.i.i, i32 noundef %conv31, i32 noundef %56) #10
  br label %do.end

do.end:                                           ; preds = %if.then28, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ad1889_capture_trigger(ptr nocapture noundef readonly %ss, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %iobase.i = getelementptr inbounds %struct.snd_ad1889, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !159
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %8, i32 168
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i20, i16 1536) #10, !srcloc !158
  %9 = or i16 %5, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %11, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 33554432) #10, !srcloc !162
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %12 = and i16 %5, -5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %ramc.0 = phi i16 [ %12, %sw.bb2 ], [ %9, %sw.bb ]
  %ramc5 = getelementptr inbounds %struct.snd_ad1889, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %ramc5 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %ramc.0, ptr %ramc5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %14 = tail call i16 @llvm.bswap.i16(i16 %ramc.0) #10
  %15 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %16, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i24, i16 %14) #10, !srcloc !158
  %17 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %18, i32 2
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i26) #10, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 0
  br i1 %cmp, label %if.then, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ad1889_channel_reset(ptr noundef %1, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ad1889_capture_pointer(ptr nocapture noundef readonly %ss) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ramc = getelementptr inbounds %struct.snd_ad1889, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ramc to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ramc, align 4
  %4 = and i16 %3, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !165

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %iobase.i = getelementptr inbounds %struct.snd_ad1889, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 84
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !163
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  %addr = getelementptr inbounds %struct.snd_ad1889, ptr %1, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr, align 4
  %sub = sub i32 %8, %10
  %size = getelementptr inbounds %struct.snd_ad1889, ptr %1, i32 0, i32 12, i32 2
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %12)
  %cmp.not = icmp ult i32 %sub, %12
  br i1 %cmp.not, label %if.end34, label %do.end, !prof !167

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 541, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end34:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 11
  %13 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %runtime, align 4
  %mul.i = shl i32 %sub, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 21
  %15 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %16
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %div.i, %if.end34 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ad1889_proc_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %iobase.i = getelementptr inbounds %struct.snd_ad1889, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobase.i, align 4
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #10, !srcloc !159
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.25, ptr @.str.24
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str.23, ptr noundef nonnull %cond) #10
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %and5 = and i32 %conv, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %cond7 = select i1 %tobool6.not, ptr @.str.28, ptr @.str.27
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.26, ptr noundef nonnull %cond7) #10
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  %and10 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %cond12 = select i1 %tobool11.not, i32 8, i32 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.29, i32 noundef %cond12) #10
  %and14 = and i32 %conv, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %12 = and i32 %conv, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool19.not = icmp eq i32 %12, 0
  %cond20 = select i1 %tobool19.not, i32 18, i32 12
  %cond21 = select i1 %tobool15.not, i32 4, i32 %cond20
  %not.tobool6.not = xor i1 %tobool6.not, true
  %13 = zext i1 %not.tobool6.not to i32
  %div206 = lshr i32 %cond21, %13
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %15, ptr noundef nonnull @.str.30, i32 noundef %div206, ptr noundef nonnull %cond7) #10
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  %and33 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %cond35 = select i1 %tobool34.not, ptr @.str.25, ptr @.str.24
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.31, ptr noundef nonnull %cond35) #10
  %and37 = and i32 %conv, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %18 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool44.not = icmp eq i32 %18, 0
  %cond45 = select i1 %tobool44.not, i32 18, i32 12
  %cond48 = select i1 %tobool38.not, i32 4, i32 %cond45
  %div53207 = lshr i32 %cond48, %13
  %19 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %20, ptr noundef nonnull @.str.32, i32 noundef %div53207, ptr noundef nonnull %cond7) #10
  %21 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 2
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !159
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  %25 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buffer, align 4
  %conv61 = zext i16 %24 to i32
  %and62 = and i32 %conv61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  %cond64 = select i1 %tobool63.not, ptr @.str.25, ptr @.str.24
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %26, ptr noundef nonnull @.str.33, ptr noundef nonnull %cond64) #10
  %27 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buffer, align 4
  %and67 = and i32 %conv61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  %cond69 = select i1 %tobool68.not, ptr @.str.28, ptr @.str.27
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %28, ptr noundef nonnull @.str.34, ptr noundef nonnull %cond69) #10
  %29 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buffer, align 4
  %and72 = and i32 %conv61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  %cond74 = select i1 %tobool73.not, i32 8, i32 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %30, ptr noundef nonnull @.str.35, i32 noundef %cond74) #10
  %and76 = and i32 %conv61, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  %31 = and i32 %conv61, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool83.not = icmp eq i32 %31, 0
  %cond84 = select i1 %tobool83.not, i32 18, i32 12
  %cond87 = select i1 %tobool77.not, i32 4, i32 %cond84
  %not.tobool68.not = xor i1 %tobool68.not, true
  %32 = zext i1 %not.tobool68.not to i32
  %div92209 = lshr i32 %cond87, %32
  %33 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %34, ptr noundef nonnull @.str.36, i32 noundef %div92209, ptr noundef nonnull %cond69) #10
  %35 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buffer, align 4
  %and100 = and i32 %conv61, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  %cond102 = select i1 %tobool101.not, ptr @.str.25, ptr @.str.24
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %36, ptr noundef nonnull @.str.37, ptr noundef nonnull %cond102) #10
  %and104 = and i32 %conv61, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  %37 = and i32 %conv61, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool111.not = icmp eq i32 %37, 0
  %cond112 = select i1 %tobool111.not, i32 18, i32 12
  %cond115 = select i1 %tobool105.not, i32 4, i32 %cond112
  %div120210 = lshr i32 %cond115, %32
  %38 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buffer, align 4
  %and123 = and i32 %conv61, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  %cond125 = select i1 %tobool124.not, ptr @.str.28, ptr @.str.27
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %39, ptr noundef nonnull @.str.38, i32 noundef %div120210, ptr noundef nonnull %cond125) #10
  %40 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i214 = getelementptr i8, ptr %41, i32 4
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i214) #10, !srcloc !159
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  %44 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buffer, align 4
  %conv128 = zext i16 %43 to i32
  %and129 = and i32 %conv128, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  %cond131 = select i1 %tobool130.not, ptr @.str.41, ptr @.str.40
  %and133 = lshr i32 %conv128, 8
  %46 = and i32 %and133, 62
  %mul = mul nuw nsw i32 %46, 3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %45, ptr noundef nonnull @.str.39, ptr noundef nonnull %cond131, i32 noundef %mul) #10
  %47 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i216 = getelementptr i8, ptr %48, i32 4
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i216) #10, !srcloc !159
  %50 = tail call i16 @llvm.bswap.i16(i16 %49) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  %51 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buffer, align 4
  %conv137 = zext i16 %50 to i32
  %and138 = and i32 %conv137, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  %cond140 = select i1 %tobool139.not, ptr @.str.41, ptr @.str.40
  %and142 = and i32 %conv137, 31
  %mul143 = mul nuw nsw i32 %and142, 3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %52, ptr noundef nonnull @.str.42, ptr noundef nonnull %cond140, i32 noundef %mul143) #10
  %53 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i218 = getelementptr i8, ptr %54, i32 8
  %55 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i218) #10, !srcloc !159
  %56 = tail call i16 @llvm.bswap.i16(i16 %55) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  %57 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buffer, align 4
  %conv146 = zext i16 %56 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %58, ptr noundef nonnull @.str.43, i32 noundef %conv146) #10
  %59 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %iobase.i, align 4
  %add.ptr.i220 = getelementptr i8, ptr %60, i32 10
  %61 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i220) #10, !srcloc !159
  %62 = tail call i16 @llvm.bswap.i16(i16 %61) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  %63 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %buffer, align 4
  %conv149 = zext i16 %62 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %64, ptr noundef nonnull @.str.44, i32 noundef %conv149) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
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
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !49, !51, !53, !55, !57, !59, !61, !62, !63, !64, !65, !66, !67, !69, !70, !72, !73, !74, !76, !77, !78, !80, !82, !83, !84, !85, !87, !88, !90, !92, !94, !96, !97, !98, !100, !102, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !139, !140, !142, !144}
!llvm.module.flags = !{!146, !147, !148, !149, !150, !151, !152, !153}
!llvm.ident = !{!154}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/ad1889.c", i32 43, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/ad1889.c", i32 44, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/ad1889.c", i32 45, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/ad1889.c", i32 48, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype246, !8, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index247, !11, !"__UNIQUE_ID_index247", i1 false, i1 false}
!11 = !{!"../sound/pci/ad1889.c", i32 49, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/ad1889.c", i32 52, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype248, !13, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id249, !16, !"__UNIQUE_ID_id249", i1 false, i1 false}
!16 = !{!"../sound/pci/ad1889.c", i32 53, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/pci/ad1889.c", i32 56, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype250, !18, !"__UNIQUE_ID_enabletype250", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable251, !21, !"__UNIQUE_ID_enable251", i1 false, i1 false}
!21 = !{!"../sound/pci/ad1889.c", i32 57, i32 1}
!22 = !{ptr @__param_ac97_quirk, !23, !"__param_ac97_quirk", i1 false, i1 false}
!23 = !{!"../sound/pci/ad1889.c", i32 60, i32 1}
!24 = !{ptr @__UNIQUE_ID_ac97_quirktype252, !23, !"__UNIQUE_ID_ac97_quirktype252", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_ac97_quirk253, !26, !"__UNIQUE_ID_ac97_quirk253", i1 false, i1 false}
!26 = !{!"../sound/pci/ad1889.c", i32 61, i32 1}
!27 = !{ptr @__initcall__kmod_snd_ad1889__258_919_ad1889_pci_driver_init6, !28, !"__initcall__kmod_snd_ad1889__258_919_ad1889_pci_driver_init6", i1 false, i1 false}
!28 = !{!"../sound/pci/ad1889.c", i32 919, i32 1}
!29 = !{ptr @__exitcall_ad1889_pci_driver_exit, !28, !"__exitcall_ad1889_pci_driver_exit", i1 false, i1 false}
!30 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!31 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!32 = !{ptr @index, !33, !"index", i1 false, i1 false}
!33 = !{!"../sound/pci/ad1889.c", i32 47, i32 12}
!34 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!35 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!36 = !{ptr @id, !37, !"id", i1 false, i1 false}
!37 = !{!"../sound/pci/ad1889.c", i32 51, i32 14}
!38 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!39 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!40 = !{ptr @enable, !41, !"enable", i1 false, i1 false}
!41 = !{!"../sound/pci/ad1889.c", i32 55, i32 13}
!42 = !{ptr @__param_str_ac97_quirk, !23, !"__param_str_ac97_quirk", i1 false, i1 false}
!43 = !{ptr @__param_arr_ac97_quirk, !23, !"__param_arr_ac97_quirk", i1 false, i1 false}
!44 = !{ptr @ac97_quirk, !45, !"ac97_quirk", i1 false, i1 false}
!45 = !{!"../sound/pci/ad1889.c", i32 59, i32 14}
!46 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ad1889_pci_driver, !48, !"ad1889_pci_driver", i1 false, i1 false}
!48 = !{!"../sound/pci/ad1889.c", i32 913, i32 26}
!49 = !{ptr @snd_ad1889_ids, !50, !"snd_ad1889_ids", i1 false, i1 false}
!50 = !{!"../sound/pci/ad1889.c", i32 907, i32 35}
!51 = !{ptr @snd_ad1889_probe.devno, !52, !"devno", i1 false, i1 false}
!52 = !{!"../sound/pci/ad1889.c", i32 851, i32 13}
!53 = !{ptr @.str.1, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/pci/ad1889.c", i32 870, i32 23}
!55 = !{ptr @.str.2, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/pci/ad1889.c", i32 871, i32 26}
!57 = !{ptr @.str.3, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/pci/ad1889.c", i32 879, i32 26}
!59 = !{ptr @.str.4, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/pci/ad1889.c", i32 804, i32 3}
!61 = !{ptr @.str.5, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.6, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.7, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.8, !60, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @snd_ad1889_create._entry, !60, !"_entry", i1 false, i1 false}
!66 = !{ptr @snd_ad1889_create._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @snd_ad1889_create.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../sound/pci/ad1889.c", i32 822, i32 2}
!69 = !{ptr @.str.9, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.11, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/pci/ad1889.c", i32 826, i32 3}
!72 = !{ptr @snd_ad1889_create._entry.10, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @snd_ad1889_create._entry_ptr.12, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.13, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/pci/ad1889.c", i32 580, i32 3}
!76 = !{ptr @.str.14, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @snd_ad1889_interrupt.__UNIQUE_ID_ddebug257, !75, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!78 = !{ptr @snd_ad1889_ac97_init.ops, !79, !"ops", i1 false, i1 false}
!79 = !{!"../sound/pci/ad1889.c", i32 748, i32 39}
!80 = !{ptr @.str.15, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/pci/ad1889.c", i32 250, i32 3}
!82 = !{ptr @.str.16, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @snd_ad1889_ac97_ready._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @snd_ad1889_ac97_ready._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.17, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/pci/ad1889.c", i32 254, i32 2}
!87 = !{ptr @snd_ad1889_ac97_ready.__UNIQUE_ID_ddebug254, !86, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!88 = !{ptr @ac97_quirks, !89, !"ac97_quirks", i1 false, i1 false}
!89 = !{!"../sound/pci/ad1889.c", i32 708, i32 32}
!90 = !{ptr @snd_ad1889_playback_ops, !91, !"snd_ad1889_playback_ops", i1 false, i1 false}
!91 = !{!"../sound/pci/ad1889.c", i32 547, i32 33}
!92 = !{ptr @snd_ad1889_playback_hw, !93, !"snd_ad1889_playback_hw", i1 false, i1 false}
!93 = !{!"../sound/pci/ad1889.c", i32 259, i32 38}
!94 = !{ptr @.str.18, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/pci/ad1889.c", i32 377, i32 2}
!96 = !{ptr @.str.19, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @snd_ad1889_playback_prepare.__UNIQUE_ID_ddebug255, !95, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!98 = !{ptr @.str.20, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/pci/ad1889.c", i32 456, i32 3}
!100 = !{ptr @snd_ad1889_capture_ops, !101, !"snd_ad1889_capture_ops", i1 false, i1 false}
!101 = !{!"../sound/pci/ad1889.c", i32 555, i32 33}
!102 = !{ptr @snd_ad1889_capture_hw, !103, !"snd_ad1889_capture_hw", i1 false, i1 false}
!103 = !{!"../sound/pci/ad1889.c", i32 276, i32 38}
!104 = !{ptr @.str.21, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/pci/ad1889.c", i32 424, i32 2}
!106 = !{ptr @.str.22, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @snd_ad1889_capture_prepare.__UNIQUE_ID_ddebug256, !105, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!108 = !{ptr @.str.23, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/ad1889.c", i32 628, i32 2}
!110 = !{ptr @.str.24, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.25, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.26, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/ad1889.c", i32 630, i32 2}
!114 = !{ptr @.str.27, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.28, !113, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.29, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/pci/ad1889.c", i32 632, i32 2}
!118 = !{ptr @.str.30, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/ad1889.c", i32 640, i32 2}
!120 = !{ptr @.str.31, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/pci/ad1889.c", i32 644, i32 2}
!122 = !{ptr @.str.32, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/pci/ad1889.c", i32 652, i32 2}
!124 = !{ptr @.str.33, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/pci/ad1889.c", i32 656, i32 2}
!126 = !{ptr @.str.34, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/pci/ad1889.c", i32 658, i32 2}
!128 = !{ptr @.str.35, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/pci/ad1889.c", i32 660, i32 2}
!130 = !{ptr @.str.36, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/pci/ad1889.c", i32 668, i32 2}
!132 = !{ptr @.str.37, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/pci/ad1889.c", i32 671, i32 2}
!134 = !{ptr @.str.38, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/pci/ad1889.c", i32 679, i32 2}
!136 = !{ptr @.str.39, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/pci/ad1889.c", i32 687, i32 2}
!138 = !{ptr @.str.40, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.41, !137, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.42, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/pci/ad1889.c", i32 691, i32 2}
!142 = !{ptr @.str.43, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/pci/ad1889.c", i32 696, i32 2}
!144 = !{ptr @.str.44, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/pci/ad1889.c", i32 698, i32 2}
!146 = !{i32 1, !"wchar_size", i32 2}
!147 = !{i32 1, !"min_enum_size", i32 4}
!148 = !{i32 8, !"branch-target-enforcement", i32 0}
!149 = !{i32 8, !"sign-return-address", i32 0}
!150 = !{i32 8, !"sign-return-address-all", i32 0}
!151 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!152 = !{i32 7, !"uwtable", i32 1}
!153 = !{i32 7, !"frame-pointer", i32 2}
!154 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!155 = !{!"auto-init"}
!156 = !{i8 0, i8 2}
!157 = !{i64 2154750867}
!158 = !{i64 5000767}
!159 = !{i64 5000967}
!160 = !{i64 2154750483}
!161 = !{i64 2154752086}
!162 = !{i64 5001387}
!163 = !{i64 5001805}
!164 = !{i64 2154751702}
!165 = !{!"branch_weights", i32 1, i32 2000}
!166 = !{i64 2148506790, i64 2148506795, i64 2148506808, i64 2148506852, i64 2148506886, i64 2148506907}
!167 = !{!"branch_weights", i32 2000, i32 1}
