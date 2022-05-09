; ModuleID = '/llk/IR_all_yes/sound/pci/ali5451/ali5451.c_pt.bc'
source_filename = "../sound/pci/ali5451/ali5451.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.88, i32 }
%union.anon.88 = type { ptr }
%struct.ali_pcm_description = type { ptr, i32, i32, ptr, ptr, i16 }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
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
%struct.snd_ali = type { i32, i32, i8, i8, ptr, ptr, ptr, ptr, [2 x ptr], %struct.snd_alidev, %struct.snd_ali_channel_control, i32, i32, i32, i32, ptr, [2 x ptr], i16, i16, %struct.spinlock, %struct.spinlock, ptr }
%struct.snd_alidev = type { [32 x %struct.snd_ali_voice], i32, i32, i32 }
%struct.snd_ali_voice = type { i32, i8, ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.snd_ali_channel_control = type { %struct.REGDATA, %struct.REGS }
%struct.REGDATA = type { i32, i32, i32, i32 }
%struct.REGS = type { i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.84, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.84 = type { i32, [28 x i8] }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.83, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.83 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.78, [128 x i8] }
%union.anon.78 = type { %union.anon.80 }
%union.anon.80 = type { [64 x i64] }
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
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.73, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.73 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.snd_ali_image = type { [56 x i32], [32 x [8 x i32]] }

@__UNIQUE_ID_author242 = internal constant [56 x i8] c"snd_ali5451.author=Matt Wu <Matt_Wu@acersoftech.com.cn>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [34 x i8] c"snd_ali5451.description=ALI M5451\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [47 x i8] c"snd_ali5451.file=sound/pci/ali5451/snd-ali5451\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [24 x i8] c"snd_ali5451.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [18 x i8] c"snd_ali5451.index\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [31 x i8] c"snd_ali5451.parmtype=index:int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [60 x i8] c"snd_ali5451.parm=index:Index value for ALI M5451 PCI Audio.\00", section ".modinfo", align 1
@__param_str_id = internal constant [15 x i8] c"snd_ali5451.id\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [30 x i8] c"snd_ali5451.parmtype=id:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [55 x i8] c"snd_ali5451.parm=id:ID string for ALI M5451 PCI Audio.\00", section ".modinfo", align 1
@__param_str_pcm_channels = internal constant [25 x i8] c"snd_ali5451.pcm_channels\00", align 1
@pcm_channels = internal global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@__param_pcm_channels = internal constant %struct.kernel_param { ptr @__param_str_pcm_channels, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @pcm_channels } }, section "__param", align 4
@__UNIQUE_ID_pcm_channelstype250 = internal constant [38 x i8] c"snd_ali5451.parmtype=pcm_channels:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pcm_channels251 = internal constant [43 x i8] c"snd_ali5451.parm=pcm_channels:PCM Channels\00", section ".modinfo", align 1
@__param_str_spdif = internal constant [18 x i8] c"snd_ali5451.spdif\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@spdif = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_spdif = internal constant %struct.kernel_param { ptr @__param_str_spdif, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @spdif } }, section "__param", align 4
@__UNIQUE_ID_spdiftype252 = internal constant [32 x i8] c"snd_ali5451.parmtype=spdif:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_spdif253 = internal constant [41 x i8] c"snd_ali5451.parm=spdif:Support SPDIF I/O\00", section ".modinfo", align 1
@__param_str_enable = internal constant [19 x i8] c"snd_ali5451.enable\00", align 1
@enable = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype254 = internal constant [33 x i8] c"snd_ali5451.parmtype=enable:bool\00", section ".modinfo", align 1
@__initcall__kmod_snd_ali5451__282_2182_ali5451_driver_init6 = internal global ptr @ali5451_driver_init, section ".initcall6.init", align 4
@ali5451_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_ali_ids, ptr @snd_ali_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ali_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ali5451_driver_exit = internal global ptr @ali5451_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd_ali5451\00", [20 x i8] zeroinitializer }, align 32
@snd_ali_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4281, i32 21585, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ali_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ali_suspend, ptr @ali_resume, ptr @ali_suspend, ptr @ali_resume, ptr @ali_suspend, ptr @ali_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@snd_ali_probe.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 2, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd_ali_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/pci/ali5451/ali5451.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"probe ...\0A\00", [21 x i8] zeroinitializer }, align 32
@snd_ali_probe.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 2, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mixer building ...\0A\00", [44 x i8] zeroinitializer }, align 32
@snd_ali_probe.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 2, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcm building ...\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ALI 5451\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s at 0x%lx, irq %i\00", [44 x i8] zeroinitializer }, align 32
@snd_ali_probe.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 2, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"register card.\0A\00", [16 x i8] zeroinitializer }, align 32
@snd_ali_create.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 1, i8 -4, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_ali_create\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"creating ...\0A\00", [18 x i8] zeroinitializer }, align 32
@snd_ali_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 2042, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"architecture does not support 31bit PCI busmaster DMA\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_ali_create._entry_ptr = internal global ptr @snd_ali_create._entry, section ".printk_index", align 4
@snd_ali_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&codec->reg_lock\00", [47 x i8] zeroinitializer }, align 32
@snd_ali_create.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&codec->voice_alloc\00", [44 x i8] zeroinitializer }, align 32
@snd_ali_create._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.2, i32 2095, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot find ALi 1533 chip.\0A\00", [36 x i8] zeroinitializer }, align 32
@snd_ali_create._entry_ptr.20 = internal global ptr @snd_ali_create._entry.18, section ".printk_index", align 4
@snd_ali_create._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.10, ptr @.str.2, i32 2101, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot find ALi 7101 chip.\0A\00", [36 x i8] zeroinitializer }, align 32
@snd_ali_create._entry_ptr.23 = internal global ptr @snd_ali_create._entry.21, section ".printk_index", align 4
@snd_ali_create._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.10, ptr @.str.2, i32 2111, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ali create: chip init error.\0A\00", [34 x i8] zeroinitializer }, align 32
@snd_ali_create._entry_ptr.26 = internal global ptr @snd_ali_create._entry.24, section ".printk_index", align 4
@snd_ali_create._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.10, ptr @.str.2, i32 2119, ptr @.str.29, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"can't allocate apm buffer\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@snd_ali_create._entry_ptr.30 = internal global ptr @snd_ali_create._entry.27, section ".printk_index", align 4
@snd_ali_resources.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 1, i8 -11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_ali_resources\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"resources allocation ...\0A\00", [38 x i8] zeroinitializer }, align 32
@snd_ali_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 2015, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to request irq.\0A\00", [40 x i8] zeroinitializer }, align 32
@snd_ali_resources._entry_ptr = internal global ptr @snd_ali_resources._entry, section ".printk_index", align 4
@snd_ali_resources.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.34, i8 1, i8 -7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"resources allocated.\0A\00", [42 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@snd_ali_update_ptr.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 -42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_ali_update_ptr\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"update_ptr: cso=%4.4x cspf=%d.\0A\00", [32 x i8] zeroinitializer }, align 32
@snd_ali_stop_voice.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 -105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_ali_stop_voice\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stop_voice: channel=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@snd_ali_disable_voice_irq.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snd_ali_disable_voice_irq\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"disable_voice_irq channel=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@snd_ali_chip_init.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 1, i8 -29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_ali_chip_init\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"chip initializing ...\0A\00", [41 x i8] zeroinitializer }, align 32
@snd_ali_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 1936, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ali_chip_init: reset 5451 error.\0A\00", [62 x i8] zeroinitializer }, align 32
@snd_ali_chip_init._entry_ptr = internal global ptr @snd_ali_chip_init._entry, section ".printk_index", align 4
@snd_ali_chip_init.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.44, i8 1, i8 -17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"chip initialize succeed.\0A\00", [38 x i8] zeroinitializer }, align 32
@snd_ali_codec_peek._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 363, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ali_codec_peek: reg(%xh) invalid.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_ali_codec_peek\00", [45 x i8] zeroinitializer }, align 32
@snd_ali_codec_peek._entry_ptr = internal global ptr @snd_ali_codec_peek._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@snd_ali_codec_ready.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snd_ali_codec_ready\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ali_codec_ready: codec is not ready.\0A \00", [57 x i8] zeroinitializer }, align 32
@snd_ali_stimer_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 318, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ali_stimer_read: stimer is not ready.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_ali_stimer_ready\00", [43 x i8] zeroinitializer }, align 32
@snd_ali_stimer_ready._entry_ptr = internal global ptr @snd_ali_stimer_ready._entry, section ".printk_index", align 4
@snd_ali_mixer.ops = internal constant { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr null, ptr null, ptr @snd_ali_codec_write, ptr @snd_ali_codec_read, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snd_ali_mixer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 1808, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ali mixer %d creating error.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd_ali_mixer\00", [18 x i8] zeroinitializer }, align 32
@snd_ali_mixer._entry_ptr = internal global ptr @snd_ali_mixer._entry, section ".printk_index", align 4
@snd_ali5451_mixer_spdif = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ali5451_spdif_get, ptr @snd_ali5451_spdif_put, %union.anon.88 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ali5451_spdif_get, ptr @snd_ali5451_spdif_put, %union.anon.88 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ali5451_spdif_get, ptr @snd_ali5451_spdif_put, %union.anon.88 zeroinitializer, i32 2 }], [48 x i8] zeroinitializer }, align 32
@snd_ali_codec_write.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snd_ali_codec_write\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"codec_write: reg=%xh data=%xh.\0A\00", [32 x i8] zeroinitializer }, align 32
@snd_ali_codec_poke._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 331, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ali_codec_poke: reg(%xh) invalid.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_ali_codec_poke\00", [45 x i8] zeroinitializer }, align 32
@snd_ali_codec_poke._entry_ptr = internal global ptr @snd_ali_codec_poke._entry, section ".printk_index", align 4
@snd_ali_codec_read.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 0, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_ali_codec_read\00", [45 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"codec_read reg=%xh.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IEC958 Output Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IEC958 Channel Output Switch\00", [35 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IEC958 Capture Switch\00", [42 x i8] zeroinitializer }, align 32
@ali_pcms = internal constant { [2 x %struct.ali_pcm_description], [48 x i8] } { [2 x %struct.ali_pcm_description] [%struct.ali_pcm_description { ptr @.str.7, i32 32, i32 1, ptr @snd_ali_playback_ops, ptr @snd_ali_capture_ops, i16 0 }, %struct.ali_pcm_description { ptr @.str.64, i32 1, i32 1, ptr @snd_ali_modem_playback_ops, ptr @snd_ali_modem_capture_ops, i16 2 }], [48 x i8] zeroinitializer }, align 32
@snd_ali_pcm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 1632, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"snd_ali_pcm: err called snd_pcm_new.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd_ali_pcm\00", [20 x i8] zeroinitializer }, align 32
@snd_ali_pcm._entry_ptr = internal global ptr @snd_ali_pcm._entry, section ".printk_index", align 4
@snd_ali_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_ali_playback_open, ptr @snd_ali_playback_close, ptr null, ptr @snd_ali_playback_hw_params, ptr @snd_ali_playback_hw_free, ptr @snd_ali_playback_prepare, ptr @snd_ali_trigger, ptr null, ptr @snd_ali_playback_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_ali_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_ali_capture_open, ptr @snd_ali_close, ptr null, ptr null, ptr null, ptr @snd_ali_prepare, ptr @snd_ali_trigger, ptr null, ptr @snd_ali_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ALI 5451 modem\00", [17 x i8] zeroinitializer }, align 32
@snd_ali_modem_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_ali_modem_playback_open, ptr @snd_ali_close, ptr null, ptr @snd_ali_modem_hw_params, ptr null, ptr @snd_ali_prepare, ptr @snd_ali_trigger, ptr null, ptr @snd_ali_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_ali_modem_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_ali_modem_capture_open, ptr @snd_ali_close, ptr null, ptr @snd_ali_modem_hw_params, ptr null, ptr @snd_ali_prepare, ptr @snd_ali_trigger, ptr null, ptr @snd_ali_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_ali_playback = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4522243, i64 23, i32 1073742078, i32 4000, i32 48000, i32 1, i32 2, i32 262144, i32 64, i32 262144, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_ali_alloc_voice.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.66, i8 0, i8 -28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snd_ali_alloc_voice\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"alloc_voice: type=%d rec=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@snd_ali_alloc_voice._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.2, i32 921, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ali_alloc_voice: err.\0A\00", [41 x i8] zeroinitializer }, align 32
@snd_ali_alloc_voice._entry_ptr = internal global ptr @snd_ali_alloc_voice._entry, section ".printk_index", align 4
@snd_ali_alloc_pcm_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 520, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ali_alloc_pcm_channel: no free channels.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snd_ali_alloc_pcm_channel\00", [38 x i8] zeroinitializer }, align 32
@snd_ali_alloc_pcm_channel._entry_ptr = internal global ptr @snd_ali_alloc_pcm_channel._entry, section ".printk_index", align 4
@snd_ali_alloc_pcm_channel.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.2, ptr @.str.70, i8 0, i8 -125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"alloc_pcm_channel no. %d.\0A\00", [37 x i8] zeroinitializer }, align 32
@snd_ali_find_free_channel.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.72, i8 0, i8 -122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snd_ali_find_free_channel\00", [38 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"find_free_channel: for %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rec\00", [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pcm\00", [28 x i8] zeroinitializer }, align 32
@snd_ali_find_free_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.71, ptr @.str.2, i32 555, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ali_find_free_channel: record channel is busy now.\0A\00", [44 x i8] zeroinitializer }, align 32
@snd_ali_find_free_channel._entry_ptr = internal global ptr @snd_ali_find_free_channel._entry, section ".printk_index", align 4
@snd_ali_find_free_channel._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.71, ptr @.str.2, i32 570, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"ali_find_free_channel: S/PDIF out channel is in busy now.\0A\00", [37 x i8] zeroinitializer }, align 32
@snd_ali_find_free_channel._entry_ptr.78 = internal global ptr @snd_ali_find_free_channel._entry.76, section ".printk_index", align 4
@snd_ali_find_free_channel._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.71, ptr @.str.2, i32 578, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ali_find_free_channel: no free channels.\0A\00", [54 x i8] zeroinitializer }, align 32
@snd_ali_find_free_channel._entry_ptr.81 = internal global ptr @snd_ali_find_free_channel._entry.79, section ".printk_index", align 4
@snd_ali_free_voice.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.2, ptr @.str.83, i8 0, i8 -20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_ali_free_voice\00", [45 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"free_voice: channel=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@snd_ali_free_channel_pcm.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.85, i8 0, i8 -110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_ali_free_channel_pcm\00", [39 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"free_channel_pcm channel=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@snd_ali_free_channel_pcm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.2, i32 594, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ali_free_channel_pcm: channel %d is not in use.\0A\00", [47 x i8] zeroinitializer }, align 32
@snd_ali_free_channel_pcm._entry_ptr = internal global ptr @snd_ali_free_channel_pcm._entry, section ".printk_index", align 4
@snd_ali_playback_prepare.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.88, i8 1, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_ali_playback_prepare\00", [39 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"playback_prepare ...\0A\00", [42 x i8] zeroinitializer }, align 32
@snd_ali_playback_prepare.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.89, i8 1, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"playback_prepare: eso=%xh count=%xh\0A\00", [59 x i8] zeroinitializer }, align 32
@snd_ali_playback_prepare.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.90, i8 1, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"playback_prepare:\0A\00", [45 x i8] zeroinitializer }, align 32
@snd_ali_playback_prepare.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.91, i8 1, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ch=%d, Rate=%d Delta=%xh,GVSEL=%xh,PAN=%xh,CTRL=%xh\0A\00", [43 x i8] zeroinitializer }, align 32
@snd_ali_trigger.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.92, ptr @.str.2, ptr @.str.93, i8 1, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_ali_trigger\00", [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"trigger: what=%xh whati=%xh\0A\00", [35 x i8] zeroinitializer }, align 32
@snd_ali_playback_pointer.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.95, i8 1, i8 87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_ali_playback_pointer\00", [39 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"playback pointer returned cso=%xh.\0A\00", [60 x i8] zeroinitializer }, align 32
@snd_ali_capture = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4522243, i64 23, i32 1073742078, i32 4000, i32 48000, i32 1, i32 2, i32 131072, i32 64, i32 131072, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_ali_prepare.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.96, ptr @.str.2, ptr @.str.97, i8 1, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_ali_prepare\00", [16 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ali_prepare...\0A\00", [16 x i8] zeroinitializer }, align 32
@snd_ali_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.2, i32 1306, ptr @.str.29, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ali_capture_prepare: spdif rate detect err!\0A\00", [51 x i8] zeroinitializer }, align 32
@snd_ali_prepare._entry_ptr = internal global ptr @snd_ali_prepare._entry, section ".printk_index", align 4
@snd_ali_prepare._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.96, ptr @.str.2, i32 1314, ptr @.str.29, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"clear SPDIF parity error flag.\0A\00", [32 x i8] zeroinitializer }, align 32
@snd_ali_prepare._entry_ptr.101 = internal global ptr @snd_ali_prepare._entry.99, section ".printk_index", align 4
@snd_ali_detect_spdif_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 647, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ali_detect_spdif_rate: timeout!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snd_ali_detect_spdif_rate\00", [38 x i8] zeroinitializer }, align 32
@snd_ali_detect_spdif_rate._entry_ptr = internal global ptr @snd_ali_detect_spdif_rate._entry, section ".printk_index", align 4
@snd_ali_detect_spdif_rate._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 662, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@snd_ali_detect_spdif_rate._entry_ptr.105 = internal global ptr @snd_ali_detect_spdif_rate._entry.104, section ".printk_index", align 4
@snd_ali_modem_open.rates = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 8000, i32 9600, i32 12000, i32 16000], [16 x i8] zeroinitializer }, align 32
@snd_ali_modem_open.hw_constraint_rates = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @snd_ali_modem_open.rates, i32 4, i32 0 }, [20 x i8] zeroinitializer }, align 32
@snd_ali_modem = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4522243, i64 4, i32 -2147483638, i32 8000, i32 16000, i32 1, i32 1, i32 262144, i32 64, i32 262144, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ali5451\00", [24 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%02x: %08x\0A\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.108 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 16, i64 8000, i64 44100]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 19, i64 31]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 16, i64 8000, i64 44100]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 16, i64 8000, i64 44100]
@__sancov_gen_cov_switch_values.113 = internal global [7 x i64] [i64 5, i64 5, i64 11, i64 12, i64 13, i64 14, i64 18]
@__sancov_gen_cov_switch_values.114 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 132, i64 176]
@__sancov_gen_cov_switch_values.116 = internal global [5 x i64] [i64 3, i64 32, i64 128, i64 132, i64 176]
@___asan_gen_.117 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 33, i32 12 }
@___asan_gen_.120 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 34, i32 14 }
@___asan_gen_.123 = private unnamed_addr constant [13 x i8] c"pcm_channels\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 35, i32 12 }
@___asan_gen_.126 = private unnamed_addr constant [6 x i8] c"spdif\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 36, i32 13 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 48, i32 13 }
@___asan_gen_.132 = private unnamed_addr constant [15 x i8] c"ali5451_driver\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2173, i32 26 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2182, i32 1 }
@___asan_gen_.138 = private unnamed_addr constant [12 x i8] c"snd_ali_ids\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 251, i32 35 }
@___asan_gen_.141 = private unnamed_addr constant [7 x i8] c"ali_pm\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1911, i32 8 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2134, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2146, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2151, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2159, i32 26 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2161, i32 26 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2164, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2033, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2041, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2046, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2047, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2095, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2101, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2111, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2119, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2006, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2015, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 2020, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 855, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 606, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 506, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1933, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1936, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1982, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 362, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 297, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 318, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1791, i32 39 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1807, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant [24 x i8] c"snd_ali5451_mixer_spdif\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1776, i32 38 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 395, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 330, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 411, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1779, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1781, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1783, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant [9 x i8] c"ali_pcms\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1655, i32 35 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1631, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant [21 x i8] c"snd_ali_playback_ops\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1504, i32 33 }
@___asan_gen_.357 = private unnamed_addr constant [20 x i8] c"snd_ali_capture_ops\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1514, i32 33 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1662, i32 12 }
@___asan_gen_.363 = private unnamed_addr constant [27 x i8] c"snd_ali_modem_playback_ops\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1586, i32 33 }
@___asan_gen_.366 = private unnamed_addr constant [26 x i8] c"snd_ali_modem_capture_ops\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1595, i32 33 }
@___asan_gen_.369 = private unnamed_addr constant [17 x i8] c"snd_ali_playback\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1400, i32 38 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 914, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 921, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 519, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 527, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 538, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 554, i32 4 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 569, i32 4 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 578, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 944, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 586, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 592, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1192, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1219, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1231, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1232, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1125, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1373, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant [16 x i8] c"snd_ali_capture\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1426, i32 38 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1286, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1305, i32 4 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1313, i32 4 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 647, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 662, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant [6 x i8] c"rates\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1562, i32 28 }
@___asan_gen_.507 = private unnamed_addr constant [20 x i8] c"hw_constraint_rates\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1563, i32 49 }
@___asan_gen_.510 = private unnamed_addr constant [14 x i8] c"snd_ali_modem\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1537, i32 38 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1999, i32 36 }
@___asan_gen_.516 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.517 = private constant [31 x i8] c"../sound/pci/ali5451/ali5451.c\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.517, i32 1994, i32 3 }
@llvm.compiler.used = appending global [177 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_enabletype254, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_license245, ptr @__UNIQUE_ID_pcm_channels251, ptr @__UNIQUE_ID_pcm_channelstype250, ptr @__UNIQUE_ID_spdif253, ptr @__UNIQUE_ID_spdiftype252, ptr @__exitcall_ali5451_driver_exit, ptr @__initcall__kmod_snd_ali5451__282_2182_ali5451_driver_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @__param_pcm_channels, ptr @__param_spdif, ptr @ali5451_driver_exit, ptr @snd_ali_alloc_pcm_channel._entry, ptr @snd_ali_alloc_pcm_channel._entry_ptr, ptr @snd_ali_alloc_voice._entry, ptr @snd_ali_alloc_voice._entry_ptr, ptr @snd_ali_chip_init._entry, ptr @snd_ali_chip_init._entry_ptr, ptr @snd_ali_codec_peek._entry, ptr @snd_ali_codec_peek._entry_ptr, ptr @snd_ali_codec_poke._entry, ptr @snd_ali_codec_poke._entry_ptr, ptr @snd_ali_create._entry, ptr @snd_ali_create._entry.18, ptr @snd_ali_create._entry.21, ptr @snd_ali_create._entry.24, ptr @snd_ali_create._entry.27, ptr @snd_ali_create._entry_ptr, ptr @snd_ali_create._entry_ptr.20, ptr @snd_ali_create._entry_ptr.23, ptr @snd_ali_create._entry_ptr.26, ptr @snd_ali_create._entry_ptr.30, ptr @snd_ali_detect_spdif_rate._entry, ptr @snd_ali_detect_spdif_rate._entry.104, ptr @snd_ali_detect_spdif_rate._entry_ptr, ptr @snd_ali_detect_spdif_rate._entry_ptr.105, ptr @snd_ali_find_free_channel._entry, ptr @snd_ali_find_free_channel._entry.76, ptr @snd_ali_find_free_channel._entry.79, ptr @snd_ali_find_free_channel._entry_ptr, ptr @snd_ali_find_free_channel._entry_ptr.78, ptr @snd_ali_find_free_channel._entry_ptr.81, ptr @snd_ali_free_channel_pcm._entry, ptr @snd_ali_free_channel_pcm._entry_ptr, ptr @snd_ali_mixer._entry, ptr @snd_ali_mixer._entry_ptr, ptr @snd_ali_pcm._entry, ptr @snd_ali_pcm._entry_ptr, ptr @snd_ali_prepare._entry, ptr @snd_ali_prepare._entry.99, ptr @snd_ali_prepare._entry_ptr, ptr @snd_ali_prepare._entry_ptr.101, ptr @snd_ali_resources._entry, ptr @snd_ali_resources._entry_ptr, ptr @snd_ali_stimer_ready._entry, ptr @snd_ali_stimer_ready._entry_ptr, ptr @index, ptr @id, ptr @pcm_channels, ptr @spdif, ptr @enable, ptr @ali5451_driver, ptr @.str, ptr @snd_ali_ids, ptr @ali_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @snd_ali_create.__key, ptr @.str.15, ptr @snd_ali_create.__key.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @snd_ali_mixer.ops, ptr @.str.51, ptr @.str.52, ptr @snd_ali5451_mixer_spdif, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @ali_pcms, ptr @.str.62, ptr @.str.63, ptr @snd_ali_playback_ops, ptr @snd_ali_capture_ops, ptr @.str.64, ptr @snd_ali_modem_playback_ops, ptr @snd_ali_modem_capture_ops, ptr @snd_ali_playback, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @snd_ali_capture, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @snd_ali_modem_open.rates, ptr @snd_ali_modem_open.hw_constraint_rates, ptr @snd_ali_modem, ptr @.str.106, ptr @.str.107], section "llvm.metadata"
@0 = internal global [134 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_channels to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali5451_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_create.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_create._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_create._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_create._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_create._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_codec_peek._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_stimer_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_mixer.ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_mixer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali5451_mixer_spdif to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_codec_poke._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ali_pcms to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_pcm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_modem_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_modem_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_playback to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_alloc_voice._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_alloc_pcm_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_find_free_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_find_free_channel._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_find_free_channel._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_free_channel_pcm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_capture to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_prepare._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_detect_spdif_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_detect_spdif_rate._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_modem_open.rates to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_modem_open.hw_constraint_rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ali_modem to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ali5451_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @ali5451_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ali5451_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @ali5451_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ali_probe(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #2 align 64 {
entry:
  %pcm.i.i = alloca ptr, align 4
  %ac97.i = alloca %struct.snd_ac97_template, align 4
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #9
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !311
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_probe.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_probe, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_probe.__UNIQUE_ID_ddebug278, ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %1 = load i32, ptr @index, align 4
  %2 = load ptr, ptr @id, align 4
  %call4 = call i32 @snd_devm_card_new(ptr noundef %dev3, i32 noundef %1, ptr noundef %2, ptr noundef null, i32 noundef 1364, ptr noundef nonnull %card) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data, align 8
  %7 = load i32, ptr @pcm_channels, align 4
  %8 = load i8, ptr @spdif, align 1, !range !313
  %9 = zext i8 %8 to i32
  %call8 = call fastcc i32 @snd_ali_create(ptr noundef %4, ptr noundef %pci, i32 noundef %7, i32 noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end6.cleanup_crit_edge, label %do.body13

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body13:                                        ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_probe.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_probe, %if.then25)) #9
          to label %do.end29 [label %if.then25], !srcloc !312

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_probe.__UNIQUE_ID_ddebug279, ptr noundef %dev3, ptr noundef nonnull @.str.4) #9
  br label %do.end29

do.end29:                                         ; preds = %if.then25, %do.body13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ac97.i) #9
  %10 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 3
  %card.i = getelementptr inbounds %struct.snd_ali, ptr %6, i32 0, i32 7
  %11 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card.i, align 4
  %ac97_bus.i = getelementptr inbounds %struct.snd_ali, ptr %6, i32 0, i32 15
  %call.i = call i32 @snd_ac97_bus(ptr noundef %12, i32 noundef 0, ptr noundef nonnull @snd_ali_mixer.ops, ptr noundef %6, ptr noundef %ac97_bus.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end29.snd_ali_mixer.exit.thread_crit_edge, label %if.end.i

do.end29.snd_ali_mixer.exit.thread_crit_edge:     ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_ali_mixer.exit.thread

if.end.i:                                         ; preds = %do.end29
  %13 = getelementptr inbounds i8, ptr %ac97.i, i32 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 20)
  %15 = ptrtoint ptr %ac97.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %6, ptr %ac97.i, align 4
  %num_of_codecs.i = getelementptr inbounds %struct.snd_ali, ptr %6, i32 0, i32 14
  %16 = ptrtoint ptr %num_of_codecs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_of_codecs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp160.not.i = icmp eq i32 %17, 0
  br i1 %cmp160.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.061.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.061.i to i16
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i, ptr %10, align 4
  %19 = ptrtoint ptr %ac97_bus.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ac97_bus.i, align 4
  %arrayidx.i = getelementptr %struct.snd_ali, ptr %6, i32 0, i32 16, i32 %i.061.i
  %call4.i = call i32 @snd_ac97_mixer(ptr noundef %20, ptr noundef nonnull %ac97.i, ptr noundef %arrayidx.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end.i, label %for.inc.i

do.end.i:                                         ; preds = %for.body.i
  %21 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.51, i32 noundef %i.061.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.061.i)
  %cmp9.i = icmp eq i32 %i.061.i, 0
  br i1 %cmp9.i, label %do.end.i.snd_ali_mixer.exit.thread_crit_edge, label %if.end12.i

