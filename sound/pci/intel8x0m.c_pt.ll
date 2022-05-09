; ModuleID = '/llk/IR_all_yes/sound/pci/intel8x0m.c_pt.bc'
source_filename = "../sound/pci/intel8x0m.c"
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
%struct.shortname_table = type { i32, ptr }
%struct.ich_reg_info = type { i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.72 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.intel8x0m = type { i32, i32, ptr, ptr, ptr, ptr, i32, [2 x ptr], [2 x %struct.ichdev], i8, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32 }
%struct.ichdev = type { i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_ac97_bus = type { ptr, ptr, ptr, ptr, i16, i8, i32, %struct.spinlock, [2 x [4 x i16]], i16, ptr, [4 x ptr], ptr }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.85, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.85 = type { i32, [28 x i8] }
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
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.73, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.73 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }

@__UNIQUE_ID_author242 = internal constant [54 x i8] c"snd_intel8x0m.author=Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [115 x i8] c"snd_intel8x0m.description=Intel 82801AA,82901AB,i810,i820,i830,i840,i845,MX440; SiS 7013; NVidia MCP/2/2S/3 modems\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [43 x i8] c"snd_intel8x0m.file=sound/pci/snd-intel8x0m\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [26 x i8] c"snd_intel8x0m.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [20 x i8] c"snd_intel8x0m.index\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { i32, [28 x i8] } { i32 -2, [28 x i8] zeroinitializer }, align 32
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [33 x i8] c"snd_intel8x0m.parmtype=index:int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [63 x i8] c"snd_intel8x0m.parm=index:Index value for Intel i8x0 modemcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [17 x i8] c"snd_intel8x0m.id\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [32 x i8] c"snd_intel8x0m.parmtype=id:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [58 x i8] c"snd_intel8x0m.parm=id:ID string for Intel i8x0 modemcard.\00", section ".modinfo", align 1
@__param_str_ac97_clock = internal constant [25 x i8] c"snd_intel8x0m.ac97_clock\00", align 1
@ac97_clock = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ac97_clock = internal constant %struct.kernel_param { ptr @__param_str_ac97_clock, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @ac97_clock } }, section "__param", align 4
@__UNIQUE_ID_ac97_clocktype250 = internal constant [38 x i8] c"snd_intel8x0m.parmtype=ac97_clock:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ac97_clock251 = internal constant [67 x i8] c"snd_intel8x0m.parm=ac97_clock:AC'97 codec clock (0 = auto-detect).\00", section ".modinfo", align 1
@__param_str_enable = internal constant [21 x i8] c"snd_intel8x0m.enable\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype252 = internal constant [35 x i8] c"snd_intel8x0m.parmtype=enable:bool\00", section ".modinfo", align 1
@__initcall__kmod_snd_intel8x0m__253_1237_intel8x0m_driver_init6 = internal global ptr @intel8x0m_driver_init, section ".initcall6.init", align 4
@intel8x0m_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_intel8x0m_ids, ptr @snd_intel8x0m_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @intel8x0m_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_intel8x0m_driver_exit = internal global ptr @intel8x0m_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd_intel8x0m\00", [18 x i8] zeroinitializer }, align 32
@snd_intel8x0m_ids = internal constant { [17 x %struct.pci_device_id], [128 x i8] } { [17 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 9238, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 9254, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 9286, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 9350, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 9414, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 9430, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 9837, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 10205, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 29078, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 29766, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4153, i32 28691, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4318, i32 449, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4318, i32 105, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4318, i32 137, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4318, i32 217, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4130, i32 29806, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [128 x i8] zeroinitializer }, align 32
@intel8x0m_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @intel8x0m_suspend, ptr @intel8x0m_resume, ptr @intel8x0m_suspend, ptr @intel8x0m_resume, ptr @intel8x0m_suspend, ptr @intel8x0m_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ICH-MODEM\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Intel ICH\00", [22 x i8] zeroinitializer }, align 32
@shortnames = internal constant { [17 x %struct.shortname_table], [56 x i8] } { [17 x %struct.shortname_table] [%struct.shortname_table { i32 9238, ptr @.str.5 }, %struct.shortname_table { i32 9254, ptr @.str.6 }, %struct.shortname_table { i32 9288, ptr @.str.7 }, %struct.shortname_table { i32 29078, ptr @.str.8 }, %struct.shortname_table { i32 9350, ptr @.str.9 }, %struct.shortname_table { i32 9414, ptr @.str.10 }, %struct.shortname_table { i32 9430, ptr @.str.11 }, %struct.shortname_table { i32 9837, ptr @.str.12 }, %struct.shortname_table { i32 10205, ptr @.str.13 }, %struct.shortname_table { i32 29766, ptr @.str.14 }, %struct.shortname_table { i32 28691, ptr @.str.15 }, %struct.shortname_table { i32 449, ptr @.str.16 }, %struct.shortname_table { i32 105, ptr @.str.17 }, %struct.shortname_table { i32 137, ptr @.str.18 }, %struct.shortname_table { i32 217, ptr @.str.19 }, %struct.shortname_table { i32 29806, ptr @.str.20 }, %struct.shortname_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" Modem\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s at irq %i\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Intel 82801AA-ICH\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Intel 82901AB-ICH0\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Intel 82801BA-ICH2\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Intel 440MX\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Intel 82801CA-ICH3\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Intel 82801DB-ICH4\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Intel ICH5\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Intel ICH6\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Intel ICH7\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AMD AMD768\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SiS SI7013\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"NVidia nForce\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"NVidia nForce2\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"NVidia nForce2s\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"NVidia nForce3\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AMD AMD8111\00", [20 x i8] zeroinitializer }, align 32
@snd_intel8x0m_init.intel_regs = internal constant { [2 x %struct.ich_reg_info], [16 x i8] } { [2 x %struct.ich_reg_info] [%struct.ich_reg_info { i32 2, i32 0 }, %struct.ich_reg_info { i32 4, i32 16 }], [16 x i8] zeroinitializer }, align 32
@snd_intel8x0m_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->reg_lock\00", [16 x i8] zeroinitializer }, align 32
@snd_intel8x0m_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.24, i32 1144, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to grab IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_intel8x0m_init\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sound/pci/intel8x0m.c\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_intel8x0m_init._entry_ptr = internal global ptr @snd_intel8x0m_init._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@snd_intel8x0m_ich_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.24, i32 869, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"AC'97 warm reset still in progress? [0x%x]\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"snd_intel8x0m_ich_chip_init\00", [36 x i8] zeroinitializer }, align 32
@snd_intel8x0m_ich_chip_init._entry_ptr = internal global ptr @snd_intel8x0m_ich_chip_init._entry, section ".printk_index", align 4
@snd_intel8x0m_ich_chip_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.24, i32 890, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"codec_ready: codec is not ready [0x%x]\0A\00", [56 x i8] zeroinitializer }, align 32
@snd_intel8x0m_ich_chip_init._entry_ptr.31 = internal global ptr @snd_intel8x0m_ich_chip_init._entry.29, section ".printk_index", align 4
@get_ich_codec_bit.codec_bit = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 256, i32 512, i32 268435456], [20 x i8] zeroinitializer }, align 32
@snd_intel8x0m_mixer.ops = internal constant { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr null, ptr null, ptr @snd_intel8x0m_codec_write, ptr @snd_intel8x0m_codec_read, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snd_intel8x0m_mixer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.24, i32 817, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to initialize codec #%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snd_intel8x0m_mixer\00", [44 x i8] zeroinitializer }, align 32
@snd_intel8x0m_mixer._entry_ptr = internal global ptr @snd_intel8x0m_mixer._entry, section ".printk_index", align 4
@snd_intel8x0m_codec_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.24, i32 325, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"codec_write %d: semaphore is not ready for register 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snd_intel8x0m_codec_write\00", [38 x i8] zeroinitializer }, align 32
@snd_intel8x0m_codec_write._entry_ptr = internal global ptr @snd_intel8x0m_codec_write._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@snd_intel8x0m_codec_semaphore._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.24, i32 309, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"codec_semaphore: semaphore is not ready [0x%x][0x%x]\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"snd_intel8x0m_codec_semaphore\00", [34 x i8] zeroinitializer }, align 32
@snd_intel8x0m_codec_semaphore._entry_ptr = internal global ptr @snd_intel8x0m_codec_semaphore._entry, section ".printk_index", align 4
@snd_intel8x0m_codec_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.24, i32 341, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"codec_read %d: semaphore is not ready for register 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_intel8x0m_codec_read\00", [39 x i8] zeroinitializer }, align 32
@snd_intel8x0m_codec_read._entry_ptr = internal global ptr @snd_intel8x0m_codec_read._entry, section ".printk_index", align 4
@snd_intel8x0m_codec_read._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.24, i32 353, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"codec_read %d: read timeout for register 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@snd_intel8x0m_codec_read._entry_ptr.42 = internal global ptr @snd_intel8x0m_codec_read._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Modem\00", [26 x i8] zeroinitializer }, align 32
@snd_intel8x0m_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_intel8x0m_playback_open, ptr @snd_intel8x0m_playback_close, ptr null, ptr null, ptr null, ptr @snd_intel8x0m_pcm_prepare, ptr @snd_intel8x0m_pcm_trigger, ptr null, ptr @snd_intel8x0m_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_intel8x0m_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_intel8x0m_capture_open, ptr @snd_intel8x0m_capture_close, ptr null, ptr null, ptr null, ptr @snd_intel8x0m_pcm_prepare, ptr @snd_intel8x0m_pcm_trigger, ptr null, ptr @snd_intel8x0m_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_intel8x0m_pcm_open.rates = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 8000, i32 9600, i32 12000, i32 16000], [16 x i8] zeroinitializer }, align 32
@snd_intel8x0m_pcm_open.hw_constraints_rates = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @snd_intel8x0m_pcm_open.rates, i32 4, i32 0 }, [20 x i8] zeroinitializer }, align 32
@snd_intel8x0m_stream = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 852227, i64 4, i32 -2147483638, i32 8000, i32 16000, i32 1, i32 1, i32 65536, i32 32, i32 65536, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Intel ICH - %s\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s - %s\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"intel8x0m\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Intel8x0m\0A\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Global control        : 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Global status         : 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AC'97 codecs ready    :%s%s%s%s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" primary\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" secondary\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" tertiary\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" none\00", [26 x i8] zeroinitializer }, align 32
@intel8x0m_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.24, i32 996, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unable to grab IRQ %d, disabling device\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"intel8x0m_resume\00", [47 x i8] zeroinitializer }, align 32
@intel8x0m_resume._entry_ptr = internal global ptr @intel8x0m_resume._entry, section ".printk_index", align 4
@switch.table.snd_intel8x0m_pcm_trigger = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\00\11\11\10\11\00\11", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 16, i64 105, i64 137, i64 217, i64 449, i64 9238, i64 9254, i64 9288, i64 9350, i64 9414, i64 9430, i64 9837, i64 10205, i64 28691, i64 29078, i64 29766, i64 29806]
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 29, i32 12 }
@___asan_gen_.61 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 30, i32 14 }
@___asan_gen_.64 = private unnamed_addr constant [11 x i8] c"ac97_clock\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 31, i32 12 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 41, i32 13 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"intel8x0m_driver\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1228, i32 26 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1237, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant [18 x i8] c"snd_intel8x0m_ids\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 192, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant [13 x i8] c"intel8x0m_pm\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1009, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1195, i32 23 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1196, i32 26 }
@___asan_gen_.88 = private unnamed_addr constant [11 x i8] c"shortnames\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1158, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1203, i32 25 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1218, i32 26 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1159, i32 35 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1160, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1161, i32 35 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1162, i32 33 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1163, i32 35 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1164, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1165, i32 35 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1166, i32 33 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1167, i32 33 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1168, i32 12 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1169, i32 27 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1170, i32 37 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1171, i32 37 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1172, i32 38 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1173, i32 37 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1174, i32 12 }
@___asan_gen_.145 = private unnamed_addr constant [11 x i8] c"intel_regs\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1055, i32 35 }
@___asan_gen_.148 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1065, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1144, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 868, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 888, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant [10 x i8] c"codec_bit\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 276, i32 28 }
@___asan_gen_.190 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 790, i32 39 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 816, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 323, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 307, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 339, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 351, i32 5 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 715, i32 13 }
@___asan_gen_.238 = private unnamed_addr constant [27 x i8] c"snd_intel8x0m_playback_ops\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 648, i32 33 }
@___asan_gen_.241 = private unnamed_addr constant [26 x i8] c"snd_intel8x0m_capture_ops\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 656, i32 33 }
@___asan_gen_.244 = private unnamed_addr constant [6 x i8] c"rates\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 598, i32 28 }
@___asan_gen_.247 = private unnamed_addr constant [21 x i8] c"hw_constraints_rates\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 599, i32 49 }
@___asan_gen_.250 = private unnamed_addr constant [21 x i8] c"snd_intel8x0m_stream\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 574, i32 38 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 682, i32 17 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 700, i32 22 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1037, i32 35 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1021, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1025, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1027, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1028, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.295 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.296 = private constant [25 x i8] c"../sound/pci/intel8x0m.c\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 995, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant [39 x i8] c"switch.table.snd_intel8x0m_pcm_trigger\00", align 1
@llvm.compiler.used = appending global [108 x ptr] [ptr @__UNIQUE_ID_ac97_clock251, ptr @__UNIQUE_ID_ac97_clocktype250, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_enabletype252, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_license245, ptr @__exitcall_intel8x0m_driver_exit, ptr @__initcall__kmod_snd_intel8x0m__253_1237_intel8x0m_driver_init6, ptr @__param_ac97_clock, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @intel8x0m_driver_exit, ptr @intel8x0m_resume._entry, ptr @intel8x0m_resume._entry_ptr, ptr @snd_intel8x0m_codec_read._entry, ptr @snd_intel8x0m_codec_read._entry.40, ptr @snd_intel8x0m_codec_read._entry_ptr, ptr @snd_intel8x0m_codec_read._entry_ptr.42, ptr @snd_intel8x0m_codec_semaphore._entry, ptr @snd_intel8x0m_codec_semaphore._entry_ptr, ptr @snd_intel8x0m_codec_write._entry, ptr @snd_intel8x0m_codec_write._entry_ptr, ptr @snd_intel8x0m_ich_chip_init._entry, ptr @snd_intel8x0m_ich_chip_init._entry.29, ptr @snd_intel8x0m_ich_chip_init._entry_ptr, ptr @snd_intel8x0m_ich_chip_init._entry_ptr.31, ptr @snd_intel8x0m_init._entry, ptr @snd_intel8x0m_init._entry_ptr, ptr @snd_intel8x0m_mixer._entry, ptr @snd_intel8x0m_mixer._entry_ptr, ptr @index, ptr @id, ptr @ac97_clock, ptr @enable, ptr @intel8x0m_driver, ptr @.str, ptr @snd_intel8x0m_ids, ptr @intel8x0m_pm, ptr @.str.1, ptr @.str.2, ptr @shortnames, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @snd_intel8x0m_init.intel_regs, ptr @snd_intel8x0m_init.__key, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @get_ich_codec_bit.codec_bit, ptr @snd_intel8x0m_mixer.ops, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @snd_intel8x0m_playback_ops, ptr @snd_intel8x0m_capture_ops, ptr @snd_intel8x0m_pcm_open.rates, ptr @snd_intel8x0m_pcm_open.hw_constraints_rates, ptr @snd_intel8x0m_stream, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @switch.table.snd_intel8x0m_pcm_trigger], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac97_clock to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel8x0m_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0m_ids to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel8x0m_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shortnames to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0m_init.intel_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0m_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0m_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0m_ich_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0m_ich_chip_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_ich_codec_bit.codec_bit to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0m_mixer.ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0m_mixer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0m_codec_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0m_codec_semaphore._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0m_codec_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0m_codec_read._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0m_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0m_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0m_pcm_open.rates to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0m_pcm_open.hw_constraints_rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_intel8x0m_stream to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel8x0m_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_intel8x0m_pcm_trigger to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @intel8x0m_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @intel8x0m_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @intel8x0m_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @intel8x0m_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_intel8x0m_probe(ptr noundef %pci, ptr nocapture noundef readonly %pci_id) #2 align 64 {
entry:
  %pcm.i.i = alloca ptr, align 4
  %name.i.i = alloca [32 x i8], align 1
  %pbus.i = alloca ptr, align 4
  %ac97.i = alloca %struct.snd_ac97_template, align 4
  %x97.i = alloca ptr, align 4
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #10
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !186
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %1 = load i32, ptr @index, align 4
  %2 = load ptr, ptr @id, align 4
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %1, ptr noundef %2, ptr noundef null, i32 noundef 288, ptr noundef nonnull %card) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data, align 8
  %driver = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 2
  %7 = call ptr @memcpy(ptr %driver, ptr @.str.1, i32 10)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 3
  %8 = call ptr @memcpy(ptr %shortname, ptr @.str.2, i32 10)
  %device = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 8
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %device, align 2
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i16 %10, label %if.end.for.end_crit_edge [
    i16 9238, label %if.end.if.then7_crit_edge
    i16 9254, label %if.then7.fold.split
    i16 9288, label %if.then7.fold.split78
    i16 29078, label %if.then7.fold.split79
    i16 9350, label %if.then7.fold.split80
    i16 9414, label %if.then7.fold.split81
    i16 9430, label %if.then7.fold.split82
    i16 9837, label %if.then7.fold.split83
    i16 10205, label %if.then7.fold.split84
    i16 29766, label %if.then7.fold.split85
    i16 28691, label %if.then7.fold.split86
    i16 449, label %if.then7.fold.split87
    i16 105, label %if.then7.fold.split88
    i16 137, label %if.then7.fold.split89
    i16 217, label %if.then7.fold.split90
    i16 29806, label %if.then7.fold.split91
  ]

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then7.fold.split:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.then7.fold.split78:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.then7.fold.split79:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.then7.fold.split80:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.then7.fold.split81:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.then7.fold.split82:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.then7.fold.split83:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.then7.fold.split84:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.then7.fold.split85:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.then7.fold.split86:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.then7.fold.split87:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.then7.fold.split88:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.then7.fold.split89:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.then7.fold.split90:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.then7.fold.split91:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.then7:                                         ; preds = %if.then7.fold.split91, %if.then7.fold.split90, %if.then7.fold.split89, %if.then7.fold.split88, %if.then7.fold.split87, %if.then7.fold.split86, %if.then7.fold.split85, %if.then7.fold.split84, %if.then7.fold.split83, %if.then7.fold.split82, %if.then7.fold.split81, %if.then7.fold.split80, %if.then7.fold.split79, %if.then7.fold.split78, %if.then7.fold.split, %if.end.if.then7_crit_edge
  %name.076.lcssa = phi ptr [ @shortnames, %if.end.if.then7_crit_edge ], [ getelementptr inbounds ([17 x %struct.shortname_table], ptr @shortnames, i32 0, i32 1), %if.then7.fold.split ], [ getelementptr inbounds ([17 x %struct.shortname_table], ptr @shortnames, i32 0, i32 2), %if.then7.fold.split78 ], [ getelementptr inbounds ([17 x %struct.shortname_table], ptr @shortnames, i32 0, i32 3), %if.then7.fold.split79 ], [ getelementptr inbounds ([17 x %struct.shortname_table], ptr @shortnames, i32 0, i32 4), %if.then7.fold.split80 ], [ getelementptr inbounds ([17 x %struct.shortname_table], ptr @shortnames, i32 0, i32 5), %if.then7.fold.split81 ], [ getelementptr inbounds ([17 x %struct.shortname_table], ptr @shortnames, i32 0, i32 6), %if.then7.fold.split82 ], [ getelementptr inbounds ([17 x %struct.shortname_table], ptr @shortnames, i32 0, i32 7), %if.then7.fold.split83 ], [ getelementptr inbounds ([17 x %struct.shortname_table], ptr @shortnames, i32 0, i32 8), %if.then7.fold.split84 ], [ getelementptr inbounds ([17 x %struct.shortname_table], ptr @shortnames, i32 0, i32 9), %if.then7.fold.split85 ], [ getelementptr inbounds ([17 x %struct.shortname_table], ptr @shortnames, i32 0, i32 10), %if.then7.fold.split86 ], [ getelementptr inbounds ([17 x %struct.shortname_table], ptr @shortnames, i32 0, i32 11), %if.then7.fold.split87 ], [ getelementptr inbounds ([17 x %struct.shortname_table], ptr @shortnames, i32 0, i32 12), %if.then7.fold.split88 ], [ getelementptr inbounds ([17 x %struct.shortname_table], ptr @shortnames, i32 0, i32 13), %if.then7.fold.split89 ], [ getelementptr inbounds ([17 x %struct.shortname_table], ptr @shortnames, i32 0, i32 14), %if.then7.fold.split90 ], [ getelementptr inbounds ([17 x %struct.shortname_table], ptr @shortnames, i32 0, i32 15), %if.then7.fold.split91 ]
  %s = getelementptr inbounds %struct.shortname_table, ptr %name.076.lcssa, i32 0, i32 1
  %12 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s, align 4
  %call10 = call ptr @strcpy(ptr noundef %shortname, ptr noundef %13) #13
  br label %for.end