do.end.i.snd_ali_mixer.exit.thread_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_ali_mixer.exit.thread

if.end12.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %num_of_codecs.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %num_of_codecs.i, align 4
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.061.i, 1
  %26 = ptrtoint ptr %num_of_codecs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_of_codecs.i, align 4
  %cmp1.i = icmp ult i32 %inc.i, %27
  br i1 %cmp1.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end12.i, %if.end.i.for.end.i_crit_edge
  %spdif_support.i = getelementptr inbounds %struct.snd_ali, ptr %6, i32 0, i32 3
  %28 = ptrtoint ptr %spdif_support.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i = load i8, ptr %spdif_support.i, align 1
  %29 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i, label %snd_ali_mixer.exit.thread131, label %for.body19.preheader.i

snd_ali_mixer.exit.thread131:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #9
  br label %do.body35

for.body19.preheader.i:                           ; preds = %for.end.i
  %30 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %card.i, align 4
  %call22.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ali5451_mixer_spdif, ptr noundef %6) #9
  %call23.i = call i32 @snd_ctl_add(ptr noundef %31, ptr noundef %call22.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  br i1 %cmp24.i, label %for.body19.preheader.i.snd_ali_mixer.exit.thread_crit_edge, label %for.cond16.i

for.body19.preheader.i.snd_ali_mixer.exit.thread_crit_edge: ; preds = %for.body19.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_ali_mixer.exit.thread

for.cond16.i:                                     ; preds = %for.body19.preheader.i
  %32 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %card.i, align 4
  %call22.1.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([3 x %struct.snd_kcontrol_new], ptr @snd_ali5451_mixer_spdif, i32 0, i32 1), ptr noundef %6) #9
  %call23.1.i = call i32 @snd_ctl_add(ptr noundef %33, ptr noundef %call22.1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.1.i)
  %cmp24.1.i = icmp slt i32 %call23.1.i, 0
  br i1 %cmp24.1.i, label %for.cond16.i.snd_ali_mixer.exit.thread_crit_edge, label %snd_ali_mixer.exit

for.cond16.i.snd_ali_mixer.exit.thread_crit_edge: ; preds = %for.cond16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_ali_mixer.exit.thread

snd_ali_mixer.exit.thread:                        ; preds = %for.cond16.i.snd_ali_mixer.exit.thread_crit_edge, %for.body19.preheader.i.snd_ali_mixer.exit.thread_crit_edge, %do.end.i.snd_ali_mixer.exit.thread_crit_edge, %do.end29.snd_ali_mixer.exit.thread_crit_edge
  %retval.0.i116.ph = phi i32 [ %call23.1.i, %for.cond16.i.snd_ali_mixer.exit.thread_crit_edge ], [ %call23.i, %for.body19.preheader.i.snd_ali_mixer.exit.thread_crit_edge ], [ %call4.i, %do.end.i.snd_ali_mixer.exit.thread_crit_edge ], [ %call.i, %do.end29.snd_ali_mixer.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #9
  br label %cleanup

snd_ali_mixer.exit:                               ; preds = %for.cond16.i
  %34 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %card.i, align 4
  %call22.2.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([3 x %struct.snd_kcontrol_new], ptr @snd_ali5451_mixer_spdif, i32 0, i32 2), ptr noundef %6) #9
  %call23.2.i = call i32 @snd_ctl_add(ptr noundef %35, ptr noundef %call22.2.i) #9
  %36 = call i32 @llvm.smin.i32(i32 %call23.2.i, i32 0) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.2.i)
  %cmp31 = icmp slt i32 %call23.2.i, 0
  br i1 %cmp31, label %snd_ali_mixer.exit.cleanup_crit_edge, label %snd_ali_mixer.exit.do.body35_crit_edge

snd_ali_mixer.exit.do.body35_crit_edge:           ; preds = %snd_ali_mixer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body35

snd_ali_mixer.exit.cleanup_crit_edge:             ; preds = %snd_ali_mixer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body35:                                        ; preds = %snd_ali_mixer.exit.do.body35_crit_edge, %snd_ali_mixer.exit.thread131
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_probe.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_probe, %if.then47)) #9
          to label %do.end51 [label %if.then47], !srcloc !312

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_probe.__UNIQUE_ID_ddebug280, ptr noundef %dev3, ptr noundef nonnull @.str.5) #9
  br label %do.end51

do.end51:                                         ; preds = %if.then47, %do.body35
  %37 = ptrtoint ptr %num_of_codecs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_of_codecs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp12.not.i = icmp eq i32 %38, 0
  br i1 %cmp12.not.i, label %do.end51.if.end56_crit_edge, label %for.body.lr.ph.i

do.end51.if.end56_crit_edge:                      ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

for.body.lr.ph.i:                                 ; preds = %do.end51
  %pci.i.i = getelementptr inbounds %struct.snd_ali, ptr %6, i32 0, i32 4
  %pcm14.i.i = getelementptr inbounds %struct.snd_ali, ptr %6, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i.i) #9
  %39 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i.i, align 4, !annotation !311
  %40 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %card.i, align 4
  %call.i.i = call i32 @snd_pcm_new(ptr noundef %41, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 32, i32 noundef 1, ptr noundef nonnull %pcm.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %for.body.lr.ph.i.snd_ali_build_pcms.exit_crit_edge, label %if.end.i.i

for.body.lr.ph.i.snd_ali_build_pcms.exit_crit_edge: ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_ali_build_pcms.exit

if.end.i.i:                                       ; preds = %for.body.lr.ph.i
  %42 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pcm.i.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.snd_pcm, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %6, ptr %private_data.i.i, align 8
  %private_free.i.i = getelementptr inbounds %struct.snd_pcm, ptr %43, i32 0, i32 12
  %45 = ptrtoint ptr %private_free.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @snd_ali_pcm_free, ptr %private_free.i.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %43, i32 noundef 0, ptr noundef nonnull @snd_ali_playback_ops) #9
  %46 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pcm.i.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %47, i32 noundef 1, ptr noundef nonnull @snd_ali_capture_ops) #9
  %48 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pcm.i.i, align 4
  %50 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pci.i.i, align 4
  %dev9.i.i = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %call10.i.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %49, i32 noundef 2, ptr noundef %dev9.i.i, i32 noundef 65536, i32 noundef 131072) #9
  %52 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pcm.i.i, align 4
  %info_flags.i.i = getelementptr inbounds %struct.snd_pcm, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %info_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %info_flags.i.i, align 8
  %dev_class.i.i = getelementptr inbounds %struct.snd_pcm, ptr %53, i32 0, i32 4
  %55 = ptrtoint ptr %dev_class.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %dev_class.i.i, align 4
  %dev_subclass.i.i = getelementptr inbounds %struct.snd_pcm, ptr %53, i32 0, i32 5
  %56 = ptrtoint ptr %dev_subclass.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %dev_subclass.i.i, align 2
  %name11.i.i = getelementptr inbounds %struct.snd_pcm, ptr %53, i32 0, i32 7
  %57 = call ptr @memcpy(ptr %name11.i.i, ptr @.str.7, i32 9)
  %58 = ptrtoint ptr %pcm14.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %53, ptr %pcm14.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i.i) #9
  %59 = ptrtoint ptr %num_of_codecs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_of_codecs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp.i122 = icmp ugt i32 %60, 1
  br i1 %cmp.i122, label %for.body.i120.1, label %if.end.i.i.if.end56_crit_edge

if.end.i.i.if.end56_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

for.body.i120.1:                                  ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i.i) #9
  %61 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i.i, align 4, !annotation !311
  %62 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %card.i, align 4
  %call.i.i.1 = call i32 @snd_pcm_new(ptr noundef %63, ptr noundef nonnull @.str.64, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %pcm.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %cmp.i.i.1 = icmp slt i32 %call.i.i.1, 0
  br i1 %cmp.i.i.1, label %for.body.i120.1.snd_ali_build_pcms.exit_crit_edge, label %if.end.i.i.1

for.body.i120.1.snd_ali_build_pcms.exit_crit_edge: ; preds = %for.body.i120.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_ali_build_pcms.exit

if.end.i.i.1:                                     ; preds = %for.body.i120.1
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pcm.i.i, align 4
  %private_data.i.i.1 = getelementptr inbounds %struct.snd_pcm, ptr %65, i32 0, i32 11
  %66 = ptrtoint ptr %private_data.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %6, ptr %private_data.i.i.1, align 8
  %private_free.i.i.1 = getelementptr inbounds %struct.snd_pcm, ptr %65, i32 0, i32 12
  %67 = ptrtoint ptr %private_free.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @snd_ali_pcm_free, ptr %private_free.i.i.1, align 4
  call void @snd_pcm_set_ops(ptr noundef %65, i32 noundef 0, ptr noundef nonnull @snd_ali_modem_playback_ops) #9
  %68 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pcm.i.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %69, i32 noundef 1, ptr noundef nonnull @snd_ali_modem_capture_ops) #9
  %70 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pcm.i.i, align 4
  %72 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pci.i.i, align 4
  %dev9.i.i.1 = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  %call10.i.i.1 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %71, i32 noundef 2, ptr noundef %dev9.i.i.1, i32 noundef 65536, i32 noundef 131072) #9
  %74 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pcm.i.i, align 4
  %info_flags.i.i.1 = getelementptr inbounds %struct.snd_pcm, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %info_flags.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %info_flags.i.i.1, align 8
  %dev_class.i.i.1 = getelementptr inbounds %struct.snd_pcm, ptr %75, i32 0, i32 4
  %77 = ptrtoint ptr %dev_class.i.i.1 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 2, ptr %dev_class.i.i.1, align 4
  %dev_subclass.i.i.1 = getelementptr inbounds %struct.snd_pcm, ptr %75, i32 0, i32 5
  %78 = ptrtoint ptr %dev_subclass.i.i.1 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %dev_subclass.i.i.1, align 2
  %name11.i.i.1 = getelementptr inbounds %struct.snd_pcm, ptr %75, i32 0, i32 7
  %79 = call ptr @memcpy(ptr %name11.i.i.1, ptr @.str.64, i32 15)
  %80 = ptrtoint ptr %pcm14.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %75, ptr %pcm14.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i.i) #9
  br label %if.end56

snd_ali_build_pcms.exit:                          ; preds = %for.body.i120.1.snd_ali_build_pcms.exit_crit_edge, %for.body.lr.ph.i.snd_ali_build_pcms.exit_crit_edge
  %call.i.i.lcssa = phi i32 [ %call.i.i, %for.body.lr.ph.i.snd_ali_build_pcms.exit_crit_edge ], [ %call.i.i.1, %for.body.i120.1.snd_ali_build_pcms.exit_crit_edge ]
  %81 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %card.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %82, i32 0, i32 27
  %83 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.62) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i.i) #9
  br label %cleanup

if.end56:                                         ; preds = %if.end.i.i.1, %if.end.i.i.if.end56_crit_edge, %do.end51.if.end56_crit_edge
  %85 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %card.i, align 4
  %call.i.i126 = call i32 @snd_card_rw_proc_new(ptr noundef %86, ptr noundef nonnull @.str.106, ptr noundef %6, ptr noundef nonnull @snd_ali_proc_read, ptr noundef null) #9
  %87 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %driver to i32
  call void @__asan_storeN_noabort(i32 %89, i32 8)
  store i64 4705216203553321216, ptr %driver, align 1
  %shortname = getelementptr inbounds %struct.snd_card, ptr %88, i32 0, i32 3
  %90 = call ptr @memcpy(ptr %shortname, ptr @.str.7, i32 9)
  %longname = getelementptr inbounds %struct.snd_card, ptr %88, i32 0, i32 4
  %port = getelementptr inbounds %struct.snd_ali, ptr %6, i32 0, i32 1
  %91 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %port, align 4
  %93 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %6, align 4
  %call63 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.8, ptr noundef %shortname, i32 noundef %92, i32 noundef %94)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_probe.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_probe, %if.then76)) #9
          to label %do.end80 [label %if.then76], !srcloc !312

if.then76:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_probe.__UNIQUE_ID_ddebug281, ptr noundef %dev3, ptr noundef nonnull @.str.9) #9
  br label %do.end80

do.end80:                                         ; preds = %if.then76, %if.end56
  %95 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %card, align 4
  %call81 = call i32 @snd_card_register(ptr noundef %96) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %do.end80.cleanup_crit_edge, label %if.end85

do.end80.cleanup_crit_edge:                       ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end85:                                         ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %99 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %98, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %do.end80.cleanup_crit_edge, %snd_ali_build_pcms.exit, %snd_ali_mixer.exit.cleanup_crit_edge, %snd_ali_mixer.exit.thread, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end85 ], [ %call4, %do.end.cleanup_crit_edge ], [ %call8, %if.end6.cleanup_crit_edge ], [ %36, %snd_ali_mixer.exit.cleanup_crit_edge ], [ %call.i.i.lcssa, %snd_ali_build_pcms.exit ], [ %call81, %do.end80.cleanup_crit_edge ], [ %retval.0.i116.ph, %snd_ali_mixer.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_ali_create(ptr noundef %card, ptr noundef %pci, i32 noundef %pcm_streams, i32 noundef %spdif_support) unnamed_addr #2 align 64 {
entry:
  %cmdw = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmdw) #9
  %2 = ptrtoint ptr %cmdw to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %cmdw, align 2, !annotation !311
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_create.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_create, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 27
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_create.__UNIQUE_ID_ddebug277, ptr noundef %4, ptr noundef nonnull @.str.11) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call i32 @pcim_enable_device(ptr noundef %pci) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev6, i64 noundef 2147483647) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %do.body15, label %do.end12

do.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %dev13 = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 27
  %5 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev13, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.12) #12
  br label %cleanup

do.body15:                                        ; preds = %if.end5
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev6, i64 noundef 2147483647) #9
  %reg_lock = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %reg_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @snd_ali_create.__key, i16 noundef signext 3) #9
  %voice_alloc = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 20
  tail call void @__raw_spin_lock_init(ptr noundef %voice_alloc, ptr noundef nonnull @.str.17, ptr noundef nonnull @snd_ali_create.__key.16, i16 noundef signext 3) #9
  %card23 = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %card23 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %card, ptr %card23, align 4
  %pci24 = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %pci24 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pci, ptr %pci24, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %1, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 12
  %10 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %revision, align 4
  %revision25 = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %revision25 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %revision25, align 4
  %spdif_support26 = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 3
  %13 = trunc i32 %spdif_support to i8
  %14 = ptrtoint ptr %spdif_support26 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %spdif_support26, align 1
  %bf.value = shl i8 %13, 6
  %bf.shl = and i8 %bf.value, 64
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %spdif_support26, align 1
  tail call void @pci_set_master(ptr noundef %pci) #9
  %call33 = call i32 @pci_read_config_word(ptr noundef %pci, i32 noundef 4, ptr noundef nonnull %cmdw) #9
  %15 = ptrtoint ptr %cmdw to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %cmdw, align 2
  %17 = and i16 %16, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp34.not.not = icmp eq i16 %17, 0
  br i1 %cmp34.not.not, label %if.then36, label %do.body15.if.end40_crit_edge

do.body15.if.end40_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then36:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i16 %16, 1
  %18 = ptrtoint ptr %cmdw to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %or, ptr %cmdw, align 2
  %call39 = call i32 @pci_write_config_word(ptr noundef %pci, i32 noundef 4, i16 noundef zeroext %or) #9
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %do.body15.if.end40_crit_edge
  %call41 = call fastcc i32 @snd_ali_resources(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end44:                                         ; preds = %if.end40
  %private_free = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 10
  %19 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @snd_ali_free, ptr %private_free, align 4
  %synth = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 9
  %chmap = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 9, i32 2
  %20 = ptrtoint ptr %chmap to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %chmap, align 4
  %chcnt = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 9, i32 1
  %21 = ptrtoint ptr %chcnt to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %chcnt, align 4
  %spdif_mask = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %spdif_mask to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %spdif_mask, align 4
  %synthcount = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 9, i32 3
  %23 = ptrtoint ptr %synthcount to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %synthcount, align 4
  %24 = ptrtoint ptr %revision25 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %revision25, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %cmp49 = icmp eq i8 %25, 2
  %spec.select = select i1 %cmp49, i32 64, i32 68
  %26 = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 10, i32 1, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %spec.select, ptr %26, align 4
  %chregs56 = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 10
  %regs57 = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 10, i32 1
  %ac97write = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 10, i32 1, i32 5
  %28 = ptrtoint ptr %ac97write to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 64, ptr %ac97write, align 4
  %29 = ptrtoint ptr %regs57 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 128, ptr %regs57, align 4
  %stop = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 10, i32 1, i32 1
  %30 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 132, ptr %stop, align 4
  %aint = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 10, i32 1, i32 2
  %31 = ptrtoint ptr %aint to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 152, ptr %aint, align 4
  %ainten = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 10, i32 1, i32 3
  %32 = ptrtoint ptr %ainten to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 164, ptr %ainten, align 4
  %33 = call ptr @memset(ptr %chregs56, i32 0, i32 16)
  %call77 = call ptr @pci_get_device(i32 noundef 4281, i32 noundef 5427, ptr noundef null) #9
  %pci_m1533 = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 5
  %34 = ptrtoint ptr %pci_m1533 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call77, ptr %pci_m1533, align 4
  %tobool79.not = icmp eq ptr %call77, null
  br i1 %tobool79.not, label %do.end83, label %if.end85

do.end83:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %dev84 = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 27
  %35 = ptrtoint ptr %dev84 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev84, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.19) #12
  br label %cleanup

if.end85:                                         ; preds = %if.end44
  %call86 = call ptr @pci_get_device(i32 noundef 4281, i32 noundef 28929, ptr noundef null) #9
  %pci_m7101 = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 6
  %37 = ptrtoint ptr %pci_m7101 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call86, ptr %pci_m7101, align 4
  %tobool88.not = icmp eq ptr %call86, null
  br i1 %tobool88.not, label %land.lhs.true, label %if.end85.if.end98_crit_edge

if.end85.if.end98_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

land.lhs.true:                                    ; preds = %if.end85
  %38 = ptrtoint ptr %revision25 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %revision25, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %39)
  %cmp91 = icmp eq i8 %39, 2
  br i1 %cmp91, label %do.end96, label %land.lhs.true.if.end98_crit_edge

land.lhs.true.if.end98_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

do.end96:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dev97 = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 27
  %40 = ptrtoint ptr %dev97 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev97, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.22) #12
  br label %cleanup

if.end98:                                         ; preds = %land.lhs.true.if.end98_crit_edge, %if.end85.if.end98_crit_edge
  %42 = ptrtoint ptr %synth to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %synth, align 4
  %arrayidx.1 = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 9, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 9, i32 0, i32 2
  %44 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 9, i32 0, i32 3
  %45 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3, ptr %arrayidx.3, align 4
  %arrayidx.4 = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 9, i32 0, i32 4
  %46 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4, ptr %arrayidx.4, align 4
  %arrayidx.5 = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 9, i32 0, i32 5
  %47 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 5, ptr %arrayidx.5, align 4
  %arrayidx.6 = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 9, i32 0, i32 6
  %48 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 6, ptr %arrayidx.6, align 4
  %arrayidx.7 = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 9, i32 0, i32 7
  %49 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 7, ptr %arrayidx.7, align 4
  %arrayidx.8 = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 9, i32 0, i32 8
  %50 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 8, ptr %arrayidx.8, align 4
  %arrayidx.9 = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 9, i32 0, i32 9
  %51 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 9, ptr %arrayidx.9, align 4
  %arrayidx.10 = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 9, i32 0, i32 10
  %52 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 10, ptr %arrayidx.10, align 4
  %arrayidx.11 = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 9, i32 0, i32 11
  %53 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 11, ptr %arrayidx.11, align 4
  %arrayidx.12 = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 9, i32 0, i32 12
  %54 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 12, ptr %arrayidx.12, align 4
  %arrayidx.13 = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 9, i32 0, i32 13
  %55 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 13, ptr %arrayidx.13, align 4
  %arrayidx.14 = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 9, i32 0, i32 14
  %56 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 14, ptr %arrayidx.14, align 4
  %arrayidx.15 = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 9, i32 0, i32 15
  %57 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 15, ptr %arrayidx.15, align 4
  %arrayidx.16 = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 9, i32 0, i32 16
  %58 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 16, ptr %arrayidx.16, align 4
  %arrayidx.17 = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 9, i32 0, i32 17
  %59 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 17, ptr %arrayidx.17, align 4
  %arrayidx.18 = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 9, i32 0, i32 18
  %60 = ptrtoint ptr %arrayidx.18 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 18, ptr %arrayidx.18, align 4
  %arrayidx.19 = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 9, i32 0, i32 19
  %61 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 19, ptr %arrayidx.19, align 4
  %arrayidx.20 = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 9, i32 0, i32 20
  %62 = ptrtoint ptr %arrayidx.20 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 20, ptr %arrayidx.20, align 4
  %arrayidx.21 = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 9, i32 0, i32 21
  %63 = ptrtoint ptr %arrayidx.21 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 21, ptr %arrayidx.21, align 4
  %arrayidx.22 = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 9, i32 0, i32 22
  %64 = ptrtoint ptr %arrayidx.22 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 22, ptr %arrayidx.22, align 4
  %arrayidx.23 = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 9, i32 0, i32 23
  %65 = ptrtoint ptr %arrayidx.23 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 23, ptr %arrayidx.23, align 4
  %arrayidx.24 = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 9, i32 0, i32 24
  %66 = ptrtoint ptr %arrayidx.24 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 24, ptr %arrayidx.24, align 4
  %arrayidx.25 = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 9, i32 0, i32 25
  %67 = ptrtoint ptr %arrayidx.25 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 25, ptr %arrayidx.25, align 4
  %arrayidx.26 = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 9, i32 0, i32 26
  %68 = ptrtoint ptr %arrayidx.26 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 26, ptr %arrayidx.26, align 4
  %arrayidx.27 = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 9, i32 0, i32 27
  %69 = ptrtoint ptr %arrayidx.27 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 27, ptr %arrayidx.27, align 4
  %arrayidx.28 = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 9, i32 0, i32 28
  %70 = ptrtoint ptr %arrayidx.28 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 28, ptr %arrayidx.28, align 4
  %arrayidx.29 = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 9, i32 0, i32 29
  %71 = ptrtoint ptr %arrayidx.29 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 29, ptr %arrayidx.29, align 4
  %arrayidx.30 = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 9, i32 0, i32 30
  %72 = ptrtoint ptr %arrayidx.30 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 30, ptr %arrayidx.30, align 4
  %arrayidx.31 = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 9, i32 0, i32 31
  %73 = ptrtoint ptr %arrayidx.31 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 31, ptr %arrayidx.31, align 4
  call fastcc void @snd_ali_chip_init(ptr noundef %1)
  %call112 = call noalias ptr @devm_kmalloc(ptr noundef %dev6, i32 noundef 1248, i32 noundef 3264) #9
  %image = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 21
  %74 = ptrtoint ptr %image to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call112, ptr %image, align 4
  %tobool114.not = icmp eq ptr %call112, null
  br i1 %tobool114.not, label %do.end118, label %if.end98.if.end120_crit_edge

if.end98.if.end120_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120

do.end118:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  %dev119 = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 27
  %75 = ptrtoint ptr %dev119 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev119, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %76, ptr noundef nonnull @.str.28) #12
  br label %if.end120

if.end120:                                        ; preds = %do.end118, %if.end98.if.end120_crit_edge
  %port.i = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 1
  %77 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %port.i, align 4
  %add.i = add i32 %78, 160
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %79 = inttoptr i32 %add1.i to ptr
  %80 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %79) #9, !srcloc !314
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !315
  %81 = or i32 %80, 3145728
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !316
  call void @arm_heavy_mb() #9
  %82 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %port.i, align 4
  %add5.i = add i32 %83, 160
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %84 = inttoptr i32 %add7.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %84, i32 %81) #9, !srcloc !317
  %85 = ptrtoint ptr %spdif_support26 to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load121 = load i8, ptr %spdif_support26, align 1
  %bf.set123 = or i8 %bf.load121, -128
  store i8 %bf.set123, ptr %spdif_support26, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end120, %do.end96, %do.end83, %if.end40.cleanup_crit_edge, %do.end12, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %do.end12 ], [ 0, %if.end120 ], [ -19, %do.end96 ], [ -19, %do.end83 ], [ %call3, %do.end.cleanup_crit_edge ], [ -16, %if.end40.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmdw) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_ali_resources(ptr noundef %codec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_resources.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_resources, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %card = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 7
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_resources.__UNIQUE_ID_ddebug275, ptr noundef %3, ptr noundef nonnull @.str.32) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pci = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 4
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %call3 = tail call i32 @pci_request_regions(ptr noundef %5, ptr noundef nonnull @.str.7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 47
  %8 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %resource, align 8
  %port = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 1
  %10 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %port, align 4
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %irq = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 46
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev8, i32 noundef %12, ptr noundef nonnull @snd_ali_card_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %codec) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.end18, label %do.end15

do.end15:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %card16 = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 7
  %13 = ptrtoint ptr %card16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card16, align 4
  %dev17 = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev17, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.33) #12
  br label %cleanup

if.end18:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci, align 4
  %irq20 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 46
  %19 = ptrtoint ptr %irq20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq20, align 4
  %21 = ptrtoint ptr %codec to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %codec, align 4
  %card23 = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 7
  %22 = ptrtoint ptr %card23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card23, align 4
  %sync_irq = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 33
  %24 = ptrtoint ptr %sync_irq to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %20, ptr %sync_irq, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_resources.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_resources, %if.then36)) #9
          to label %cleanup [label %if.then36], !srcloc !312

if.then36:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %card23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card23, align 4
  %dev38 = getelementptr inbounds %struct.snd_card, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev38, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_resources.__UNIQUE_ID_ddebug276, ptr noundef %28, ptr noundef nonnull @.str.34) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %if.end18, %do.end15, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end15 ], [ %call3, %do.end.cleanup_crit_edge ], [ 0, %if.then36 ], [ 0, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ali_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %hw_initialized = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hw_initialized to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %hw_initialized, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %port.i = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port.i, align 4
  %add.i = add i32 %4, 160
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add1.i to ptr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %5) #9, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !318
  %7 = and i32 %6, -3145729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !319
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port.i, align 4
  %add6.i = add i32 %9, 160
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %10 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 %7) #9, !srcloc !317
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pci_m1533 = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %pci_m1533 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci_m1533, align 4
  tail call void @pci_dev_put(ptr noundef %12) #9
  %pci_m7101 = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %pci_m7101 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci_m7101, align 4
  tail call void @pci_dev_put(ptr noundef %14) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_ali_chip_init(ptr nocapture noundef %codec) unnamed_addr #2 align 64 {
entry:
  %dwVal.i = alloca i32, align 4
  %legacy = alloca i32, align 4
  %temp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %legacy) #9
  %0 = ptrtoint ptr %legacy to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %legacy, align 4, !annotation !311
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp) #9
  %1 = ptrtoint ptr %temp to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %temp, align 1, !annotation !311
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_chip_init.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_chip_init, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %card = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 7
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_chip_init.__UNIQUE_ID_ddebug273, ptr noundef %5, ptr noundef nonnull @.str.42) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dwVal.i) #9
  %6 = ptrtoint ptr %dwVal.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %dwVal.i, align 4, !annotation !311
  %pci_m1533.i = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 5
  %7 = ptrtoint ptr %pci_m1533.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci_m1533.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %do.end.if.end.i_crit_edge, label %if.then.i

do.end.if.end.i_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 @pci_read_config_dword(ptr noundef nonnull %8, i32 noundef 124, ptr noundef nonnull %dwVal.i) #9
  %9 = ptrtoint ptr %dwVal.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dwVal.i, align 4
  %or.i = or i32 %10, 134217728
  %call1.i = call i32 @pci_write_config_dword(ptr noundef nonnull %8, i32 noundef 124, i32 noundef %or.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 214748000) #9
  %call3.i = call i32 @pci_read_config_dword(ptr noundef nonnull %8, i32 noundef 124, ptr noundef nonnull %dwVal.i) #9
  %16 = ptrtoint ptr %dwVal.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dwVal.i, align 4
  %and.i = and i32 %17, -134217729
  %call4.i = call i32 @pci_write_config_dword(ptr noundef nonnull %8, i32 noundef 124, i32 noundef %and.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %19(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748000) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.end.if.end.i_crit_edge
  %pci.i = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 4
  %23 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci.i, align 4
  %call11.i = call i32 @pci_read_config_dword(ptr noundef %24, i32 noundef 68, ptr noundef nonnull %dwVal.i) #9
  %25 = ptrtoint ptr %dwVal.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dwVal.i, align 4
  %or12.i = or i32 %26, 786432
  %call13.i = call i32 @pci_write_config_dword(ptr noundef %24, i32 noundef 68, i32 noundef %or12.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 107374000) #9
  %call14.i = call i32 @pci_read_config_dword(ptr noundef %24, i32 noundef 68, ptr noundef nonnull %dwVal.i) #9
  %28 = ptrtoint ptr %dwVal.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dwVal.i, align 4
  %and15.i = and i32 %29, -262145
  %call16.i = call i32 @pci_write_config_dword(ptr noundef %24, i32 noundef 68, i32 noundef %and15.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %30(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %31(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %32(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %33(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %34(i32 noundef 214748000) #9
  br label %while.body26.i

while.body26.i:                                   ; preds = %while.body36.preheader.i.while.body26.i_crit_edge, %if.end.i
  %dec245.i = phi i16 [ %dec24.i, %while.body36.preheader.i.while.body26.i_crit_edge ], [ 199, %if.end.i ]
  %call27.i = call fastcc zeroext i16 @snd_ali_codec_peek(ptr noundef %codec, i32 noundef 0, i16 noundef zeroext 38) #9
  %35 = and i16 %call27.i, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %35)
  %cmp.i = icmp eq i16 %35, 15
  br i1 %cmp.i, label %while.body26.i.snd_ali_reset_5451.exit_crit_edge, label %while.body36.preheader.i

while.body26.i.snd_ali_reset_5451.exit_crit_edge: ; preds = %while.body26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_ali_reset_5451.exit

while.body36.preheader.i:                         ; preds = %while.body26.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %36(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %37(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %38(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %39(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %40(i32 noundef 214748000) #9
  %dec24.i = add nsw i16 %dec245.i, -1
  %tobool25.not.i = icmp eq i16 %dec245.i, 0
  br i1 %tobool25.not.i, label %while.body36.preheader.i.snd_ali_reset_5451.exit_crit_edge, label %while.body36.preheader.i.while.body26.i_crit_edge

while.body36.preheader.i.while.body26.i_crit_edge: ; preds = %while.body36.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body26.i

while.body36.preheader.i.snd_ali_reset_5451.exit_crit_edge: ; preds = %while.body36.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_ali_reset_5451.exit

snd_ali_reset_5451.exit:                          ; preds = %while.body36.preheader.i.snd_ali_reset_5451.exit_crit_edge, %while.body26.i.snd_ali_reset_5451.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dwVal.i) #9
  %revision = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 2
  %41 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %42)
  %cmp = icmp eq i8 %42, 2
  br i1 %cmp, label %if.then13, label %snd_ali_reset_5451.exit.if.end23_crit_edge

snd_ali_reset_5451.exit.if.end23_crit_edge:       ; preds = %snd_ali_reset_5451.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then13:                                        ; preds = %snd_ali_reset_5451.exit
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %pci_m1533.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pci_m1533.i, align 4
  %call14 = call i32 @pci_read_config_byte(ptr noundef %44, i32 noundef 89, ptr noundef nonnull %temp) #9
  %45 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %temp, align 1
  %47 = or i8 %46, -128
  store i8 %47, ptr %temp, align 1
  %call17 = call i32 @pci_write_config_byte(ptr noundef %44, i32 noundef 89, i8 noundef zeroext %47) #9
  %pci_m7101 = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 6
  %48 = ptrtoint ptr %pci_m7101 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pci_m7101, align 4
  %call18 = call i32 @pci_read_config_byte(ptr noundef %49, i32 noundef 184, ptr noundef nonnull %temp) #9
  %50 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %temp, align 1
  %52 = or i8 %51, 32
  store i8 %52, ptr %temp, align 1
  %call22 = call i32 @pci_write_config_byte(ptr noundef %49, i32 noundef 184, i8 noundef zeroext %52) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then13, %snd_ali_reset_5451.exit.if.end23_crit_edge
  %53 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pci.i, align 4
  %call24 = call i32 @pci_read_config_dword(ptr noundef %54, i32 noundef 68, ptr noundef nonnull %legacy) #9
  %55 = ptrtoint ptr %legacy to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %legacy, align 4
  %and = and i32 %56, -16711936
  %or25 = or i32 %and, 524458
  store i32 %or25, ptr %legacy, align 4
  %57 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pci.i, align 4
  %call27 = call i32 @pci_write_config_dword(ptr noundef %58, i32 noundef 68, i32 noundef %or25) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !320
  call void @arm_heavy_mb() #9
  %port = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 1
  %59 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %port, align 4
  %add = add i32 %60, 212
  %and31 = and i32 %add, 1048575
  %add32 = or i32 %and31, -18874368
  %61 = inttoptr i32 %add32 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %61, i32 16777344) #9, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !321
  call void @arm_heavy_mb() #9
  %62 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %port, align 4
  %add38 = add i32 %63, 164
  %and39 = and i32 %add38, 1048575
  %add40 = or i32 %and39, -18874368
  %64 = inttoptr i32 %add40 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %64, i32 0) #9, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !322
  call void @arm_heavy_mb() #9
  %65 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %port, align 4
  %add46 = add i32 %66, 152
  %and47 = and i32 %add46, 1048575
  %add48 = or i32 %and47, -18874368
  %67 = inttoptr i32 %add48 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %67, i32 -1) #9, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !323
  call void @arm_heavy_mb() #9
  %68 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port, align 4
  %add54 = add i32 %69, 168
  %and55 = and i32 %add54, 1048575
  %add56 = or i32 %and55, -18874368
  %70 = inttoptr i32 %add56 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %70, i32 0) #9, !srcloc !317
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !324
  call void @arm_heavy_mb() #9
  %71 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %port, align 4
  %add62 = add i32 %72, 34
  %and63 = and i32 %add62, 1048575
  %add64 = or i32 %and63, -18874368
  %73 = inttoptr i32 %add64 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %73, i8 16) #9, !srcloc !325
  %call66 = call fastcc zeroext i16 @snd_ali_codec_peek(ptr noundef %codec, i32 noundef 0, i16 noundef zeroext 40)
  %ac97_ext_id = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 17
  %74 = ptrtoint ptr %ac97_ext_id to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %call66, ptr %ac97_ext_id, align 4
  %call67 = call fastcc zeroext i16 @snd_ali_codec_peek(ptr noundef %codec, i32 noundef 0, i16 noundef zeroext 42)
  %ac97_ext_status = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 18
  %75 = ptrtoint ptr %ac97_ext_status to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %call67, ptr %ac97_ext_status, align 2
  %spdif_support = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 3
  %76 = ptrtoint ptr %spdif_support to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load = load i8, ptr %spdif_support, align 1
  %77 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool68.not = icmp eq i8 %77, 0
  br i1 %tobool68.not, label %if.end23.if.end70_crit_edge, label %if.then69

if.end23.if.end70_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then69:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @snd_ali_enable_spdif_out(ptr noundef %codec)
  %spdif_mask = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 11
  %78 = ptrtoint ptr %spdif_mask to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 2, ptr %spdif_mask, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end23.if.end70_crit_edge
  %num_of_codecs = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 14
  %79 = ptrtoint ptr %num_of_codecs to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %num_of_codecs, align 4
  %80 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %port, align 4
  %add72 = add i32 %81, 72
  %and73 = and i32 %add72, 1048575
  %add74 = or i32 %and73, -18874368
  %82 = inttoptr i32 %add74 to ptr
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %82) #9, !srcloc !314
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !326
  %84 = and i32 %83, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool79.not = icmp eq i32 %84, 0
  br i1 %tobool79.not, label %if.end70.do.body100_crit_edge, label %if.then80

if.end70.do.body100_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body100

if.then80:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %num_of_codecs to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_of_codecs, align 4
  %inc = add i32 %86, 1
  store i32 %inc, ptr %num_of_codecs, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !327
  call void @arm_heavy_mb() #9
  %87 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %port, align 4
  %add87 = add i32 %88, 72
  %and88 = and i32 %add87, 1048575
  %add89 = or i32 %and88, -18874368
  %89 = inttoptr i32 %add89 to ptr
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %89) #9, !srcloc !314
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !328
  %91 = or i32 %90, 2232320
  %92 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %port, align 4
  %add95 = add i32 %93, 72
  %and96 = and i32 %add95, 1048575
  %add97 = or i32 %and96, -18874368
  %94 = inttoptr i32 %add97 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %94, i32 %91) #9, !srcloc !317
  br label %do.body100

do.body100:                                       ; preds = %if.then80, %if.end70.do.body100_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_chip_init.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_chip_init, %if.then112)) #9
          to label %cleanup [label %if.then112], !srcloc !312

if.then112:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #11
  %card113 = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 7
  %95 = ptrtoint ptr %card113 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %card113, align 4
  %dev114 = getelementptr inbounds %struct.snd_card, ptr %96, i32 0, i32 27
  %97 = ptrtoint ptr %dev114 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev114, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_chip_init.__UNIQUE_ID_ddebug274, ptr noundef %98, ptr noundef nonnull @.str.44) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then112, %do.body100
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %legacy) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ali_card_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %dev_id, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %hw_initialized = getelementptr inbounds %struct.snd_ali, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %hw_initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %hw_initialized, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %port = getelementptr inbounds %struct.snd_ali, ptr %dev_id, i32 0, i32 1
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %port, align 4
  %add = add i32 %2, 176
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %3 = inttoptr i32 %add1 to ptr
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %3) #9, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = and i32 %4, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  br i1 %tobool7.not, label %if.end5.do.body_crit_edge, label %if.then8

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %aint = getelementptr inbounds %struct.snd_ali, ptr %dev_id, i32 0, i32 10, i32 1, i32 2
  %8 = ptrtoint ptr %aint to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %aint, align 4
  %add11 = add i32 %9, %7
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %10 = inttoptr i32 %add13 to ptr
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %10) #9, !srcloc !314
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !330
  %aint17 = getelementptr inbounds %struct.snd_ali, ptr %dev_id, i32 0, i32 10, i32 0, i32 2
  %13 = ptrtoint ptr %aint17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %aint17, align 4
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 0)
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 1)
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 2)
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 3)
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 4)
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 5)
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 6)
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 7)
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 8)
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 9)
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 10)
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 11)
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 12)
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 13)
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 14)
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 15)
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 16)
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 17)
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 18)
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 19)
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 20)
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 21)
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 22)
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 23)
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 24)
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 25)
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 26)
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 27)
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 28)
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 29)
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 30)
  tail call fastcc void @snd_ali_update_ptr(ptr noundef nonnull %dev_id, i32 noundef 31)
  br label %do.body

do.body:                                          ; preds = %if.then8, %if.end5.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !331
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 4
  %add21 = add i32 %15, 176
  %and22 = and i32 %add21, 1048575
  %add23 = or i32 %and22, -18874368
  %16 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 9175040) #9, !srcloc !317
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_ali_update_ptr(ptr noundef %codec, i32 noundef %channel) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %aint = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 10, i32 0, i32 2
  %0 = ptrtoint ptr %aint to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %aint, align 4
  %and = and i32 %channel, 31
  %shl = shl nuw i32 1, %and
  %and1 = and i32 %1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %synth = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 21474800) #9
  %reg_lock = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #9
  %pcm = getelementptr [32 x %struct.snd_ali_voice], ptr %synth, i32 0, i32 %channel, i32 1
  %3 = ptrtoint ptr %pcm to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %pcm, align 4
  %4 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %if.end.if.else36_crit_edge, label %land.lhs.true

if.end.if.else36_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else36

land.lhs.true:                                    ; preds = %if.end
  %substream = getelementptr [32 x %struct.snd_ali_voice], ptr %synth, i32 0, i32 %channel, i32 3
  %5 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %substream, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %land.lhs.true.if.else36_crit_edge, label %if.then4

land.lhs.true.if.else36_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else36

if.then4:                                         ; preds = %land.lhs.true
  %7 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool9.not = icmp eq i8 %7, 0
  br i1 %tobool9.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.then4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_update_ptr.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_update_ptr, %if.then14)) #9
          to label %do.end [label %if.then14], !srcloc !312

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %card = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 7
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %port = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 1
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add15 = add i32 %13, 226
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %14 = inttoptr i32 %add17 to ptr
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %14) #9, !srcloc !332
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !333
  %conv = zext i16 %16 to i32
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port, align 4
  %add23 = add i32 %18, 144
  %and24 = and i32 %add23, 1048575
  %add25 = or i32 %and24, -18874368
  %19 = inttoptr i32 %add25 to ptr
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %19) #9, !srcloc !314
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !334
  %and29 = and i32 %21, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %and29, i32 %shl)
  %cmp = icmp eq i32 %and29, %shl
  %conv30 = zext i1 %cmp to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_update_ptr.__UNIQUE_ID_ddebug263, ptr noundef %11, ptr noundef nonnull @.str.36, i32 noundef %conv, i32 noundef %conv30) #9
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #9
  %22 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %23) #9
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #9
  br label %if.end60

if.else:                                          ; preds = %if.then4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_stop_voice.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_update_ptr, %if.then.i)) #9
          to label %snd_ali_stop_voice.exit [label %if.then.i], !srcloc !312

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %card.i = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 7
  %24 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %25, i32 0, i32 27
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_stop_voice.__UNIQUE_ID_ddebug262, ptr noundef %27, ptr noundef nonnull @.str.38, i32 noundef %channel) #9
  br label %snd_ali_stop_voice.exit

snd_ali_stop_voice.exit:                          ; preds = %if.then.i, %if.else
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  tail call void @arm_heavy_mb() #9
  %28 = tail call i32 @llvm.bswap.i32(i32 %shl) #9
  %port.i = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 1
  %29 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port.i, align 4
  %stop.i = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 10, i32 1, i32 1
  %31 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stop.i, align 4
  %add.i = add i32 %32, %30
  %and6.i = and i32 %add.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %33 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %33, i32 %28) #9, !srcloc !317
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_disable_voice_irq.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_update_ptr, %if.then.i111)) #9
          to label %snd_ali_disable_voice_irq.exit [label %if.then.i111], !srcloc !312

if.then.i111:                                     ; preds = %snd_ali_stop_voice.exit
  call void @__sanitizer_cov_trace_pc() #11
  %card.i109 = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 7
  %34 = ptrtoint ptr %card.i109 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %card.i109, align 4
  %dev.i110 = getelementptr inbounds %struct.snd_card, ptr %35, i32 0, i32 27
  %36 = ptrtoint ptr %dev.i110 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i110, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_disable_voice_irq.__UNIQUE_ID_ddebug258, ptr noundef %37, ptr noundef nonnull @.str.40, i32 noundef %channel) #9
  br label %snd_ali_disable_voice_irq.exit

snd_ali_disable_voice_irq.exit:                   ; preds = %if.then.i111, %snd_ali_stop_voice.exit
  %38 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port.i, align 4
  %ainten.i = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 10, i32 1, i32 3
  %40 = ptrtoint ptr %ainten.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ainten.i, align 4
  %add.i115 = add i32 %41, %39
  %and3.i = and i32 %add.i115, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %42 = inttoptr i32 %add4.i to ptr
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %42) #9, !srcloc !314
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !336
  %ainten8.i = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 10, i32 0, i32 3
  %neg.i = xor i32 %shl, -1
  %and11.i = and i32 %44, %neg.i
  %45 = ptrtoint ptr %ainten8.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %and11.i, ptr %ainten8.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %46 = ptrtoint ptr %ainten8.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ainten8.i, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #9
  %49 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %port.i, align 4
  %51 = ptrtoint ptr %ainten.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ainten.i, align 4
  %add20.i = add i32 %52, %50
  %and21.i = and i32 %add20.i, 1048575
  %add22.i = or i32 %and21.i, -18874368
  %53 = inttoptr i32 %add22.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %53, i32 %48) #9, !srcloc !317
  br label %if.end60

if.else36:                                        ; preds = %land.lhs.true.if.else36_crit_edge, %if.end.if.else36_crit_edge
  %54 = and i8 %bf.load, 40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %if.else57, label %if.else36.if.end60_crit_edge

if.else36.if.end60_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.else57:                                        ; preds = %if.else36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_stop_voice.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_update_ptr, %if.then.i118)) #9
          to label %snd_ali_stop_voice.exit126 [label %if.then.i118], !srcloc !312

if.then.i118:                                     ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #11
  %card.i116 = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 7
  %56 = ptrtoint ptr %card.i116 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %card.i116, align 4
  %dev.i117 = getelementptr inbounds %struct.snd_card, ptr %57, i32 0, i32 27
  %58 = ptrtoint ptr %dev.i117 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i117, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_stop_voice.__UNIQUE_ID_ddebug262, ptr noundef %59, ptr noundef nonnull @.str.38, i32 noundef %channel) #9
  br label %snd_ali_stop_voice.exit126

snd_ali_stop_voice.exit126:                       ; preds = %if.then.i118, %if.else57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  tail call void @arm_heavy_mb() #9
  %60 = tail call i32 @llvm.bswap.i32(i32 %shl) #9
  %port.i121 = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 1
  %61 = ptrtoint ptr %port.i121 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %port.i121, align 4
  %stop.i122 = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 10, i32 1, i32 1
  %63 = ptrtoint ptr %stop.i122 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %stop.i122, align 4
  %add.i123 = add i32 %64, %62
  %and6.i124 = and i32 %add.i123, 1048575
  %add7.i125 = or i32 %and6.i124, -18874368
  %65 = inttoptr i32 %add7.i125 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %65, i32 %60) #9, !srcloc !317
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_disable_voice_irq.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_update_ptr, %if.then.i129)) #9
          to label %snd_ali_disable_voice_irq.exit143 [label %if.then.i129], !srcloc !312

if.then.i129:                                     ; preds = %snd_ali_stop_voice.exit126
  call void @__sanitizer_cov_trace_pc() #11
  %card.i127 = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 7
  %66 = ptrtoint ptr %card.i127 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %card.i127, align 4
  %dev.i128 = getelementptr inbounds %struct.snd_card, ptr %67, i32 0, i32 27
  %68 = ptrtoint ptr %dev.i128 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i128, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_disable_voice_irq.__UNIQUE_ID_ddebug258, ptr noundef %69, ptr noundef nonnull @.str.40, i32 noundef %channel) #9
  br label %snd_ali_disable_voice_irq.exit143

snd_ali_disable_voice_irq.exit143:                ; preds = %if.then.i129, %snd_ali_stop_voice.exit126
  %70 = ptrtoint ptr %port.i121 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %port.i121, align 4
  %ainten.i133 = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 10, i32 1, i32 3
  %72 = ptrtoint ptr %ainten.i133 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ainten.i133, align 4
  %add.i134 = add i32 %73, %71
  %and3.i135 = and i32 %add.i134, 1048575
  %add4.i136 = or i32 %and3.i135, -18874368
  %74 = inttoptr i32 %add4.i136 to ptr
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %74) #9, !srcloc !314
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !336
  %ainten8.i137 = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 10, i32 0, i32 3
  %neg.i138 = xor i32 %shl, -1
  %and11.i139 = and i32 %76, %neg.i138
  %77 = ptrtoint ptr %ainten8.i137 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %and11.i139, ptr %ainten8.i137, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %78 = ptrtoint ptr %ainten8.i137 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ainten8.i137, align 4
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #9
  %81 = ptrtoint ptr %port.i121 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %port.i121, align 4
  %83 = ptrtoint ptr %ainten.i133 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ainten.i133, align 4
  %add20.i140 = add i32 %84, %82
  %and21.i141 = and i32 %add20.i140, 1048575
  %add22.i142 = or i32 %and21.i141, -18874368
  %85 = inttoptr i32 %add22.i142 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %85, i32 %80) #9, !srcloc !317
  br label %if.end60

if.end60:                                         ; preds = %snd_ali_disable_voice_irq.exit143, %if.else36.if.end60_crit_edge, %snd_ali_disable_voice_irq.exit, %do.end
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !338
  tail call void @arm_heavy_mb() #9
  %86 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %port65 = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 1
  %87 = ptrtoint ptr %port65 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %port65, align 4
  %aint66 = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 10, i32 1, i32 2
  %89 = ptrtoint ptr %aint66 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %aint66, align 4
  %add67 = add i32 %90, %88
  %and68 = and i32 %add67, 1048575
  %add69 = or i32 %and68, -18874368
  %91 = inttoptr i32 %add69 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %91, i32 %86) #9, !srcloc !317
  %neg = xor i32 %shl, -1
  %and71 = and i32 %1, %neg
  %92 = ptrtoint ptr %aint to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %and71, ptr %aint, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @snd_ali_codec_peek(ptr nocapture noundef readonly %codec, i32 noundef %secondary, i16 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %reg to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %reg)
  %cmp = icmp ugt i16 %reg, 127
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %card = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 7
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.45, i32 noundef %conv) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ac97read = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 10, i32 1, i32 4
  %4 = ptrtoint ptr %ac97read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ac97read, align 4
  %call = tail call fastcc i32 @snd_ali_codec_ready(ptr noundef %codec, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %port1.i.i = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 1
  %6 = ptrtoint ptr %port1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port1.i.i, align 4
  %add.i.i = add i32 %7, 200
  %and.i.i = and i32 %add.i.i, 1048575
  %add2.i.i = or i32 %and.i.i, -18874368
  %8 = inttoptr i32 %add2.i.i to ptr
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %8) #9, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !339
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %10, 25
  %11 = ptrtoint ptr %port1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port1.i.i, align 4
  %add.i1215.i = add i32 %12, 200
  %and.i1316.i = and i32 %add.i1215.i, 1048575
  %add2.i1417.i = or i32 %and.i1316.i, -18874368
  %13 = inttoptr i32 %add2.i1417.i to ptr
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %13) #9, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !339
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %9)
  %cmp.not18.i = icmp eq i32 %14, %9
  br i1 %cmp.not18.i, label %if.end6.if.end.i_crit_edge, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end6.if.end.i_crit_edge:                       ; preds = %if.end6
  br label %if.end.i

if.end.i:                                         ; preds = %if.end5.i.if.end.i_crit_edge, %if.end6.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp3.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp3.i, label %if.end5.i, label %snd_ali_stimer_ready.exit

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #9
  %16 = ptrtoint ptr %port1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port1.i.i, align 4
  %add.i12.i = add i32 %17, 200
  %and.i13.i = and i32 %add.i12.i, 1048575
  %add2.i14.i = or i32 %and.i13.i, -18874368
  %18 = inttoptr i32 %add2.i14.i to ptr
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %18) #9, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !339
  %cmp.not.i = icmp eq i32 %19, %9
  br i1 %cmp.not.i, label %if.end5.i.if.end.i_crit_edge, label %if.end5.i.if.end11_crit_edge

if.end5.i.if.end11_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end5.i.if.end.i_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

snd_ali_stimer_ready.exit:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %card.i = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 7
  %20 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.49) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end5.i.if.end11_crit_edge, %if.end6.if.end11_crit_edge
  %and = and i32 %conv, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %secondary)
  %tobool.not = icmp eq i32 %secondary, 0
  %spec.select.v = select i1 %tobool.not, i32 32768, i32 32896
  %spec.select = or i32 %and, %spec.select.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !340
  tail call void @arm_heavy_mb() #9
  %24 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #9
  %25 = ptrtoint ptr %port1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port1.i.i, align 4
  %add.i44 = add i32 %26, %5
  %and.i = and i32 %add.i44, 1048575
  %add2.i = or i32 %and.i, -18874368
  %27 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %27, i32 %24) #9, !srcloc !317
  %28 = ptrtoint ptr %port1.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port1.i.i, align 4
  %add.i.i46 = add i32 %29, 200
  %and.i.i47 = and i32 %add.i.i46, 1048575
  %add2.i.i48 = or i32 %and.i.i47, -18874368
  %30 = inttoptr i32 %add2.i.i48 to ptr
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %30) #9, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !339
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %add.i49 = add i32 %32, 25
  %33 = ptrtoint ptr %port1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port1.i.i, align 4
  %add.i1215.i50 = add i32 %34, 200
  %and.i1316.i51 = and i32 %add.i1215.i50, 1048575
  %add2.i1417.i52 = or i32 %and.i1316.i51, -18874368
  %35 = inttoptr i32 %add2.i1417.i52 to ptr
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %35) #9, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !339
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %31)
  %cmp.not18.i53 = icmp eq i32 %36, %31
  br i1 %cmp.not18.i53, label %if.end11.if.end.i56_crit_edge, label %if.end11.if.end20_crit_edge

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end11.if.end.i56_crit_edge:                    ; preds = %if.end11
  br label %if.end.i56

if.end.i56:                                       ; preds = %if.end5.i62.if.end.i56_crit_edge, %if.end11.if.end.i56_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %sub.i54 = sub i32 %add.i49, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i54)
  %cmp3.i55 = icmp sgt i32 %sub.i54, -1
  br i1 %cmp3.i55, label %if.end5.i62, label %snd_ali_stimer_ready.exit67

if.end5.i62:                                      ; preds = %if.end.i56
  %call6.i57 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #9
  %38 = ptrtoint ptr %port1.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port1.i.i, align 4
  %add.i12.i58 = add i32 %39, 200
  %and.i13.i59 = and i32 %add.i12.i58, 1048575
  %add2.i14.i60 = or i32 %and.i13.i59, -18874368
  %40 = inttoptr i32 %add2.i14.i60 to ptr
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %40) #9, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !339
  %cmp.not.i61 = icmp eq i32 %41, %31
  br i1 %cmp.not.i61, label %if.end5.i62.if.end.i56_crit_edge, label %if.end5.i62.if.end20_crit_edge

if.end5.i62.if.end20_crit_edge:                   ; preds = %if.end5.i62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end5.i62.if.end.i56_crit_edge:                 ; preds = %if.end5.i62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i56

snd_ali_stimer_ready.exit67:                      ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #11
  %card.i63 = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 7
  %42 = ptrtoint ptr %card.i63 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %card.i63, align 4
  %dev.i64 = getelementptr inbounds %struct.snd_card, ptr %43, i32 0, i32 27
  %44 = ptrtoint ptr %dev.i64 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i64, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.49) #12
  br label %cleanup