for.end:                                          ; preds = %if.then7, %if.end.for.end_crit_edge
  %strlen = call i32 @strlen(ptr noundef %shortname) #13
  %endptr = getelementptr i8, ptr %shortname, i32 %strlen
  %14 = call ptr @memcpy(ptr %endptr, ptr @.str.3, i32 7)
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %pci_id, i32 0, i32 6
  %15 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %driver_data, align 4
  %17 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private_data, align 8
  %call.i = call i32 @pcim_enable_device(ptr noundef %pci) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %for.end.cleanup_crit_edge, label %do.body.i

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.i:                                        ; preds = %for.end
  %reg_lock.i = getelementptr inbounds %struct.intel8x0m, ptr %18, i32 0, i32 12
  call void @__raw_spin_lock_init(ptr noundef %reg_lock.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @snd_intel8x0m_init.__key, i16 noundef signext 3) #10
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %18, align 4
  %card3.i = getelementptr inbounds %struct.intel8x0m, ptr %18, i32 0, i32 5
  %20 = ptrtoint ptr %card3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %4, ptr %card3.i, align 4
  %pci4.i = getelementptr inbounds %struct.intel8x0m, ptr %18, i32 0, i32 4
  %21 = ptrtoint ptr %pci4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %pci, ptr %pci4.i, align 4
  %irq.i = getelementptr inbounds %struct.intel8x0m, ptr %18, i32 0, i32 1
  %22 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %irq.i, align 4
  %call5.i = call i32 @pci_request_regions(ptr noundef %pci, ptr noundef %shortname) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %do.body.i.cleanup_crit_edge, label %if.end8.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp9.i = icmp eq i32 %16, 2
  br i1 %cmp9.i, label %if.end8.i.for.body.lr.ph.i_crit_edge, label %if.else.i

if.end8.i.for.body.lr.ph.i_crit_edge:             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.lr.ph.i

if.else.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 2, i32 3
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i, align 4
  %and.i = lshr i32 %24, 8
  %25 = and i32 %and.i, 2
  %call15.i = call ptr @pcim_iomap(ptr noundef %pci, i32 noundef %25, i32 noundef 0) #10
  %26 = getelementptr inbounds %struct.intel8x0m, ptr %18, i32 0, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call15.i, ptr %26, align 4
  %flags20.i = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 3, i32 3
  %28 = ptrtoint ptr %flags20.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags20.i, align 4
  %and21.i = and i32 %29, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  %spec.select190.i = select i1 %tobool22.not.i, i32 1, i32 3
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.else.i, %if.end8.i.for.body.lr.ph.i_crit_edge
  %.sink188.i = phi i32 [ 0, %if.end8.i.for.body.lr.ph.i_crit_edge ], [ %spec.select190.i, %if.else.i ]
  %call11.i = call ptr @pcim_iomap(ptr noundef %pci, i32 noundef %.sink188.i, i32 noundef 0) #10
  %bmaddr.i = getelementptr inbounds %struct.intel8x0m, ptr %18, i32 0, i32 3
  %30 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call11.i, ptr %bmaddr.i, align 4
  %bdbars_count.i = getelementptr inbounds %struct.intel8x0m, ptr %18, i32 0, i32 14
  %31 = ptrtoint ptr %bdbars_count.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %bdbars_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp38.i = icmp eq i32 %16, 1
  %spec.select.i = select i1 %cmp38.i, i32 8, i32 6
  %spec.select189.i = select i1 %cmp38.i, i32 6, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0178.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx33.i = getelementptr %struct.intel8x0m, ptr %18, i32 0, i32 8, i32 %i.0178.i
  %32 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %i.0178.i, ptr %arrayidx33.i, align 4
  %arrayidx35.i = getelementptr %struct.ich_reg_info, ptr @snd_intel8x0m_init.intel_regs, i32 %i.0178.i
  %offset.i = getelementptr %struct.ich_reg_info, ptr @snd_intel8x0m_init.intel_regs, i32 %i.0178.i, i32 1
  %33 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %offset.i, align 4
  %reg_offset.i = getelementptr %struct.intel8x0m, ptr %18, i32 0, i32 8, i32 %i.0178.i, i32 1
  %35 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %reg_offset.i, align 4
  %36 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx35.i, align 4
  %int_sta_mask37.i = getelementptr %struct.intel8x0m, ptr %18, i32 0, i32 8, i32 %i.0178.i, i32 19
  %38 = ptrtoint ptr %int_sta_mask37.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %int_sta_mask37.i, align 4
  %39 = getelementptr %struct.intel8x0m, ptr %18, i32 0, i32 8, i32 %i.0178.i, i32 17
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %spec.select.i, ptr %39, align 4
  %41 = getelementptr %struct.intel8x0m, ptr %18, i32 0, i32 8, i32 %i.0178.i, i32 18
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %spec.select189.i, ptr %41, align 4
  br i1 %cmp9.i, label %if.then45.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then45.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add i32 %34, -64
  %div175.i = lshr i32 %sub.i, 4
  %ali_slot.i = getelementptr %struct.intel8x0m, ptr %18, i32 0, i32 8, i32 %i.0178.i, i32 20
  %43 = ptrtoint ptr %ali_slot.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %div175.i, ptr %ali_slot.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then45.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.0178.i, 1
  %44 = ptrtoint ptr %bdbars_count.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bdbars_count.i, align 4
  %cmp32.i = icmp ult i32 %inc.i, %45
  br i1 %cmp32.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %phi.bo.i = shl i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp48.i = icmp ne i32 %16, 1
  %cond.i = zext i1 %cmp48.i to i32
  %pcm_pos_shift.i = getelementptr inbounds %struct.intel8x0m, ptr %18, i32 0, i32 17
  %46 = ptrtoint ptr %pcm_pos_shift.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %cond.i, ptr %pcm_pos_shift.i, align 4
  %call.i.i = call ptr @snd_devm_alloc_dir_pages(ptr noundef %dev, i32 noundef 2, i32 noundef 0, i32 noundef %phi.bo.i) #10
  %bdbars.i = getelementptr inbounds %struct.intel8x0m, ptr %18, i32 0, i32 13
  %47 = ptrtoint ptr %bdbars.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i.i, ptr %bdbars.i, align 4
  %tobool54.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool54.not.i, label %for.end.i.cleanup_crit_edge, label %for.cond57.preheader.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond57.preheader.i:                           ; preds = %for.end.i
  %48 = ptrtoint ptr %bdbars_count.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bdbars_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp59181.not.i = icmp eq i32 %49, 0
  br i1 %cmp59181.not.i, label %for.cond57.preheader.i.for.end74.i_crit_edge, label %for.cond57.preheader.i.for.body60.i_crit_edge

for.cond57.preheader.i.for.body60.i_crit_edge:    ; preds = %for.cond57.preheader.i
  br label %for.body60.i

for.cond57.preheader.i.for.end74.i_crit_edge:     ; preds = %for.cond57.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end74.i

for.body60.i:                                     ; preds = %for.body60.i.for.body60.i_crit_edge, %for.cond57.preheader.i.for.body60.i_crit_edge
  %int_sta_masks.0183.i = phi i32 [ %or.i, %for.body60.i.for.body60.i_crit_edge ], [ 0, %for.cond57.preheader.i.for.body60.i_crit_edge ]
  %i.1182.i = phi i32 [ %inc73.i, %for.body60.i.for.body60.i_crit_edge ], [ 0, %for.cond57.preheader.i.for.body60.i_crit_edge ]
  %50 = ptrtoint ptr %bdbars.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bdbars.i, align 4
  %area.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %area.i, align 4
  %mul65.i = shl i32 %i.1182.i, 6
  %add.ptr.i = getelementptr i32, ptr %53, i32 %mul65.i
  %bdbar.i = getelementptr %struct.intel8x0m, ptr %18, i32 0, i32 8, i32 %i.1182.i, i32 2
  %54 = ptrtoint ptr %bdbar.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr.i, ptr %bdbar.i, align 4
  %55 = load ptr, ptr %bdbars.i, align 4
  %addr67.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %addr67.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %addr67.i, align 4
  %mul70.i = shl i32 %i.1182.i, 8
  %add.i = add i32 %57, %mul70.i
  %bdbar_addr.i = getelementptr %struct.intel8x0m, ptr %18, i32 0, i32 8, i32 %i.1182.i, i32 3
  %58 = ptrtoint ptr %bdbar_addr.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add.i, ptr %bdbar_addr.i, align 4
  %int_sta_mask71.i = getelementptr %struct.intel8x0m, ptr %18, i32 0, i32 8, i32 %i.1182.i, i32 19
  %59 = ptrtoint ptr %int_sta_mask71.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %int_sta_mask71.i, align 4
  %or.i = or i32 %60, %int_sta_masks.0183.i
  %inc73.i = add nuw i32 %i.1182.i, 1
  %61 = ptrtoint ptr %bdbars_count.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bdbars_count.i, align 4
  %cmp59.i = icmp ult i32 %inc73.i, %62
  br i1 %cmp59.i, label %for.body60.i.for.body60.i_crit_edge, label %for.body60.i.for.end74.i_crit_edge

for.body60.i.for.end74.i_crit_edge:               ; preds = %for.body60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end74.i

for.body60.i.for.body60.i_crit_edge:              ; preds = %for.body60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body60.i

for.end74.i:                                      ; preds = %for.body60.i.for.end74.i_crit_edge, %for.cond57.preheader.i.for.end74.i_crit_edge
  %int_sta_masks.0.lcssa.i = phi i32 [ 0, %for.cond57.preheader.i.for.end74.i_crit_edge ], [ %or.i, %for.body60.i.for.end74.i_crit_edge ]
  %int_sta_reg.i = getelementptr inbounds %struct.intel8x0m, ptr %18, i32 0, i32 15
  %63 = ptrtoint ptr %int_sta_reg.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 64, ptr %int_sta_reg.i, align 4
  %int_sta_mask75.i = getelementptr inbounds %struct.intel8x0m, ptr %18, i32 0, i32 16
  %64 = ptrtoint ptr %int_sta_mask75.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %int_sta_masks.0.lcssa.i, ptr %int_sta_mask75.i, align 4
  call void @pci_set_master(ptr noundef %pci) #10
  %call76.i = call fastcc i32 @snd_intel8x0m_chip_init(ptr noundef %18, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %cmp77.i = icmp slt i32 %call76.i, 0
  br i1 %cmp77.i, label %for.end74.i.cleanup_crit_edge, label %if.end79.i

for.end74.i.cleanup_crit_edge:                    ; preds = %for.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end79.i:                                       ; preds = %for.end74.i
  %irq80.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %65 = ptrtoint ptr %irq80.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %irq80.i, align 4
  %call.i176.i = call i32 @request_threaded_irq(i32 noundef %66, ptr noundef nonnull @snd_intel8x0m_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176.i)
  %tobool82.not.i = icmp eq i32 %call.i176.i, 0
  br i1 %tobool82.not.i, label %if.end19, label %do.end86.i

do.end86.i:                                       ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev87.i = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 27
  %67 = ptrtoint ptr %dev87.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev87.i, align 8
  %69 = ptrtoint ptr %irq80.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %irq80.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.22, i32 noundef %70) #14
  br label %cleanup

if.end19:                                         ; preds = %if.end79.i
  %71 = ptrtoint ptr %irq80.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %irq80.i, align 4
  %73 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %irq.i, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 33
  %74 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %72, ptr %sync_irq.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 10
  %75 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @snd_intel8x0m_free, ptr %private_free.i, align 4
  %76 = load i32, ptr @ac97_clock, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pbus.i) #10
  %77 = ptrtoint ptr %pbus.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr inttoptr (i32 -1 to ptr), ptr %pbus.i, align 4, !annotation !186
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ac97.i) #10
  %78 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 1
  %79 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 2
  %80 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 3
  %81 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x97.i) #10
  %82 = ptrtoint ptr %x97.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr inttoptr (i32 -1 to ptr), ptr %x97.i, align 4, !annotation !186
  %in_ac97_init.i = getelementptr inbounds %struct.intel8x0m, ptr %6, i32 0, i32 9
  %83 = ptrtoint ptr %in_ac97_init.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load.i = load i8, ptr %in_ac97_init.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %in_ac97_init.i, align 4
  %84 = call ptr @memset(ptr %79, i32 0, i32 16)
  %85 = ptrtoint ptr %ac97.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %6, ptr %ac97.i, align 4
  %86 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @snd_intel8x0m_mixer_free_ac97, ptr %78, align 4
  %87 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 2064, ptr %81, align 4
  %bmaddr.i.i = getelementptr inbounds %struct.intel8x0m, ptr %6, i32 0, i32 3
  %88 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %89, i32 64
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !187
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %card.i = getelementptr inbounds %struct.intel8x0m, ptr %6, i32 0, i32 5
  %91 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %card.i, align 4
  %call1.i = call i32 @snd_ac97_bus(ptr noundef %92, i32 noundef 0, ptr noundef nonnull @snd_intel8x0m_mixer.ops, ptr noundef %6, ptr noundef nonnull %pbus.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i60 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i60, label %if.end19.__err.i_crit_edge, label %if.end.i

if.end19.__err.i_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %__err.i

if.end.i:                                         ; preds = %if.end19
  %93 = ptrtoint ptr %pbus.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pbus.i, align 4
  %private_free2.i = getelementptr inbounds %struct.snd_ac97_bus, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %private_free2.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @snd_intel8x0m_mixer_free_ac97_bus, ptr %private_free2.i, align 4
  %96 = add i32 %76, -8000
  call void @__sanitizer_cov_trace_const_cmp4(i32 40001, i32 %96)
  %97 = icmp ult i32 %96, 40001
  br i1 %97, label %if.then5.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %clock.i = getelementptr inbounds %struct.snd_ac97_bus, ptr %94, i32 0, i32 6
  %98 = ptrtoint ptr %clock.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %76, ptr %clock.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i.if.end6.i_crit_edge
  %ac97_bus.i = getelementptr inbounds %struct.intel8x0m, ptr %6, i32 0, i32 10
  %99 = ptrtoint ptr %ac97_bus.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %94, ptr %ac97_bus.i, align 4
  %pci.i = getelementptr inbounds %struct.intel8x0m, ptr %6, i32 0, i32 4
  %100 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pci.i, align 4
  %102 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %101, ptr %79, align 4
  %sum.shift.i = lshr i32 %90, 17
  %103 = trunc i32 %sum.shift.i to i16
  %104 = and i16 %103, 1
  %105 = ptrtoint ptr %80 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %104, ptr %80, align 4
  %call8.i = call i32 @snd_ac97_mixer(ptr noundef %94, ptr noundef nonnull %ac97.i, ptr noundef nonnull %x97.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i61 = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i61, label %do.end.i, label %if.end21.i

do.end.i:                                         ; preds = %if.end6.i
  %106 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %card.i, align 4
  %dev.i62 = getelementptr inbounds %struct.snd_card, ptr %107, i32 0, i32 27
  %108 = ptrtoint ptr %dev.i62 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev.i62, align 8
  %110 = ptrtoint ptr %80 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %80, align 4
  %conv14.i = zext i16 %111 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.32, i32 noundef %conv14.i) #14
  %112 = ptrtoint ptr %80 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %80, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %cmp17.i = icmp eq i16 %113, 0
  br i1 %cmp17.i, label %do.end.i.__err.i_crit_edge, label %do.end.i.snd_intel8x0m_mixer.exit.thread_crit_edge

do.end.i.snd_intel8x0m_mixer.exit.thread_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_intel8x0m_mixer.exit.thread

do.end.i.__err.i_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__err.i

if.end21.i:                                       ; preds = %if.end6.i
  %114 = ptrtoint ptr %x97.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %x97.i, align 4
  %ac9722.i = getelementptr inbounds %struct.intel8x0m, ptr %6, i32 0, i32 11
  %116 = ptrtoint ptr %ac9722.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %115, ptr %ac9722.i, align 4
  %scaps.i.i = getelementptr inbounds %struct.snd_ac97, ptr %115, i32 0, i32 18
  %117 = ptrtoint ptr %scaps.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %scaps.i.i, align 4
  %and.i.i = and i32 %118, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not.i, label %if.end21.i.if.end24_crit_edge, label %land.lhs.true25.i

if.end21.i.if.end24_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true25.i:                                ; preds = %if.end21.i
  %ac9726.i = getelementptr inbounds %struct.intel8x0m, ptr %6, i32 0, i32 8, i32 0, i32 21
  %119 = ptrtoint ptr %ac9726.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ac9726.i, align 4
  %tobool27.not.i = icmp eq ptr %120, null
  br i1 %tobool27.not.i, label %if.then28.i, label %land.lhs.true25.i.if.end24_crit_edge

land.lhs.true25.i.if.end24_crit_edge:             ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then28.i:                                      ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #12
  %121 = ptrtoint ptr %ac9726.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %115, ptr %ac9726.i, align 4
  %ac9734.i = getelementptr %struct.intel8x0m, ptr %6, i32 0, i32 8, i32 1, i32 21
  %122 = ptrtoint ptr %ac9734.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %115, ptr %ac9734.i, align 4
  br label %if.end24

__err.i:                                          ; preds = %do.end.i.__err.i_crit_edge, %if.end19.__err.i_crit_edge
  %err.0.i = phi i32 [ %call1.i, %if.end19.__err.i_crit_edge ], [ %call8.i, %do.end.i.__err.i_crit_edge ]
  %123 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %124)
  %cmp40.not.i = icmp eq i32 %124, 2
  br i1 %cmp40.not.i, label %__err.i.snd_intel8x0m_mixer.exit.thread_crit_edge, label %if.then42.i

__err.i.snd_intel8x0m_mixer.exit.thread_crit_edge: ; preds = %__err.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_intel8x0m_mixer.exit.thread

if.then42.i:                                      ; preds = %__err.i
  call void @__sanitizer_cov_trace_pc() #12
  %125 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i71.i = getelementptr i8, ptr %126, i32 60
  %127 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71.i) #10, !srcloc !187
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %128 = and i32 %127, -33554433
  %129 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i73.i = getelementptr i8, ptr %130, i32 60
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !189
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73.i, i32 %128) #10, !srcloc !190
  br label %snd_intel8x0m_mixer.exit.thread