if.end20:                                         ; preds = %if.end5.i62.if.end20_crit_edge, %if.end11.if.end20_crit_edge
  %call21 = tail call fastcc i32 @snd_ali_codec_ready(ptr noundef %codec, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end20.cleanup_crit_edge, label %if.end25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %port1.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port1.i.i, align 4
  %add.i69 = add i32 %47, %5
  %and.i70 = and i32 %add.i69, 1048575
  %add2.i71 = or i32 %and.i70, -18874368
  %48 = inttoptr i32 %add2.i71 to ptr
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %48) #9, !srcloc !314
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !339
  %shr = lshr i32 %50, 16
  %conv28 = trunc i32 %shr to i16
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end20.cleanup_crit_edge, %snd_ali_stimer_ready.exit67, %snd_ali_stimer_ready.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i16 [ -1, %do.end ], [ %conv28, %if.end25 ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %snd_ali_stimer_ready.exit ], [ -1, %snd_ali_stimer_ready.exit67 ], [ -1, %if.end20.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_ali_enable_spdif_out(ptr nocapture noundef readonly %codec) unnamed_addr #2 align 64 {
entry:
  %bVal = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bVal) #9
  %0 = ptrtoint ptr %bVal to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %bVal, align 1, !annotation !311
  %pci_m1533 = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 5
  %1 = ptrtoint ptr %pci_m1533 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pci_m1533, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = call i32 @pci_read_config_byte(ptr noundef nonnull %2, i32 noundef 97, ptr noundef nonnull %bVal) #9
  %3 = ptrtoint ptr %bVal to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bVal, align 1
  %5 = or i8 %4, 64
  store i8 %5, ptr %bVal, align 1
  %call2 = call i32 @pci_write_config_byte(ptr noundef nonnull %2, i32 noundef 97, i8 noundef zeroext %5) #9
  %call3 = call i32 @pci_read_config_byte(ptr noundef nonnull %2, i32 noundef 125, ptr noundef nonnull %bVal) #9
  %6 = ptrtoint ptr %bVal to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bVal, align 1
  %8 = or i8 %7, 1
  store i8 %8, ptr %bVal, align 1
  %call7 = call i32 @pci_write_config_byte(ptr noundef nonnull %2, i32 noundef 125, i8 noundef zeroext %8) #9
  %call8 = call i32 @pci_read_config_byte(ptr noundef nonnull %2, i32 noundef 126, ptr noundef nonnull %bVal) #9
  %9 = ptrtoint ptr %bVal to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bVal, align 1
  %11 = and i8 %10, -49
  %12 = or i8 %11, 16
  store i8 %12, ptr %bVal, align 1
  %call14 = call i32 @pci_write_config_byte(ptr noundef nonnull %2, i32 noundef 126, i8 noundef zeroext %12) #9
  %port = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 1
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port, align 4
  %add = add i32 %14, 72
  %and15 = and i32 %add, 1048575
  %add16 = or i32 %and15, -18874368
  %15 = inttoptr i32 %add16 to ptr
  %16 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #9, !srcloc !341
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !342
  %17 = ptrtoint ptr %bVal to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %bVal, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !343
  call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %bVal to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bVal, align 1
  %20 = or i8 %19, 32
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port, align 4
  %add23 = add i32 %22, 72
  %and24 = and i32 %add23, 1048575
  %add25 = or i32 %and24, -18874368
  %23 = inttoptr i32 %add25 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %20) #9, !srcloc !325
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 4
  %add29 = add i32 %25, 116
  %and30 = and i32 %add29, 1048575
  %add31 = or i32 %and30, -18874368
  %26 = inttoptr i32 %add31 to ptr
  %27 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #9, !srcloc !341
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !344
  %28 = ptrtoint ptr %bVal to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %bVal, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !345
  call void @arm_heavy_mb() #9
  %29 = ptrtoint ptr %bVal to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bVal, align 1
  %31 = and i8 %30, -65
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port, align 4
  %add42 = add i32 %33, 116
  %and43 = and i32 %add42, 1048575
  %add44 = or i32 %and43, -18874368
  %34 = inttoptr i32 %add44 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %31) #9, !srcloc !325
  %35 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port, align 4
  %add48 = add i32 %36, 212
  %and49 = and i32 %add48, 1048575
  %add50 = or i32 %and49, -18874368
  %37 = inttoptr i32 %add50 to ptr
  %38 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %37) #9, !srcloc !332
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !346
  %39 = or i16 %38, 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !347
  call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port, align 4
  %add61 = add i32 %41, 212
  %and62 = and i32 %add61, 1048575
  %add63 = or i32 %and62, -18874368
  %42 = inttoptr i32 %add63 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %42, i16 %39) #9, !srcloc !348
  %43 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port, align 4
  %add.i = add i32 %44, 212
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %45 = inttoptr i32 %add1.i to ptr
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %45) #9, !srcloc !314
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !349
  %47 = and i32 %46, -8388609
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !350
  call void @arm_heavy_mb() #9
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port, align 4
  %add6.i = add i32 %49, 212
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %50 = inttoptr i32 %add8.i to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %50, i32 %47) #9, !srcloc !317
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bVal) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_ali_codec_ready(ptr nocapture noundef readonly %codec, i32 noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 25
  %port1.i = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 1
  %1 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %port1.i, align 4
  %add.i24 = add i32 %2, %port
  %and.i25 = and i32 %add.i24, 1048575
  %add2.i26 = or i32 %and.i25, -18874368
  %3 = inttoptr i32 %add2.i26 to ptr
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %3) #9, !srcloc !314
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !339
  %and27 = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool.not28 = icmp eq i32 %and27, 0
  br i1 %tobool.not28, label %entry.cleanup_crit_edge, label %if.end.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.preheader:                                 ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub32 = sub i32 %add, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub32)
  %cmp33 = icmp sgt i32 %sub32, -1
  br i1 %cmp33, label %if.end.preheader.if.end3_crit_edge, label %if.end.preheader.for.end_crit_edge

if.end.preheader.for.end_crit_edge:               ; preds = %if.end.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.preheader.if.end3_crit_edge:               ; preds = %if.end.preheader
  br label %if.end3

if.end:                                           ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %7
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %if.end.if.end3_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.end3:                                          ; preds = %if.end.if.end3_crit_edge, %if.end.preheader.if.end3_crit_edge
  %call4 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #9
  %8 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port1.i, align 4
  %add.i = add i32 %9, %port
  %and.i = and i32 %add.i, 1048575
  %add2.i = or i32 %and.i, -18874368
  %10 = inttoptr i32 %add2.i to ptr
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %10) #9, !srcloc !314
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !339
  %and = and i32 %12, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %if.end

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end:                                          ; preds = %if.end.for.end_crit_edge, %if.end.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ %5, %if.end.preheader.for.end_crit_edge ], [ %12, %if.end.for.end_crit_edge ]
  %and5 = and i32 %.lcssa, -32769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !340
  tail call void @arm_heavy_mb() #9
  %13 = tail call i32 @llvm.bswap.i32(i32 %and5) #9
  %14 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port1.i, align 4
  %add.i18 = add i32 %15, %port
  %and.i19 = and i32 %add.i18, 1048575
  %add2.i20 = or i32 %and.i19, -18874368
  %16 = inttoptr i32 %add2.i20 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 %13) #9, !srcloc !317
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_codec_ready.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_codec_ready, %if.then10)) #9
          to label %cleanup [label %if.then10], !srcloc !312

if.then10:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %card = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 7
  %17 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 27
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_codec_ready.__UNIQUE_ID_ddebug255, ptr noundef %20, ptr noundef nonnull @.str.48) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %for.end, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then10 ], [ -5, %for.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ali_codec_write(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_codec_write.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_codec_write, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %card = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %conv = zext i16 %reg to i32
  %conv3 = zext i16 %val to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_codec_write.__UNIQUE_ID_ddebug256, ptr noundef %5, ptr noundef nonnull @.str.54, i32 noundef %conv, i32 noundef %conv3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 84, i16 %reg)
  %cmp = icmp eq i16 %reg, 84
  br i1 %cmp, label %do.body7, label %if.end13

do.body7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !351
  tail call void @arm_heavy_mb() #9
  %conv10 = zext i16 %val to i32
  %shl = shl nuw i32 %conv10, 16
  %or = or i32 %shl, 32768
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %port = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %add = add i32 %8, 76
  %and = and i32 %add, 1048575
  %add11 = or i32 %and, -18874368
  %9 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 %6) #9, !srcloc !317
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %num = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %10 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num, align 8
  %conv.i = zext i16 %reg to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %reg)
  %cmp.i = icmp ugt i16 %reg, 127
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %card.i = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.55, i32 noundef %conv.i) #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end13
  %ac97write.i = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 10, i32 1, i32 5
  %16 = ptrtoint ptr %ac97write.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ac97write.i, align 4
  %call.i = tail call fastcc i32 @snd_ali_codec_ready(ptr noundef %1, i32 noundef %17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %port1.i.i.i = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %port1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port1.i.i.i, align 4
  %add.i.i.i = add i32 %19, 200
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add2.i.i.i = or i32 %and.i.i.i, -18874368
  %20 = inttoptr i32 %add2.i.i.i to ptr
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %20) #9, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !339
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %22, 25
  %23 = ptrtoint ptr %port1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port1.i.i.i, align 4
  %add.i1215.i.i = add i32 %24, 200
  %and.i1316.i.i = and i32 %add.i1215.i.i, 1048575
  %add2.i1417.i.i = or i32 %and.i1316.i.i, -18874368
  %25 = inttoptr i32 %add2.i1417.i.i to ptr
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %25) #9, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !339
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %21)
  %cmp.not18.i.i = icmp eq i32 %26, %21
  br i1 %cmp.not18.i.i, label %if.end6.i.if.end.i.i_crit_edge, label %if.end6.i.if.end11.i_crit_edge

if.end6.i.if.end11.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.end6.i.if.end.i.i_crit_edge:                   ; preds = %if.end6.i
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end5.i.i.if.end.i.i_crit_edge, %if.end6.i.if.end.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %cmp3.i.i = icmp sgt i32 %sub.i.i, -1
  br i1 %cmp3.i.i, label %if.end5.i.i, label %snd_ali_stimer_ready.exit.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %call6.i.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #9
  %28 = ptrtoint ptr %port1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port1.i.i.i, align 4
  %add.i12.i.i = add i32 %29, 200
  %and.i13.i.i = and i32 %add.i12.i.i, 1048575
  %add2.i14.i.i = or i32 %and.i13.i.i, -18874368
  %30 = inttoptr i32 %add2.i14.i.i to ptr
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %30) #9, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !339
  %cmp.not.i.i = icmp eq i32 %31, %21
  br i1 %cmp.not.i.i, label %if.end5.i.i.if.end.i.i_crit_edge, label %if.end5.i.i.if.end11.i_crit_edge

if.end5.i.i.if.end11.i_crit_edge:                 ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.end5.i.i.if.end.i.i_crit_edge:                 ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

snd_ali_stimer_ready.exit.i:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %card.i.i = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 7
  %32 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %card.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %33, i32 0, i32 27
  %34 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.49) #12
  br label %cleanup

if.end11.i:                                       ; preds = %if.end5.i.i.if.end11.i_crit_edge, %if.end6.i.if.end11.i_crit_edge
  %and.i = and i32 %conv.i, 255
  %conv13.i = zext i16 %val to i32
  %shl.i = shl nuw i32 %conv13.i, 16
  %or.i = or i32 %shl.i, %and.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.i = icmp eq i16 %11, 0
  %spec.select.v.i = select i1 %tobool.not.i, i32 32768, i32 32896
  %spec.select.i = or i32 %spec.select.v.i, %or.i
  %revision.i = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %37)
  %cmp19.i = icmp eq i8 %37, 2
  %or22.i = or i32 %spec.select.i, 256
  %dwVal.1.i = select i1 %cmp19.i, i32 %or22.i, i32 %spec.select.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !340
  tail call void @arm_heavy_mb() #9
  %38 = tail call i32 @llvm.bswap.i32(i32 %dwVal.1.i) #9
  %39 = ptrtoint ptr %port1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port1.i.i.i, align 4
  %add.i36.i = add i32 %40, %17
  %and.i.i = and i32 %add.i36.i, 1048575
  %add2.i.i = or i32 %and.i.i, -18874368
  %41 = inttoptr i32 %add2.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %41, i32 %38) #9, !srcloc !317
  br label %cleanup

cleanup:                                          ; preds = %if.end11.i, %snd_ali_stimer_ready.exit.i, %if.end.i.cleanup_crit_edge, %do.end.i, %do.body7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @snd_ali_codec_read(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_codec_read.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_codec_read, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %card = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %conv = zext i16 %reg to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_codec_read.__UNIQUE_ID_ddebug257, ptr noundef %5, ptr noundef nonnull @.str.58, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %num = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %6 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num, align 8
  %conv3 = zext i16 %7 to i32
  %call4 = tail call fastcc zeroext i16 @snd_ali_codec_peek(ptr noundef %1, i32 noundef %conv3, i16 noundef zeroext %reg)
  ret i16 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_bus(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_mixer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ali5451_spdif_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %tobool.not = icmp ne i32 %3, 0
  %cond = zext i1 %tobool.not to i32
  %reg_lock = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #9
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb11
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %spdif_mask = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %spdif_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %spdif_mask, align 4
  %and = lshr i32 %8, 1
  %and.lobit = and i32 %and, 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %spdif_mask4 = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %spdif_mask4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %spdif_mask4, align 4
  %and5 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %and8 = lshr i32 %10, 2
  %and8.lobit = and i32 %and8, 1
  %11 = select i1 %tobool6.not, i32 0, i32 %and8.lobit
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %spdif_mask12 = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %spdif_mask12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %spdif_mask12, align 4
  %and13 = and i32 %13, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %spdif_enable.0 = phi i32 [ %cond, %entry.sw.epilog_crit_edge ], [ %and13, %sw.bb11 ], [ %11, %sw.bb3 ], [ %and.lobit, %sw.bb ]
  %14 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spdif_enable.0, ptr %value, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ali5451_spdif_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  %reg_lock = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #9
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb12
    i32 2, label %sw.bb32
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %spdif_mask = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %spdif_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %spdif_mask, align 4
  %and = lshr i32 %8, 1
  %and.lobit = and i32 %and, 1
  %xor = xor i32 %and.lobit, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor)
  %tobool3.not = icmp eq i32 %xor, 0
  br i1 %tobool3.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %8, 2
  %9 = ptrtoint ptr %spdif_mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %spdif_mask, align 4
  tail call fastcc void @snd_ali_enable_spdif_out(ptr noundef %1)
  br label %sw.epilog

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %and10 = and i32 %8, -7
  %10 = ptrtoint ptr %spdif_mask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and10, ptr %spdif_mask, align 4
  %port.i = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port.i, align 4
  %add.i = add i32 %12, 72
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %13 = inttoptr i32 %add1.i to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !353
  tail call void @arm_heavy_mb() #9
  %15 = and i8 %14, -33
  %16 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port.i, align 4
  %add6.i = add i32 %17, 72
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %18 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %15) #9, !srcloc !325
  %19 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port.i, align 4
  %add.i.i = add i32 %20, 212
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %21 = inttoptr i32 %add1.i.i to ptr
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %21) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !354
  %23 = or i16 %22, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %24 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port.i, align 4
  %add5.i.i = add i32 %25, 212
  %and6.i.i = and i32 %add5.i.i, 1048575
  %add7.i.i = or i32 %and6.i.i, -18874368
  %26 = inttoptr i32 %add7.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %26, i16 %23) #9, !srcloc !348
  %27 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port.i, align 4
  %add.i.i.i = add i32 %28, 212
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %29 = inttoptr i32 %add1.i.i.i to ptr
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %29) #9, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  %31 = or i32 %30, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !357
  tail call void @arm_heavy_mb() #9
  %32 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port.i, align 4
  %add5.i.i.i = add i32 %33, 212
  %and6.i.i.i = and i32 %add5.i.i.i, 1048575
  %add7.i.i.i = or i32 %and6.i.i.i, -18874368
  %34 = inttoptr i32 %add7.i.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %34, i32 %31) #9, !srcloc !317
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %spdif_mask13 = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 11
  %35 = ptrtoint ptr %spdif_mask13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %spdif_mask13, align 4
  %and14 = lshr i32 %36, 2
  %and14.lobit = and i32 %and14, 1
  %xor17 = xor i32 %and14.lobit, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor17)
  %tobool18.not = icmp eq i32 %xor17, 0
  br i1 %tobool18.not, label %sw.bb12.sw.epilog_crit_edge, label %land.lhs.true

sw.bb12.sw.epilog_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb12
  %and20 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %land.lhs.true.sw.epilog_crit_edge, label %if.then22

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then22:                                        ; preds = %land.lhs.true
  br i1 %tobool.not, label %if.else27, label %if.then24

if.then24:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %or26 = or i32 %36, 4
  %37 = ptrtoint ptr %spdif_mask13 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or26, ptr %spdif_mask13, align 4
  %port.i80 = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %port.i80 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port.i80, align 4
  %add.i81 = add i32 %39, 212
  %and.i82 = and i32 %add.i81, 1048575
  %add1.i83 = or i32 %and.i82, -18874368
  %40 = inttoptr i32 %add1.i83 to ptr
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %40) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  %42 = and i16 %41, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  tail call void @arm_heavy_mb() #9
  %43 = ptrtoint ptr %port.i80 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port.i80, align 4
  %add6.i84 = add i32 %44, 212
  %and7.i85 = and i32 %add6.i84, 1048575
  %add8.i86 = or i32 %and7.i85, -18874368
  %45 = inttoptr i32 %add8.i86 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %45, i16 %42) #9, !srcloc !348
  %46 = ptrtoint ptr %port.i80 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port.i80, align 4
  %add.i.i87 = add i32 %47, 212
  %and.i.i88 = and i32 %add.i.i87, 1048575
  %add1.i.i89 = or i32 %and.i.i88, -18874368
  %48 = inttoptr i32 %add1.i.i89 to ptr
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %48) #9, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  %50 = or i32 %49, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !357
  tail call void @arm_heavy_mb() #9
  %51 = ptrtoint ptr %port.i80 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %port.i80, align 4
  %add5.i.i90 = add i32 %52, 212
  %and6.i.i91 = and i32 %add5.i.i90, 1048575
  %add7.i.i92 = or i32 %and6.i.i91, -18874368
  %53 = inttoptr i32 %add7.i.i92 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %53, i32 %50) #9, !srcloc !317
  br label %sw.epilog

if.else27:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %and29 = and i32 %36, -5
  %54 = ptrtoint ptr %spdif_mask13 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and29, ptr %spdif_mask13, align 4
  %port.i93 = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 1
  %55 = ptrtoint ptr %port.i93 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %port.i93, align 4
  %add.i94 = add i32 %56, 212
  %and.i95 = and i32 %add.i94, 1048575
  %add1.i96 = or i32 %and.i95, -18874368
  %57 = inttoptr i32 %add1.i96 to ptr
  %58 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %57) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !354
  %59 = or i16 %58, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  tail call void @arm_heavy_mb() #9
  %60 = ptrtoint ptr %port.i93 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port.i93, align 4
  %add5.i = add i32 %61, 212
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %62 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %62, i16 %59) #9, !srcloc !348
  %63 = ptrtoint ptr %port.i93 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %port.i93, align 4
  %add.i.i97 = add i32 %64, 212
  %and.i.i98 = and i32 %add.i.i97, 1048575
  %add1.i.i99 = or i32 %and.i.i98, -18874368
  %65 = inttoptr i32 %add1.i.i99 to ptr
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %65) #9, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  %67 = or i32 %66, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !357
  tail call void @arm_heavy_mb() #9
  %68 = ptrtoint ptr %port.i93 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port.i93, align 4
  %add5.i.i100 = add i32 %69, 212
  %and6.i.i101 = and i32 %add5.i.i100, 1048575
  %add7.i.i102 = or i32 %and6.i.i101, -18874368
  %70 = inttoptr i32 %add7.i.i102 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %70, i32 %67) #9, !srcloc !317
  br label %sw.epilog

sw.bb32:                                          ; preds = %entry
  %spdif_mask33 = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 11
  %71 = ptrtoint ptr %spdif_mask33 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %spdif_mask33, align 4
  %and34 = and i32 %72, 1
  %xor37 = xor i32 %and34, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor37)
  %tobool38.not = icmp eq i32 %xor37, 0
  br i1 %tobool38.not, label %sw.bb32.sw.epilog_crit_edge, label %if.then39

sw.bb32.sw.epilog_crit_edge:                      ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then39:                                        ; preds = %sw.bb32
  br i1 %tobool.not, label %if.else44, label %if.then41

if.then41:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  %or43 = or i32 %72, 1
  %73 = ptrtoint ptr %spdif_mask33 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %or43, ptr %spdif_mask33, align 4
  %port.i103 = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 1
  %74 = ptrtoint ptr %port.i103 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %port.i103, align 4
  %add.i104 = add i32 %75, 212
  %and.i105 = and i32 %add.i104, 1048575
  %add1.i106 = or i32 %and.i105, -18874368
  %76 = inttoptr i32 %add1.i106 to ptr
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %76) #9, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !360
  %78 = or i32 %77, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !361
  tail call void @arm_heavy_mb() #9
  %79 = ptrtoint ptr %port.i103 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %port.i103, align 4
  %add4.i = add i32 %80, 212
  %and5.i = and i32 %add4.i, 1048575
  %add6.i107 = or i32 %and5.i, -18874368
  %81 = inttoptr i32 %add6.i107 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %81, i32 %78) #9, !srcloc !317
  %82 = ptrtoint ptr %port.i103 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %port.i103, align 4
  %add10.i = add i32 %83, 116
  %and11.i = and i32 %add10.i, 1048575
  %add12.i = or i32 %and11.i, -18874368
  %84 = inttoptr i32 %add12.i to ptr
  %85 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %84) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !362
  %86 = or i8 %85, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !363
  tail call void @arm_heavy_mb() #9
  %87 = ptrtoint ptr %port.i103 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %port.i103, align 4
  %add22.i = add i32 %88, 116
  %and23.i = and i32 %add22.i, 1048575
  %add24.i = or i32 %and23.i, -18874368
  %89 = inttoptr i32 %add24.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %89, i8 %86) #9, !srcloc !325
  %90 = ptrtoint ptr %port.i103 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %port.i103, align 4
  %add.i.i108 = add i32 %91, 212
  %and.i.i109 = and i32 %add.i.i108, 1048575
  %add1.i.i110 = or i32 %and.i.i109, -18874368
  %92 = inttoptr i32 %add1.i.i110 to ptr
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %92) #9, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  %94 = or i32 %93, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !357
  tail call void @arm_heavy_mb() #9
  %95 = ptrtoint ptr %port.i103 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %port.i103, align 4
  %add5.i.i111 = add i32 %96, 212
  %and6.i.i112 = and i32 %add5.i.i111, 1048575
  %add7.i.i113 = or i32 %and6.i.i112, -18874368
  %97 = inttoptr i32 %add7.i.i113 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %97, i32 %94) #9, !srcloc !317
  br label %sw.epilog

if.else44:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  %and46 = and i32 %72, -2
  %98 = ptrtoint ptr %spdif_mask33 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %and46, ptr %spdif_mask33, align 4
  %port.i114 = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 1
  %99 = ptrtoint ptr %port.i114 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %port.i114, align 4
  %add.i115 = add i32 %100, 212
  %and.i116 = and i32 %add.i115, 1048575
  %add1.i117 = or i32 %and.i116, -18874368
  %101 = inttoptr i32 %add1.i117 to ptr
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %101) #9, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !364
  %103 = and i32 %102, -524289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !365
  tail call void @arm_heavy_mb() #9
  %104 = ptrtoint ptr %port.i114 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %port.i114, align 4
  %add5.i118 = add i32 %105, 212
  %and6.i119 = and i32 %add5.i118, 1048575
  %add7.i120 = or i32 %and6.i119, -18874368
  %106 = inttoptr i32 %add7.i120 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %106, i32 %103) #9, !srcloc !317
  %107 = ptrtoint ptr %port.i114 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %port.i114, align 4
  %add.i.i121 = add i32 %108, 212
  %and.i.i122 = and i32 %add.i.i121, 1048575
  %add1.i.i123 = or i32 %and.i.i122, -18874368
  %109 = inttoptr i32 %add1.i.i123 to ptr
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %109) #9, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !349
  %111 = and i32 %110, -2049
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !350
  tail call void @arm_heavy_mb() #9
  %112 = ptrtoint ptr %port.i114 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %port.i114, align 4
  %add6.i.i = add i32 %113, 212
  %and7.i.i = and i32 %add6.i.i, 1048575
  %add8.i.i = or i32 %and7.i.i, -18874368
  %114 = inttoptr i32 %add8.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %114, i32 %111) #9, !srcloc !317
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else44, %if.then41, %sw.bb32.sw.epilog_crit_edge, %if.else27, %if.then24, %land.lhs.true.sw.epilog_crit_edge, %sw.bb12.sw.epilog_crit_edge, %if.else, %if.then5, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %change.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %xor37, %if.then41 ], [ %xor37, %if.else44 ], [ 0, %sw.bb32.sw.epilog_crit_edge ], [ %xor17, %if.then24 ], [ %xor17, %if.else27 ], [ %xor17, %land.lhs.true.sw.epilog_crit_edge ], [ 0, %sw.bb12.sw.epilog_crit_edge ], [ %xor, %if.then5 ], [ %xor, %if.else ], [ 0, %sw.bb.sw.epilog_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #9
  ret i32 %change.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_ali_pcm_free(ptr nocapture noundef readonly %pcm) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %pcm, i32 0, i32 11
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %device = getelementptr inbounds %struct.snd_pcm, ptr %pcm, i32 0, i32 2
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device, align 4
  %arrayidx = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 8, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ali_playback_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i, align 4
  %call.i = tail call fastcc ptr @snd_ali_alloc_voice(ptr noundef %1, i32 noundef 0, i32 noundef -1) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.snd_ali_open.exit_crit_edge, label %if.end.i

entry.snd_ali_open.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_ali_open.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %substream2.i = getelementptr inbounds %struct.snd_ali_voice, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %substream2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %substream2.i, align 4
  %private_data3.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %5 = ptrtoint ptr %private_data3.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %private_data3.i, align 8
  %private_free.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 45
  %6 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @snd_ali_pcm_free_substream, ptr %private_free.i, align 4
  %hw.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %7 = call ptr @memcpy(ptr %hw.i, ptr @snd_ali_playback, i32 64)
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #9
  %call4.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 17, i32 noundef 0, i32 noundef 65536) #9
  br label %snd_ali_open.exit

snd_ali_open.exit:                                ; preds = %if.end.i, %entry.snd_ali_open.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -11, %entry.snd_ali_open.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ali_playback_close(ptr nocapture noundef readnone %substream) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ali_playback_hw_params(ptr noundef %substream, ptr nocapture noundef readonly %hw_params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %extra = getelementptr inbounds %struct.snd_ali_voice, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extra, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 9
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %div30 = lshr i32 %9, 1
  %arrayidx.i.i31 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 5
  %10 = ptrtoint ptr %arrayidx.i.i31 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div30, i32 %11)
  %cmp.not = icmp eq i32 %div30, %11
  %tobool11.not = icmp eq ptr %7, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool11.not, label %if.then4, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %if.then
  %call5 = tail call fastcc ptr @snd_ali_alloc_voice(ptr noundef %1, i32 noundef 0, i32 noundef -1)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then4.cleanup_crit_edge, label %if.end

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5, ptr %extra, align 4
  %substream9 = getelementptr inbounds %struct.snd_ali_voice, ptr %call5, i32 0, i32 3
  %13 = ptrtoint ptr %substream9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %substream, ptr %substream9, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  br i1 %tobool11.not, label %if.else.cleanup_crit_edge, label %if.then12

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @snd_ali_free_voice(ptr noundef %1, ptr noundef nonnull %7)
  %14 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %extra, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.else.cleanup_crit_edge, %if.end, %if.then4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then4.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then12 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ali_playback_hw_free(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %cond.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cond.end:                                         ; preds = %entry
  %extra = getelementptr inbounds %struct.snd_ali_voice, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extra, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @snd_ali_free_voice(ptr noundef %1, ptr noundef nonnull %7)
  %8 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %extra, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ali_playback_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %extra = getelementptr inbounds %struct.snd_ali_voice, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extra, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_playback_prepare.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_playback_prepare, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %card = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_playback_prepare.__UNIQUE_ID_ddebug267, ptr noundef %11, ptr noundef nonnull @.str.88) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %reg_lock = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #9
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %12 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rate, align 4
  %14 = tail call i32 @llvm.umax.i32(i32 %13, i32 4000) #9
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 48000) #9
  %trunc43.i = trunc i32 %15 to i16
  %16 = zext i16 %trunc43.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.109)
  switch i16 %trunc43.i, label %if.else22.i [
    i16 -21436, label %do.end.snd_ali_convert_rate.exit_crit_edge
    i16 8000, label %if.then21.i
  ]

do.end.snd_ali_convert_rate.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_ali_convert_rate.exit

if.then21.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_ali_convert_rate.exit

if.else22.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 47999, i32 %14)
  %cmp23.i = icmp ugt i32 %14, 47999
  br i1 %cmp23.i, label %if.else22.i.snd_ali_convert_rate.exit_crit_edge, label %if.else25.i

if.else22.i.snd_ali_convert_rate.exit_crit_edge:  ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_ali_convert_rate.exit

if.else25.i:                                      ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = mul nuw nsw i32 %15, 4097
  %div26.i = udiv i32 %add.i, 48000
  br label %snd_ali_convert_rate.exit