snd_intel8x0m_mixer.exit.thread:                  ; preds = %if.then42.i, %__err.i.snd_intel8x0m_mixer.exit.thread_crit_edge, %do.end.i.snd_intel8x0m_mixer.exit.thread_crit_edge
  %retval.0.i63.ph = phi i32 [ %err.0.i, %__err.i.snd_intel8x0m_mixer.exit.thread_crit_edge ], [ %err.0.i, %if.then42.i ], [ %call8.i, %do.end.i.snd_intel8x0m_mixer.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x97.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus.i) #10
  br label %cleanup

if.end24:                                         ; preds = %if.then28.i, %land.lhs.true25.i.if.end24_crit_edge, %if.end21.i.if.end24_crit_edge
  %131 = ptrtoint ptr %in_ac97_init.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %bf.load37.i = load i8, ptr %in_ac97_init.i, align 4
  %bf.clear38.i = and i8 %bf.load37.i, 127
  store i8 %bf.clear38.i, ptr %in_ac97_init.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x97.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i.i) #10
  %132 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i.i, align 4, !annotation !186
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i.i) #10
  %133 = call ptr @memset(ptr %name.i.i, i32 255, i32 32)
  %call.i.i64 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name.i.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43) #10
  %134 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %card.i, align 4
  %call8.i.i = call i32 @snd_pcm_new(ptr noundef %135, ptr noundef nonnull %name.i.i, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %pcm.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp.i.i = icmp slt i32 %call8.i.i, 0
  br i1 %cmp.i.i, label %snd_intel8x0m_pcm.exit.thread, label %if.end29

snd_intel8x0m_pcm.exit.thread:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i.i) #10
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %136 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pcm.i.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %137, i32 noundef 0, ptr noundef nonnull @snd_intel8x0m_playback_ops) #10
  %138 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pcm.i.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %139, i32 noundef 1, ptr noundef nonnull @snd_intel8x0m_capture_ops) #10
  %140 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pcm.i.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.snd_pcm, ptr %141, i32 0, i32 11
  %142 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %6, ptr %private_data.i.i, align 8
  %info_flags.i.i = getelementptr inbounds %struct.snd_pcm, ptr %141, i32 0, i32 3
  %143 = ptrtoint ptr %info_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %info_flags.i.i, align 8
  %dev_class.i.i = getelementptr inbounds %struct.snd_pcm, ptr %141, i32 0, i32 4
  %144 = ptrtoint ptr %dev_class.i.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 2, ptr %dev_class.i.i, align 4
  %name24.i.i = getelementptr inbounds %struct.snd_pcm, ptr %141, i32 0, i32 7
  %145 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %card.i, align 4
  %shortname.i.i = getelementptr inbounds %struct.snd_card, ptr %146, i32 0, i32 3
  %call29.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name24.i.i, ptr noundef nonnull @.str.45, ptr noundef %shortname.i.i, ptr noundef nonnull @.str.43) #10
  %147 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pcm.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.intel8x0m, ptr %6, i32 0, i32 7, i32 0
  %149 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %148, ptr %arrayidx.i.i, align 4
  %150 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %pci.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %151, i32 0, i32 44
  %call39.i.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %148, i32 noundef 2, ptr noundef %dev.i.i, i32 noundef 32768, i32 noundef 65536) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i.i) #10
  %pcm_devs.i = getelementptr inbounds %struct.intel8x0m, ptr %6, i32 0, i32 6
  %152 = ptrtoint ptr %pcm_devs.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 1, ptr %pcm_devs.i, align 4
  %153 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %card.i, align 4
  %call.i.i68 = call i32 @snd_card_rw_proc_new(ptr noundef %154, ptr noundef nonnull @.str.46, ptr noundef %6, ptr noundef nonnull @snd_intel8x0m_proc_read, ptr noundef null) #10
  %155 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %156, i32 0, i32 4
  %shortname31 = getelementptr inbounds %struct.snd_card, ptr %156, i32 0, i32 3
  %irq = getelementptr inbounds %struct.intel8x0m, ptr %6, i32 0, i32 1
  %157 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %irq, align 4
  %call33 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.4, ptr noundef %shortname31, i32 noundef %158)
  %159 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %card, align 4
  %call34 = call i32 @snd_card_register(ptr noundef %160) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end29.cleanup_crit_edge, label %if.end38

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end38:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %161 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %163 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %162, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end29.cleanup_crit_edge, %snd_intel8x0m_pcm.exit.thread, %snd_intel8x0m_mixer.exit.thread, %do.end86.i, %for.end74.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %do.body.i.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end38 ], [ %call, %entry.cleanup_crit_edge ], [ %call34, %if.end29.cleanup_crit_edge ], [ %retval.0.i63.ph, %snd_intel8x0m_mixer.exit.thread ], [ %call8.i.i, %snd_intel8x0m_pcm.exit.thread ], [ %call76.i, %for.end74.i.cleanup_crit_edge ], [ -12, %for.end.i.cleanup_crit_edge ], [ %call5.i, %do.body.i.cleanup_crit_edge ], [ %call.i, %for.end.cleanup_crit_edge ], [ -16, %do.end86.i ]
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_intel8x0m_chip_init(ptr nocapture noundef readonly %chip, i32 noundef %probing) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bmaddr.i.i = getelementptr inbounds %struct.intel8x0m, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %3 = and i32 %2, 109051904
  %4 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i108.i = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !189
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108.i, i32 %3) #10, !srcloc !190
  %6 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i110.i = getelementptr i8, ptr %7, i32 60
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i110.i) #10, !srcloc !187
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %and2.i = and i32 %9, -9
  %and3.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %cmp.i = icmp eq i32 %and3.i, 0
  %cond.i = select i1 %cmp.i, i32 2, i32 4
  %or.i = or i32 %cond.i, %and2.i
  %10 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i112.i = getelementptr i8, ptr %11, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !189
  tail call void @arm_heavy_mb() #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112.i, i32 %12) #10, !srcloc !190
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %13, 25
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry
  %14 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i114.i = getelementptr i8, ptr %15, i32 60
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i114.i) #10, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %17 = and i32 %16, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp6.i = icmp eq i32 %17, 0
  br i1 %cmp6.i, label %__ok.i, label %if.end.i

if.end.i:                                         ; preds = %do.body.i
  %call7.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %18
  %cmp8.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp8.i, label %if.end.i.do.body.i_crit_edge, label %do.end11.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %card.i = getelementptr inbounds %struct.intel8x0m, ptr %chip, i32 0, i32 5
  %19 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 8
  %23 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i116.i = getelementptr i8, ptr %24, i32 60
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116.i) #10, !srcloc !187
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.27, i32 noundef %26) #14
  br label %cleanup

__ok.i:                                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %probing)
  %tobool.not.i = icmp eq i32 %probing, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then13.i

if.then13.i:                                      ; preds = %__ok.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %add14.i = add i32 %27, 100
  br label %do.body15.i

do.body15.i:                                      ; preds = %if.end20.i.do.body15.i_crit_edge, %if.then13.i
  %28 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i118.i = getelementptr i8, ptr %29, i32 64
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i118.i) #10, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %31 = and i32 %30, 196624
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool18.not.i = icmp eq i32 %31, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end34.i

if.end20.i:                                       ; preds = %do.body15.i
  %call21.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %sub23.i = sub i32 %add14.i, %32
  %cmp24.i = icmp sgt i32 %sub23.i, -1
  br i1 %cmp24.i, label %if.end20.i.do.body15.i_crit_edge, label %do.end30.critedge.i

if.end20.i.do.body15.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body15.i

do.end30.critedge.i:                              ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %card31.i = getelementptr inbounds %struct.intel8x0m, ptr %chip, i32 0, i32 5
  %33 = ptrtoint ptr %card31.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %card31.i, align 4
  %dev32.i = getelementptr inbounds %struct.snd_card, ptr %34, i32 0, i32 27
  %35 = ptrtoint ptr %dev32.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev32.i, align 8
  %37 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i120.i = getelementptr i8, ptr %38, i32 64
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i120.i) #10, !srcloc !187
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.30, i32 noundef %40) #14
  br label %cleanup

if.end34.i:                                       ; preds = %do.body15.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %add35.i = add i32 %41, 25
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %31)
  %cmp36.not134.i = icmp eq i32 %31, 196608
  br i1 %cmp36.not134.i, label %if.end34.i.if.end63.i_crit_edge, label %land.rhs.preheader.i

if.end34.i.if.end63.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

land.rhs.preheader.i:                             ; preds = %if.end34.i
  %42 = tail call i32 @llvm.bswap.i32(i32 %31) #10
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.preheader.i
  %status.0135.i = phi i32 [ %or42.i, %while.body.i.land.rhs.i_crit_edge ], [ %42, %land.rhs.preheader.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %sub37.i = sub i32 %add35.i, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub37.i)
  %cmp38.i = icmp sgt i32 %sub37.i, -1
  br i1 %cmp38.i, label %while.body.i, label %land.rhs.i.if.end63.i_crit_edge

land.rhs.i.if.end63.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

while.body.i:                                     ; preds = %land.rhs.i
  %call39.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #10
  %44 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i122.i = getelementptr i8, ptr %45, i32 64
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122.i) #10, !srcloc !187
  %47 = lshr i32 %46, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %and41.i = and i32 %47, 768
  %or42.i = or i32 %and41.i, %status.0135.i
  %cmp36.not.i = icmp eq i32 %or42.i, 768
  br i1 %cmp36.not.i, label %while.body.i.if.end63.i_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

while.body.i.if.end63.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

if.else.i:                                        ; preds = %__ok.i
  %ac97.i = getelementptr inbounds %struct.intel8x0m, ptr %chip, i32 0, i32 11
  %48 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ac97.i, align 4
  %tobool43.not.i = icmp eq ptr %49, null
  br i1 %tobool43.not.i, label %if.else.i.if.end48.i_crit_edge, label %if.then44.i

if.else.i.if.end48.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.i

if.then44.i:                                      ; preds = %if.else.i
  %num.i = getelementptr inbounds %struct.snd_ac97, ptr %49, i32 0, i32 11
  %50 = ptrtoint ptr %num.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %num.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %51)
  %cmp.i.i = icmp ugt i16 %51, 2
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end21.i.i, !prof !191

do.end.i.i:                                       ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 279, i32 noundef 9, ptr noundef null) #10
  br label %if.end48.i

if.end21.i.i:                                     ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i16 %51 to i32
  %arrayidx.i.i = getelementptr [3 x i32], ptr @get_ich_codec_bit.codec_bit, i32 0, i32 %conv.i
  %52 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.end21.i.i, %do.end.i.i, %if.else.i.if.end48.i_crit_edge
  %status.1.i = phi i32 [ 0, %if.else.i.if.end48.i_crit_edge ], [ 256, %do.end.i.i ], [ %53, %if.end21.i.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %54 = load volatile i32, ptr @jiffies, align 128
  %add49.i = add i32 %54, 100
  br label %do.body50.i

do.body50.i:                                      ; preds = %if.end56.i.do.body50.i_crit_edge, %if.end48.i
  %55 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i124.i = getelementptr i8, ptr %56, i32 64
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i124.i) #10, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %58 = and i32 %57, 196624
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %status.1.i, i32 %59)
  %cmp53.i = icmp eq i32 %status.1.i, %59
  br i1 %cmp53.i, label %do.body50.i.if.end63.i_crit_edge, label %if.end56.i

do.body50.i.if.end63.i_crit_edge:                 ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

if.end56.i:                                       ; preds = %do.body50.i
  %call57.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %sub59.i = sub i32 %add49.i, %60
  %cmp60.i = icmp sgt i32 %sub59.i, -1
  br i1 %cmp60.i, label %if.end56.i.do.body50.i_crit_edge, label %if.end56.i.if.end63.i_crit_edge

if.end56.i.if.end63.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

if.end56.i.do.body50.i_crit_edge:                 ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body50.i

if.end63.i:                                       ; preds = %if.end56.i.if.end63.i_crit_edge, %do.body50.i.if.end63.i_crit_edge, %while.body.i.if.end63.i_crit_edge, %land.rhs.i.if.end63.i_crit_edge, %if.end34.i.if.end63.i_crit_edge
  %61 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp64.i = icmp eq i32 %62, 1
  br i1 %cmp64.i, label %if.then66.i, label %if.end63.i.if.end_crit_edge

if.end63.i.if.end_crit_edge:                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then66.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i126.i = getelementptr i8, ptr %64, i32 76
  %65 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i126.i) #10, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !193
  %66 = or i16 %65, 256
  %67 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i128.i = getelementptr i8, ptr %68, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i128.i, i16 %66) #10, !srcloc !195
  br label %if.end

if.end:                                           ; preds = %if.then66.i, %if.end63.i.if.end_crit_edge
  %addr.i = getelementptr inbounds %struct.intel8x0m, ptr %chip, i32 0, i32 2
  %69 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %addr.i, align 4
  %71 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %70) #10, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !193
  %bdbars_count = getelementptr inbounds %struct.intel8x0m, ptr %chip, i32 0, i32 14
  %72 = ptrtoint ptr %bdbars_count to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bdbars_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp260.not = icmp eq i32 %73, 0
  br i1 %cmp260.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond3.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp562.not = icmp eq i32 %79, 0
  br i1 %cmp562.not, label %for.cond3.preheader.cleanup_crit_edge, label %for.cond3.preheader.for.body6_crit_edge

for.cond3.preheader.for.body6_crit_edge:          ; preds = %for.cond3.preheader
  br label %for.body6

for.cond3.preheader.cleanup_crit_edge:            ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.061 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %reg_offset = getelementptr %struct.intel8x0m, ptr %chip, i32 0, i32 8, i32 %i.061, i32 1
  %74 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %reg_offset, align 4
  %add = add i32 %75, 11
  %76 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %77, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #10, !srcloc !197
  %inc = add nuw i32 %i.061, 1
  %78 = ptrtoint ptr %bdbars_count to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bdbars_count, align 4
  %cmp2 = icmp ult i32 %inc, %79
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.cond3.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond14.preheader.loopexit:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %phi.cmp = icmp eq i32 %85, 0
  br i1 %phi.cmp, label %for.cond14.preheader.loopexit.cleanup_crit_edge, label %for.cond14.preheader.loopexit.for.body17_crit_edge

for.cond14.preheader.loopexit.for.body17_crit_edge: ; preds = %for.cond14.preheader.loopexit
  br label %for.body17

for.cond14.preheader.loopexit.cleanup_crit_edge:  ; preds = %for.cond14.preheader.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.cond3.preheader.for.body6_crit_edge
  %i.163 = phi i32 [ %inc12, %for.body6.for.body6_crit_edge ], [ 0, %for.cond3.preheader.for.body6_crit_edge ]
  %reg_offset9 = getelementptr %struct.intel8x0m, ptr %chip, i32 0, i32 8, i32 %i.163, i32 1
  %80 = ptrtoint ptr %reg_offset9 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %reg_offset9, align 4
  %add10 = add i32 %81, 11
  %82 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %83, i32 %add10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i50, i8 2) #10, !srcloc !197
  %inc12 = add nuw i32 %i.163, 1
  %84 = ptrtoint ptr %bdbars_count to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %bdbars_count, align 4
  %cmp5 = icmp ult i32 %inc12, %85
  br i1 %cmp5, label %for.body6.for.body6_crit_edge, label %for.cond14.preheader.loopexit

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body6

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.cond14.preheader.loopexit.for.body17_crit_edge
  %i.265 = phi i32 [ %inc25, %for.body17.for.body17_crit_edge ], [ 0, %for.cond14.preheader.loopexit.for.body17_crit_edge ]
  %reg_offset20 = getelementptr %struct.intel8x0m, ptr %chip, i32 0, i32 8, i32 %i.265, i32 1
  %86 = ptrtoint ptr %reg_offset20 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %reg_offset20, align 4
  %bdbar_addr = getelementptr %struct.intel8x0m, ptr %chip, i32 0, i32 8, i32 %i.265, i32 3
  %88 = ptrtoint ptr %bdbar_addr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %bdbar_addr, align 4
  %90 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %91, i32 %87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !189
  tail call void @arm_heavy_mb() #10
  %92 = tail call i32 @llvm.bswap.i32(i32 %89) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %92) #10, !srcloc !190
  %inc25 = add nuw i32 %i.265, 1
  %93 = ptrtoint ptr %bdbars_count to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %bdbars_count, align 4
  %cmp16 = icmp ult i32 %inc25, %94
  br i1 %cmp16, label %for.body17.for.body17_crit_edge, label %for.body17.cleanup_crit_edge

for.body17.cleanup_crit_edge:                     ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body17

cleanup:                                          ; preds = %for.body17.cleanup_crit_edge, %for.cond14.preheader.loopexit.cleanup_crit_edge, %for.cond3.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end30.critedge.i, %do.end11.i
  %retval.0 = phi i32 [ -5, %do.end30.critedge.i ], [ -5, %do.end11.i ], [ 0, %for.cond14.preheader.loopexit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.cond3.preheader.cleanup_crit_edge ], [ 0, %for.body17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_intel8x0m_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock = getelementptr inbounds %struct.intel8x0m, ptr %dev_id, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #10
  %int_sta_reg = getelementptr inbounds %struct.intel8x0m, ptr %dev_id, i32 0, i32 15
  %0 = ptrtoint ptr %int_sta_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %int_sta_reg, align 4
  %bmaddr.i = getelementptr inbounds %struct.intel8x0m, ptr %dev_id, i32 0, i32 3
  %2 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !187
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %int_sta_mask = getelementptr inbounds %struct.intel8x0m, ptr %dev_id, i32 0, i32 16
  %6 = ptrtoint ptr %int_sta_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %int_sta_mask, align 4
  %and = and i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %if.then3, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %bdbars_count = getelementptr inbounds %struct.intel8x0m, ptr %dev_id, i32 0, i32 14
  %8 = ptrtoint ptr %bdbars_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bdbars_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp956.not = icmp eq i32 %9, 0
  br i1 %cmp956.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then3.cleanup_crit_edge, label %if.then4

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %int_sta_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %int_sta_reg, align 4
  %12 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %13, i32 %11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !189
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %4) #10, !srcloc !190
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.057 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %int_sta_mask10 = getelementptr %struct.intel8x0m, ptr %dev_id, i32 0, i32 8, i32 %i.057, i32 19
  %14 = ptrtoint ptr %int_sta_mask10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %int_sta_mask10, align 4
  %and11 = and i32 %15, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %for.body.for.inc_crit_edge, label %if.then13

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then13:                                        ; preds = %for.body
  %reg_offset.i = getelementptr %struct.intel8x0m, ptr %dev_id, i32 0, i32 8, i32 %i.057, i32 1
  %16 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg_offset.i, align 4
  %add.i = add i32 %17, 4
  %18 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %add.i
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #10, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  %conv.i = zext i8 %20 to i32
  %civ1.i = getelementptr %struct.intel8x0m, ptr %dev_id, i32 0, i32 8, i32 %i.057, i32 13
  %21 = ptrtoint ptr %civ1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %civ1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv.i)
  %cmp.i = icmp eq i32 %22, %conv.i
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i = add nuw nsw i32 %conv.i, 1
  %and.i = and i32 %inc.i, 31
  br label %if.end11.i

if.else.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub i32 %conv.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp6.i = icmp slt i32 %sub.i, 0
  %add9.i = add i32 %sub.i, 32
  %spec.select.i = select i1 %cmp6.i, i32 %add9.i, i32 %sub.i
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi i32 [ %conv.i, %if.else.i ], [ %and.i, %if.then.i ]
  %step.1.i = phi i32 [ %spec.select.i, %if.else.i ], [ 1, %if.then.i ]
  %23 = ptrtoint ptr %civ1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %storemerge.i, ptr %civ1.i, align 4
  %fragsize1.i = getelementptr %struct.intel8x0m, ptr %dev_id, i32 0, i32 8, i32 %i.057, i32 8
  %24 = ptrtoint ptr %fragsize1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fragsize1.i, align 4
  %mul.i = mul i32 %25, %step.1.i
  %position.i = getelementptr %struct.intel8x0m, ptr %dev_id, i32 0, i32 8, i32 %i.057, i32 9
  %26 = ptrtoint ptr %position.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %position.i, align 4
  %add12.i = add i32 %27, %mul.i
  %size.i = getelementptr %struct.intel8x0m, ptr %dev_id, i32 0, i32 8, i32 %i.057, i32 6
  %28 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size.i, align 4
  %rem.i = urem i32 %add12.i, %29
  store i32 %rem.i, ptr %position.i, align 4
  %lvi.i = getelementptr %struct.intel8x0m, ptr %dev_id, i32 0, i32 8, i32 %i.057, i32 11
  %30 = ptrtoint ptr %lvi.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lvi.i, align 4
  %add14.i = add i32 %31, %step.1.i
  %and16.i = and i32 %add14.i, 31
  store i32 %and16.i, ptr %lvi.i, align 4
  %add17.i = add i32 %17, 5
  %conv19.i = trunc i32 %and16.i to i8
  %32 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i84.i = getelementptr i8, ptr %33, i32 %add17.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i84.i, i8 %conv19.i) #10, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %step.1.i)
  %cmp2087.i = icmp sgt i32 %step.1.i, 0
  br i1 %cmp2087.i, label %for.body.lr.ph.i, label %if.end11.i.snd_intel8x0m_update.exit_crit_edge

if.end11.i.snd_intel8x0m_update.exit_crit_edge:   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_intel8x0m_update.exit

for.body.lr.ph.i:                                 ; preds = %if.end11.i
  %lvi_frag.i = getelementptr %struct.intel8x0m, ptr %dev_id, i32 0, i32 8, i32 %i.057, i32 12
  %frags.i = getelementptr %struct.intel8x0m, ptr %dev_id, i32 0, i32 8, i32 %i.057, i32 10
  %physbuf.i = getelementptr %struct.intel8x0m, ptr %dev_id, i32 0, i32 8, i32 %i.057, i32 5
  %bdbar.i = getelementptr %struct.intel8x0m, ptr %dev_id, i32 0, i32 8, i32 %i.057, i32 2
  %ack31.i = getelementptr %struct.intel8x0m, ptr %dev_id, i32 0, i32 8, i32 %i.057, i32 14
  %ack_reload.i = getelementptr %struct.intel8x0m, ptr %dev_id, i32 0, i32 8, i32 %i.057, i32 15
  br label %for.body.i.outer

for.body.i.outer:                                 ; preds = %for.inc.i.thread.for.body.i.outer_crit_edge, %for.body.lr.ph.i
  %tobool.not.i = phi i1 [ false, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ true, %for.body.lr.ph.i ]
  %i.088.i.ph = phi i32 [ %inc37.i49, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ 0, %for.body.lr.ph.i ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.outer
  %i.088.i = phi i32 [ %inc37.i, %for.inc.i.for.body.i_crit_edge ], [ %i.088.i.ph, %for.body.i.outer ]
  %34 = ptrtoint ptr %lvi_frag.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lvi_frag.i, align 4
  %inc22.i = add i32 %35, 1
  %36 = ptrtoint ptr %frags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %frags.i, align 4
  %rem24.i = srem i32 %inc22.i, %37
  store i32 %rem24.i, ptr %lvi_frag.i, align 4
  %38 = ptrtoint ptr %physbuf.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %physbuf.i, align 4
  %40 = ptrtoint ptr %fragsize1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fragsize1.i, align 4
  %mul27.i = mul i32 %41, %rem24.i
  %add28.i = add i32 %mul27.i, %39
  %42 = tail call i32 @llvm.bswap.i32(i32 %add28.i) #10
  %43 = ptrtoint ptr %bdbar.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bdbar.i, align 4
  %45 = ptrtoint ptr %lvi.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %lvi.i, align 4
  %mul30.i = shl i32 %46, 1
  %arrayidx.i = getelementptr i32, ptr %44, i32 %mul30.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %42, ptr %arrayidx.i, align 4
  %48 = ptrtoint ptr %ack31.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ack31.i, align 4
  %dec.i = add i32 %49, -1
  store i32 %dec.i, ptr %ack31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp32.i = icmp eq i32 %dec.i, 0
  br i1 %cmp32.i, label %for.inc.i.thread, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc37.i = add nuw nsw i32 %i.088.i, 1
  %exitcond.not.i = icmp eq i32 %inc37.i, %step.1.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.thread:                                 ; preds = %for.body.i
  %50 = ptrtoint ptr %ack_reload.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ack_reload.i, align 4
  %52 = ptrtoint ptr %ack31.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %ack31.i, align 4
  %inc37.i49 = add nuw nsw i32 %i.088.i, 1
  %exitcond.not.i50 = icmp eq i32 %inc37.i49, %step.1.i
  br i1 %exitcond.not.i50, label %for.inc.i.thread.land.lhs.true.i_crit_edge, label %for.inc.i.thread.for.body.i.outer_crit_edge

for.inc.i.thread.for.body.i.outer_crit_edge:      ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.outer

for.inc.i.thread.land.lhs.true.i_crit_edge:       ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %for.inc.i
  br i1 %tobool.not.i, label %for.end.i.snd_intel8x0m_update.exit_crit_edge, label %for.end.i.land.lhs.true.i_crit_edge

for.end.i.land.lhs.true.i_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.end.i.snd_intel8x0m_update.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_intel8x0m_update.exit

land.lhs.true.i:                                  ; preds = %for.end.i.land.lhs.true.i_crit_edge, %for.inc.i.thread.land.lhs.true.i_crit_edge
  %substream.i = getelementptr %struct.intel8x0m, ptr %dev_id, i32 0, i32 8, i32 %i.057, i32 4
  %53 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %substream.i, align 4
  %tobool38.not.i = icmp eq ptr %54, null
  br i1 %tobool38.not.i, label %land.lhs.true.i.snd_intel8x0m_update.exit_crit_edge, label %if.then39.i

land.lhs.true.i.snd_intel8x0m_update.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_intel8x0m_update.exit

if.then39.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #10
  %55 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %substream.i, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %56) #10
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #10
  br label %snd_intel8x0m_update.exit