snd_ali_convert_rate.exit:                        ; preds = %if.else25.i, %if.else22.i.snd_ali_convert_rate.exit_crit_edge, %if.then21.i, %do.end.snd_ali_convert_rate.exit_crit_edge
  %delta.0.i = phi i32 [ 683, %if.then21.i ], [ %div26.i, %if.else25.i ], [ 3763, %do.end.snd_ali_convert_rate.exit_crit_edge ], [ 4096, %if.else22.i.snd_ali_convert_rate.exit_crit_edge ]
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %5, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %18, label %if.else [
    i32 19, label %snd_ali_convert_rate.exit.if.then8_crit_edge
    i32 31, label %snd_ali_convert_rate.exit.if.then8_crit_edge160
  ]

snd_ali_convert_rate.exit.if.then8_crit_edge160:  ; preds = %snd_ali_convert_rate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

snd_ali_convert_rate.exit.if.then8_crit_edge:     ; preds = %snd_ali_convert_rate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8:                                         ; preds = %snd_ali_convert_rate.exit.if.then8_crit_edge, %snd_ali_convert_rate.exit.if.then8_crit_edge160
  %port.i = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port.i, align 4
  %add.i152 = add i32 %21, 212
  %and.i = and i32 %add.i152, 1048575
  %add1.i = or i32 %and.i, -18874368
  %22 = inttoptr i32 %add1.i to ptr
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %22) #9, !srcloc !314
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !349
  %shl.i = shl nuw i32 1, %18
  %neg.i = xor i32 %shl.i, -1
  %and4.i = and i32 %24, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !350
  tail call void @arm_heavy_mb() #9
  %25 = tail call i32 @llvm.bswap.i32(i32 %and4.i) #9
  %26 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port.i, align 4
  %add6.i = add i32 %27, 212
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %28 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %28, i32 %25) #9, !srcloc !317
  br label %if.end23

if.else:                                          ; preds = %snd_ali_convert_rate.exit
  %spdif_support = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %spdif_support to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load = load i8, ptr %spdif_support, align 1
  %30 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool10.not = icmp eq i8 %30, 0
  br i1 %tobool10.not, label %if.else.if.end23_crit_edge, label %land.lhs.true

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true:                                    ; preds = %if.else
  %port = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port, align 4
  %add = add i32 %32, 212
  %and = and i32 %add, 1048575
  %add11 = or i32 %and, -18874368
  %33 = inttoptr i32 %add11 to ptr
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %33) #9, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !366
  %35 = and i32 %34, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool16.not = icmp eq i32 %35, 0
  br i1 %tobool16.not, label %land.lhs.true.if.end23_crit_edge, label %land.lhs.true17

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true17:                                  ; preds = %land.lhs.true
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %37)
  %cmp19 = icmp eq i32 %37, 15
  br i1 %cmp19, label %if.then20, label %land.lhs.true17.if.end23_crit_edge

land.lhs.true17.if.end23_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then20:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rate, align 4
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port, align 4
  %add.i154 = add i32 %41, 116
  %and.i155 = and i32 %add.i154, 1048575
  %add2.i = or i32 %and.i155, -18874368
  %42 = inttoptr i32 %add2.i to ptr
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %42) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !367
  %44 = and i8 %43, 63
  %45 = or i8 %44, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !368
  tail call void @arm_heavy_mb() #9
  %46 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port, align 4
  %add9.i = add i32 %47, 116
  %and10.i = and i32 %add9.i, 1048575
  %add11.i = or i32 %and10.i, -18874368
  %48 = inttoptr i32 %add11.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 %45) #9, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !369
  tail call void @arm_heavy_mb() #9
  %49 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %port, align 4
  %add20.i = add i32 %50, 114
  %and21.i = and i32 %add20.i, 1048575
  %add22.i = or i32 %and21.i, -18874368
  %51 = inttoptr i32 %add22.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 32) #9, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !370
  tail call void @arm_heavy_mb() #9
  %52 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port, align 4
  %add31.i = add i32 %53, 116
  %and32.i = and i32 %add31.i, 1048575
  %add33.i = or i32 %and32.i, -18874368
  %54 = inttoptr i32 %add33.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 %44) #9, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !371
  tail call void @arm_heavy_mb() #9
  %55 = trunc i32 %39 to i16
  %conv39.i = or i16 %55, 16
  %56 = tail call i16 @llvm.bswap.i16(i16 %conv39.i) #9
  %57 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port, align 4
  %add42.i = add i32 %58, 114
  %and43.i = and i32 %add42.i, 1048575
  %add44.i = or i32 %and43.i, -18874368
  %59 = inttoptr i32 %add44.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %59, i16 %56) #9, !srcloc !348
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %land.lhs.true17.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge, %if.else.if.end23_crit_edge, %if.then8
  %Delta.0 = phi i32 [ %delta.0.i, %if.then8 ], [ 4096, %if.then20 ], [ %delta.0.i, %land.lhs.true17.if.end23_crit_edge ], [ %delta.0.i, %land.lhs.true.if.end23_crit_edge ], [ %delta.0.i, %if.else.if.end23_crit_edge ]
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %60 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dma_addr, align 8
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %62 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %period_size, align 4
  %count = getelementptr inbounds %struct.snd_ali_voice, ptr %5, i32 0, i32 6
  %64 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %count, align 4
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %65 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %buffer_size, align 4
  %eso = getelementptr inbounds %struct.snd_ali_voice, ptr %5, i32 0, i32 5
  %67 = ptrtoint ptr %eso to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %eso, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_playback_prepare.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_playback_prepare, %if.then36)) #9
          to label %do.end43 [label %if.then36], !srcloc !312

if.then36:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %card37 = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 7
  %68 = ptrtoint ptr %card37 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %card37, align 4
  %dev38 = getelementptr inbounds %struct.snd_card, ptr %69, i32 0, i32 27
  %70 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev38, align 8
  %72 = ptrtoint ptr %eso to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %eso, align 4
  %74 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_playback_prepare.__UNIQUE_ID_ddebug268, ptr noundef %71, ptr noundef nonnull @.str.89, i32 noundef %73, i32 noundef %75) #9
  br label %do.end43

do.end43:                                         ; preds = %if.then36, %if.end23
  %76 = ptrtoint ptr %eso to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %eso, align 4
  %sub = add i32 %77, -1
  %78 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %runtime1, align 4
  %format.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %79, i32 0, i32 12
  %80 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %format.i, align 4
  %call.i = tail call i32 @snd_pcm_format_width(i32 noundef %81) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 16
  %spec.select.i = select i1 %cmp.i, i32 9, i32 1
  %82 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %format.i, align 4
  %call3.i = tail call i32 @snd_pcm_format_unsigned(i32 noundef %83) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  %or5.i = or i32 %spec.select.i, 2
  %CTRL.1.i = select i1 %tobool.not.i, i32 %or5.i, i32 %spec.select.i
  %channels.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %79, i32 0, i32 15
  %84 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %channels.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %85)
  %cmp7.i = icmp ugt i32 %85, 1
  %or9.i = or i32 %CTRL.1.i, 4
  %CTRL.2.i = select i1 %cmp7.i, i32 %or9.i, i32 %CTRL.1.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_playback_prepare.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_playback_prepare, %if.then58)) #9
          to label %do.body64 [label %if.then58], !srcloc !312

if.then58:                                        ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #11
  %card59 = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 7
  %86 = ptrtoint ptr %card59 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %card59, align 4
  %dev60 = getelementptr inbounds %struct.snd_card, ptr %87, i32 0, i32 27
  %88 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev60, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_playback_prepare.__UNIQUE_ID_ddebug269, ptr noundef %89, ptr noundef nonnull @.str.90) #9
  br label %do.body64

do.body64:                                        ; preds = %if.then58, %do.end43
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_playback_prepare.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_playback_prepare, %if.then76)) #9
          to label %do.end83 [label %if.then76], !srcloc !312

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #11
  %card77 = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 7
  %90 = ptrtoint ptr %card77 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %card77, align 4
  %dev78 = getelementptr inbounds %struct.snd_card, ptr %91, i32 0, i32 27
  %92 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev78, align 8
  %94 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %5, align 4
  %96 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_playback_prepare.__UNIQUE_ID_ddebug270, ptr noundef %93, ptr noundef nonnull @.str.91, i32 noundef %95, i32 noundef %97, i32 noundef %Delta.0, i32 noundef 1, i32 noundef 0, i32 noundef %CTRL.2.i) #9
  br label %do.end83

do.end83:                                         ; preds = %if.then76, %do.body64
  %98 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %5, align 4
  tail call fastcc void @snd_ali_write_voice_regs(ptr noundef %1, i32 noundef %99, i32 noundef %61, i32 noundef %sub, i32 noundef %Delta.0, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef %CTRL.2.i)
  %tobool85.not = icmp eq ptr %7, null
  br i1 %tobool85.not, label %do.end83.if.end94_crit_edge, label %if.then86

do.end83.if.end94_crit_edge:                      ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.then86:                                        ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %count, align 4
  %count88 = getelementptr inbounds %struct.snd_ali_voice, ptr %7, i32 0, i32 6
  %102 = ptrtoint ptr %count88 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %count88, align 4
  %103 = load i32, ptr %count, align 4
  %shl = shl i32 %103, 1
  %eso90 = getelementptr inbounds %struct.snd_ali_voice, ptr %7, i32 0, i32 5
  %104 = ptrtoint ptr %eso90 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %shl, ptr %eso90, align 4
  %sub92 = add i32 %shl, -1
  %105 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %7, align 4
  tail call fastcc void @snd_ali_write_voice_regs(ptr noundef %1, i32 noundef %106, i32 noundef %61, i32 noundef %sub92, i32 noundef %Delta.0, i32 noundef 1, i32 noundef 127, i32 noundef 1023, i32 noundef %CTRL.2.i)
  br label %if.end94

if.end94:                                         ; preds = %if.then86, %do.end83.if.end94_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ali_trigger(ptr noundef %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %cmd)
  %2 = icmp ult i32 %cmd, 7
  br i1 %2, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %cmd to i8
  %switch.shifted = lshr i8 99, %switch.maskindex
  %3 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %switch.lobit.not = icmp eq i8 %3, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.cast = trunc i32 %cmd to i7
  %switch.downshift = lshr i7 33, %switch.cast
  %4 = and i7 %switch.downshift, 1
  %5 = sext i7 %4 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %switch.masked.not = icmp eq i7 %4, 0
  %group = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 18
  %6 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %group, align 4
  %substreams = getelementptr inbounds %struct.snd_pcm_group, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %substreams to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn165 = load ptr, ptr %substreams, align 4
  %cmp.not167 = icmp eq ptr %.pn165, %substreams
  br i1 %cmp.not167, label %switch.lookup.for.end_crit_edge, label %switch.lookup.for.body_crit_edge

switch.lookup.for.body_crit_edge:                 ; preds = %switch.lookup
  br label %for.body

switch.lookup.for.end_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %switch.lookup.for.body_crit_edge
  %.pn170 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn165, %switch.lookup.for.body_crit_edge ]
  %what.0169 = phi i32 [ %what.2, %for.inc.for.body_crit_edge ], [ 0, %switch.lookup.for.body_crit_edge ]
  %whati.0168 = phi i32 [ %whati.2, %for.inc.for.body_crit_edge ], [ 0, %switch.lookup.for.body_crit_edge ]
  %private_data4 = getelementptr i8, ptr %.pn170, i32 -132
  %9 = ptrtoint ptr %private_data4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data4, align 4
  %cmp5 = icmp eq ptr %10, %1
  br i1 %cmp5, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  %runtime = getelementptr i8, ptr %.pn170, i32 -20
  %11 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %runtime, align 4
  %private_data6 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %12, i32 0, i32 44
  %13 = ptrtoint ptr %private_data6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private_data6, align 8
  %extra = getelementptr inbounds %struct.snd_ali_voice, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %extra, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %14, align 4
  %and = and i32 %18, 31
  %shl = shl nuw i32 1, %and
  %or = or i32 %shl, %what.0169
  %cmp7 = icmp eq ptr %16, null
  br i1 %cmp7, label %if.end, label %if.end.thread

if.end:                                           ; preds = %if.then
  %running30 = getelementptr inbounds %struct.snd_ali_voice, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %running30 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load31 = load i8, ptr %running30, align 4
  br i1 %switch.masked.not, label %if.then21, label %if.else29

if.end.thread:                                    ; preds = %if.then
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %16, align 4
  %and14 = and i32 %21, 31
  %shl15 = shl nuw i32 1, %and14
  %or20 = or i32 %shl15, %or
  %running30159 = getelementptr inbounds %struct.snd_ali_voice, ptr %14, i32 0, i32 1
  %22 = ptrtoint ptr %running30159 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load31160 = load i8, ptr %running30159, align 4
  br i1 %switch.masked.not, label %if.then23, label %if.then35

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set = or i8 %bf.load31, 4
  %23 = ptrtoint ptr %running30 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %bf.set, ptr %running30, align 4
  br label %if.end41

if.then23:                                        ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set154 = or i8 %bf.load31160, 4
  %24 = ptrtoint ptr %running30159 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %bf.set154, ptr %running30159, align 4
  %running24 = getelementptr inbounds %struct.snd_ali_voice, ptr %16, i32 0, i32 1
  %25 = ptrtoint ptr %running24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load25 = load i8, ptr %running24, align 4
  %bf.set27 = or i8 %bf.load25, 4
  store i8 %bf.set27, ptr %running24, align 4
  br label %if.end41

if.else29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear32 = and i8 %bf.load31, -5
  %26 = ptrtoint ptr %running30 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %bf.clear32, ptr %running30, align 4
  br label %if.end41

if.then35:                                        ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear32161 = and i8 %bf.load31160, -5
  %27 = ptrtoint ptr %running30159 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %bf.clear32161, ptr %running30159, align 4
  %running36 = getelementptr inbounds %struct.snd_ali_voice, ptr %16, i32 0, i32 1
  %28 = ptrtoint ptr %running36 to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load37 = load i8, ptr %running36, align 4
  %bf.clear38 = and i8 %bf.load37, -5
  store i8 %bf.clear38, ptr %running36, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then35, %if.else29, %if.then23, %if.then21
  %shl.pn = phi i32 [ %shl, %if.else29 ], [ %shl15, %if.then35 ], [ %shl, %if.then21 ], [ %shl15, %if.then23 ]
  %what.1144 = phi i32 [ %or, %if.else29 ], [ %or20, %if.then35 ], [ %or, %if.then21 ], [ %or20, %if.then23 ]
  %whati.1147 = or i32 %shl.pn, %whati.0168
  %29 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %runtime, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %substream, ptr %30, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end41, %for.body.for.inc_crit_edge
  %whati.2 = phi i32 [ %whati.1147, %if.end41 ], [ %whati.0168, %for.body.for.inc_crit_edge ]
  %what.2 = phi i32 [ %what.1144, %if.end41 ], [ %what.0169, %for.body.for.inc_crit_edge ]
  %32 = ptrtoint ptr %.pn170 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn = load ptr, ptr %.pn170, align 4
  %33 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %group, align 4
  %substreams3 = getelementptr inbounds %struct.snd_pcm_group, ptr %34, i32 0, i32 2
  %cmp.not = icmp eq ptr %.pn, %substreams3
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %switch.lookup.for.end_crit_edge
  %whati.0.lcssa = phi i32 [ 0, %switch.lookup.for.end_crit_edge ], [ %whati.2, %for.inc.for.end_crit_edge ]
  %what.0.lcssa = phi i32 [ 0, %switch.lookup.for.end_crit_edge ], [ %what.2, %for.inc.for.end_crit_edge ]
  %reg_lock = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #9
  br i1 %switch.masked.not, label %for.end.if.end52_crit_edge, label %do.body

for.end.if.end52_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

do.body:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !372
  tail call void @arm_heavy_mb() #9
  %35 = tail call i32 @llvm.bswap.i32(i32 %what.0.lcssa)
  %port = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port, align 4
  %add = add i32 %37, 132
  %and50 = and i32 %add, 1048575
  %add51 = or i32 %and50, -18874368
  %38 = inttoptr i32 %add51 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %38, i32 %35) #9, !srcloc !317
  br label %if.end52

if.end52:                                         ; preds = %do.body, %for.end.if.end52_crit_edge
  %port53 = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %port53 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port53, align 4
  %add54 = add i32 %40, 164
  %and55 = and i32 %add54, 1048575
  %add56 = or i32 %and55, -18874368
  %41 = inttoptr i32 %add56 to ptr
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %41) #9, !srcloc !314
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !373
  %or62 = or i32 %43, %whati.0.lcssa
  %neg = xor i32 %whati.0.lcssa, -1
  %and64 = and i32 %43, %neg
  %val.0 = select i1 %switch.masked.not, i32 %or62, i32 %and64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !374
  tail call void @arm_heavy_mb() #9
  %44 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %45 = ptrtoint ptr %port53 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port53, align 4
  %add70 = add i32 %46, 164
  %and71 = and i32 %add70, 1048575
  %add72 = or i32 %and71, -18874368
  %47 = inttoptr i32 %add72 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %47, i32 %44) #9, !srcloc !317
  br i1 %switch.masked.not, label %do.body76, label %if.end52.do.body85_crit_edge

if.end52.do.body85_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body85

do.body76:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !375
  tail call void @arm_heavy_mb() #9
  %48 = tail call i32 @llvm.bswap.i32(i32 %what.0.lcssa)
  %49 = ptrtoint ptr %port53 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %port53, align 4
  %add80 = add i32 %50, 128
  %and81 = and i32 %add80, 1048575
  %add82 = or i32 %and81, -18874368
  %51 = inttoptr i32 %add82 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %51, i32 %48) #9, !srcloc !317
  br label %do.body85

do.body85:                                        ; preds = %do.body76, %if.end52.do.body85_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_trigger.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_trigger, %if.then92)) #9
          to label %do.end95 [label %if.then92], !srcloc !312

if.then92:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #11
  %card = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 7
  %52 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %53, i32 0, i32 27
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_trigger.__UNIQUE_ID_ddebug266, ptr noundef %55, ptr noundef nonnull @.str.93, i32 noundef %what.0.lcssa, i32 noundef %whati.0.lcssa) #9
  br label %do.end95

do.end95:                                         ; preds = %if.then92, %do.body85
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end95, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end95 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ali_playback_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %reg_lock = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #9
  %running = getelementptr inbounds %struct.snd_ali_voice, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %running, align 4
  %7 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #9
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !376
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  %conv = trunc i32 %9 to i8
  %port = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %add = add i32 %11, 160
  %and = and i32 %add, 1048575
  %add4 = or i32 %and, -18874368
  %12 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv) #9, !srcloc !325
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port, align 4
  %add7 = add i32 %14, 226
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %15 = inttoptr i32 %add9 to ptr
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %15) #9, !srcloc !332
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !377
  %conv12 = zext i16 %17 to i32
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_playback_pointer.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_playback_pointer, %if.then20)) #9
          to label %do.end23 [label %if.then20], !srcloc !312

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %card = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_playback_pointer.__UNIQUE_ID_ddebug272, ptr noundef %21, ptr noundef nonnull @.str.95, i32 noundef %conv12) #9
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %do.body
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %22 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buffer_size, align 4
  %rem = urem i32 %conv12, %23
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %if.then
  %retval.0 = phi i32 [ %rem, %do.end23 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @snd_ali_alloc_voice(ptr noundef %codec, i32 noundef %rec, i32 noundef %channel) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_alloc_voice.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_alloc_voice, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %card = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 7
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_alloc_voice.__UNIQUE_ID_ddebug264, ptr noundef %3, ptr noundef nonnull @.str.66, i32 noundef 1, i32 noundef %rec) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %voice_alloc = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 20
  tail call void @_raw_spin_lock_irq(ptr noundef %voice_alloc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp4 = icmp sgt i32 %channel, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %and.i = and i32 %channel, 31
  %chcnt.i = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %chcnt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %5)
  %cmp.i = icmp ugt i32 %5, 31
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #11
  %card.i = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 7
  %6 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.68) #12
  br label %do.end11

if.end.i:                                         ; preds = %cond.true
  %chmap.i = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 9, i32 2
  %10 = ptrtoint ptr %chmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chmap.i, align 4
  %shl.i = shl nuw i32 1, %and.i
  %and2.i = and i32 %11, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %if.then3.i, label %if.end.i.do.end11_crit_edge

if.end.i.do.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i = or i32 %11, %shl.i
  %12 = ptrtoint ptr %chmap.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i, ptr %chmap.i, align 4
  %inc.i = add nuw nsw i32 %5, 1
  %13 = ptrtoint ptr %chcnt.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %inc.i, ptr %chcnt.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_alloc_pcm_channel.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_alloc_voice, %cond.end.thread5)) #9
          to label %cond.end [label %cond.end.thread5], !srcloc !312

cond.end.thread5:                                 ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  %card14.i = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 7
  %14 = ptrtoint ptr %card14.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card14.i, align 4
  %dev15.i = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev15.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_alloc_pcm_channel.__UNIQUE_ID_ddebug259, ptr noundef %17, ptr noundef nonnull @.str.70, i32 noundef %and.i) #9
  br label %if.end15

cond.false:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call fastcc i32 @snd_ali_find_free_channel(ptr noundef %codec, i32 noundef %rec)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then3.i
  %cond = phi i32 [ %call6, %cond.false ], [ %and.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp7 = icmp slt i32 %cond, 0
  br i1 %cmp7, label %cond.end.do.end11_crit_edge, label %cond.end.if.end15_crit_edge

cond.end.if.end15_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

cond.end.do.end11_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

do.end11:                                         ; preds = %cond.end.do.end11_crit_edge, %if.end.i.do.end11_crit_edge, %do.end.i
  %card12 = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 7
  %18 = ptrtoint ptr %card12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card12, align 4
  %dev13 = getelementptr inbounds %struct.snd_card, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev13, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.67) #12
  br label %cleanup

if.end15:                                         ; preds = %cond.end.if.end15_crit_edge, %cond.end.thread5
  %cond8 = phi i32 [ %and.i, %cond.end.thread5 ], [ %cond, %cond.end.if.end15_crit_edge ]
  %synth = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 9
  %arrayidx = getelementptr [32 x %struct.snd_ali_voice], ptr %synth, i32 0, i32 %cond8
  %codec16 = getelementptr [32 x %struct.snd_ali_voice], ptr %synth, i32 0, i32 %cond8, i32 2
  %22 = ptrtoint ptr %codec16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %codec, ptr %codec16, align 4
  %use = getelementptr [32 x %struct.snd_ali_voice], ptr %synth, i32 0, i32 %cond8, i32 1
  %23 = ptrtoint ptr %use to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %use, align 4
  %24 = trunc i32 %rec to i8
  %bf.value = shl i8 %24, 4
  %bf.shl = and i8 %bf.value, 16
  %bf.set19 = and i8 %bf.load, 47
  %bf.clear21 = or i8 %bf.shl, %bf.set19
  %bf.set22 = or i8 %bf.clear21, -64
  store i8 %bf.set22, ptr %use, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end11
  %retval.0 = phi ptr [ null, %do.end11 ], [ %arrayidx, %if.end15 ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %voice_alloc) #9
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ali_pcm_free_substream(ptr nocapture noundef readonly %runtime) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 44
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %codec = getelementptr inbounds %struct.snd_ali_voice, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %codec, align 4
  tail call fastcc void @snd_ali_free_voice(ptr noundef %3, ptr noundef nonnull %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_ali_find_free_channel(ptr nocapture noundef %codec, i32 noundef %rec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_find_free_channel.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_find_free_channel, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %card = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 7
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rec)
  %tobool3.not = icmp eq i32 %rec, 0
  %cond = select i1 %tobool3.not, ptr @.str.74, ptr @.str.73
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_find_free_channel.__UNIQUE_ID_ddebug260, ptr noundef %3, ptr noundef nonnull @.str.72, ptr noundef nonnull %cond) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rec)
  %tobool4.not = icmp eq i32 %rec, 0
  %spdif_support24 = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 3
  %4 = ptrtoint ptr %spdif_support24 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load25 = load i8, ptr %spdif_support24, align 1
  %5 = and i8 %bf.load25, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool29.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.end23, label %if.then5

if.then5:                                         ; preds = %do.end
  br i1 %tobool29.not, label %if.then5.if.else_crit_edge, label %land.lhs.true

if.then5.if.else_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.then5
  %port = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 1
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %add = add i32 %7, 212
  %and = and i32 %add, 1048575
  %add7 = or i32 %and, -18874368
  %8 = inttoptr i32 %add7 to ptr
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %8) #9, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !378
  %10 = and i32 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool12.not = icmp eq i32 %10, 0
  br i1 %tobool12.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then5.if.else_crit_edge
  br label %if.end14

if.end14:                                         ; preds = %if.else, %land.lhs.true.if.end14_crit_edge
  %idx.0 = phi i32 [ 31, %if.else ], [ 19, %land.lhs.true.if.end14_crit_edge ]
  %chcnt.i = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %chcnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %12)
  %cmp.i = icmp ugt i32 %12, 31
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %card.i = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 7
  %13 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.68) #12
  br label %do.end20

if.end.i:                                         ; preds = %if.end14
  %chmap.i = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 9, i32 2
  %17 = ptrtoint ptr %chmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %chmap.i, align 4
  %shl.i = shl nuw i32 1, %idx.0
  %and2.i = and i32 %18, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %if.then3.i, label %if.end.i.do.end20_crit_edge

if.end.i.do.end20_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end20

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i = or i32 %18, %shl.i
  %19 = ptrtoint ptr %chmap.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i, ptr %chmap.i, align 4
  %inc.i = add nuw nsw i32 %12, 1
  %20 = ptrtoint ptr %chcnt.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %inc.i, ptr %chcnt.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_alloc_pcm_channel.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_find_free_channel, %if.then13.i)) #9
          to label %cleanup [label %if.then13.i], !srcloc !312

if.then13.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  %card14.i = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 7
  %21 = ptrtoint ptr %card14.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card14.i, align 4
  %dev15.i = getelementptr inbounds %struct.snd_card, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev15.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_alloc_pcm_channel.__UNIQUE_ID_ddebug259, ptr noundef %24, ptr noundef nonnull @.str.70, i32 noundef %idx.0) #9
  br label %cleanup

do.end20:                                         ; preds = %if.end.i.do.end20_crit_edge, %do.end.i
  %card21 = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 7
  %25 = ptrtoint ptr %card21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card21, align 4
  %dev22 = getelementptr inbounds %struct.snd_card, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev22, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.75) #12
  br label %cleanup

if.end23:                                         ; preds = %do.end
  br i1 %tobool29.not, label %if.end23.if.end52_crit_edge, label %land.lhs.true30

if.end23.if.end52_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

land.lhs.true30:                                  ; preds = %if.end23
  %port32 = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 1
  %29 = ptrtoint ptr %port32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port32, align 4
  %add33 = add i32 %30, 212
  %and34 = and i32 %add33, 1048575
  %add35 = or i32 %and34, -18874368
  %31 = inttoptr i32 %add35 to ptr
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %31) #9, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !379
  %33 = and i32 %32, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool40.not = icmp eq i32 %33, 0
  br i1 %tobool40.not, label %land.lhs.true30.if.end52_crit_edge, label %if.then41

land.lhs.true30.if.end52_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then41:                                        ; preds = %land.lhs.true30
  %chcnt.i85 = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 9, i32 1
  %34 = ptrtoint ptr %chcnt.i85 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %chcnt.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %35)
  %cmp.i86 = icmp ugt i32 %35, 31
  br i1 %cmp.i86, label %do.end.i89, label %if.end.i93

do.end.i89:                                       ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  %card.i87 = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 7
  %36 = ptrtoint ptr %card.i87 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %card.i87, align 4
  %dev.i88 = getelementptr inbounds %struct.snd_card, ptr %37, i32 0, i32 27
  %38 = ptrtoint ptr %dev.i88 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i88, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.68) #12
  br label %do.end48

if.end.i93:                                       ; preds = %if.then41
  %chmap.i90 = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 9, i32 2
  %40 = ptrtoint ptr %chmap.i90 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chmap.i90, align 4
  %and2.i91 = and i32 %41, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i91)
  %tobool.not.i92 = icmp eq i32 %and2.i91, 0
  br i1 %tobool.not.i92, label %if.then3.i96, label %if.end.i93.do.end48_crit_edge

if.end.i93.do.end48_crit_edge:                    ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

if.then3.i96:                                     ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #11
  %or.i94 = or i32 %41, 32768
  %42 = ptrtoint ptr %chmap.i90 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or.i94, ptr %chmap.i90, align 4
  %inc.i95 = add nuw nsw i32 %35, 1
  %43 = ptrtoint ptr %chcnt.i85 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %inc.i95, ptr %chcnt.i85, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_alloc_pcm_channel.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_find_free_channel, %if.then13.i99)) #9
          to label %cleanup [label %if.then13.i99], !srcloc !312

if.then13.i99:                                    ; preds = %if.then3.i96
  call void @__sanitizer_cov_trace_pc() #11
  %card14.i97 = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 7
  %44 = ptrtoint ptr %card14.i97 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %card14.i97, align 4
  %dev15.i98 = getelementptr inbounds %struct.snd_card, ptr %45, i32 0, i32 27
  %46 = ptrtoint ptr %dev15.i98 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev15.i98, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_alloc_pcm_channel.__UNIQUE_ID_ddebug259, ptr noundef %47, ptr noundef nonnull @.str.70, i32 noundef 15) #9
  br label %cleanup

do.end48:                                         ; preds = %if.end.i93.do.end48_crit_edge, %do.end.i89
  %card49 = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 7
  %48 = ptrtoint ptr %card49 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %card49, align 4
  %dev50 = getelementptr inbounds %struct.snd_card, ptr %49, i32 0, i32 27
  %50 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev50, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.77) #12
  br label %if.end52

if.end52:                                         ; preds = %do.end48, %land.lhs.true30.if.end52_crit_edge, %if.end23.if.end52_crit_edge
  %chcnt.i103 = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 9, i32 1
  %chmap.i108 = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 9, i32 2
  %card.i105 = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end52
  %idx.1129 = phi i32 [ 0, %if.end52 ], [ %inc, %for.inc.for.body_crit_edge ]
  %52 = ptrtoint ptr %chcnt.i103 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %chcnt.i103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %53)
  %cmp.i104 = icmp ugt i32 %53, 31
  br i1 %cmp.i104, label %do.end.i107, label %if.end.i112

do.end.i107:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %card.i105 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %card.i105, align 4
  %dev.i106 = getelementptr inbounds %struct.snd_card, ptr %55, i32 0, i32 27
  %56 = ptrtoint ptr %dev.i106 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i106, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.68) #12
  br label %for.inc

if.end.i112:                                      ; preds = %for.body
  %58 = ptrtoint ptr %chmap.i108 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %chmap.i108, align 4
  %shl.i109 = shl nuw i32 1, %idx.1129
  %and2.i110 = and i32 %59, %shl.i109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i110)
  %tobool.not.i111 = icmp eq i32 %and2.i110, 0
  br i1 %tobool.not.i111, label %if.then3.i115, label %if.end.i112.for.inc_crit_edge

if.end.i112.for.inc_crit_edge:                    ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then3.i115:                                    ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #11
  %or.i113 = or i32 %59, %shl.i109
  %60 = ptrtoint ptr %chmap.i108 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or.i113, ptr %chmap.i108, align 4
  %inc.i114 = add nuw nsw i32 %53, 1
  %61 = ptrtoint ptr %chcnt.i103 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %inc.i114, ptr %chcnt.i103, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_alloc_pcm_channel.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_find_free_channel, %if.then13.i118)) #9
          to label %cleanup [label %if.then13.i118], !srcloc !312

if.then13.i118:                                   ; preds = %if.then3.i115
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %card.i105 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %card.i105, align 4
  %dev15.i117 = getelementptr inbounds %struct.snd_card, ptr %63, i32 0, i32 27
  %64 = ptrtoint ptr %dev15.i117 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev15.i117, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_alloc_pcm_channel.__UNIQUE_ID_ddebug259, ptr noundef %65, ptr noundef nonnull @.str.70, i32 noundef %idx.1129) #9
  br label %cleanup

for.inc:                                          ; preds = %if.end.i112.for.inc_crit_edge, %do.end.i107
  %inc = add nuw nsw i32 %idx.1129, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %do.end60, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.end60:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %card.i105 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %card.i105, align 4
  %dev62 = getelementptr inbounds %struct.snd_card, ptr %67, i32 0, i32 27
  %68 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev62, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.80) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end60, %if.then13.i118, %if.then3.i115, %if.then13.i99, %if.then3.i96, %do.end20, %if.then13.i, %if.then3.i
  %retval.0 = phi i32 [ -1, %do.end20 ], [ -1, %do.end60 ], [ %idx.0, %if.then13.i ], [ %idx.0, %if.then3.i ], [ 15, %if.then13.i99 ], [ 15, %if.then3.i96 ], [ %idx.1129, %if.then13.i118 ], [ %idx.1129, %if.then3.i115 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_ali_free_voice(ptr noundef %codec, ptr nocapture noundef %pvoice) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_free_voice.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_free_voice, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %card = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 7
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %4 = ptrtoint ptr %pvoice to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pvoice, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_free_voice.__UNIQUE_ID_ddebug265, ptr noundef %3, ptr noundef nonnull @.str.83, i32 noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %use = getelementptr inbounds %struct.snd_ali_voice, ptr %pvoice, i32 0, i32 1
  %6 = ptrtoint ptr %use to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %use, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool3.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool3.not, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %7 = ptrtoint ptr %pvoice to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pvoice, align 4
  tail call fastcc void @snd_ali_clear_voices(ptr noundef %codec, i32 noundef %8, i32 noundef %8)
  %voice_alloc = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 20
  tail call void @_raw_spin_lock_irq(ptr noundef %voice_alloc) #9
  %private_free8 = getelementptr inbounds %struct.snd_ali_voice, ptr %pvoice, i32 0, i32 8
  %9 = ptrtoint ptr %private_free8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_free8, align 4
  %private_data9 = getelementptr inbounds %struct.snd_ali_voice, ptr %pvoice, i32 0, i32 7
  %11 = ptrtoint ptr %private_data9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_data9, align 4
  store ptr null, ptr %private_free8, align 4
  store ptr null, ptr %private_data9, align 4
  %13 = ptrtoint ptr %use to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load12 = load i8, ptr %use, align 4
  %14 = and i8 %bf.load12, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool15.not = icmp eq i8 %14, 0
  br i1 %tobool15.not, label %if.end5.if.end18_crit_edge, label %if.then16

if.end5.if.end18_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then16:                                        ; preds = %if.end5
  %15 = ptrtoint ptr %pvoice to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pvoice, align 4
  %and.i = and i32 %16, 31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_free_channel_pcm.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_free_voice, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !312

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %card.i = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 7
  %17 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 27
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_free_channel_pcm.__UNIQUE_ID_ddebug261, ptr noundef %20, ptr noundef nonnull @.str.85, i32 noundef %16) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then16
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %16)
  %21 = icmp ugt i32 %16, 31
  br i1 %21, label %do.end.i.if.end18_crit_edge, label %if.end5.i

do.end.i.if.end18_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.end5.i:                                        ; preds = %do.end.i
  %chmap.i = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 9, i32 2
  %22 = ptrtoint ptr %chmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chmap.i, align 4
  %shl.i = shl nuw i32 1, %and.i
  %and6.i = and i32 %23, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %do.end11.i, label %if.else.i

do.end11.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %card12.i = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 7
  %24 = ptrtoint ptr %card12.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card12.i, align 4
  %dev13.i = getelementptr inbounds %struct.snd_card, ptr %25, i32 0, i32 27
  %26 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev13.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.86, i32 noundef %16) #12
  br label %if.end18

if.else.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %neg.i = xor i32 %shl.i, -1
  %and17.i = and i32 %23, %neg.i
  %28 = ptrtoint ptr %chmap.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and17.i, ptr %chmap.i, align 4
  %chcnt.i = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 9, i32 1
  %29 = ptrtoint ptr %chcnt.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chcnt.i, align 4
  %dec.i = add i32 %30, -1
  store i32 %dec.i, ptr %chcnt.i, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else.i, %do.end11.i, %do.end.i.if.end18_crit_edge, %if.end5.if.end18_crit_edge
  %31 = ptrtoint ptr %use to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load19 = load i8, ptr %use, align 4
  %bf.clear27 = and i8 %bf.load19, 55
  store i8 %bf.clear27, ptr %use, align 4
  %substream = getelementptr inbounds %struct.snd_ali_voice, ptr %pvoice, i32 0, i32 3
  %32 = ptrtoint ptr %substream to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %substream, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %voice_alloc) #9
  %tobool30.not = icmp eq ptr %10, null
  br i1 %tobool30.not, label %if.end18.cleanup_crit_edge, label %if.then31

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then31:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %10(ptr noundef %12) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end18.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_ali_clear_voices(ptr nocapture noundef %codec, i32 noundef %v_min, i32 noundef %v_max) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %v_min, i32 %v_max)
  %cmp.not12 = icmp ugt i32 %v_min, %v_max
  br i1 %cmp.not12, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %card.i = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 7
  %port.i = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 1
  %stop.i = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 10, i32 1, i32 1
  %ainten.i = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 10, i32 1, i32 3
  %ainten8.i = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 10, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %snd_ali_disable_voice_irq.exit.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ %v_min, %for.body.lr.ph ], [ %inc, %snd_ali_disable_voice_irq.exit.for.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_stop_voice.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_clear_voices, %if.then.i)) #9
          to label %snd_ali_stop_voice.exit [label %if.then.i], !srcloc !312

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_stop_voice.__UNIQUE_ID_ddebug262, ptr noundef %3, ptr noundef nonnull @.str.38, i32 noundef %i.013) #9
  br label %snd_ali_stop_voice.exit

snd_ali_stop_voice.exit:                          ; preds = %if.then.i, %for.body
  %and.i = and i32 %i.013, 31
  %shl.i = shl nuw i32 1, %and.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !335
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #9
  %5 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port.i, align 4
  %7 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stop.i, align 4
  %add.i = add i32 %8, %6
  %and6.i = and i32 %add.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %9 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 %4) #9, !srcloc !317
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_disable_voice_irq.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_clear_voices, %if.then.i7)) #9
          to label %snd_ali_disable_voice_irq.exit [label %if.then.i7], !srcloc !312

if.then.i7:                                       ; preds = %snd_ali_stop_voice.exit
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card.i, align 4
  %dev.i6 = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %dev.i6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i6, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_disable_voice_irq.__UNIQUE_ID_ddebug258, ptr noundef %13, ptr noundef nonnull @.str.40, i32 noundef %i.013) #9
  br label %snd_ali_disable_voice_irq.exit

snd_ali_disable_voice_irq.exit:                   ; preds = %if.then.i7, %snd_ali_stop_voice.exit
  %14 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port.i, align 4
  %16 = ptrtoint ptr %ainten.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ainten.i, align 4
  %add.i11 = add i32 %17, %15
  %and3.i = and i32 %add.i11, 1048575
  %add4.i = or i32 %and3.i, -18874368
  %18 = inttoptr i32 %add4.i to ptr
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %18) #9, !srcloc !314
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !336
  %neg.i = xor i32 %shl.i, -1
  %and11.i = and i32 %20, %neg.i
  %21 = ptrtoint ptr %ainten8.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and11.i, ptr %ainten8.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !337
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %ainten8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ainten8.i, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #9
  %25 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port.i, align 4
  %27 = ptrtoint ptr %ainten.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ainten.i, align 4
  %add20.i = add i32 %28, %26
  %and21.i = and i32 %add20.i, 1048575
  %add22.i = or i32 %and21.i, -18874368
  %29 = inttoptr i32 %add22.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %29, i32 %24) #9, !srcloc !317
  %inc = add i32 %i.013, 1
  %cmp.not = icmp ugt i32 %inc, %v_max
  br i1 %cmp.not, label %snd_ali_disable_voice_irq.exit.for.end_crit_edge, label %snd_ali_disable_voice_irq.exit.for.body_crit_edge

snd_ali_disable_voice_irq.exit.for.body_crit_edge: ; preds = %snd_ali_disable_voice_irq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

snd_ali_disable_voice_irq.exit.for.end_crit_edge: ; preds = %snd_ali_disable_voice_irq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %snd_ali_disable_voice_irq.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_ali_write_voice_regs(ptr nocapture noundef readonly %codec, i32 noundef %Channel, i32 noundef %LBA, i32 noundef %ESO, i32 noundef %DELTA, i32 noundef %GVSEL, i32 noundef %PAN, i32 noundef %VOL, i32 noundef %CTRL) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !380
  tail call void @arm_heavy_mb() #9
  %0 = trunc i32 %Channel to i8
  %conv = and i8 %0, 31
  %port = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 1
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %port, align 4
  %add = add i32 %2, 160
  %and1 = and i32 %add, 1048575
  %add2 = or i32 %and1, -18874368
  %3 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 %conv) #9, !srcloc !325
  %shl5 = shl i32 %ESO, 16
  %and6 = and i32 %DELTA, 65535
  %or7 = or i32 %and6, %shl5
  %shl9 = shl i32 %GVSEL, 31
  %and10 = shl i32 %PAN, 24
  %shl11 = and i32 %and10, 2130706432
  %or12 = or i32 %shl11, %shl9
  %and13 = shl i32 %VOL, 16
  %shl14 = and i32 %and13, 16711680
  %or15 = or i32 %or12, %shl14
  %and16 = shl i32 %CTRL, 12
  %shl17 = and i32 %and16, 61440
  %or18 = or i32 %or15, %shl17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !381
  tail call void @arm_heavy_mb() #9
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %add27 = add i32 %5, 160
  %and28 = and i32 %add27, 1048575
  %add29 = or i32 %and28, -18874368
  %6 = inttoptr i32 %add29 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %0) #9, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %add36 = add i32 %8, 224
  %and37 = and i32 %add36, 1048575
  %add38 = or i32 %and37, -18874368
  %9 = inttoptr i32 %add38 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 0) #9, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !383
  tail call void @arm_heavy_mb() #9
  %10 = tail call i32 @llvm.bswap.i32(i32 %LBA)
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port, align 4
  %add45 = add i32 %12, 228
  %and46 = and i32 %add45, 1048575
  %add47 = or i32 %and46, -18874368
  %13 = inttoptr i32 %add47 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %13, i32 %10) #9, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !384
  tail call void @arm_heavy_mb() #9
  %14 = tail call i32 @llvm.bswap.i32(i32 %or7)
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %add54 = add i32 %16, 232
  %and55 = and i32 %add54, 1048575
  %add56 = or i32 %and55, -18874368
  %17 = inttoptr i32 %add56 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %17, i32 %14) #9, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  tail call void @arm_heavy_mb() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %or18)
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port, align 4
  %add63 = add i32 %20, 240
  %and64 = and i32 %add63, 1048575
  %add65 = or i32 %and64, -18874368
  %21 = inttoptr i32 %add65 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %21, i32 %18) #9, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !386
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port, align 4
  %add71 = add i32 %23, 244
  %and72 = and i32 %add71, 1048575
  %add73 = or i32 %and72, -18874368
  %24 = inttoptr i32 %add73 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %24, i32 48) #9, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !387
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port, align 4
  %add79 = add i32 %26, 248
  %and80 = and i32 %add79, 1048575
  %add81 = or i32 %and80, -18874368
  %27 = inttoptr i32 %add81 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %27, i32 48) #9, !srcloc !317
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_unsigned(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ali_capture_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i, align 4
  %call.i = tail call fastcc ptr @snd_ali_alloc_voice(ptr noundef %1, i32 noundef 1, i32 noundef -1) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.snd_ali_open.exit_crit_edge, label %if.end.i

entry.snd_ali_open.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_ali_open.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %substream2.i = getelementptr inbounds %struct.snd_ali_voice, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %substream2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %substream2.i, align 4
  %private_data3.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %5 = ptrtoint ptr %private_data3.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %private_data3.i, align 8
  %private_free.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 45
  %6 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @snd_ali_pcm_free_substream, ptr %private_free.i, align 4
  %hw.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %7 = call ptr @memcpy(ptr %hw.i, ptr @snd_ali_capture, i32 64)
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #9
  %call4.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 17, i32 noundef 0, i32 noundef 65536) #9
  br label %snd_ali_open.exit

snd_ali_open.exit:                                ; preds = %if.end.i, %entry.snd_ali_open.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -11, %entry.snd_ali_open.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ali_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %port.i = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port.i, align 4
  %add.i = add i32 %9, 212
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %10 = inttoptr i32 %add1.i to ptr
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %10) #9, !srcloc !314
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !349
  %and3.i = and i32 %7, 31
  %shl.i = shl nuw i32 1, %and3.i
  %neg.i = xor i32 %shl.i, -1
  %and4.i = and i32 %12, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !350
  tail call void @arm_heavy_mb() #9
  %13 = tail call i32 @llvm.bswap.i32(i32 %and4.i) #9
  %14 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port.i, align 4
  %add6.i = add i32 %15, 212
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %16 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 %13) #9, !srcloc !317
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ali_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %reg_lock = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_ali_prepare.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_ali_prepare, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %card = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_ali_prepare.__UNIQUE_ID_ddebug271, ptr noundef %9, ptr noundef nonnull @.str.97) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 4
  %port.i = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i, align 4
  %add.i = add i32 %13, 212
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %14 = inttoptr i32 %add1.i to ptr
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %14) #9, !srcloc !314
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  %and3.i = and i32 %11, 31
  %shl.i = shl nuw i32 1, %and3.i
  %or.i = or i32 %16, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !357
  tail call void @arm_heavy_mb() #9
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %18 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port.i, align 4
  %add5.i = add i32 %19, 212
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %20 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 %17) #9, !srcloc !317
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %5, align 4
  %23 = and i32 %22, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %23)
  %switch = icmp eq i32 %23, 20
  br i1 %switch, label %do.end.if.end57_crit_edge, label %cond.false

do.end.if.end57_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

cond.false:                                       ; preds = %do.end
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %24 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rate, align 4
  %mode = getelementptr inbounds %struct.snd_ali_voice, ptr %5, i32 0, i32 1
  %26 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load = load i8, ptr %mode, align 4
  %27 = tail call i32 @llvm.umax.i32(i32 %25, i32 4000) #9
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 48000) #9
  %29 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  %trunc43.i = trunc i32 %28 to i16
  br i1 %tobool.not.i, label %if.else16.i, label %if.then4.i

if.then4.i:                                       ; preds = %cond.false
  %30 = zext i16 %trunc43.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.111)
  switch i16 %trunc43.i, label %if.else9.i [
    i16 -21436, label %if.then4.i.cond.end_crit_edge
    i16 8000, label %if.then8.i
  ]

if.then4.i.cond.end_crit_edge:                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.then8.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.else9.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 47999, i32 %27)
  %cmp10.i = icmp ugt i32 %27, 47999
  br i1 %cmp10.i, label %if.else9.i.cond.end_crit_edge, label %if.else12.i

if.else9.i.cond.end_crit_edge:                    ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.else12.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #11
  %div.i = udiv i32 196608000, %28
  br label %cond.end

if.else16.i:                                      ; preds = %cond.false
  %31 = zext i16 %trunc43.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.112)
  switch i16 %trunc43.i, label %if.else22.i [
    i16 -21436, label %if.else16.i.cond.end_crit_edge
    i16 8000, label %if.then21.i
  ]

if.else16.i.cond.end_crit_edge:                   ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.then21.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.else22.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 47999, i32 %27)
  %cmp23.i = icmp ugt i32 %27, 47999
  br i1 %cmp23.i, label %if.else22.i.cond.end_crit_edge, label %if.else25.i

if.else22.i.cond.end_crit_edge:                   ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.else25.i:                                      ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i105 = mul nuw nsw i32 %28, 4097
  %div26.i = udiv i32 %add.i105, 48000
  br label %cond.end

cond.end:                                         ; preds = %if.else25.i, %if.else22.i.cond.end_crit_edge, %if.then21.i, %if.else16.i.cond.end_crit_edge, %if.else12.i, %if.else9.i.cond.end_crit_edge, %if.then8.i, %if.then4.i.cond.end_crit_edge
  %cond = phi i32 [ 24576, %if.then8.i ], [ %div.i, %if.else12.i ], [ 683, %if.then21.i ], [ %div26.i, %if.else25.i ], [ 4458, %if.then4.i.cond.end_crit_edge ], [ 4096, %if.else9.i.cond.end_crit_edge ], [ 3763, %if.else16.i.cond.end_crit_edge ], [ 4096, %if.else22.i.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %22)
  %cmp10 = icmp eq i32 %22, 19
  br i1 %cmp10, label %if.then11, label %cond.end.if.end57_crit_edge

cond.end.if.end57_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then11:                                        ; preds = %cond.end
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #9
  %revision = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp14.not = icmp eq i8 %33, 2
  br i1 %cmp14.not, label %if.end17, label %if.then11.cleanup62_crit_edge

if.then11.cleanup62_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup62

if.end17:                                         ; preds = %if.then11
  %34 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port.i, align 4
  %add.i107 = add i32 %35, 116
  %and.i108 = and i32 %add.i107, 1048575
  %add1.i109 = or i32 %and.i108, -18874368
  %36 = inttoptr i32 %add1.i109 to ptr
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %36) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !388
  %38 = and i8 %37, 63
  %39 = or i8 %38, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  tail call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port.i, align 4
  %add8.i = add i32 %41, 116
  %and9.i = and i32 %add8.i, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %42 = inttoptr i32 %add10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %39) #9, !srcloc !325
  %43 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port.i, align 4
  %add1.i.i = add i32 %44, 117
  %and.i.i = and i32 %add1.i.i, 1048575
  %add2.i.i = or i32 %and.i.i, -18874368
  %45 = inttoptr i32 %add2.i.i to ptr
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %45) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  %47 = or i8 %46, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !391
  tail call void @arm_heavy_mb() #9
  %48 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port.i, align 4
  %add7.i.i = add i32 %49, 117
  %and8.i.i = and i32 %add7.i.i, 1048575
  %add9.i.i = or i32 %and8.i.i, -18874368
  %50 = inttoptr i32 %add9.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 %47) #9, !srcloc !325
  br label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %while.body.i.i.switch.early.test.i.i_crit_edge, %if.end17
  %count.0231.i.i = phi i16 [ 0, %if.end17 ], [ %inc.i.i, %while.body.i.i.switch.early.test.i.i_crit_edge ]
  %R1.0230.i.i = phi i8 [ 0, %if.end17 ], [ %56, %while.body.i.i.switch.early.test.i.i_crit_edge ]
  %trunc.i.i = trunc i8 %R1.0230.i.i to i5
  %51 = zext i5 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.113)
  switch i5 %trunc.i.i, label %while.body.i.i [
    i5 -14, label %switch.early.test.i.i.while.end.i.i_crit_edge
    i5 14, label %switch.early.test.i.i.while.end.i.i_crit_edge123
    i5 13, label %switch.early.test.i.i.while.end.i.i_crit_edge124
    i5 12, label %switch.early.test.i.i.while.end.i.i_crit_edge125
    i5 11, label %switch.early.test.i.i.while.end.i.i_crit_edge126
  ]

switch.early.test.i.i.while.end.i.i_crit_edge126: ; preds = %switch.early.test.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

switch.early.test.i.i.while.end.i.i_crit_edge125: ; preds = %switch.early.test.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

switch.early.test.i.i.while.end.i.i_crit_edge124: ; preds = %switch.early.test.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

switch.early.test.i.i.while.end.i.i_crit_edge123: ; preds = %switch.early.test.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

switch.early.test.i.i.while.end.i.i_crit_edge:    ; preds = %switch.early.test.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %switch.early.test.i.i
  %inc.i.i = add nuw i16 %count.0231.i.i, 1
  tail call fastcc void @snd_ali_delay(ptr noundef %1) #9
  %52 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port.i, align 4
  %add25.i.i = add i32 %53, 117
  %and26.i.i = and i32 %add25.i.i, 1048575
  %add27.i.i = or i32 %and26.i.i, -18874368
  %54 = inttoptr i32 %add27.i.i to ptr
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %54) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !392
  %56 = and i8 %55, 31
  %count.0231.fr.i.i = freeze i16 %count.0231.i.i
  %cmp20.i.i = icmp ult i16 %count.0231.fr.i.i, -15536
  br i1 %cmp20.i.i, label %while.body.i.i.switch.early.test.i.i_crit_edge, label %while.body.i.i.while.end.i.i_crit_edge

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

while.body.i.i.switch.early.test.i.i_crit_edge:   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %switch.early.test.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %switch.early.test.i.i.while.end.i.i_crit_edge, %switch.early.test.i.i.while.end.i.i_crit_edge123, %switch.early.test.i.i.while.end.i.i_crit_edge124, %switch.early.test.i.i.while.end.i.i_crit_edge125, %switch.early.test.i.i.while.end.i.i_crit_edge126
  %R1.0.lcssa.i.i = phi i8 [ %R1.0230.i.i, %switch.early.test.i.i.while.end.i.i_crit_edge ], [ %R1.0230.i.i, %switch.early.test.i.i.while.end.i.i_crit_edge123 ], [ %R1.0230.i.i, %switch.early.test.i.i.while.end.i.i_crit_edge124 ], [ %R1.0230.i.i, %switch.early.test.i.i.while.end.i.i_crit_edge125 ], [ %R1.0230.i.i, %switch.early.test.i.i.while.end.i.i_crit_edge126 ], [ %56, %while.body.i.i.while.end.i.i_crit_edge ]
  %count.0.lcssa.i.i = phi i16 [ %count.0231.i.i, %switch.early.test.i.i.while.end.i.i_crit_edge ], [ %count.0231.i.i, %switch.early.test.i.i.while.end.i.i_crit_edge123 ], [ %count.0231.i.i, %switch.early.test.i.i.while.end.i.i_crit_edge124 ], [ %count.0231.i.i, %switch.early.test.i.i.while.end.i.i_crit_edge125 ], [ %count.0231.i.i, %switch.early.test.i.i.while.end.i.i_crit_edge126 ], [ %inc.i.i, %while.body.i.i.while.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -15536, i16 %count.0.lcssa.i.i)
  %cmp35.i.i = icmp ugt i16 %count.0.lcssa.i.i, -15536
  br i1 %cmp35.i.i, label %do.end39.i.i, label %while.end.i.i.for.body.i.i_crit_edge

while.end.i.i.for.body.i.i_crit_edge:             ; preds = %while.end.i.i
  br label %for.body.i.i

do.end39.i.i:                                     ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %card.i.i = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 7
  %57 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %card.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %58, i32 0, i32 27
  %59 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.102) #12
  br label %snd_ali_detect_spdif_rate.exit.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc61.i.i = add nuw i16 %count.1233.i.i, 1
  %cmp41.i.i = icmp ult i16 %count.1233.i.i, -15536
  br i1 %cmp41.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %do.end68.i.i

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %while.end.i.i.for.body.i.i_crit_edge
  %count.1233.i.i = phi i16 [ %inc61.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %while.end.i.i.for.body.i.i_crit_edge ]
  %R1.1232.i.i = phi i8 [ %65, %for.cond.i.i.for.body.i.i_crit_edge ], [ %R1.0.lcssa.i.i, %while.end.i.i.for.body.i.i_crit_edge ]
  tail call fastcc void @snd_ali_delay(ptr noundef %1) #9
  %61 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %port.i, align 4
  %add46.i.i = add i32 %62, 117
  %and47.i.i = and i32 %add46.i.i, 1048575
  %add48.i.i = or i32 %and47.i.i, -18874368
  %63 = inttoptr i32 %add48.i.i to ptr
  %64 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %63) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !393
  %65 = and i8 %64, 31
  call void @__sanitizer_cov_trace_cmp1(i8 %65, i8 %R1.1232.i.i)
  %cmp57.not.i.i = icmp eq i8 %65, %R1.1232.i.i
  br i1 %cmp57.not.i.i, label %if.end71.i.i, label %for.cond.i.i

do.end68.i.i:                                     ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %card69.i.i = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 7
  %66 = ptrtoint ptr %card69.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %card69.i.i, align 4
  %dev70.i.i = getelementptr inbounds %struct.snd_card, ptr %67, i32 0, i32 27
  %68 = ptrtoint ptr %dev70.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev70.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.102) #12
  br label %snd_ali_detect_spdif_rate.exit.i

if.end71.i.i:                                     ; preds = %for.body.i.i
  %70 = add nsw i8 %R1.1232.i.i, -11
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %70)
  %71 = icmp ult i8 %70, 4
  br i1 %71, label %if.then79.i.i, label %if.else128.i.i