snd_intel8x0m_update.exit:                        ; preds = %if.then39.i, %land.lhs.true.i.snd_intel8x0m_update.exit_crit_edge, %for.end.i.snd_intel8x0m_update.exit_crit_edge, %if.end11.i.snd_intel8x0m_update.exit_crit_edge
  %roff_sr.i = getelementptr %struct.intel8x0m, ptr %dev_id, i32 0, i32 8, i32 %i.057, i32 17
  %57 = ptrtoint ptr %roff_sr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %roff_sr.i, align 4
  %add43.i = add i32 %58, %17
  %59 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i86.i = getelementptr i8, ptr %60, i32 %add43.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i86.i, i8 28) #10, !srcloc !197
  br label %for.inc

for.inc:                                          ; preds = %snd_intel8x0m_update.exit, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.057, 1
  %61 = ptrtoint ptr %bdbars_count to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bdbars_count, align 4
  %cmp9 = icmp ult i32 %inc, %62
  br i1 %cmp9, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %63 = ptrtoint ptr %int_sta_reg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %int_sta_reg, align 4
  %65 = ptrtoint ptr %int_sta_mask to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %int_sta_mask, align 4
  %and17 = and i32 %66, %5
  %67 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %68, i32 %64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !189
  tail call void @arm_heavy_mb() #10
  %69 = tail call i32 @llvm.bswap.i32(i32 %and17) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 %69) #10, !srcloc !190
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then4, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then4 ], [ 0, %if.then3.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #10
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_intel8x0m_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %irq = getelementptr inbounds %struct.intel8x0m, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %entry.if.end17_crit_edge, label %for.cond.preheader

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

for.cond.preheader:                               ; preds = %entry
  %bdbars_count = getelementptr inbounds %struct.intel8x0m, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %bdbars_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bdbars_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp135.not = icmp eq i32 %5, 0
  br i1 %cmp135.not, label %for.cond.preheader.__hw_end_crit_edge, label %for.body.lr.ph

for.cond.preheader.__hw_end_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hw_end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %bmaddr.i = getelementptr inbounds %struct.intel8x0m, ptr %1, i32 0, i32 3
  br label %for.body

for.cond2.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp437.not = icmp eq i32 %11, 0
  br i1 %cmp437.not, label %for.cond2.preheader.__hw_end_crit_edge, label %for.body5.lr.ph

for.cond2.preheader.__hw_end_crit_edge:           ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hw_end

for.body5.lr.ph:                                  ; preds = %for.cond2.preheader
  %bmaddr.i32 = getelementptr inbounds %struct.intel8x0m, ptr %1, i32 0, i32 3
  br label %for.body5

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %reg_offset = getelementptr %struct.intel8x0m, ptr %1, i32 0, i32 8, i32 %i.036, i32 1
  %6 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_offset, align 4
  %add = add i32 %7, 11
  %8 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #10, !srcloc !197
  %inc = add nuw i32 %i.036, 1
  %10 = ptrtoint ptr %bdbars_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bdbars_count, align 4
  %cmp1 = icmp ult i32 %inc, %11
  br i1 %cmp1, label %for.body.for.body_crit_edge, label %for.cond2.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.body5.lr.ph
  %i.138 = phi i32 [ 0, %for.body5.lr.ph ], [ %inc11, %for.body5.for.body5_crit_edge ]
  %reg_offset8 = getelementptr %struct.intel8x0m, ptr %1, i32 0, i32 8, i32 %i.138, i32 1
  %12 = ptrtoint ptr %reg_offset8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_offset8, align 4
  %add9 = add i32 %13, 11
  %14 = ptrtoint ptr %bmaddr.i32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bmaddr.i32, align 4
  %add.ptr.i33 = getelementptr i8, ptr %15, i32 %add9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i33, i8 2) #10, !srcloc !197
  %inc11 = add nuw i32 %i.138, 1
  %16 = ptrtoint ptr %bdbars_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bdbars_count, align 4
  %cmp4 = icmp ult i32 %inc11, %17
  br i1 %cmp4, label %for.body5.for.body5_crit_edge, label %for.body5.__hw_end_crit_edge

for.body5.__hw_end_crit_edge:                     ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hw_end

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body5

__hw_end:                                         ; preds = %for.body5.__hw_end_crit_edge, %for.cond2.preheader.__hw_end_crit_edge, %for.cond.preheader.__hw_end_crit_edge
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %cmp14 = icmp sgt i32 %.pr, -1
  br i1 %cmp14, label %if.then15, label %__hw_end.if.end17_crit_edge

__hw_end.if.end17_crit_edge:                      ; preds = %__hw_end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then15:                                        ; preds = %__hw_end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call ptr @free_irq(i32 noundef %.pr, ptr noundef %1) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %__hw_end.if.end17_crit_edge, %entry.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_devm_alloc_dir_pages(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_intel8x0m_codec_write(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %num = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num, align 8
  %conv = zext i16 %3 to i32
  %call = tail call fastcc i32 @snd_intel8x0m_codec_semaphore(ptr noundef %1, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %entry
  %in_ac97_init = getelementptr inbounds %struct.intel8x0m, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %in_ac97_init to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %in_ac97_init, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.end, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %card = getelementptr inbounds %struct.intel8x0m, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %9 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num, align 8
  %conv4 = zext i16 %10 to i32
  %conv5 = zext i16 %reg to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.34, i32 noundef %conv4, i32 noundef %conv5) #14
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %conv7 = zext i16 %reg to i32
  %11 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num, align 8
  %conv9 = zext i16 %12 to i32
  %mul = shl nuw nsw i32 %conv9, 7
  %add = add nuw nsw i32 %mul, %conv7
  %addr.i = getelementptr inbounds %struct.intel8x0m, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %15 = tail call i16 @llvm.bswap.i16(i16 %val) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %15) #10, !srcloc !195
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @snd_intel8x0m_codec_read(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %num = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num, align 8
  %conv = zext i16 %3 to i32
  %call = tail call fastcc i32 @snd_intel8x0m_codec_semaphore(ptr noundef %1, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %in_ac97_init = getelementptr inbounds %struct.intel8x0m, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %in_ac97_init to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %in_ac97_init, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.end, label %if.then.if.end30_crit_edge

if.then.if.end30_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %card = getelementptr inbounds %struct.intel8x0m, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %9 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num, align 8
  %conv4 = zext i16 %10 to i32
  %conv5 = zext i16 %reg to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.38, i32 noundef %conv4, i32 noundef %conv5) #14
  br label %if.end30

if.else:                                          ; preds = %entry
  %conv6 = zext i16 %reg to i32
  %11 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num, align 8
  %conv8 = zext i16 %12 to i32
  %mul = shl nuw nsw i32 %conv8, 7
  %add = add nuw nsw i32 %mul, %conv6
  %addr.i = getelementptr inbounds %struct.intel8x0m, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %add
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !192
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !193
  %bmaddr.i = getelementptr inbounds %struct.intel8x0m, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %18, i32 64
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #10, !srcloc !187
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %and = and i32 %20, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.else.if.end30_crit_edge, label %if.then12

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then12:                                        ; preds = %if.else
  %and13 = and i32 %20, -536873986
  %21 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %22, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !189
  tail call void @arm_heavy_mb() #10
  %23 = tail call i32 @llvm.bswap.i32(i32 %and13) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 %23) #10, !srcloc !190
  %in_ac97_init14 = getelementptr inbounds %struct.intel8x0m, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %in_ac97_init14 to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load15 = load i8, ptr %in_ac97_init14, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load15)
  %tobool18.not = icmp sgt i8 %bf.load15, -1
  br i1 %tobool18.not, label %do.end22, label %if.then12.if.end30_crit_edge

if.then12.if.end30_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

do.end22:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %card23 = getelementptr inbounds %struct.intel8x0m, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %card23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card23, align 4
  %dev24 = getelementptr inbounds %struct.snd_card, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev24, align 8
  %29 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %num, align 8
  %conv26 = zext i16 %30 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.41, i32 noundef %conv26, i32 noundef %conv6) #14
  br label %if.end30

if.end30:                                         ; preds = %do.end22, %if.then12.if.end30_crit_edge, %if.else.if.end30_crit_edge, %do.end, %if.then.if.end30_crit_edge
  %res.0 = phi i16 [ %16, %if.else.if.end30_crit_edge ], [ -1, %do.end ], [ -1, %if.then.if.end30_crit_edge ], [ -1, %do.end22 ], [ -1, %if.then12.if.end30_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 84, i16 %reg)
  %cmp32 = icmp eq i16 %reg, 84
  br i1 %cmp32, label %if.then34, label %if.end30.if.end36_crit_edge

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %addr.i56 = getelementptr inbounds %struct.intel8x0m, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %addr.i56 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %addr.i56, align 4
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %32) #10, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !193
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end30.if.end36_crit_edge
  ret i16 %res.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_intel8x0m_mixer_free_ac97(ptr nocapture noundef readonly %ac97) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ac971 = getelementptr inbounds %struct.intel8x0m, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %ac971 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ac971, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_bus(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_intel8x0m_mixer_free_ac97_bus(ptr nocapture noundef readonly %bus) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97_bus, ptr %bus, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ac97_bus = getelementptr inbounds %struct.intel8x0m, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ac97_bus to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ac97_bus, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_mixer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_intel8x0m_codec_semaphore(ptr nocapture noundef readonly %chip, i32 noundef %codec) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %codec)
  %cmp = icmp ugt i32 %codec, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %get_ich_codec_bit.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

get_ich_codec_bit.exit:                           ; preds = %entry
  %arrayidx.i = getelementptr [3 x i32], ptr @get_ich_codec_bit.codec_bit, i32 0, i32 %codec
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %bmaddr.i = getelementptr inbounds %struct.intel8x0m, ptr %chip, i32 0, i32 3
  %2 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !187
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %and = and i32 %5, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %get_ich_codec_bit.exit.cleanup_crit_edge, label %get_ich_codec_bit.exit.do.body_crit_edge

get_ich_codec_bit.exit.do.body_crit_edge:         ; preds = %get_ich_codec_bit.exit
  br label %do.body

get_ich_codec_bit.exit.cleanup_crit_edge:         ; preds = %get_ich_codec_bit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end8.do.body_crit_edge, %get_ich_codec_bit.exit.do.body_crit_edge
  %time.0 = phi i32 [ %dec, %if.end8.do.body_crit_edge ], [ 100, %get_ich_codec_bit.exit.do.body_crit_edge ]
  %6 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %7, i32 68
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i26) #10, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.end8

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #10
  %dec = add nsw i32 %time.0, -1
  %tobool9.not = icmp eq i32 %time.0, 0
  br i1 %tobool9.not, label %do.end12, label %if.end8.do.body_crit_edge

if.end8.do.body_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %card = getelementptr inbounds %struct.intel8x0m, ptr %chip, i32 0, i32 5
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %15 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %16, i32 68
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i28) #10, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  %conv14 = zext i8 %17 to i32
  %18 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %19, i32 64
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #10, !srcloc !187
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.36, i32 noundef %conv14, i32 noundef %21) #14
  %addr.i = getelementptr inbounds %struct.intel8x0m, ptr %chip, i32 0, i32 2
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %addr.i, align 4
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %23) #10, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !193
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %do.body.cleanup_crit_edge, %get_ich_codec_bit.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end12 ], [ -5, %entry.cleanup_crit_edge ], [ -5, %get_ich_codec_bit.exit.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_intel8x0m_playback_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i, align 4
  %substream2.i = getelementptr %struct.intel8x0m, ptr %1, i32 0, i32 8, i32 1, i32 4
  %4 = ptrtoint ptr %substream2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %substream2.i, align 4
  %hw.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %5 = call ptr @memcpy(ptr %hw.i, ptr @snd_intel8x0m_stream, i32 64)
  %call.i = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @snd_intel8x0m_pcm_open.hw_constraints_rates) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.snd_intel8x0m_pcm_open.exit_crit_edge, label %if.end.i

entry.snd_intel8x0m_pcm_open.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_intel8x0m_pcm_open.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.intel8x0m, ptr %1, i32 0, i32 8, i32 1
  %private_data.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %6 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx, ptr %private_data.i, align 8
  br label %snd_intel8x0m_pcm_open.exit