if.then79.i.i:                                    ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %port.i, align 4
  %add83.i.i = add i32 %73, 118
  %and84.i.i = and i32 %add83.i.i, 1048575
  %add85.i.i = or i32 %and84.i.i, -18874368
  %74 = inttoptr i32 %add85.i.i to ptr
  %75 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %74) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !394
  %76 = and i16 %75, -3872
  %77 = or i16 %76, 1289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !395
  tail call void @arm_heavy_mb() #9
  %78 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %port.i, align 4
  %add100.i.i = add i32 %79, 118
  %and101.i.i = and i32 %add100.i.i, 1048575
  %add102.i.i = or i32 %and101.i.i, -18874368
  %80 = inttoptr i32 %add102.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %80, i16 %77) #9, !srcloc !348
  %81 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %port.i, align 4
  %add107.i.i = add i32 %82, 115
  %and108.i.i = and i32 %add107.i.i, 1048575
  %add109.i.i = or i32 %and108.i.i, -18874368
  %83 = inttoptr i32 %add109.i.i to ptr
  %84 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %83) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !396
  %85 = and i8 %84, -16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !397
  tail call void @arm_heavy_mb() #9
  %86 = or i8 %85, 2
  %87 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %port.i, align 4
  %add124.i.i = add i32 %88, 115
  %and125.i.i = and i32 %add124.i.i, 1048575
  %add126.i.i = or i32 %and125.i.i, -18874368
  %89 = inttoptr i32 %add126.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %89, i8 %86) #9, !srcloc !325
  br label %snd_ali_detect_spdif_rate.exit.i

if.else128.i.i:                                   ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %R1.1232.i.i)
  %cmp130.i.i = icmp eq i8 %R1.1232.i.i, 18
  br i1 %cmp130.i.i, label %if.then132.i.i, label %if.else128.i.i.snd_ali_detect_spdif_rate.exit.i_crit_edge

if.else128.i.i.snd_ali_detect_spdif_rate.exit.i_crit_edge: ; preds = %if.else128.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_ali_detect_spdif_rate.exit.i

if.then132.i.i:                                   ; preds = %if.else128.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %port.i, align 4
  %add136.i.i = add i32 %91, 118
  %and137.i.i = and i32 %add136.i.i, 1048575
  %add138.i.i = or i32 %and137.i.i, -18874368
  %92 = inttoptr i32 %add138.i.i to ptr
  %93 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %92) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !398
  %94 = and i16 %93, -3872
  %95 = or i16 %94, 2062
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !399
  tail call void @arm_heavy_mb() #9
  %96 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %port.i, align 4
  %add153.i.i = add i32 %97, 118
  %and154.i.i = and i32 %add153.i.i, 1048575
  %add155.i.i = or i32 %and154.i.i, -18874368
  %98 = inttoptr i32 %add155.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %98, i16 %95) #9, !srcloc !348
  %99 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %port.i, align 4
  %add160.i.i = add i32 %100, 115
  %and161.i.i = and i32 %add160.i.i, 1048575
  %add162.i.i = or i32 %and161.i.i, -18874368
  %101 = inttoptr i32 %add162.i.i to ptr
  %102 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %101) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !400
  %103 = and i8 %102, -16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !401
  tail call void @arm_heavy_mb() #9
  %104 = or i8 %103, 3
  %105 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %port.i, align 4
  %add177.i.i = add i32 %106, 115
  %and178.i.i = and i32 %add177.i.i, 1048575
  %add179.i.i = or i32 %and178.i.i, -18874368
  %107 = inttoptr i32 %add179.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %107, i8 %104) #9, !srcloc !325
  br label %snd_ali_detect_spdif_rate.exit.i

snd_ali_detect_spdif_rate.exit.i:                 ; preds = %if.then132.i.i, %if.else128.i.i.snd_ali_detect_spdif_rate.exit.i_crit_edge, %if.then79.i.i, %do.end68.i.i, %do.end39.i.i
  %108 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %port.i, align 4
  %add15.i = add i32 %109, 115
  %and16.i = and i32 %add15.i, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %110 = inttoptr i32 %add17.i to ptr
  %111 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %110) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !402
  %112 = and i8 %111, 15
  %conv24.i = zext i8 %112 to i32
  %113 = zext i32 %conv24.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %conv24.i, label %do.end24 [
    i32 0, label %snd_ali_detect_spdif_rate.exit.i.if.end27_crit_edge
    i32 1, label %sw.bb25.i
    i32 2, label %sw.bb26.i
  ]

snd_ali_detect_spdif_rate.exit.i.if.end27_crit_edge: ; preds = %snd_ali_detect_spdif_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

sw.bb25.i:                                        ; preds = %snd_ali_detect_spdif_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

sw.bb26.i:                                        ; preds = %snd_ali_detect_spdif_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

do.end24:                                         ; preds = %snd_ali_detect_spdif_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %card25 = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 7
  %114 = ptrtoint ptr %card25 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %card25, align 4
  %dev26 = getelementptr inbounds %struct.snd_card, ptr %115, i32 0, i32 27
  %116 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev26, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %117, ptr noundef nonnull @.str.98) #12
  br label %if.end27

if.end27:                                         ; preds = %do.end24, %sw.bb26.i, %sw.bb25.i, %snd_ali_detect_spdif_rate.exit.i.if.end27_crit_edge
  %cmp51.not = phi i1 [ false, %snd_ali_detect_spdif_rate.exit.i.if.end27_crit_edge ], [ true, %sw.bb25.i ], [ false, %sw.bb26.i ], [ true, %do.end24 ]
  %rate12.0 = phi i32 [ 180633600, %snd_ali_detect_spdif_rate.exit.i.if.end27_crit_edge ], [ 196608000, %sw.bb25.i ], [ 131072000, %sw.bb26.i ], [ 196608000, %do.end24 ]
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #9
  %118 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %port.i, align 4
  %add = add i32 %119, 116
  %and = and i32 %add, 1048575
  %add29 = or i32 %and, -18874368
  %120 = inttoptr i32 %add29 to ptr
  %121 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %120) #9, !srcloc !341
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !403
  %122 = and i8 %121, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool35.not = icmp eq i8 %122, 0
  br i1 %tobool35.not, label %if.end27.if.end50_crit_edge, label %do.body37

if.end27.if.end50_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

do.body37:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !404
  tail call void @arm_heavy_mb() #9
  %123 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %port.i, align 4
  %add41 = add i32 %124, 116
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %125 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %125, i8 %121) #9, !srcloc !325
  %card48 = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 7
  %126 = ptrtoint ptr %card48 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %card48, align 4
  %dev49 = getelementptr inbounds %struct.snd_card, ptr %127, i32 0, i32 27
  %128 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev49, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %129, ptr noundef nonnull @.str.100) #12
  br label %if.end50

if.end50:                                         ; preds = %do.body37, %if.end27.if.end50_crit_edge
  br i1 %cmp51.not, label %if.end50.if.end57_crit_edge, label %if.then53

if.end50.if.end57_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  %130 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %rate, align 4
  %div = udiv i32 %rate12.0, %131
  %and55 = and i32 %div, 65535
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %if.end50.if.end57_crit_edge, %cond.end.if.end57_crit_edge, %do.end.if.end57_crit_edge
  %Delta.2 = phi i32 [ %cond, %cond.end.if.end57_crit_edge ], [ 4096, %do.end.if.end57_crit_edge ], [ %and55, %if.then53 ], [ %cond, %if.end50.if.end57_crit_edge ]
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %132 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %buffer_size, align 4
  %eso = getelementptr inbounds %struct.snd_ali_voice, ptr %5, i32 0, i32 5
  %134 = ptrtoint ptr %eso to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %eso, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %135 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %period_size, align 4
  %count = getelementptr inbounds %struct.snd_ali_voice, ptr %5, i32 0, i32 6
  %137 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %count, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %138 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %dma_addr, align 8
  %sub = add i32 %133, -1
  %140 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %runtime1, align 4
  %format.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %141, i32 0, i32 12
  %142 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %format.i, align 4
  %call.i = tail call i32 @snd_pcm_format_width(i32 noundef %143) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 16
  %spec.select.i = select i1 %cmp.i, i32 9, i32 1
  %144 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %format.i, align 4
  %call3.i = tail call i32 @snd_pcm_format_unsigned(i32 noundef %145) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i110 = icmp eq i32 %call3.i, 0
  %or5.i = or i32 %spec.select.i, 2
  %CTRL.1.i = select i1 %tobool.not.i110, i32 %or5.i, i32 %spec.select.i
  %channels.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %141, i32 0, i32 15
  %146 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %channels.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %147)
  %cmp7.i = icmp ugt i32 %147, 1
  %or9.i = or i32 %CTRL.1.i, 4
  %CTRL.2.i = select i1 %cmp7.i, i32 %or9.i, i32 %CTRL.1.i
  %148 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %5, align 4
  tail call fastcc void @snd_ali_write_voice_regs(ptr noundef %1, i32 noundef %149, i32 noundef %139, i32 noundef %sub, i32 noundef %Delta.2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %CTRL.2.i)
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #9
  br label %cleanup62

cleanup62:                                        ; preds = %if.end57, %if.then11.cleanup62_crit_edge
  %retval.1 = phi i32 [ 0, %if.end57 ], [ -1, %if.then11.cleanup62_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ali_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %reg_lock = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #9
  %running = getelementptr inbounds %struct.snd_ali_voice, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %running, align 4
  %7 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !405
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  %conv = trunc i32 %9 to i8
  %port = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %add = add i32 %11, 160
  %and = and i32 %add, 1048575
  %add4 = or i32 %and, -18874368
  %12 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv) #9, !srcloc !325
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port, align 4
  %add7 = add i32 %14, 226
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %15 = inttoptr i32 %add9 to ptr
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %15) #9, !srcloc !332
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !406
  %conv12 = zext i16 %17 to i32
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #9
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %18 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buffer_size, align 4
  %rem = urem i32 %conv12, %19
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then
  %retval.0 = phi i32 [ %rem, %do.body ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_ali_delay(ptr nocapture noundef readonly %codec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 200
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #9, !srcloc !314
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !407
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port, align 4
  %add5 = add i32 %6, 200
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %7 = inttoptr i32 %add7 to ptr
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %7) #9, !srcloc !314
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !408
  %add11 = add i32 %4, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add11)
  %cmp3 = icmp ult i32 %9, %add11
  br i1 %cmp3, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %add.i.i = add i32 %11, 200
  %and.i.i = and i32 %add.i.i, 1048575
  %add2.i.i = or i32 %and.i.i, -18874368
  %12 = inttoptr i32 %add2.i.i to ptr
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %12) #9, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !339
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %14, 25
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %add.i1215.i = add i32 %16, 200
  %and.i1316.i = and i32 %add.i1215.i, 1048575
  %add2.i1417.i = or i32 %and.i1316.i, -18874368
  %17 = inttoptr i32 %add2.i1417.i to ptr
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %17) #9, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !339
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %13)
  %cmp.not18.i = icmp eq i32 %18, %13
  br i1 %cmp.not18.i, label %while.body.if.end.i_crit_edge, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.body.if.end.i_crit_edge:                    ; preds = %while.body
  br label %if.end.i

if.end.i:                                         ; preds = %if.end5.i.if.end.i_crit_edge, %while.body.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp3.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp3.i, label %if.end5.i, label %snd_ali_stimer_ready.exit

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #9
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port, align 4
  %add.i12.i = add i32 %21, 200
  %and.i13.i = and i32 %add.i12.i, 1048575
  %add2.i14.i = or i32 %and.i13.i, -18874368
  %22 = inttoptr i32 %add2.i14.i to ptr
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %22) #9, !srcloc !314
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !339
  %cmp.not.i = icmp eq i32 %23, %13
  br i1 %cmp.not.i, label %if.end5.i.if.end.i_crit_edge, label %if.end5.i.if.end_crit_edge

if.end5.i.if.end_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end5.i.if.end.i_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

snd_ali_stimer_ready.exit:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %card.i = getelementptr inbounds %struct.snd_ali, ptr %codec, i32 0, i32 7
  %24 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %25, i32 0, i32 27
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.49) #12
  br label %while.end

if.end:                                           ; preds = %if.end5.i.if.end_crit_edge, %while.body.if.end_crit_edge
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port, align 4
  %add16 = add i32 %29, 200
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %30 = inttoptr i32 %add18 to ptr
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %30) #9, !srcloc !314
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !409
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !410
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !411
  %cmp = icmp ult i32 %32, %add11
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %snd_ali_stimer_ready.exit, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ali_modem_playback_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i.i, align 4
  %runtime1.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i.i, align 4
  %call.i.i = tail call fastcc ptr @snd_ali_alloc_voice(ptr noundef %1, i32 noundef 0, i32 noundef 20) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.snd_ali_modem_open.exit_crit_edge, label %if.end.i

entry.snd_ali_modem_open.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_ali_modem_open.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %substream2.i.i = getelementptr inbounds %struct.snd_ali_voice, ptr %call.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %substream2.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %substream2.i.i, align 4
  %private_data3.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %5 = ptrtoint ptr %private_data3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i.i, ptr %private_data3.i.i, align 8
  %private_free.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 45
  %6 = ptrtoint ptr %private_free.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @snd_ali_pcm_free_substream, ptr %private_free.i.i, align 4
  %hw.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %7 = call ptr @memcpy(ptr %hw.i.i, ptr @snd_ali_modem, i32 64)
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #9
  %call4.i.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 17, i32 noundef 0, i32 noundef 65536) #9
  %8 = ptrtoint ptr %runtime1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime1.i.i, align 4
  %call1.i = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %9, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @snd_ali_modem_open.hw_constraint_rates) #9
  br label %snd_ali_modem_open.exit

snd_ali_modem_open.exit:                          ; preds = %if.end.i, %entry.snd_ali_modem_open.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -11, %entry.snd_ali_modem_open.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ali_modem_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %num_of_codecs = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %num_of_codecs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_of_codecs, align 4
  %sub = add i32 %3, -1
  %arrayidx = getelementptr %struct.snd_ali, ptr %1, i32 0, i32 16, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %conv = trunc i32 %7 to i16
  tail call void @snd_ac97_write(ptr noundef %5, i16 noundef zeroext 64, i16 noundef zeroext %conv) #9
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void @snd_ac97_write(ptr noundef %9, i16 noundef zeroext 70, i16 noundef zeroext 0) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ali_modem_capture_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i.i, align 4
  %runtime1.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i.i, align 4
  %call.i.i = tail call fastcc ptr @snd_ali_alloc_voice(ptr noundef %1, i32 noundef 1, i32 noundef 21) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.snd_ali_modem_open.exit_crit_edge, label %if.end.i

entry.snd_ali_modem_open.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_ali_modem_open.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %substream2.i.i = getelementptr inbounds %struct.snd_ali_voice, ptr %call.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %substream2.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %substream2.i.i, align 4
  %private_data3.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %5 = ptrtoint ptr %private_data3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i.i, ptr %private_data3.i.i, align 8
  %private_free.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 45
  %6 = ptrtoint ptr %private_free.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @snd_ali_pcm_free_substream, ptr %private_free.i.i, align 4
  %hw.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %7 = call ptr @memcpy(ptr %hw.i.i, ptr @snd_ali_modem, i32 64)
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #9
  %call4.i.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 17, i32 noundef 0, i32 noundef 65536) #9
  %8 = ptrtoint ptr %runtime1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime1.i.i, align 4
  %call1.i = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %9, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @snd_ali_modem_open.hw_constraint_rates) #9
  br label %snd_ali_modem_open.exit

snd_ali_modem_open.exit:                          ; preds = %if.end.i, %entry.snd_ali_modem_open.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -11, %entry.snd_ali_modem_open.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ali_proc_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %port = getelementptr inbounds %struct.snd_ali, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.08 = phi i32 [ 0, %entry ], [ %add4, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %add = add i32 %5, %i.08
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %6 = inttoptr i32 %add2 to ptr
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #9, !srcloc !314
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !412
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.107, i32 noundef %i.08, i32 noundef %8) #9
  %add4 = add nuw nsw i32 %i.08, 4
  %cmp = icmp ult i32 %i.08, 252
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ali_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %image = getelementptr inbounds %struct.snd_ali, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %image, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %6 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 768, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  %num_of_codecs = getelementptr inbounds %struct.snd_ali, ptr %3, i32 0, i32 14
  %7 = ptrtoint ptr %num_of_codecs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_of_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp119.not = icmp eq i32 %8, 0
  br i1 %cmp119.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0120 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.snd_ali, ptr %3, i32 0, i32 16, i32 %i.0120
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  tail call void @snd_ac97_suspend(ptr noundef %10) #9
  %inc = add nuw i32 %i.0120, 1
  %11 = ptrtoint ptr %num_of_codecs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_of_codecs, align 4
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %reg_lock = getelementptr inbounds %struct.snd_ali, ptr %3, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #9
  %port = getelementptr inbounds %struct.snd_ali, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port, align 4
  %add = add i32 %14, 176
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %15 = inttoptr i32 %add1 to ptr
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %15) #9, !srcloc !314
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !413
  %arrayidx4 = getelementptr [56 x i32], ptr %5, i32 0, i32 44
  %18 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx4, align 4
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port, align 4
  %add7 = add i32 %20, 132
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %21 = inttoptr i32 %add9 to ptr
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %21) #9, !srcloc !314
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !414
  %arrayidx14 = getelementptr [56 x i32], ptr %5, i32 0, i32 33
  %24 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx14, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !415
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port, align 4
  %add16 = add i32 %26, 176
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %27 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %27, i32 0) #9, !srcloc !317
  br label %for.body22

for.body22:                                       ; preds = %for.inc39.for.body22_crit_edge, %for.end
  %i.1121 = phi i32 [ 0, %for.end ], [ %inc40, %for.inc39.for.body22_crit_edge ]
  %mul = shl i32 %i.1121, 2
  %28 = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %mul, label %if.end27 [
    i32 176, label %for.body22.for.inc39_crit_edge
    i32 132, label %for.body22.for.inc39_crit_edge126
  ]

for.body22.for.inc39_crit_edge126:                ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc39

for.body22.for.inc39_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc39

if.end27:                                         ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port, align 4
  %add31 = add i32 %30, %mul
  %and32 = and i32 %add31, 1048575
  %add33 = or i32 %and32, -18874368
  %31 = inttoptr i32 %add33 to ptr
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %31) #9, !srcloc !314
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !416
  %arrayidx38 = getelementptr [56 x i32], ptr %5, i32 0, i32 %i.1121
  %34 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx38, align 4
  br label %for.inc39

for.inc39:                                        ; preds = %if.end27, %for.body22.for.inc39_crit_edge, %for.body22.for.inc39_crit_edge126
  %inc40 = add nuw nsw i32 %i.1121, 1
  %exitcond.not = icmp eq i32 %inc40, 56
  br i1 %exitcond.not, label %for.inc39.do.body45_crit_edge, label %for.inc39.for.body22_crit_edge

for.inc39.for.body22_crit_edge:                   ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body22

for.inc39.do.body45_crit_edge:                    ; preds = %for.inc39
  br label %do.body45

do.body45:                                        ; preds = %do.body45.do.body45_crit_edge, %for.inc39.do.body45_crit_edge
  %i.2123 = phi i32 [ %inc73, %do.body45.do.body45_crit_edge ], [ 0, %for.inc39.do.body45_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !417
  tail call void @arm_heavy_mb() #9
  %conv = trunc i32 %i.2123 to i8
  %35 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port, align 4
  %add49 = add i32 %36, 160
  %and50 = and i32 %add49, 1048575
  %add51 = or i32 %and50, -18874368
  %37 = inttoptr i32 %add51 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %conv) #9, !srcloc !325
  %38 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port, align 4
  %add61 = add i32 %39, 224
  %and62 = and i32 %add61, 1048575
  %add63 = or i32 %and62, -18874368
  %40 = inttoptr i32 %add63 to ptr
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %40) #9, !srcloc !314
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !418
  %arrayidx68 = getelementptr %struct.snd_ali_image, ptr %5, i32 0, i32 1, i32 %i.2123, i32 0
  %43 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx68, align 4
  %44 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port, align 4
  %add61.1 = add i32 %45, 228
  %and62.1 = and i32 %add61.1, 1048575
  %add63.1 = or i32 %and62.1, -18874368
  %46 = inttoptr i32 %add63.1 to ptr
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %46) #9, !srcloc !314
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !418
  %arrayidx68.1 = getelementptr %struct.snd_ali_image, ptr %5, i32 0, i32 1, i32 %i.2123, i32 1
  %49 = ptrtoint ptr %arrayidx68.1 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx68.1, align 4
  %50 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port, align 4
  %add61.2 = add i32 %51, 232
  %and62.2 = and i32 %add61.2, 1048575
  %add63.2 = or i32 %and62.2, -18874368
  %52 = inttoptr i32 %add63.2 to ptr
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %52) #9, !srcloc !314
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !418
  %arrayidx68.2 = getelementptr %struct.snd_ali_image, ptr %5, i32 0, i32 1, i32 %i.2123, i32 2
  %55 = ptrtoint ptr %arrayidx68.2 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx68.2, align 4
  %56 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port, align 4
  %add61.3 = add i32 %57, 236
  %and62.3 = and i32 %add61.3, 1048575
  %add63.3 = or i32 %and62.3, -18874368
  %58 = inttoptr i32 %add63.3 to ptr
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %58) #9, !srcloc !314
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !418
  %arrayidx68.3 = getelementptr %struct.snd_ali_image, ptr %5, i32 0, i32 1, i32 %i.2123, i32 3
  %61 = ptrtoint ptr %arrayidx68.3 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %arrayidx68.3, align 4
  %62 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %port, align 4
  %add61.4 = add i32 %63, 240
  %and62.4 = and i32 %add61.4, 1048575
  %add63.4 = or i32 %and62.4, -18874368
  %64 = inttoptr i32 %add63.4 to ptr
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %64) #9, !srcloc !314
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !418
  %arrayidx68.4 = getelementptr %struct.snd_ali_image, ptr %5, i32 0, i32 1, i32 %i.2123, i32 4
  %67 = ptrtoint ptr %arrayidx68.4 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %arrayidx68.4, align 4
  %68 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port, align 4
  %add61.5 = add i32 %69, 244
  %and62.5 = and i32 %add61.5, 1048575
  %add63.5 = or i32 %and62.5, -18874368
  %70 = inttoptr i32 %add63.5 to ptr
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %70) #9, !srcloc !314
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !418
  %arrayidx68.5 = getelementptr %struct.snd_ali_image, ptr %5, i32 0, i32 1, i32 %i.2123, i32 5
  %73 = ptrtoint ptr %arrayidx68.5 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %arrayidx68.5, align 4
  %74 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %port, align 4
  %add61.6 = add i32 %75, 248
  %and62.6 = and i32 %add61.6, 1048575
  %add63.6 = or i32 %and62.6, -18874368
  %76 = inttoptr i32 %add63.6 to ptr
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %76) #9, !srcloc !314
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !418
  %arrayidx68.6 = getelementptr %struct.snd_ali_image, ptr %5, i32 0, i32 1, i32 %i.2123, i32 6
  %79 = ptrtoint ptr %arrayidx68.6 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %arrayidx68.6, align 4
  %80 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %port, align 4
  %add61.7 = add i32 %81, 252
  %and62.7 = and i32 %add61.7, 1048575
  %add63.7 = or i32 %and62.7, -18874368
  %82 = inttoptr i32 %add63.7 to ptr
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %82) #9, !srcloc !314
  %84 = tail call i32 @llvm.bswap.i32(i32 %83)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !418
  %arrayidx68.7 = getelementptr %struct.snd_ali_image, ptr %5, i32 0, i32 1, i32 %i.2123, i32 7
  %85 = ptrtoint ptr %arrayidx68.7 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %arrayidx68.7, align 4
  %inc73 = add nuw nsw i32 %i.2123, 1
  %exitcond125.not = icmp eq i32 %inc73, 32
  br i1 %exitcond125.not, label %do.body75, label %do.body45.do.body45_crit_edge

do.body45.do.body45_crit_edge:                    ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body45

do.body75:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !419
  tail call void @arm_heavy_mb() #9
  %86 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %port, align 4
  %add79 = add i32 %87, 132
  %and80 = and i32 %add79, 1048575
  %add81 = or i32 %and80, -18874368
  %88 = inttoptr i32 %add81 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %88, i32 -1) #9, !srcloc !317
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body75, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ali_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %image = getelementptr inbounds %struct.snd_ali, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %image, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_lock = getelementptr inbounds %struct.snd_ali, ptr %3, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #9
  %port = getelementptr inbounds %struct.snd_ali, ptr %3, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end
  %i.0113 = phi i32 [ 0, %if.end ], [ %inc18, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !420
  tail call void @arm_heavy_mb() #9
  %conv = trunc i32 %i.0113 to i8
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %add = add i32 %7, 160
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %8 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv) #9, !srcloc !325
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !421
  tail call void @arm_heavy_mb() #9
  %arrayidx10 = getelementptr %struct.snd_ali_image, ptr %5, i32 0, i32 1, i32 %i.0113, i32 0
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx10, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add13 = add i32 %13, 224
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %14 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %11) #9, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !421
  tail call void @arm_heavy_mb() #9
  %arrayidx10.1 = getelementptr %struct.snd_ali_image, ptr %5, i32 0, i32 1, i32 %i.0113, i32 1
  %15 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx10.1, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %add13.1 = add i32 %19, 228
  %and14.1 = and i32 %add13.1, 1048575
  %add15.1 = or i32 %and14.1, -18874368
  %20 = inttoptr i32 %add15.1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 %17) #9, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !421
  tail call void @arm_heavy_mb() #9
  %arrayidx10.2 = getelementptr %struct.snd_ali_image, ptr %5, i32 0, i32 1, i32 %i.0113, i32 2
  %21 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx10.2, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 4
  %add13.2 = add i32 %25, 232
  %and14.2 = and i32 %add13.2, 1048575
  %add15.2 = or i32 %and14.2, -18874368
  %26 = inttoptr i32 %add15.2 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %26, i32 %23) #9, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !421
  tail call void @arm_heavy_mb() #9
  %arrayidx10.3 = getelementptr %struct.snd_ali_image, ptr %5, i32 0, i32 1, i32 %i.0113, i32 3
  %27 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx10.3, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port, align 4
  %add13.3 = add i32 %31, 236
  %and14.3 = and i32 %add13.3, 1048575
  %add15.3 = or i32 %and14.3, -18874368
  %32 = inttoptr i32 %add15.3 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %32, i32 %29) #9, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !421
  tail call void @arm_heavy_mb() #9
  %arrayidx10.4 = getelementptr %struct.snd_ali_image, ptr %5, i32 0, i32 1, i32 %i.0113, i32 4
  %33 = ptrtoint ptr %arrayidx10.4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx10.4, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port, align 4
  %add13.4 = add i32 %37, 240
  %and14.4 = and i32 %add13.4, 1048575
  %add15.4 = or i32 %and14.4, -18874368
  %38 = inttoptr i32 %add15.4 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %38, i32 %35) #9, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !421
  tail call void @arm_heavy_mb() #9
  %arrayidx10.5 = getelementptr %struct.snd_ali_image, ptr %5, i32 0, i32 1, i32 %i.0113, i32 5
  %39 = ptrtoint ptr %arrayidx10.5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx10.5, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port, align 4
  %add13.5 = add i32 %43, 244
  %and14.5 = and i32 %add13.5, 1048575
  %add15.5 = or i32 %and14.5, -18874368
  %44 = inttoptr i32 %add15.5 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %44, i32 %41) #9, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !421
  tail call void @arm_heavy_mb() #9
  %arrayidx10.6 = getelementptr %struct.snd_ali_image, ptr %5, i32 0, i32 1, i32 %i.0113, i32 6
  %45 = ptrtoint ptr %arrayidx10.6 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx10.6, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port, align 4
  %add13.6 = add i32 %49, 248
  %and14.6 = and i32 %add13.6, 1048575
  %add15.6 = or i32 %and14.6, -18874368
  %50 = inttoptr i32 %add15.6 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %50, i32 %47) #9, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !421
  tail call void @arm_heavy_mb() #9
  %arrayidx10.7 = getelementptr %struct.snd_ali_image, ptr %5, i32 0, i32 1, i32 %i.0113, i32 7
  %51 = ptrtoint ptr %arrayidx10.7 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx10.7, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %54 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port, align 4
  %add13.7 = add i32 %55, 252
  %and14.7 = and i32 %add13.7, 1048575
  %add15.7 = or i32 %and14.7, -18874368
  %56 = inttoptr i32 %add15.7 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %56, i32 %53) #9, !srcloc !317
  %inc18 = add nuw nsw i32 %i.0113, 1
  %exitcond.not = icmp eq i32 %inc18, 32
  br i1 %exitcond.not, label %do.body.for.body23_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body.for.body23_crit_edge:                     ; preds = %do.body
  br label %for.body23

for.body23:                                       ; preds = %for.inc46.for.body23_crit_edge, %do.body.for.body23_crit_edge
  %i.1114 = phi i32 [ %inc47, %for.inc46.for.body23_crit_edge ], [ 0, %do.body.for.body23_crit_edge ]
  %mul24 = shl i32 %i.1114, 2
  %57 = zext i32 %mul24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %mul24, label %do.body36 [
    i32 176, label %for.body23.for.inc46_crit_edge
    i32 132, label %for.body23.for.inc46_crit_edge118
    i32 128, label %for.body23.for.inc46_crit_edge119
  ]

for.body23.for.inc46_crit_edge119:                ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc46

for.body23.for.inc46_crit_edge118:                ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc46

for.body23.for.inc46_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc46

do.body36:                                        ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !422
  tail call void @arm_heavy_mb() #9
  %arrayidx39 = getelementptr [56 x i32], ptr %5, i32 0, i32 %i.1114
  %58 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx39, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %61 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %port, align 4
  %add42 = add i32 %62, %mul24
  %and43 = and i32 %add42, 1048575
  %add44 = or i32 %and43, -18874368
  %63 = inttoptr i32 %add44 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %63, i32 %60) #9, !srcloc !317
  br label %for.inc46

for.inc46:                                        ; preds = %do.body36, %for.body23.for.inc46_crit_edge, %for.body23.for.inc46_crit_edge118, %for.body23.for.inc46_crit_edge119
  %inc47 = add nuw nsw i32 %i.1114, 1
  %exitcond117.not = icmp eq i32 %inc47, 56
  br i1 %exitcond117.not, label %do.body49, label %for.inc46.for.body23_crit_edge

for.inc46.for.body23_crit_edge:                   ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body23

do.body49:                                        ; preds = %for.inc46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !423
  tail call void @arm_heavy_mb() #9
  %arrayidx53 = getelementptr [56 x i32], ptr %5, i32 0, i32 32
  %64 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx53, align 4
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  %67 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %port, align 4
  %add55 = add i32 %68, 128
  %and56 = and i32 %add55, 1048575
  %add57 = or i32 %and56, -18874368
  %69 = inttoptr i32 %add57 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %69, i32 %66) #9, !srcloc !317
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !424
  tail call void @arm_heavy_mb() #9
  %arrayidx63 = getelementptr [56 x i32], ptr %5, i32 0, i32 44
  %70 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx63, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  %73 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %port, align 4
  %add65 = add i32 %74, 176
  %and66 = and i32 %add65, 1048575
  %add67 = or i32 %and66, -18874368
  %75 = inttoptr i32 %add67 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %75, i32 %72) #9, !srcloc !317
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #9
  %num_of_codecs = getelementptr inbounds %struct.snd_ali, ptr %3, i32 0, i32 14
  %76 = ptrtoint ptr %num_of_codecs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_of_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp71115.not = icmp eq i32 %77, 0
  br i1 %cmp71115.not, label %do.body49.for.end77_crit_edge, label %do.body49.for.body73_crit_edge

do.body49.for.body73_crit_edge:                   ; preds = %do.body49
  br label %for.body73

do.body49.for.end77_crit_edge:                    ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end77

for.body73:                                       ; preds = %for.body73.for.body73_crit_edge, %do.body49.for.body73_crit_edge
  %i.2116 = phi i32 [ %inc76, %for.body73.for.body73_crit_edge ], [ 0, %do.body49.for.body73_crit_edge ]
  %arrayidx74 = getelementptr %struct.snd_ali, ptr %3, i32 0, i32 16, i32 %i.2116
  %78 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx74, align 4
  tail call void @snd_ac97_resume(ptr noundef %79) #9
  %inc76 = add nuw i32 %i.2116, 1
  %80 = ptrtoint ptr %num_of_codecs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_of_codecs, align 4
  %cmp71 = icmp ult i32 %inc76, %81
  br i1 %cmp71, label %for.body73.for.body73_crit_edge, label %for.body73.for.end77_crit_edge

for.body73.for.end77_crit_edge:                   ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end77

for.body73.for.body73_crit_edge:                  ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body73

for.end77:                                        ; preds = %for.body73.for.end77_crit_edge, %do.body49.for.end77_crit_edge
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %82 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end77, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
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
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !33, !35, !37, !38, !40, !41, !43, !44, !46, !47, !48, !49, !51, !53, !55, !56, !57, !58, !60, !61, !63, !64, !66, !68, !70, !72, !73, !75, !76, !77, !79, !80, !81, !82, !83, !85, !86, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !154, !156, !158, !159, !160, !161, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !176, !178, !180, !182, !184, !185, !186, !187, !189, !191, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !206, !208, !209, !211, !212, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !243, !244, !245, !247, !248, !250, !251, !253, !254, !256, !257, !258, !260, !261, !262, !264, !266, !268, !269, !270, !272, !273, !274, !276, !277, !278, !280, !281, !282, !283, !285, !286, !288, !290, !292, !294, !296, !298, !300}
!llvm.module.flags = !{!302, !303, !304, !305, !306, !307, !308, !309}
!llvm.ident = !{!310}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/ali5451/ali5451.c", i32 29, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/ali5451/ali5451.c", i32 30, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/ali5451/ali5451.c", i32 31, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/ali5451/ali5451.c", i32 38, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype246, !8, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index247, !11, !"__UNIQUE_ID_index247", i1 false, i1 false}
!11 = !{!"../sound/pci/ali5451/ali5451.c", i32 39, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/ali5451/ali5451.c", i32 40, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype248, !13, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id249, !16, !"__UNIQUE_ID_id249", i1 false, i1 false}
!16 = !{!"../sound/pci/ali5451/ali5451.c", i32 41, i32 1}
!17 = !{ptr @__param_pcm_channels, !18, !"__param_pcm_channels", i1 false, i1 false}
!18 = !{!"../sound/pci/ali5451/ali5451.c", i32 42, i32 1}
!19 = !{ptr @__UNIQUE_ID_pcm_channelstype250, !18, !"__UNIQUE_ID_pcm_channelstype250", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_pcm_channels251, !21, !"__UNIQUE_ID_pcm_channels251", i1 false, i1 false}
!21 = !{!"../sound/pci/ali5451/ali5451.c", i32 43, i32 1}
!22 = !{ptr @__param_spdif, !23, !"__param_spdif", i1 false, i1 false}
!23 = !{!"../sound/pci/ali5451/ali5451.c", i32 44, i32 1}
!24 = !{ptr @__UNIQUE_ID_spdiftype252, !23, !"__UNIQUE_ID_spdiftype252", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_spdif253, !26, !"__UNIQUE_ID_spdif253", i1 false, i1 false}
!26 = !{!"../sound/pci/ali5451/ali5451.c", i32 45, i32 1}
!27 = !{ptr @__param_enable, !28, !"__param_enable", i1 false, i1 false}
!28 = !{!"../sound/pci/ali5451/ali5451.c", i32 49, i32 1}
!29 = !{ptr @__UNIQUE_ID_enabletype254, !28, !"__UNIQUE_ID_enabletype254", i1 false, i1 false}
!30 = !{ptr @__initcall__kmod_snd_ali5451__282_2182_ali5451_driver_init6, !31, !"__initcall__kmod_snd_ali5451__282_2182_ali5451_driver_init6", i1 false, i1 false}
!31 = !{!"../sound/pci/ali5451/ali5451.c", i32 2182, i32 1}
!32 = !{ptr @__exitcall_ali5451_driver_exit, !31, !"__exitcall_ali5451_driver_exit", i1 false, i1 false}
!33 = !{ptr @spdif, !34, !"spdif", i1 false, i1 false}
!34 = !{!"../sound/pci/ali5451/ali5451.c", i32 36, i32 13}
!35 = !{ptr @enable, !36, !"enable", i1 false, i1 false}
!36 = !{!"../sound/pci/ali5451/ali5451.c", i32 48, i32 13}
!37 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!38 = !{ptr @index, !39, !"index", i1 false, i1 false}
!39 = !{!"../sound/pci/ali5451/ali5451.c", i32 33, i32 12}
!40 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!41 = !{ptr @id, !42, !"id", i1 false, i1 false}
!42 = !{!"../sound/pci/ali5451/ali5451.c", i32 34, i32 14}
!43 = !{ptr @__param_str_pcm_channels, !18, !"__param_str_pcm_channels", i1 false, i1 false}
!44 = !{ptr @pcm_channels, !45, !"pcm_channels", i1 false, i1 false}
!45 = !{!"../sound/pci/ali5451/ali5451.c", i32 35, i32 12}
!46 = !{ptr @__param_str_spdif, !23, !"__param_str_spdif", i1 false, i1 false}
!47 = !{ptr @__param_str_enable, !28, !"__param_str_enable", i1 false, i1 false}
!48 = !{ptr @.str, !31, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ali5451_driver, !50, !"ali5451_driver", i1 false, i1 false}
!50 = !{!"../sound/pci/ali5451/ali5451.c", i32 2173, i32 26}
!51 = !{ptr @snd_ali_ids, !52, !"snd_ali_ids", i1 false, i1 false}
!52 = !{!"../sound/pci/ali5451/ali5451.c", i32 251, i32 35}
!53 = !{ptr @.str.1, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/pci/ali5451/ali5451.c", i32 2134, i32 2}
!55 = !{ptr @.str.2, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.3, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @snd_ali_probe.__UNIQUE_ID_ddebug278, !54, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!58 = !{ptr @.str.4, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/pci/ali5451/ali5451.c", i32 2146, i32 2}
!60 = !{ptr @snd_ali_probe.__UNIQUE_ID_ddebug279, !59, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!61 = !{ptr @.str.5, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/pci/ali5451/ali5451.c", i32 2151, i32 2}
!63 = !{ptr @snd_ali_probe.__UNIQUE_ID_ddebug280, !62, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!64 = distinct !{null, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/pci/ali5451/ali5451.c", i32 2158, i32 23}
!66 = !{ptr @.str.7, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/pci/ali5451/ali5451.c", i32 2159, i32 26}
!68 = !{ptr @.str.8, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/pci/ali5451/ali5451.c", i32 2161, i32 26}
!70 = !{ptr @.str.9, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/pci/ali5451/ali5451.c", i32 2164, i32 2}
!72 = !{ptr @snd_ali_probe.__UNIQUE_ID_ddebug281, !71, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!73 = !{ptr @.str.10, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/pci/ali5451/ali5451.c", i32 2033, i32 2}
!75 = !{ptr @.str.11, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @snd_ali_create.__UNIQUE_ID_ddebug277, !74, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!77 = !{ptr @.str.12, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/pci/ali5451/ali5451.c", i32 2041, i32 3}
!79 = !{ptr @.str.13, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.14, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @snd_ali_create._entry, !78, !"_entry", i1 false, i1 false}
!82 = !{ptr @snd_ali_create._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @snd_ali_create.__key, !84, !"__key", i1 false, i1 false}
!84 = !{!"../sound/pci/ali5451/ali5451.c", i32 2046, i32 2}
!85 = !{ptr @.str.15, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @snd_ali_create.__key.16, !87, !"__key", i1 false, i1 false}
!87 = !{!"../sound/pci/ali5451/ali5451.c", i32 2047, i32 2}
!88 = !{ptr @.str.17, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.19, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/pci/ali5451/ali5451.c", i32 2095, i32 3}
!91 = !{ptr @snd_ali_create._entry.18, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @snd_ali_create._entry_ptr.20, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.22, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/pci/ali5451/ali5451.c", i32 2101, i32 3}
!95 = !{ptr @snd_ali_create._entry.21, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @snd_ali_create._entry_ptr.23, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.25, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/pci/ali5451/ali5451.c", i32 2111, i32 3}
!99 = !{ptr @snd_ali_create._entry.24, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @snd_ali_create._entry_ptr.26, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.28, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/pci/ali5451/ali5451.c", i32 2119, i32 3}
!103 = !{ptr @.str.29, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @snd_ali_create._entry.27, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @snd_ali_create._entry_ptr.30, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.31, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/pci/ali5451/ali5451.c", i32 2006, i32 2}
!108 = !{ptr @.str.32, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @snd_ali_resources.__UNIQUE_ID_ddebug275, !107, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!110 = !{ptr @.str.33, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/pci/ali5451/ali5451.c", i32 2015, i32 3}
!112 = !{ptr @snd_ali_resources._entry, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @snd_ali_resources._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.34, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/pci/ali5451/ali5451.c", i32 2020, i32 2}
!116 = !{ptr @snd_ali_resources.__UNIQUE_ID_ddebug276, !115, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!117 = !{ptr @.str.35, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/pci/ali5451/ali5451.c", i32 855, i32 4}
!119 = !{ptr @.str.36, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @snd_ali_update_ptr.__UNIQUE_ID_ddebug263, !118, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!121 = !{ptr @.str.37, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/pci/ali5451/ali5451.c", i32 606, i32 2}
!123 = !{ptr @.str.38, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @snd_ali_stop_voice.__UNIQUE_ID_ddebug262, !122, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!125 = !{ptr @.str.39, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/pci/ali5451/ali5451.c", i32 506, i32 2}
!127 = !{ptr @.str.40, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @snd_ali_disable_voice_irq.__UNIQUE_ID_ddebug258, !126, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!129 = !{ptr @.str.41, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/pci/ali5451/ali5451.c", i32 1933, i32 2}
!131 = !{ptr @.str.42, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @snd_ali_chip_init.__UNIQUE_ID_ddebug273, !130, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!133 = !{ptr @.str.43, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/pci/ali5451/ali5451.c", i32 1936, i32 3}
!135 = !{ptr @snd_ali_chip_init._entry, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @snd_ali_chip_init._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.44, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/pci/ali5451/ali5451.c", i32 1982, i32 2}
!139 = !{ptr @snd_ali_chip_init.__UNIQUE_ID_ddebug274, !138, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!140 = !{ptr @.str.45, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/pci/ali5451/ali5451.c", i32 362, i32 3}
!142 = !{ptr @.str.46, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @snd_ali_codec_peek._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @snd_ali_codec_peek._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.47, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/pci/ali5451/ali5451.c", i32 297, i32 2}
!147 = !{ptr @.str.48, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @snd_ali_codec_ready.__UNIQUE_ID_ddebug255, !146, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!149 = !{ptr @.str.49, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/pci/ali5451/ali5451.c", i32 318, i32 2}
!151 = !{ptr @.str.50, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @snd_ali_stimer_ready._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @snd_ali_stimer_ready._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @snd_ali_mixer.ops, !155, !"ops", i1 false, i1 false}
!155 = !{!"../sound/pci/ali5451/ali5451.c", i32 1791, i32 39}
!156 = !{ptr @.str.51, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/pci/ali5451/ali5451.c", i32 1807, i32 4}
!158 = !{ptr @.str.52, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @snd_ali_mixer._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @snd_ali_mixer._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.53, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/pci/ali5451/ali5451.c", i32 395, i32 2}
!163 = !{ptr @.str.54, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @snd_ali_codec_write.__UNIQUE_ID_ddebug256, !162, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!165 = !{ptr @.str.55, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/pci/ali5451/ali5451.c", i32 330, i32 3}
!167 = !{ptr @.str.56, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @snd_ali_codec_poke._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @snd_ali_codec_poke._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.57, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/pci/ali5451/ali5451.c", i32 411, i32 2}
!172 = !{ptr @.str.58, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @snd_ali_codec_read.__UNIQUE_ID_ddebug257, !171, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!174 = !{ptr @.str.59, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/pci/ali5451/ali5451.c", i32 1779, i32 2}
!176 = !{ptr @.str.60, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/pci/ali5451/ali5451.c", i32 1781, i32 2}
!178 = !{ptr @.str.61, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/pci/ali5451/ali5451.c", i32 1783, i32 2}
!180 = !{ptr @snd_ali5451_mixer_spdif, !181, !"snd_ali5451_mixer_spdif", i1 false, i1 false}
!181 = !{!"../sound/pci/ali5451/ali5451.c", i32 1776, i32 38}
!182 = !{ptr @.str.62, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/pci/ali5451/ali5451.c", i32 1631, i32 3}
!184 = !{ptr @.str.63, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @snd_ali_pcm._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @snd_ali_pcm._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.64, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/pci/ali5451/ali5451.c", i32 1662, i32 12}
!189 = !{ptr @ali_pcms, !190, !"ali_pcms", i1 false, i1 false}
!190 = !{!"../sound/pci/ali5451/ali5451.c", i32 1655, i32 35}
!191 = !{ptr @snd_ali_playback_ops, !192, !"snd_ali_playback_ops", i1 false, i1 false}
!192 = !{!"../sound/pci/ali5451/ali5451.c", i32 1504, i32 33}
!193 = !{ptr @.str.65, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/pci/ali5451/ali5451.c", i32 914, i32 2}
!195 = !{ptr @.str.66, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @snd_ali_alloc_voice.__UNIQUE_ID_ddebug264, !194, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!197 = !{ptr @.str.67, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/pci/ali5451/ali5451.c", i32 921, i32 4}
!199 = !{ptr @snd_ali_alloc_voice._entry, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @snd_ali_alloc_voice._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.68, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/pci/ali5451/ali5451.c", i32 519, i32 3}
!203 = !{ptr @.str.69, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @snd_ali_alloc_pcm_channel._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @snd_ali_alloc_pcm_channel._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.70, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/pci/ali5451/ali5451.c", i32 527, i32 3}
!208 = !{ptr @snd_ali_alloc_pcm_channel.__UNIQUE_ID_ddebug259, !207, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!209 = !{ptr @.str.71, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/pci/ali5451/ali5451.c", i32 538, i32 2}
!211 = !{ptr @.str.72, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @snd_ali_find_free_channel.__UNIQUE_ID_ddebug260, !210, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!213 = !{ptr @.str.73, !210, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.74, !210, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.75, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/pci/ali5451/ali5451.c", i32 554, i32 4}
!217 = !{ptr @snd_ali_find_free_channel._entry, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @snd_ali_find_free_channel._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.77, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/pci/ali5451/ali5451.c", i32 569, i32 4}
!221 = !{ptr @snd_ali_find_free_channel._entry.76, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @snd_ali_find_free_channel._entry_ptr.78, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.80, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/pci/ali5451/ali5451.c", i32 578, i32 2}
!225 = !{ptr @snd_ali_find_free_channel._entry.79, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @snd_ali_find_free_channel._entry_ptr.81, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.82, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/pci/ali5451/ali5451.c", i32 944, i32 2}
!229 = !{ptr @.str.83, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @snd_ali_free_voice.__UNIQUE_ID_ddebug265, !228, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!231 = !{ptr @.str.84, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/pci/ali5451/ali5451.c", i32 586, i32 2}
!233 = !{ptr @.str.85, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @snd_ali_free_channel_pcm.__UNIQUE_ID_ddebug261, !232, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!235 = !{ptr @.str.86, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/pci/ali5451/ali5451.c", i32 592, i32 3}
!237 = !{ptr @snd_ali_free_channel_pcm._entry, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @snd_ali_free_channel_pcm._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @snd_ali_playback, !240, !"snd_ali_playback", i1 false, i1 false}
!240 = !{!"../sound/pci/ali5451/ali5451.c", i32 1400, i32 38}
!241 = !{ptr @.str.87, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/pci/ali5451/ali5451.c", i32 1192, i32 2}
!243 = !{ptr @.str.88, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @snd_ali_playback_prepare.__UNIQUE_ID_ddebug267, !242, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!245 = !{ptr @.str.89, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/pci/ali5451/ali5451.c", i32 1219, i32 2}
!247 = !{ptr @snd_ali_playback_prepare.__UNIQUE_ID_ddebug268, !246, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!248 = !{ptr @.str.90, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/pci/ali5451/ali5451.c", i32 1231, i32 2}
!250 = !{ptr @snd_ali_playback_prepare.__UNIQUE_ID_ddebug269, !249, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!251 = !{ptr @.str.91, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/pci/ali5451/ali5451.c", i32 1232, i32 2}
!253 = !{ptr @snd_ali_playback_prepare.__UNIQUE_ID_ddebug270, !252, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!254 = !{ptr @.str.92, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/pci/ali5451/ali5451.c", i32 1125, i32 2}
!256 = !{ptr @.str.93, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @snd_ali_trigger.__UNIQUE_ID_ddebug266, !255, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!258 = !{ptr @.str.94, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/pci/ali5451/ali5451.c", i32 1373, i32 2}
!260 = !{ptr @.str.95, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @snd_ali_playback_pointer.__UNIQUE_ID_ddebug272, !259, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!262 = !{ptr @snd_ali_capture_ops, !263, !"snd_ali_capture_ops", i1 false, i1 false}
!263 = !{!"../sound/pci/ali5451/ali5451.c", i32 1514, i32 33}
!264 = !{ptr @snd_ali_capture, !265, !"snd_ali_capture", i1 false, i1 false}
!265 = !{!"../sound/pci/ali5451/ali5451.c", i32 1426, i32 38}
!266 = !{ptr @.str.96, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/pci/ali5451/ali5451.c", i32 1286, i32 2}
!268 = !{ptr @.str.97, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @snd_ali_prepare.__UNIQUE_ID_ddebug271, !267, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!270 = !{ptr @.str.98, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/pci/ali5451/ali5451.c", i32 1305, i32 4}
!272 = !{ptr @snd_ali_prepare._entry, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @snd_ali_prepare._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.100, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/pci/ali5451/ali5451.c", i32 1313, i32 4}
!276 = !{ptr @snd_ali_prepare._entry.99, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @snd_ali_prepare._entry_ptr.101, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.102, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/pci/ali5451/ali5451.c", i32 647, i32 3}
!280 = !{ptr @.str.103, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @snd_ali_detect_spdif_rate._entry, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @snd_ali_detect_spdif_rate._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @snd_ali_detect_spdif_rate._entry.104, !284, !"_entry", i1 false, i1 false}
!284 = !{!"../sound/pci/ali5451/ali5451.c", i32 662, i32 3}
!285 = !{ptr @snd_ali_detect_spdif_rate._entry_ptr.105, !284, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @snd_ali_modem_playback_ops, !287, !"snd_ali_modem_playback_ops", i1 false, i1 false}
!287 = !{!"../sound/pci/ali5451/ali5451.c", i32 1586, i32 33}
!288 = !{ptr @snd_ali_modem_open.rates, !289, !"rates", i1 false, i1 false}
!289 = !{!"../sound/pci/ali5451/ali5451.c", i32 1562, i32 28}
!290 = !{ptr @snd_ali_modem_open.hw_constraint_rates, !291, !"hw_constraint_rates", i1 false, i1 false}
!291 = !{!"../sound/pci/ali5451/ali5451.c", i32 1563, i32 49}
!292 = !{ptr @snd_ali_modem, !293, !"snd_ali_modem", i1 false, i1 false}
!293 = !{!"../sound/pci/ali5451/ali5451.c", i32 1537, i32 38}
!294 = !{ptr @snd_ali_modem_capture_ops, !295, !"snd_ali_modem_capture_ops", i1 false, i1 false}
!295 = !{!"../sound/pci/ali5451/ali5451.c", i32 1595, i32 33}
!296 = !{ptr @.str.106, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/pci/ali5451/ali5451.c", i32 1999, i32 36}
!298 = !{ptr @.str.107, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../sound/pci/ali5451/ali5451.c", i32 1994, i32 3}
!300 = !{ptr @ali_pm, !301, !"ali_pm", i1 false, i1 false}
!301 = !{!"../sound/pci/ali5451/ali5451.c", i32 1911, i32 8}
!302 = !{i32 1, !"wchar_size", i32 2}
!303 = !{i32 1, !"min_enum_size", i32 4}
!304 = !{i32 8, !"branch-target-enforcement", i32 0}
!305 = !{i32 8, !"sign-return-address", i32 0}
!306 = !{i32 8, !"sign-return-address-all", i32 0}
!307 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!308 = !{i32 7, !"uwtable", i32 1}
!309 = !{i32 7, !"frame-pointer", i32 2}
!310 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!311 = !{!"auto-init"}
!312 = !{i64 2148204771, i64 2148204776, i64 2148204789, i64 2148204833, i64 2148204867, i64 2148204888}
!313 = !{i8 0, i8 2}
!314 = !{i64 738032}
!315 = !{i64 2154808206}
!316 = !{i64 2154808525}
!317 = !{i64 737614}
!318 = !{i64 2154809498}
!319 = !{i64 2154809817}
!320 = !{i64 2154935336}
!321 = !{i64 2154935884}
!322 = !{i64 2154936432}
!323 = !{i64 2154936980}
!324 = !{i64 2154937486}
!325 = !{i64 737417}
!326 = !{i64 2154938376}
!327 = !{i64 2154939801}
!328 = !{i64 2154940535}
!329 = !{i64 2154864914}
!330 = !{i64 2154865736}
!331 = !{i64 2154866107}
!332 = !{i64 737194}
!333 = !{i64 2154862843}
!334 = !{i64 2154863589}
!335 = !{i64 2154834292}
!336 = !{i64 2154813237}
!337 = !{i64 2154813579}
!338 = !{i64 2154863911}
!339 = !{i64 2154784893}
!340 = !{i64 2154785369}
!341 = !{i64 737812}
!342 = !{i64 2154852998}
!343 = !{i64 2154853273}
!344 = !{i64 2154853754}
!345 = !{i64 2154854029}
!346 = !{i64 2154854909}
!347 = !{i64 2154855219}
!348 = !{i64 736994}
!349 = !{i64 2154806927}
!350 = !{i64 2154807227}
!351 = !{i64 2154796657}
!352 = !{i64 2154858380}
!353 = !{i64 2154858657}
!354 = !{i64 2154857489}
!355 = !{i64 2154857799}
!356 = !{i64 2154805648}
!357 = !{i64 2154805948}
!358 = !{i64 2154856199}
!359 = !{i64 2154856509}
!360 = !{i64 2154847932}
!361 = !{i64 2154848243}
!362 = !{i64 2154848823}
!363 = !{i64 2154849087}
!364 = !{i64 2154849970}
!365 = !{i64 2154850281}
!366 = !{i64 2154888572}
!367 = !{i64 2154850864}
!368 = !{i64 2154851127}
!369 = !{i64 2154851541}
!370 = !{i64 2154851942}
!371 = !{i64 2154852390}
!372 = !{i64 2154880985}
!373 = !{i64 2154881962}
!374 = !{i64 2154882260}
!375 = !{i64 2154882788}
!376 = !{i64 2154902893}
!377 = !{i64 2154903793}
!378 = !{i64 2154821098}
!379 = !{i64 2154823720}
!380 = !{i64 2154873080}
!381 = !{i64 2154873480}
!382 = !{i64 2154873919}
!383 = !{i64 2154874467}
!384 = !{i64 2154875015}
!385 = !{i64 2154875563}
!386 = !{i64 2154876111}
!387 = !{i64 2154876659}
!388 = !{i64 2154846430}
!389 = !{i64 2154846693}
!390 = !{i64 2154837414}
!391 = !{i64 2154837685}
!392 = !{i64 2154838182}
!393 = !{i64 2154840229}
!394 = !{i64 2154842683}
!395 = !{i64 2154842990}
!396 = !{i64 2154843584}
!397 = !{i64 2154843862}
!398 = !{i64 2154844766}
!399 = !{i64 2154845073}
!400 = !{i64 2154845667}
!401 = !{i64 2154845945}
!402 = !{i64 2154847186}
!403 = !{i64 2154900497}
!404 = !{i64 2154900762}
!405 = !{i64 2154906515}
!406 = !{i64 2154907415}
!407 = !{i64 2154835288}
!408 = !{i64 2154836034}
!409 = !{i64 2154836780}
!410 = !{i64 2154837055}
!411 = !{i64 2154836897}
!412 = !{i64 2154943844}
!413 = !{i64 2154916142}
!414 = !{i64 2154916888}
!415 = !{i64 2154917182}
!416 = !{i64 2154918150}
!417 = !{i64 2154918411}
!418 = !{i64 2154919312}
!419 = !{i64 2154919615}
!420 = !{i64 2154920118}
!421 = !{i64 2154920575}
!422 = !{i64 2154921162}
!423 = !{i64 2154921723}
!424 = !{i64 2154922303}