snd_intel8x0m_pcm_open.exit:                      ; preds = %if.end.i, %entry.snd_intel8x0m_pcm_open.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %call.i, %entry.snd_intel8x0m_pcm_open.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_intel8x0m_playback_close(ptr nocapture noundef readonly %substream) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %substream1 = getelementptr %struct.intel8x0m, ptr %1, i32 0, i32 8, i32 1, i32 4
  %2 = ptrtoint ptr %substream1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %substream1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_intel8x0m_pcm_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
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
  %private_data3 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data3, align 8
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %6 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_addr, align 8
  %physbuf = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %physbuf to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %physbuf, align 4
  %9 = load ptr, ptr %runtime1, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buffer_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 21
  %12 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %13, %11
  %div1.i.i = lshr i32 %mul.i.i, 3
  %size = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div1.i.i, ptr %size, align 4
  %15 = load ptr, ptr %runtime1, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i17 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 21
  %18 = ptrtoint ptr %frame_bits.i.i17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %frame_bits.i.i17, align 8
  %mul.i.i18 = mul i32 %19, %17
  %div1.i.i19 = lshr i32 %mul.i.i18, 3
  %fragsize = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 7
  %20 = ptrtoint ptr %fragsize to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div1.i.i19, ptr %fragsize, align 4
  %ac97 = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 21
  %21 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ac97, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %23 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rate, align 4
  %conv = trunc i32 %24 to i16
  tail call void @snd_ac97_write(ptr noundef %22, i16 noundef zeroext 64, i16 noundef zeroext %conv) #10
  %25 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_write(ptr noundef %26, i16 noundef zeroext 70, i16 noundef zeroext 0) #10
  %bdbar1.i = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 2
  %27 = ptrtoint ptr %bdbar1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bdbar1.i, align 4
  %reg_offset.i = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 1
  %29 = ptrtoint ptr %reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg_offset.i, align 4
  %bdbar_addr.i = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 3
  %31 = ptrtoint ptr %bdbar_addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bdbar_addr.i, align 4
  %bmaddr.i.i = getelementptr inbounds %struct.intel8x0m, ptr %1, i32 0, i32 3
  %33 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 %30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !189
  tail call void @arm_heavy_mb() #10
  %35 = tail call i32 @llvm.bswap.i32(i32 %32) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %35) #10, !srcloc !190
  %36 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size, align 4
  %38 = ptrtoint ptr %fragsize to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fragsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp.i = icmp eq i32 %37, %39
  %ack.i = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 14
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %40 = ptrtoint ptr %ack.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %ack.i, align 4
  %ack_reload.i = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 15
  %41 = ptrtoint ptr %ack_reload.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %ack_reload.i, align 4
  %shr.i = lshr i32 %37, 1
  %fragsize1.i = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 8
  %42 = ptrtoint ptr %fragsize1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shr.i, ptr %fragsize1.i, align 4
  %pcm_pos_shift.i = getelementptr inbounds %struct.intel8x0m, ptr %1, i32 0, i32 17
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i
  %idx.0115.i = phi i32 [ 0, %if.then.i ], [ %add21.i, %for.body.i.for.body.i_crit_edge ]
  %43 = ptrtoint ptr %physbuf to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %physbuf, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #10
  %arrayidx.i = getelementptr i32, ptr %28, i32 %idx.0115.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx.i, align 4
  %47 = ptrtoint ptr %fragsize1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %fragsize1.i, align 4
  %49 = ptrtoint ptr %pcm_pos_shift.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pcm_pos_shift.i, align 4
  %shr6.i = lshr i32 %48, %50
  %or.i = or i32 %shr6.i, -2147483648
  %51 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %add7.i = or i32 %idx.0115.i, 1
  %arrayidx8.i = getelementptr i32, ptr %28, i32 %add7.i
  %52 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx8.i, align 4
  %53 = ptrtoint ptr %physbuf to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %physbuf, align 4
  %55 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %size, align 4
  %shr11.i = lshr i32 %56, 1
  %add12.i = add i32 %shr11.i, %54
  %57 = tail call i32 @llvm.bswap.i32(i32 %add12.i) #10
  %add13.i = or i32 %idx.0115.i, 2
  %arrayidx14.i = getelementptr i32, ptr %28, i32 %add13.i
  %58 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %arrayidx14.i, align 4
  %59 = ptrtoint ptr %fragsize1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fragsize1.i, align 4
  %61 = ptrtoint ptr %pcm_pos_shift.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pcm_pos_shift.i, align 4
  %shr17.i = lshr i32 %60, %62
  %or18.i = or i32 %shr17.i, -2147483648
  %63 = tail call i32 @llvm.bswap.i32(i32 %or18.i) #10
  %add19.i = or i32 %idx.0115.i, 3
  %arrayidx20.i = getelementptr i32, ptr %28, i32 %add19.i
  %64 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx20.i, align 4
  %add21.i = add nuw nsw i32 %idx.0115.i, 4
  %cmp3.i = icmp ult i32 %idx.0115.i, 60
  br i1 %cmp3.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.snd_intel8x0m_setup_periods.exit_crit_edge

for.body.i.snd_intel8x0m_setup_periods.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_intel8x0m_setup_periods.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.else.i:                                        ; preds = %entry
  %65 = ptrtoint ptr %ack.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %ack.i, align 4
  %ack_reload23.i = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 15
  %66 = ptrtoint ptr %ack_reload23.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %ack_reload23.i, align 4
  %fragsize125.i = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 8
  %67 = ptrtoint ptr %fragsize125.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %39, ptr %fragsize125.i, align 4
  %pcm_pos_shift37.i = getelementptr inbounds %struct.intel8x0m, ptr %1, i32 0, i32 17
  br label %for.body28.i

for.body28.i:                                     ; preds = %for.body28.i.for.body28.i_crit_edge, %if.else.i
  %idx.1114.i = phi i32 [ 0, %if.else.i ], [ %add43.i, %for.body28.i.for.body28.i_crit_edge ]
  %68 = ptrtoint ptr %physbuf to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %physbuf, align 4
  %70 = lshr exact i32 %idx.1114.i, 1
  %71 = ptrtoint ptr %fragsize to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %fragsize, align 4
  %mul.i = mul i32 %72, %70
  %73 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %size, align 4
  %rem.i = urem i32 %mul.i, %74
  %add33.i = add i32 %rem.i, %69
  %75 = tail call i32 @llvm.bswap.i32(i32 %add33.i) #10
  %arrayidx35.i = getelementptr i32, ptr %28, i32 %idx.1114.i
  %76 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %arrayidx35.i, align 4
  %77 = ptrtoint ptr %fragsize to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %fragsize, align 4
  %79 = ptrtoint ptr %pcm_pos_shift37.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pcm_pos_shift37.i, align 4
  %shr38.i = lshr i32 %78, %80
  %or39.i = or i32 %shr38.i, -2147483648
  %81 = tail call i32 @llvm.bswap.i32(i32 %or39.i) #10
  %add40.i = or i32 %idx.1114.i, 1
  %arrayidx41.i = getelementptr i32, ptr %28, i32 %add40.i
  %82 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %arrayidx41.i, align 4
  %add43.i = add nuw nsw i32 %idx.1114.i, 2
  %cmp27.i = icmp ult i32 %idx.1114.i, 62
  br i1 %cmp27.i, label %for.body28.i.for.body28.i_crit_edge, label %for.end44.i

for.body28.i.for.body28.i_crit_edge:              ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body28.i

for.end44.i:                                      ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %size, align 4
  %85 = ptrtoint ptr %fragsize to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %fragsize, align 4
  %div.i = udiv i32 %84, %86
  br label %snd_intel8x0m_setup_periods.exit

snd_intel8x0m_setup_periods.exit:                 ; preds = %for.end44.i, %for.body.i.snd_intel8x0m_setup_periods.exit_crit_edge
  %div.sink.i = phi i32 [ %div.i, %for.end44.i ], [ 2, %for.body.i.snd_intel8x0m_setup_periods.exit_crit_edge ]
  %frags47.i = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 10
  %87 = ptrtoint ptr %frags47.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %div.sink.i, ptr %frags47.i, align 4
  %add48.i = add i32 %30, 5
  %lvi.i = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 11
  %88 = ptrtoint ptr %lvi.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 31, ptr %lvi.i, align 4
  %89 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i109.i = getelementptr i8, ptr %90, i32 %add48.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i109.i, i8 31) #10, !srcloc !197
  %civ.i = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 13
  %91 = ptrtoint ptr %civ.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %civ.i, align 4
  %add49.i = add i32 %30, 4
  %92 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i111.i = getelementptr i8, ptr %93, i32 %add49.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i111.i, i8 0) #10, !srcloc !197
  %94 = ptrtoint ptr %frags47.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %frags47.i, align 4
  %rem51.i = srem i32 31, %95
  %lvi_frag.i = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 12
  %96 = ptrtoint ptr %lvi_frag.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %rem51.i, ptr %lvi_frag.i, align 4
  %position.i = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 9
  %97 = ptrtoint ptr %position.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %position.i, align 4
  %roff_sr.i = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 17
  %98 = ptrtoint ptr %roff_sr.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %roff_sr.i, align 4
  %add52.i = add i32 %99, %30
  %100 = ptrtoint ptr %bmaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %bmaddr.i.i, align 4
  %add.ptr.i113.i = getelementptr i8, ptr %101, i32 %add52.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i113.i, i8 28) #10, !srcloc !197
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_intel8x0m_pcm_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %reg_offset = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %cmd)
  %8 = icmp ult i32 %cmd, 7
  br i1 %8, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %cmd to i8
  %switch.shifted = lshr i8 123, %switch.maskindex
  %9 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %switch.lobit.not = icmp eq i8 %9, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [7 x i8], ptr @switch.table.snd_intel8x0m_pcm_trigger, i32 0, i32 %cmd
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %10)
  %switch.load = load i8, ptr %switch.gep, align 1
  %add = add i32 %7, 11
  %bmaddr.i = getelementptr inbounds %struct.intel8x0m, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %switch.load) #10, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 0
  br i1 %cmp, label %while.cond.preheader, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %switch.lookup
  %roff_sr = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 17
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %while.cond.preheader
  %13 = ptrtoint ptr %roff_sr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %roff_sr, align 4
  %add5 = add i32 %14, %7
  %15 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %16, i32 %add5
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i18) #10, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  %18 = and i8 %17, 1
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %20, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i20, i8 2) #10, !srcloc !197
  br label %cleanup

cleanup:                                          ; preds = %while.end, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %while.end ], [ 0, %switch.lookup.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_intel8x0m_pcm_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %reg_offset = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %reg_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_offset, align 4
  %roff_picb = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 18
  %8 = ptrtoint ptr %roff_picb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %roff_picb, align 4
  %add = add i32 %9, %7
  %bmaddr.i = getelementptr inbounds %struct.intel8x0m, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !192
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !193
  %conv = zext i16 %13 to i32
  %pcm_pos_shift = getelementptr inbounds %struct.intel8x0m, ptr %1, i32 0, i32 17
  %14 = ptrtoint ptr %pcm_pos_shift to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pcm_pos_shift, align 4
  %shl = shl i32 %conv, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl)
  %cmp.not = icmp eq i32 %shl, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fragsize1 = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 8
  %16 = ptrtoint ptr %fragsize1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fragsize1, align 4
  %sub = sub i32 %17, %shl
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ptr.0 = phi i32 [ %sub, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %position = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 9
  %18 = ptrtoint ptr %position to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %position, align 4
  %add3 = add i32 %19, %ptr.0
  %size = getelementptr inbounds %struct.ichdev, ptr %5, i32 0, i32 6
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %21)
  %cmp4.not = icmp ult i32 %add3, %21
  br i1 %cmp4.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %runtime, align 4
  %mul.i = shl i32 %add3, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %23, i32 0, i32 21
  %24 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %25
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %div.i, %if.end7 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_intel8x0m_capture_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i, align 4
  %substream2.i = getelementptr inbounds %struct.intel8x0m, ptr %1, i32 0, i32 8, i32 0, i32 4
  %4 = ptrtoint ptr %substream2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %substream2.i, align 4
  %hw.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %5 = call ptr @memcpy(ptr %hw.i, ptr @snd_intel8x0m_stream, i32 64)
  %call.i = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @snd_intel8x0m_pcm_open.hw_constraints_rates) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.snd_intel8x0m_pcm_open.exit_crit_edge, label %if.end.i

entry.snd_intel8x0m_pcm_open.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_intel8x0m_pcm_open.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ichd = getelementptr inbounds %struct.intel8x0m, ptr %1, i32 0, i32 8
  %private_data.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %6 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ichd, ptr %private_data.i, align 8
  br label %snd_intel8x0m_pcm_open.exit

snd_intel8x0m_pcm_open.exit:                      ; preds = %if.end.i, %entry.snd_intel8x0m_pcm_open.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %call.i, %entry.snd_intel8x0m_pcm_open.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_intel8x0m_capture_close(ptr nocapture noundef readonly %substream) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %substream1 = getelementptr inbounds %struct.intel8x0m, ptr %1, i32 0, i32 8, i32 0, i32 4
  %2 = ptrtoint ptr %substream1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %substream1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_intel8x0m_proc_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #2 align 64 {
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
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.47) #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bmaddr.i = getelementptr inbounds %struct.intel8x0m, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 64
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !187
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  %12 = ptrtoint ptr %bmaddr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bmaddr.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %13, i32 60
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #10, !srcloc !187
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.48, i32 noundef %15) #10
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.49, i32 noundef %9) #10
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer, align 4
  %and = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.52, ptr @.str.51
  %and7 = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %cond9 = select i1 %tobool8.not, ptr @.str.52, ptr @.str.53
  %and10 = and i32 %9, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %cond12 = select i1 %tobool11.not, ptr @.str.52, ptr @.str.54
  %and13 = and i32 %9, 268436224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %cmp14 = icmp eq i32 %and13, 0
  %cond15 = select i1 %cmp14, ptr @.str.55, ptr @.str.52
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %19, ptr noundef nonnull @.str.50, ptr noundef nonnull %cond, ptr noundef nonnull %cond9, ptr noundef nonnull %cond12, ptr noundef nonnull %cond15) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel8x0m_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %ac97 = getelementptr inbounds %struct.intel8x0m, ptr %3, i32 0, i32 11
  %5 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_suspend(ptr noundef %6) #10
  %irq = getelementptr inbounds %struct.intel8x0m, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp = icmp sgt i32 %8, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call ptr @free_irq(i32 noundef %8, ptr noundef %3) #10
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %irq, align 4
  %sync_irq = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 33
  %10 = ptrtoint ptr %sync_irq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %sync_irq, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel8x0m_resume(ptr noundef %dev) #2 align 64 {
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
  %irq = getelementptr i8, ptr %dev, i32 932
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef nonnull @snd_intel8x0m_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56, i32 noundef %7) #14
  %call3 = tail call i32 @snd_card_disconnect(ptr noundef %1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %irq5 = getelementptr inbounds %struct.intel8x0m, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %irq5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %irq5, align 4
  %sync_irq = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 33
  %9 = ptrtoint ptr %sync_irq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %sync_irq, align 4
  %call7 = tail call fastcc i32 @snd_intel8x0m_chip_init(ptr noundef %3, i32 noundef 0)
  %ac97 = getelementptr inbounds %struct.intel8x0m, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_resume(ptr noundef %11) #10
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %12 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strlen(ptr nocapture) local_unnamed_addr #9

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
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
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !28, !30, !32, !33, !35, !36, !38, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !92, !94, !95, !96, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !113, !115, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !166, !167, !168, !169, !170, !172, !174, !175, !176}
!llvm.module.flags = !{!177, !178, !179, !180, !181, !182, !183, !184}
!llvm.ident = !{!185}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/intel8x0m.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/intel8x0m.c", i32 25, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/intel8x0m.c", i32 27, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/intel8x0m.c", i32 33, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype246, !8, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index247, !11, !"__UNIQUE_ID_index247", i1 false, i1 false}
!11 = !{!"../sound/pci/intel8x0m.c", i32 34, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/intel8x0m.c", i32 35, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype248, !13, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id249, !16, !"__UNIQUE_ID_id249", i1 false, i1 false}
!16 = !{!"../sound/pci/intel8x0m.c", i32 36, i32 1}
!17 = !{ptr @__param_ac97_clock, !18, !"__param_ac97_clock", i1 false, i1 false}
!18 = !{!"../sound/pci/intel8x0m.c", i32 37, i32 1}
!19 = !{ptr @__UNIQUE_ID_ac97_clocktype250, !18, !"__UNIQUE_ID_ac97_clocktype250", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_ac97_clock251, !21, !"__UNIQUE_ID_ac97_clock251", i1 false, i1 false}
!21 = !{!"../sound/pci/intel8x0m.c", i32 38, i32 1}
!22 = !{ptr @__param_enable, !23, !"__param_enable", i1 false, i1 false}
!23 = !{!"../sound/pci/intel8x0m.c", i32 42, i32 1}
!24 = !{ptr @__UNIQUE_ID_enabletype252, !23, !"__UNIQUE_ID_enabletype252", i1 false, i1 false}
!25 = !{ptr @__initcall__kmod_snd_intel8x0m__253_1237_intel8x0m_driver_init6, !26, !"__initcall__kmod_snd_intel8x0m__253_1237_intel8x0m_driver_init6", i1 false, i1 false}
!26 = !{!"../sound/pci/intel8x0m.c", i32 1237, i32 1}
!27 = !{ptr @__exitcall_intel8x0m_driver_exit, !26, !"__exitcall_intel8x0m_driver_exit", i1 false, i1 false}
!28 = !{ptr @ac97_clock, !29, !"ac97_clock", i1 false, i1 false}
!29 = !{!"../sound/pci/intel8x0m.c", i32 31, i32 12}
!30 = !{ptr @enable, !31, !"enable", i1 false, i1 false}
!31 = !{!"../sound/pci/intel8x0m.c", i32 41, i32 13}
!32 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!33 = !{ptr @index, !34, !"index", i1 false, i1 false}
!34 = !{!"../sound/pci/intel8x0m.c", i32 29, i32 12}
!35 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!36 = !{ptr @id, !37, !"id", i1 false, i1 false}
!37 = !{!"../sound/pci/intel8x0m.c", i32 30, i32 14}
!38 = !{ptr @__param_str_ac97_clock, !18, !"__param_str_ac97_clock", i1 false, i1 false}
!39 = !{ptr @__param_str_enable, !23, !"__param_str_enable", i1 false, i1 false}
!40 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @intel8x0m_driver, !42, !"intel8x0m_driver", i1 false, i1 false}
!42 = !{!"../sound/pci/intel8x0m.c", i32 1228, i32 26}
!43 = !{ptr @snd_intel8x0m_ids, !44, !"snd_intel8x0m_ids", i1 false, i1 false}
!44 = !{!"../sound/pci/intel8x0m.c", i32 192, i32 35}
!45 = !{ptr @.str.1, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/pci/intel8x0m.c", i32 1195, i32 23}
!47 = !{ptr @.str.2, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/pci/intel8x0m.c", i32 1196, i32 26}
!49 = !{ptr @.str.3, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/pci/intel8x0m.c", i32 1203, i32 25}
!51 = !{ptr @.str.4, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/pci/intel8x0m.c", i32 1218, i32 26}
!53 = !{ptr @.str.5, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/pci/intel8x0m.c", i32 1159, i32 35}
!55 = !{ptr @.str.6, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/pci/intel8x0m.c", i32 1160, i32 35}
!57 = !{ptr @.str.7, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/pci/intel8x0m.c", i32 1161, i32 35}
!59 = !{ptr @.str.8, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/pci/intel8x0m.c", i32 1162, i32 33}
!61 = !{ptr @.str.9, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/pci/intel8x0m.c", i32 1163, i32 35}
!63 = !{ptr @.str.10, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/pci/intel8x0m.c", i32 1164, i32 35}
!65 = !{ptr @.str.11, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/pci/intel8x0m.c", i32 1165, i32 35}
!67 = !{ptr @.str.12, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/pci/intel8x0m.c", i32 1166, i32 33}
!69 = !{ptr @.str.13, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/pci/intel8x0m.c", i32 1167, i32 33}
!71 = !{ptr @.str.14, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/pci/intel8x0m.c", i32 1168, i32 12}
!73 = !{ptr @.str.15, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/pci/intel8x0m.c", i32 1169, i32 27}
!75 = !{ptr @.str.16, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/pci/intel8x0m.c", i32 1170, i32 37}
!77 = !{ptr @.str.17, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/pci/intel8x0m.c", i32 1171, i32 37}
!79 = !{ptr @.str.18, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/pci/intel8x0m.c", i32 1172, i32 38}
!81 = !{ptr @.str.19, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/pci/intel8x0m.c", i32 1173, i32 37}
!83 = !{ptr @.str.20, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/pci/intel8x0m.c", i32 1174, i32 12}
!85 = !{ptr @shortnames, !86, !"shortnames", i1 false, i1 false}
!86 = !{!"../sound/pci/intel8x0m.c", i32 1158, i32 3}
!87 = !{ptr @snd_intel8x0m_init.intel_regs, !88, !"intel_regs", i1 false, i1 false}
!88 = !{!"../sound/pci/intel8x0m.c", i32 1055, i32 35}
!89 = !{ptr @snd_intel8x0m_init.__key, !90, !"__key", i1 false, i1 false}
!90 = !{!"../sound/pci/intel8x0m.c", i32 1065, i32 2}
!91 = !{ptr @.str.21, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.22, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/pci/intel8x0m.c", i32 1144, i32 3}
!94 = !{ptr @.str.23, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.24, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.25, !93, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.26, !93, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @snd_intel8x0m_init._entry, !93, !"_entry", i1 false, i1 false}
!99 = !{ptr @snd_intel8x0m_init._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.27, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/pci/intel8x0m.c", i32 868, i32 2}
!102 = !{ptr @.str.28, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @snd_intel8x0m_ich_chip_init._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @snd_intel8x0m_ich_chip_init._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.30, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/pci/intel8x0m.c", i32 888, i32 4}
!107 = !{ptr @snd_intel8x0m_ich_chip_init._entry.29, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @snd_intel8x0m_ich_chip_init._entry_ptr.31, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @get_ich_codec_bit.codec_bit, !110, !"codec_bit", i1 false, i1 false}
!110 = !{!"../sound/pci/intel8x0m.c", i32 276, i32 28}
!111 = !{ptr @snd_intel8x0m_mixer.ops, !112, !"ops", i1 false, i1 false}
!112 = !{!"../sound/pci/intel8x0m.c", i32 790, i32 39}
!113 = !{ptr @.str.32, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/pci/intel8x0m.c", i32 816, i32 3}
!115 = !{ptr @.str.33, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @snd_intel8x0m_mixer._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @snd_intel8x0m_mixer._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.34, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/intel8x0m.c", i32 323, i32 4}
!120 = !{ptr @.str.35, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @snd_intel8x0m_codec_write._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @snd_intel8x0m_codec_write._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.36, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/pci/intel8x0m.c", i32 307, i32 2}
!125 = !{ptr @.str.37, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @snd_intel8x0m_codec_semaphore._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @snd_intel8x0m_codec_semaphore._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.38, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/pci/intel8x0m.c", i32 339, i32 4}
!130 = !{ptr @.str.39, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @snd_intel8x0m_codec_read._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @snd_intel8x0m_codec_read._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.41, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/pci/intel8x0m.c", i32 351, i32 5}
!135 = !{ptr @snd_intel8x0m_codec_read._entry.40, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @snd_intel8x0m_codec_read._entry_ptr.42, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.43, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/pci/intel8x0m.c", i32 715, i32 13}
!139 = distinct !{null, !140, !"intel_pcms", i1 false, i1 false}
!140 = !{!"../sound/pci/intel8x0m.c", i32 713, i32 35}
!141 = !{ptr @snd_intel8x0m_playback_ops, !142, !"snd_intel8x0m_playback_ops", i1 false, i1 false}
!142 = !{!"../sound/pci/intel8x0m.c", i32 648, i32 33}
!143 = !{ptr @snd_intel8x0m_pcm_open.rates, !144, !"rates", i1 false, i1 false}
!144 = !{!"../sound/pci/intel8x0m.c", i32 598, i32 28}
!145 = !{ptr @snd_intel8x0m_pcm_open.hw_constraints_rates, !146, !"hw_constraints_rates", i1 false, i1 false}
!146 = !{!"../sound/pci/intel8x0m.c", i32 599, i32 49}
!147 = !{ptr @snd_intel8x0m_stream, !148, !"snd_intel8x0m_stream", i1 false, i1 false}
!148 = !{!"../sound/pci/intel8x0m.c", i32 574, i32 38}
!149 = !{ptr @snd_intel8x0m_capture_ops, !150, !"snd_intel8x0m_capture_ops", i1 false, i1 false}
!150 = !{!"../sound/pci/intel8x0m.c", i32 656, i32 33}
!151 = !{ptr @.str.44, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/pci/intel8x0m.c", i32 682, i32 17}
!153 = !{ptr @.str.45, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/pci/intel8x0m.c", i32 700, i32 22}
!155 = !{ptr @.str.46, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/pci/intel8x0m.c", i32 1037, i32 35}
!157 = !{ptr @.str.47, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/pci/intel8x0m.c", i32 1021, i32 2}
!159 = !{ptr @.str.48, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/pci/intel8x0m.c", i32 1025, i32 2}
!161 = !{ptr @.str.49, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/pci/intel8x0m.c", i32 1027, i32 2}
!163 = !{ptr @.str.50, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/pci/intel8x0m.c", i32 1028, i32 2}
!165 = !{ptr @.str.51, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.52, !164, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.53, !164, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.54, !164, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.55, !164, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @intel8x0m_pm, !171, !"intel8x0m_pm", i1 false, i1 false}
!171 = !{!"../sound/pci/intel8x0m.c", i32 1009, i32 8}
!172 = !{ptr @.str.56, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/pci/intel8x0m.c", i32 995, i32 3}
!174 = !{ptr @.str.57, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @intel8x0m_resume._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @intel8x0m_resume._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{i32 1, !"wchar_size", i32 2}
!178 = !{i32 1, !"min_enum_size", i32 4}
!179 = !{i32 8, !"branch-target-enforcement", i32 0}
!180 = !{i32 8, !"sign-return-address", i32 0}
!181 = !{i32 8, !"sign-return-address-all", i32 0}
!182 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!183 = !{i32 7, !"uwtable", i32 1}
!184 = !{i32 7, !"frame-pointer", i32 2}
!185 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!186 = !{!"auto-init"}
!187 = !{i64 718808}
!188 = !{i64 2148903981}
!189 = !{i64 2148905336}
!190 = !{i64 718390}
!191 = !{!"branch_weights", i32 1, i32 2000}
!192 = !{i64 717970}
!193 = !{i64 2148903369}
!194 = !{i64 2148904786}
!195 = !{i64 717770}
!196 = !{i64 2148904362}
!197 = !{i64 718193}
!198 = !{i64 718588}
!199 = !{i64 2148902757}
