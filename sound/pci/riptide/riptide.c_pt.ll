; ModuleID = '/llk/IR_all_yes/sound/pci/riptide/riptide.c_pt.bc'
source_filename = "../sound/pci/riptide/riptide.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.riptide_firmware = type { i16, i16, i16, i16 }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lbuspath = type { ptr, ptr, ptr }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.snd_riptide = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, i32, i32, i32, i16, i16, i16, ptr, i16, %union.firmware_version, %struct.spinlock, ptr, i32, i32, i32 }
%union.firmware_version = type { %union.cmdret }
%union.cmdret = type { [2 x i32] }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.riptideport = type { i32, i32, [2 x i32], [2 x %struct.cmdport] }
%struct.cmdport = type { i32, i32, i32, [5 x i32] }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
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
%struct.pcmhw = type { %struct.lbuspath, ptr, i8, [2 x i8], i8, i8, i8, i32, i32, i32, %struct.snd_dma_buffer, ptr, i32, i32, i32, i32 }
%struct.sgd = type { i32, i32, i32, i32 }
%struct.cmdif = type { ptr, %struct.spinlock, i32, i32, i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.85, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.85 = type { i32, [28 x i8] }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.73, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.73 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.gameport = type { ptr, [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, i32, %struct.spinlock, i32, ptr, ptr, ptr, ptr, %struct.mutex, %struct.device, %struct.list_head }

@__UNIQUE_ID_author242 = internal constant [48 x i8] c"snd_riptide.author=Peter Gruber <nokos@gmx.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [32 x i8] c"snd_riptide.description=riptide\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [47 x i8] c"snd_riptide.file=sound/pci/riptide/snd-riptide\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [24 x i8] c"snd_riptide.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware246 = internal constant [33 x i8] c"snd_riptide.firmware=riptide.hex\00", section ".modinfo", align 1
@__param_str_index = internal constant [18 x i8] c"snd_riptide.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype247 = internal constant [40 x i8] c"snd_riptide.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index248 = internal constant [58 x i8] c"snd_riptide.parm=index:Index value for Riptide soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [15 x i8] c"snd_riptide.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype249 = internal constant [39 x i8] c"snd_riptide.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id250 = internal constant [53 x i8] c"snd_riptide.parm=id:ID string for Riptide soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [19 x i8] c"snd_riptide.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype251 = internal constant [42 x i8] c"snd_riptide.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable252 = internal constant [50 x i8] c"snd_riptide.parm=enable:Enable Riptide soundcard.\00", section ".modinfo", align 1
@__param_str_joystick_port = internal constant [26 x i8] c"snd_riptide.joystick_port\00", align 1
@__param_arr_joystick_port = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @joystick_port }, align 4
@__param_joystick_port = internal constant %struct.kernel_param { ptr @__param_str_joystick_port, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 2, %union.anon.65 { ptr @__param_arr_joystick_port } }, section "__param", align 4
@__UNIQUE_ID_joystick_porttype253 = internal constant [48 x i8] c"snd_riptide.parmtype=joystick_port:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_joystick_port254 = internal constant [70 x i8] c"snd_riptide.parm=joystick_port:Joystick port # for Riptide soundcard.\00", section ".modinfo", align 1
@__param_str_mpu_port = internal constant [21 x i8] c"snd_riptide.mpu_port\00", align 1
@__param_arr_mpu_port = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @mpu_port }, align 4
@__param_mpu_port = internal constant %struct.kernel_param { ptr @__param_str_mpu_port, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 2, %union.anon.65 { ptr @__param_arr_mpu_port } }, section "__param", align 4
@__UNIQUE_ID_mpu_porttype255 = internal constant [43 x i8] c"snd_riptide.parmtype=mpu_port:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_mpu_port256 = internal constant [60 x i8] c"snd_riptide.parm=mpu_port:MPU401 port # for Riptide driver.\00", section ".modinfo", align 1
@__param_str_opl3_port = internal constant [22 x i8] c"snd_riptide.opl3_port\00", align 1
@__param_arr_opl3_port = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @opl3_port }, align 4
@__param_opl3_port = internal constant %struct.kernel_param { ptr @__param_str_opl3_port, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 2, %union.anon.65 { ptr @__param_arr_opl3_port } }, section "__param", align 4
@__UNIQUE_ID_opl3_porttype257 = internal constant [44 x i8] c"snd_riptide.parmtype=opl3_port:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_opl3_port258 = internal constant [59 x i8] c"snd_riptide.parm=opl3_port:OPL3 port # for Riptide driver.\00", section ".modinfo", align 1
@driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_riptide_ids, ptr @snd_card_riptide_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @riptide_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@joystick_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.68, ptr @snd_riptide_joystick_ids, ptr @snd_riptide_joystick_probe, ptr @snd_riptide_joystick_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_snd_riptide__259_2168_alsa_card_riptide_init6 = internal global ptr @alsa_card_riptide_init, section ".initcall6.init", align 4
@__exitcall_alsa_card_riptide_exit = internal global ptr @alsa_card_riptide_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { <{ i8, [31 x i8] }>, [32 x i8] } { <{ i8, [31 x i8] }> <{ i8 1, [31 x i8] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@joystick_port = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512, i32 512], [32 x i8] zeroinitializer }, align 32
@mpu_port = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 816, i32 816, i32 816, i32 816, i32 816, i32 816, i32 816, i32 816, i32 816, i32 816, i32 816, i32 816, i32 816, i32 816, i32 816, i32 816, i32 816, i32 816, i32 816, i32 816, i32 816, i32 816, i32 816, i32 816, i32 816, i32 816, i32 816, i32 816, i32 816, i32 816, i32 816, i32 816], [32 x i8] zeroinitializer }, align 32
@opl3_port = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 904, i32 904, i32 904, i32 904, i32 904, i32 904, i32 904, i32 904, i32 904, i32 904, i32 904, i32 904, i32 904, i32 904, i32 904, i32 904, i32 904, i32 904, i32 904, i32 904, i32 904, i32 904, i32 904, i32 904, i32 904, i32 904, i32 904, i32 904, i32 904, i32 904, i32 904, i32 904], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd_riptide\00", [20 x i8] zeroinitializer }, align 32
@snd_riptide_ids = internal constant { [5 x %struct.pci_device_id], [32 x i8] } { [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 4730, i32 17168, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4730, i32 17184, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4730, i32 17200, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4730, i32 17216, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@riptide_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @riptide_suspend, ptr @riptide_resume, ptr @riptide_suspend, ptr @riptide_resume, ptr @riptide_suspend, ptr @riptide_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@snd_card_riptide_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/pci/riptide/riptide.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014Riptide: Can't Allocate MPU at 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014Riptide: Can't Allocate OPL3 at 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014Riptide: Can't Allocate OPL3-HWDEP\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RIPTIDE\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s at 0x%lx, irq %i mpu 0x%x opl3 0x%x gameport 0x%x\00", [43 x i8] zeroinitializer }, align 32
@snd_riptide_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Riptide: unable to grab IRQ %d\0A\00", [62 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Riptide: DMA stopped unexpectedly\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"interrupt 0x%x after 0x%lx of 0x%lx frames in period\0A\00", [42 x i8] zeroinitializer }, align 32
@snd_riptide_initialize.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&cif->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Modem enable?\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Enabling MPU IRQs\0A\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AC97: 0x%x 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@lbus_play_modem = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c")\FF", [30 x i8] zeroinitializer }, align 32
@lbus_play_opl3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"'\FF", [30 x i8] zeroinitializer }, align 32
@lbus_play_i2s = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\0B%\FF", [29 x i8] zeroinitializer }, align 32
@lbus_play_out = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\1A\FF", [30 x i8] zeroinitializer }, align 32
@lbus_play_outhp = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\1D\FF", [30 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013Riptide: device not ready, audio status: 0x%x ready: %d gerr: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Riptide: audio status: 0x%x ready: %d gerr: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Firmware version: ASIC: %d CODEC %d AUXDSP %d PROG %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Writing Firmware\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"riptide.hex\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Riptide: Firmware not available %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Riptide: Could not load firmware %d\0A\00", [57 x i8] zeroinitializer }, align 32
@firmware_versions = internal global { [1 x { %struct.riptide_firmware }], [24 x i8] } { [1 x { %struct.riptide_firmware }] [{ %struct.riptide_firmware } { %struct.riptide_firmware { i16 3, i16 2, i16 3, i16 773 } }], [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"load firmware return %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"send arm 0x%x 0x%x 0x%x return %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sent mixer %d: 0x%x 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sent mixer failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"alloc path 0x%x->0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@lbusin2out = internal constant { [61 x [2 x i8]], [38 x i8] } { [61 x [2 x i8]] [[2 x i8] c">\08", [2 x i8] c">\09", [2 x i8] c">\08", [2 x i8] c">\09", [2 x i8] c">\08", [2 x i8] c">\09", [2 x i8] c">\08", [2 x i8] c">\09", [2 x i8] c"\10\00", [2 x i8] c"\11\00", [2 x i8] c"\12\00", [2 x i8] c"\13\00", [2 x i8] c"\14\00", [2 x i8] c"\15\01", [2 x i8] c"\16\01", [2 x i8] c"\17\01", [2 x i8] c"\18\01", [2 x i8] c"\19\01", [2 x i8] c"\1A\01", [2 x i8] c"\1B\01", [2 x i8] c"\1C\03", [2 x i8] c"\1D\03", [2 x i8] c"\1E\03", [2 x i8] c"\1F\03", [2 x i8] c" \02", [2 x i8] c"!\08", [2 x i8] c">\09", [2 x i8] c">\08", [2 x i8] c">\09", [2 x i8] c">\08", [2 x i8] c"*\04", [2 x i8] c"*\04", [2 x i8] c"*\04", [2 x i8] c"*\04", [2 x i8] c"*\04", [2 x i8] c"*\04", [2 x i8] c"*\04", [2 x i8] c"*\04", [2 x i8] c"*\04", [2 x i8] c"*\04", [2 x i8] c"*\04", [2 x i8] c"*\04", [2 x i8] c"+\05", [2 x i8] c",\05", [2 x i8] c"-\05", [2 x i8] c".\05", [2 x i8] c"/\05", [2 x i8] c"0\08", [2 x i8] c"1\06", [2 x i8] c"3\06", [2 x i8] c"5\06", [2 x i8] c"7\06", [2 x i8] c"9\07", [2 x i8] c"9\07", [2 x i8] c":\07", [2 x i8] c":\07", [2 x i8] c";\07", [2 x i8] c";\07", [2 x i8] c"<\07", [2 x i8] c"<\07", [2 x i8] c">\09"], [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013Riptide: Too many failed cmds, reinitializing\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Riptide: Initialization failed.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"send cmd %d time: %d mintime: %d maxtime %d err: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"send cmd %d hw: 0x%x flag: 0x%x cmd: 0x%x parm: 0x%x ret: 0x%x 0x%x CMDE: %d DATF: %d failed %d\0A\00", [63 x i8] zeroinitializer }, align 32
@snd_riptide_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_riptide_playback_open, ptr @snd_riptide_playback_close, ptr null, ptr @snd_riptide_hw_params, ptr @snd_riptide_hw_free, ptr @snd_riptide_prepare, ptr @snd_riptide_trigger, ptr null, ptr @snd_riptide_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_riptide_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_riptide_capture_open, ptr @snd_riptide_capture_close, ptr null, ptr @snd_riptide_hw_params, ptr @snd_riptide_hw_free, ptr @snd_riptide_prepare, ptr @snd_riptide_trigger, ptr null, ptr @snd_riptide_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_riptide_playback = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 590083, i64 23, i32 -2147483394, i32 5500, i32 48000, i32 1, i32 2, i32 65536, i32 2048, i32 1048576, i32 2, i32 64, i32 0 }, [32 x i8] zeroinitializer }, align 32
@lbus_play_paths = internal constant { [3 x %struct.lbuspath], [60 x i8] } { [3 x %struct.lbuspath] [%struct.lbuspath { ptr @lbus_play_noconv1, ptr @lbus_play_stereo1, ptr @lbus_play_mono1 }, %struct.lbuspath { ptr @lbus_play_noconv2, ptr @lbus_play_stereo2, ptr @lbus_play_mono2 }, %struct.lbuspath { ptr @lbus_play_noconv3, ptr @lbus_play_stereo3, ptr @lbus_play_mono3 }], [60 x i8] zeroinitializer }, align 32
@play_ids = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\04\01\02", [29 x i8] zeroinitializer }, align 32
@play_sources = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\04\01\02", [29 x i8] zeroinitializer }, align 32
@lbus_play_noconv1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\1E\FF", [30 x i8] zeroinitializer }, align 32
@lbus_play_stereo1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\08\1E\FF", [29 x i8] zeroinitializer }, align 32
@lbus_play_mono1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\0D\1E\FF", [29 x i8] zeroinitializer }, align 32
@lbus_play_noconv2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\1F\FF", [30 x i8] zeroinitializer }, align 32
@lbus_play_stereo2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\09\1F\FF", [29 x i8] zeroinitializer }, align 32
@lbus_play_mono2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\0E\1F\FF", [29 x i8] zeroinitializer }, align 32
@lbus_play_noconv3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \FF", [30 x i8] zeroinitializer }, align 32
@lbus_play_stereo3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\0A \FF", [29 x i8] zeroinitializer }, align 32
@lbus_play_mono3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\0F \FF", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"hw params id %d (sgdlist: 0x%p 0x%lx %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Riptide: failed to alloc %d dma bytes\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"free path 0x%x->0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"prepare id %d ch: %d f:0x%x r:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"use sgdlist at 0x%p\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"create sgd size: 0x%x pages %d of size 0x%x for period 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"setsampleformat mixer: %d id: %d channels: %d format: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"setsampleformat failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"setsamplerate intdec: %d,%d rate: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sent samplerate %d: %d failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Riptide: Could not stop stream!\00", [62 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"pointer stream %d position 0x%x(0x%x in buffer) bytes 0x%lx(0x%lx in period) frames\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"stream not started or strange parms (%d %ld)\0A\00", [50 x i8] zeroinitializer }, align 32
@snd_riptide_capture = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 590083, i64 23, i32 -2147483394, i32 5500, i32 48000, i32 1, i32 2, i32 65536, i32 2048, i32 32768, i32 2, i32 64, i32 0 }, [32 x i8] zeroinitializer }, align 32
@lbus_rec_path = internal constant { %struct.lbuspath, [20 x i8] } { %struct.lbuspath { ptr @lbus_rec_noconv1, ptr @lbus_rec_stereo1, ptr @lbus_rec_mono1 }, [20 x i8] zeroinitializer }, align 32
@lbus_rec_noconv1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\05\FF", [30 x i8] zeroinitializer }, align 32
@lbus_rec_stereo1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\18\05\FF", [29 x i8] zeroinitializer }, align 32
@lbus_rec_mono1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\17\05\FF", [29 x i8] zeroinitializer }, align 32
@snd_riptide_mixer.ops = internal constant { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr null, ptr null, ptr @snd_riptide_codec_write, ptr @snd_riptide_codec_read, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Write AC97 reg 0x%x 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Write AC97 reg failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Read AC97 reg 0x%x got 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"riptide\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s\0A\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Device ID: 0x%x\0AReceived IRQs: (%ld)%ld\0APorts:\00", [49 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%c%02x: %08x\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\0AVersion: ASIC: %d CODEC: %d AUXDSP: %d PROG: %d\00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\0ADigital mixer:\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\0A %d: %d %d\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\0AARM Commands num: %d failed: %d time: %d max: %d min: %d\00", [38 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\0AOpen streams %d:\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"stream: %d mixer: %d source: %d (%d,%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rate: %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Paths:\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%x->%x \00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"got mixer %d: 0x%x 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rates differ %d %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"getsampleformat %d %d %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"getsourcesink 0x%x 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_riptide-joystick\00", [43 x i8] zeroinitializer }, align 32
@snd_riptide_joystick_ids = internal constant { [5 x %struct.pci_device_id], [32 x i8] } { [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 4730, i32 17170, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4730, i32 17186, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4730, i32 17202, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4730, i32 17218, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_riptide_joystick_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Riptide gameport\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014Riptide: cannot grab gameport 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 17168, i64 17184, i64 17200]
@__sancov_gen_cov_switch_values.71 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.73 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"driver\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 2127, i32 26 }
@___asan_gen_.77 = private unnamed_addr constant [16 x i8] c"joystick_driver\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 2137, i32 26 }
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 108, i32 12 }
@___asan_gen_.83 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 109, i32 14 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 110, i32 13 }
@___asan_gen_.89 = private unnamed_addr constant [14 x i8] c"joystick_port\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 113, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant [9 x i8] c"mpu_port\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 115, i32 12 }
@___asan_gen_.95 = private unnamed_addr constant [10 x i8] c"opl3_port\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 116, i32 12 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 2128, i32 10 }
@___asan_gen_.101 = private unnamed_addr constant [16 x i8] c"snd_riptide_ids\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 495, i32 35 }
@___asan_gen_.104 = private unnamed_addr constant [11 x i8] c"riptide_pm\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1169, i32 8 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 2028, i32 13 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 2074, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 2086, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 2093, i32 5 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 2105, i32 23 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 2109, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1827, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1848, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1110, i32 6 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1124, i32 5 }
@___asan_gen_.143 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1779, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1791, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1795, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1267, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [16 x i8] c"lbus_play_modem\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 561, i32 28 }
@___asan_gen_.161 = private unnamed_addr constant [15 x i8] c"lbus_play_opl3\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 558, i32 28 }
@___asan_gen_.164 = private unnamed_addr constant [14 x i8] c"lbus_play_i2s\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 564, i32 28 }
@___asan_gen_.167 = private unnamed_addr constant [14 x i8] c"lbus_play_out\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 567, i32 28 }
@___asan_gen_.170 = private unnamed_addr constant [16 x i8] c"lbus_play_outhp\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 570, i32 28 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1194, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1201, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1208, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1221, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1223, i32 43 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1226, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1233, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [18 x i8] c"firmware_versions\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 638, i32 31 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 732, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 816, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 928, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 935, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 745, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant [11 x i8] c"lbusin2out\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 518, i32 28 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 837, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 844, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 904, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 913, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant [25 x i8] c"snd_riptide_playback_ops\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1662, i32 33 }
@___asan_gen_.230 = private unnamed_addr constant [24 x i8] c"snd_riptide_capture_ops\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1671, i32 33 }
@___asan_gen_.233 = private unnamed_addr constant [21 x i8] c"snd_riptide_playback\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1309, i32 38 }
@___asan_gen_.236 = private unnamed_addr constant [16 x i8] c"lbus_play_paths\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 614, i32 30 }
@___asan_gen_.239 = private unnamed_addr constant [9 x i8] c"play_ids\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 610, i32 28 }
@___asan_gen_.242 = private unnamed_addr constant [13 x i8] c"play_sources\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 611, i32 28 }
@___asan_gen_.245 = private unnamed_addr constant [18 x i8] c"lbus_play_noconv1\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 573, i32 28 }
@___asan_gen_.248 = private unnamed_addr constant [18 x i8] c"lbus_play_stereo1\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 576, i32 28 }
@___asan_gen_.251 = private unnamed_addr constant [16 x i8] c"lbus_play_mono1\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 579, i32 28 }
@___asan_gen_.254 = private unnamed_addr constant [18 x i8] c"lbus_play_noconv2\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 582, i32 28 }
@___asan_gen_.257 = private unnamed_addr constant [18 x i8] c"lbus_play_stereo2\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 585, i32 28 }
@___asan_gen_.260 = private unnamed_addr constant [16 x i8] c"lbus_play_mono2\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 588, i32 28 }
@___asan_gen_.263 = private unnamed_addr constant [18 x i8] c"lbus_play_noconv3\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 591, i32 28 }
@___asan_gen_.266 = private unnamed_addr constant [18 x i8] c"lbus_play_stereo3\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 594, i32 28 }
@___asan_gen_.269 = private unnamed_addr constant [16 x i8] c"lbus_play_mono3\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 597, i32 28 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1553, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1562, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 783, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1458, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1479, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1493, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1008, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1018, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1031, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1047, i32 5 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1420, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1360, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1375, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant [20 x i8] c"snd_riptide_capture\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1328, i32 38 }
@___asan_gen_.314 = private unnamed_addr constant [14 x i8] c"lbus_rec_path\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 631, i32 30 }
@___asan_gen_.317 = private unnamed_addr constant [17 x i8] c"lbus_rec_noconv1\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 600, i32 28 }
@___asan_gen_.320 = private unnamed_addr constant [17 x i8] c"lbus_rec_stereo1\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 603, i32 28 }
@___asan_gen_.323 = private unnamed_addr constant [15 x i8] c"lbus_rec_mono1\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 606, i32 28 }
@___asan_gen_.326 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1948, i32 39 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1739, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1745, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1760, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1939, i32 35 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1878, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1879, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1882, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1886, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1892, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1895, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1897, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1902, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1909, i32 4 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1914, i32 5 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1928, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1932, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1934, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1067, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 993, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 997, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 966, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 2138, i32 10 }
@___asan_gen_.395 = private unnamed_addr constant [25 x i8] c"snd_riptide_joystick_ids\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 504, i32 35 }
@___asan_gen_.398 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1974, i32 13 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1996, i32 7 }
@___asan_gen_.404 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.405 = private constant [31 x i8] c"../sound/pci/riptide/riptide.c\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.405, i32 1997, i32 3 }
@llvm.compiler.used = appending global [137 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_enable252, ptr @__UNIQUE_ID_enabletype251, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_firmware246, ptr @__UNIQUE_ID_id250, ptr @__UNIQUE_ID_idtype249, ptr @__UNIQUE_ID_index248, ptr @__UNIQUE_ID_indextype247, ptr @__UNIQUE_ID_joystick_port254, ptr @__UNIQUE_ID_joystick_porttype253, ptr @__UNIQUE_ID_license245, ptr @__UNIQUE_ID_mpu_port256, ptr @__UNIQUE_ID_mpu_porttype255, ptr @__UNIQUE_ID_opl3_port258, ptr @__UNIQUE_ID_opl3_porttype257, ptr @__exitcall_alsa_card_riptide_exit, ptr @__initcall__kmod_snd_riptide__259_2168_alsa_card_riptide_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @__param_joystick_port, ptr @__param_mpu_port, ptr @__param_opl3_port, ptr @alsa_card_riptide_exit, ptr @driver, ptr @joystick_driver, ptr @index, ptr @id, ptr @enable, ptr @joystick_port, ptr @mpu_port, ptr @opl3_port, ptr @.str, ptr @snd_riptide_ids, ptr @riptide_pm, ptr @snd_card_riptide_probe.dev, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @snd_riptide_create.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @snd_riptide_initialize.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @lbus_play_modem, ptr @lbus_play_opl3, ptr @lbus_play_i2s, ptr @lbus_play_out, ptr @lbus_play_outhp, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @firmware_versions, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @lbusin2out, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @snd_riptide_playback_ops, ptr @snd_riptide_capture_ops, ptr @snd_riptide_playback, ptr @lbus_play_paths, ptr @play_ids, ptr @play_sources, ptr @lbus_play_noconv1, ptr @lbus_play_stereo1, ptr @lbus_play_mono1, ptr @lbus_play_noconv2, ptr @lbus_play_stereo2, ptr @lbus_play_mono2, ptr @lbus_play_noconv3, ptr @lbus_play_stereo3, ptr @lbus_play_mono3, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @snd_riptide_capture, ptr @lbus_rec_path, ptr @lbus_rec_noconv1, ptr @lbus_rec_stereo1, ptr @lbus_rec_mono1, ptr @snd_riptide_mixer.ops, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @snd_riptide_joystick_ids, ptr @snd_riptide_joystick_probe.dev, ptr @.str.69, ptr @.str.70], section "llvm.metadata"
@0 = internal global [111 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joystick_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joystick_port to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_port to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opl3_port to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_riptide_ids to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @riptide_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_card_riptide_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_riptide_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_riptide_initialize.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbus_play_modem to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbus_play_opl3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbus_play_i2s to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbus_play_out to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbus_play_outhp to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_versions to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbusin2out to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_riptide_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_riptide_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_riptide_playback to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbus_play_paths to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @play_ids to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @play_sources to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbus_play_noconv1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbus_play_stereo1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbus_play_mono1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbus_play_noconv2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbus_play_stereo2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbus_play_mono2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbus_play_noconv3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbus_play_stereo3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbus_play_mono3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_riptide_capture to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbus_rec_path to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbus_rec_noconv1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbus_rec_stereo1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbus_rec_mono1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_riptide_mixer.ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_riptide_joystick_ids to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_riptide_joystick_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @alsa_card_riptide_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @driver) #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @joystick_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @alsa_card_riptide_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @driver, ptr noundef null, ptr noundef nonnull @.str) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @joystick_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @driver) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_card_riptide_probe(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #2 align 64 {
entry:
  %pbus.i = alloca ptr, align 4
  %ac97.i = alloca %struct.snd_ac97_template, align 4
  %pcm.i = alloca ptr, align 4
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #8
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !285
  %1 = load i32, ptr @snd_card_riptide_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp = icmp sgt i32 %1, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !286
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @snd_card_riptide_probe.dev, align 4
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
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %5, ptr noundef %7, ptr noundef null, i32 noundef 152, ptr noundef nonnull %card) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 8
  %call.i = call i32 @pcim_enable_device(ptr noundef %pci) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end7.cleanup_crit_edge, label %do.body.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.i:                                        ; preds = %if.end7
  %lock.i = getelementptr inbounds %struct.snd_riptide, ptr %11, i32 0, i32 21
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @snd_riptide_create.__key, i16 noundef signext 3) #8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %11, align 4
  %pci3.i = getelementptr inbounds %struct.snd_riptide, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %pci3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pci, ptr %pci3.i, align 4
  %irq.i = getelementptr inbounds %struct.snd_riptide, ptr %11, i32 0, i32 13
  %14 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %irq.i, align 4
  %openstreams.i = getelementptr inbounds %struct.snd_riptide, ptr %11, i32 0, i32 12
  %15 = ptrtoint ptr %openstreams.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %openstreams.i, align 4
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %16 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %resource.i, align 8
  %port.i = getelementptr inbounds %struct.snd_riptide, ptr %11, i32 0, i32 14
  %18 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %port.i, align 4
  %received_irqs.i = getelementptr inbounds %struct.snd_riptide, ptr %11, i32 0, i32 23
  %19 = ptrtoint ptr %received_irqs.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %received_irqs.i, align 4
  %handled_irqs.i = getelementptr inbounds %struct.snd_riptide, ptr %11, i32 0, i32 24
  %20 = ptrtoint ptr %handled_irqs.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %handled_irqs.i, align 4
  %cif.i = getelementptr inbounds %struct.snd_riptide, ptr %11, i32 0, i32 3
  %21 = ptrtoint ptr %cif.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %cif.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 10
  %22 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @snd_riptide_free, ptr %private_free.i, align 4
  %call4.i = call i32 @pci_request_regions(ptr noundef %pci, ptr noundef nonnull @.str.6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.body.i.cleanup_crit_edge, label %if.end7.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i:                                        ; preds = %do.body.i
  %23 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !287
  call void @arm_heavy_mb() #8
  %and.i = and i32 %24, 1048575
  %add.i = or i32 %and.i, -18874368
  %25 = inttoptr i32 %add.i to ptr
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %25) #8, !srcloc !288
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !289
  %27 = and i32 %26, -67108865
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %25, i32 %27) #8, !srcloc !290
  %irq19.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %28 = ptrtoint ptr %irq19.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq19.i, align 4
  %call20.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %29, ptr noundef nonnull @snd_riptide_interrupt, ptr noundef nonnull @riptide_handleirq, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool.not.i = icmp eq i32 %call20.i, 0
  %30 = ptrtoint ptr %irq19.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq19.i, align 4
  br i1 %tobool.not.i, label %snd_riptide_create.exit, label %if.then21.i

if.then21.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 1849, ptr noundef nonnull @.str.10, i32 noundef %31) #8
  br label %cleanup

snd_riptide_create.exit:                          ; preds = %if.end7.i
  %32 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %irq.i, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 33
  %33 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %31, ptr %sync_irq.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 8
  %34 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %device.i, align 2
  %device_id.i = getelementptr inbounds %struct.snd_riptide, ptr %11, i32 0, i32 19
  %36 = ptrtoint ptr %device_id.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %device_id.i, align 4
  call void @pci_set_master(ptr noundef %pci) #8
  %call27.i = call fastcc i32 @snd_riptide_initialize(ptr noundef %11) #8
  %37 = call i32 @llvm.smin.i32(i32 %call27.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp9 = icmp slt i32 %call27.i, 0
  br i1 %cmp9, label %snd_riptide_create.exit.cleanup_crit_edge, label %if.end11

snd_riptide_create.exit.cleanup_crit_edge:        ; preds = %snd_riptide_create.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %snd_riptide_create.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i) #8
  %38 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i, align 4, !annotation !285
  %39 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %11, align 4
  %call.i163 = call i32 @snd_pcm_new(ptr noundef %40, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %pcm.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163)
  %cmp.i164 = icmp slt i32 %call.i163, 0
  br i1 %cmp.i164, label %snd_riptide_pcm.exit.thread, label %if.end15

snd_riptide_pcm.exit.thread:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %41 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %42, i32 noundef 0, ptr noundef nonnull @snd_riptide_playback_ops) #8
  %43 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %44, i32 noundef 1, ptr noundef nonnull @snd_riptide_capture_ops) #8
  %45 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pcm.i, align 4
  %private_data.i165 = getelementptr inbounds %struct.snd_pcm, ptr %46, i32 0, i32 11
  %47 = ptrtoint ptr %private_data.i165 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %11, ptr %private_data.i165, align 8
  %info_flags.i = getelementptr inbounds %struct.snd_pcm, ptr %46, i32 0, i32 3
  %48 = ptrtoint ptr %info_flags.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %info_flags.i, align 8
  %name.i = getelementptr inbounds %struct.snd_pcm, ptr %46, i32 0, i32 7
  %49 = ptrtoint ptr %name.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 5929358707346654464, ptr %name.i, align 1
  %pcm2.i = getelementptr inbounds %struct.snd_riptide, ptr %11, i32 0, i32 4
  %50 = ptrtoint ptr %pcm2.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %46, ptr %pcm2.i, align 4
  %51 = ptrtoint ptr %pci3.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pci3.i, align 4
  %dev.i166 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  %call3.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %46, i32 noundef 2, ptr noundef %dev.i166, i32 noundef 65536, i32 noundef 131072) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pbus.i) #8
  %53 = ptrtoint ptr %pbus.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 -1 to ptr), ptr %pbus.i, align 4, !annotation !285
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ac97.i) #8
  %54 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 5
  %55 = getelementptr inbounds i8, ptr %ac97.i, i32 4
  %56 = call ptr @memset(ptr %55, i32 0, i32 20)
  %57 = ptrtoint ptr %ac97.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %11, ptr %ac97.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 32, ptr %54, align 4
  %59 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %11, align 4
  %call.i168 = call i32 @snd_ac97_bus(ptr noundef %60, i32 noundef 0, ptr noundef nonnull @snd_riptide_mixer.ops, ptr noundef %11, ptr noundef nonnull %pbus.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %cmp.i169 = icmp slt i32 %call.i168, 0
  br i1 %cmp.i169, label %snd_riptide_mixer.exit.thread, label %snd_riptide_mixer.exit

snd_riptide_mixer.exit.thread:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus.i) #8
  br label %cleanup

snd_riptide_mixer.exit:                           ; preds = %if.end15
  %61 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 2
  %62 = ptrtoint ptr %pbus.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pbus.i, align 4
  %ac97_bus.i = getelementptr inbounds %struct.snd_riptide, ptr %11, i32 0, i32 9
  %64 = ptrtoint ptr %ac97_bus.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %ac97_bus.i, align 4
  %65 = ptrtoint ptr %pci3.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pci3.i, align 4
  %67 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %61, align 4
  %ac972.i = getelementptr inbounds %struct.snd_riptide, ptr %11, i32 0, i32 8
  %call3.i171 = call i32 @snd_ac97_mixer(ptr noundef %63, ptr noundef nonnull %ac97.i, ptr noundef %ac972.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i171)
  %cmp17 = icmp slt i32 %call3.i171, 0
  br i1 %cmp17, label %snd_riptide_mixer.exit.cleanup_crit_edge, label %if.end19

snd_riptide_mixer.exit.cleanup_crit_edge:         ; preds = %snd_riptide_mixer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %snd_riptide_mixer.exit
  %68 = load i32, ptr @snd_card_riptide_probe.dev, align 4
  %arrayidx20 = getelementptr [32 x i32], ptr @opl3_port, i32 0, i32 %68
  %69 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool21.not = icmp eq i32 %70, 0
  %spec.select = select i1 %tobool21.not, i16 -32768, i16 -24576
  %arrayidx25 = getelementptr [32 x i32], ptr @joystick_port, i32 0, i32 %68
  %71 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool26.not = icmp eq i32 %72, 0
  %73 = or i16 %spec.select, 1024
  %val.1 = select i1 %tobool26.not, i16 %spec.select, i16 %73
  %arrayidx32 = getelementptr [32 x i32], ptr @mpu_port, i32 0, i32 %68
  %74 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool33.not = icmp eq i32 %75, 0
  %76 = or i16 %val.1, 6144
  %val.2 = select i1 %tobool33.not, i16 %val.1, i16 %76
  %77 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %irq.i, align 4
  %.tr = trunc i32 %78 to i16
  %79 = shl i16 %.tr, 4
  %80 = and i16 %79, 240
  %conv41 = or i16 %80, %val.2
  %81 = ptrtoint ptr %pci3.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pci3.i, align 4
  %call43 = call i32 @pci_write_config_word(ptr noundef %82, i32 noundef 80, i16 noundef zeroext %conv41) #8
  %83 = load i32, ptr @snd_card_riptide_probe.dev, align 4
  %arrayidx44 = getelementptr [32 x i32], ptr @mpu_port, i32 0, i32 %83
  %84 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool45.not = icmp eq i32 %85, 0
  br i1 %tobool45.not, label %if.end19.if.end58_crit_edge, label %if.then46

if.end19.if.end58_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then46:                                        ; preds = %if.end19
  %conv48 = trunc i32 %85 to i16
  %86 = ptrtoint ptr %pci3.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pci3.i, align 4
  %call50 = call i32 @pci_write_config_word(ptr noundef %87, i32 noundef 76, i16 noundef zeroext %conv48) #8
  %88 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %card, align 4
  %conv51 = and i32 %85, 65535
  %rmidi = getelementptr inbounds %struct.snd_riptide, ptr %11, i32 0, i32 6
  %call52 = call i32 @snd_mpu401_uart_new(ptr noundef %89, i32 noundef 0, i16 noundef zeroext 1, i32 noundef %conv51, i32 noundef 32, i32 noundef -1, ptr noundef %rmidi) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.then55, label %if.else

if.then55:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 2076, ptr noundef nonnull @.str.3, i32 noundef %conv51) #8
  br label %if.end58

if.else:                                          ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  %mpuaddr = getelementptr inbounds %struct.snd_riptide, ptr %11, i32 0, i32 15
  %90 = ptrtoint ptr %mpuaddr to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %conv48, ptr %mpuaddr, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then55, %if.end19.if.end58_crit_edge
  %91 = load i32, ptr @snd_card_riptide_probe.dev, align 4
  %arrayidx59 = getelementptr [32 x i32], ptr @opl3_port, i32 0, i32 %91
  %92 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool60.not = icmp eq i32 %93, 0
  br i1 %tobool60.not, label %if.end58.if.end81_crit_edge, label %if.then61

if.end58.if.end81_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then61:                                        ; preds = %if.end58
  %conv63 = trunc i32 %93 to i16
  %94 = ptrtoint ptr %pci3.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pci3.i, align 4
  %call65 = call i32 @pci_write_config_word(ptr noundef %95, i32 noundef 74, i16 noundef zeroext %conv63) #8
  %96 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %card, align 4
  %conv66 = and i32 %93, 65535
  %add = add nuw nsw i32 %conv66, 2
  %opl3 = getelementptr inbounds %struct.snd_riptide, ptr %11, i32 0, i32 7
  %call68 = call i32 @snd_opl3_create(ptr noundef %97, i32 noundef %conv66, i32 noundef %add, i16 noundef zeroext 768, i32 noundef 0, ptr noundef %opl3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.then71, label %if.else73

if.then71:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 2088, ptr noundef nonnull @.str.4, i32 noundef %conv66) #8
  br label %if.end81

if.else73:                                        ; preds = %if.then61
  %opladdr = getelementptr inbounds %struct.snd_riptide, ptr %11, i32 0, i32 16
  %98 = ptrtoint ptr %opladdr to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %conv63, ptr %opladdr, align 2
  %99 = ptrtoint ptr %opl3 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %opl3, align 4
  %call75 = call i32 @snd_opl3_hwdep_new(ptr noundef %100, i32 noundef 0, i32 noundef 1, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.then78, label %if.else73.if.end81_crit_edge

if.else73.if.end81_crit_edge:                     ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then78:                                        ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 2094, ptr noundef nonnull @.str.5) #8
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %if.else73.if.end81_crit_edge, %if.then71, %if.end58.if.end81_crit_edge
  %101 = load i32, ptr @snd_card_riptide_probe.dev, align 4
  %arrayidx82 = getelementptr [32 x i32], ptr @joystick_port, i32 0, i32 %101
  %102 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool83.not = icmp eq i32 %103, 0
  br i1 %tobool83.not, label %if.end81.if.end89_crit_edge, label %if.then84

if.end81.if.end89_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then84:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %conv86 = trunc i32 %103 to i16
  %104 = ptrtoint ptr %pci3.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pci3.i, align 4
  %call88 = call i32 @pci_write_config_word(ptr noundef %105, i32 noundef 78, i16 noundef zeroext %conv86) #8
  %gameaddr = getelementptr inbounds %struct.snd_riptide, ptr %11, i32 0, i32 17
  %106 = ptrtoint ptr %gameaddr to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv86, ptr %gameaddr, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then84, %if.end81.if.end89_crit_edge
  %107 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %driver to i32
  call void @__asan_storeN_noabort(i32 %109, i32 8)
  store i64 5929358707346654464, ptr %driver, align 1
  %shortname = getelementptr inbounds %struct.snd_card, ptr %108, i32 0, i32 3
  %110 = ptrtoint ptr %shortname to i32
  call void @__asan_storeN_noabort(i32 %110, i32 8)
  store i64 5938401228951414016, ptr %shortname, align 1
  %longname = getelementptr inbounds %struct.snd_card, ptr %108, i32 0, i32 4
  %111 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %port.i, align 4
  %113 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %irq.i, align 4
  %mpuaddr97 = getelementptr inbounds %struct.snd_riptide, ptr %11, i32 0, i32 15
  %115 = ptrtoint ptr %mpuaddr97 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %mpuaddr97, align 4
  %conv98 = zext i16 %116 to i32
  %opladdr99 = getelementptr inbounds %struct.snd_riptide, ptr %11, i32 0, i32 16
  %117 = ptrtoint ptr %opladdr99 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %opladdr99, align 2
  %conv100 = zext i16 %118 to i32
  %gameaddr101 = getelementptr inbounds %struct.snd_riptide, ptr %11, i32 0, i32 17
  %119 = ptrtoint ptr %gameaddr101 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %gameaddr101, align 4
  %conv102 = zext i16 %120 to i32
  %call103 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %longname, i32 noundef 80, ptr noundef nonnull @.str.8, ptr noundef %shortname, i32 noundef %112, i32 noundef %114, i32 noundef %conv98, i32 noundef %conv100, i32 noundef %conv102)
  %121 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %11, align 4
  %call.i.i = call i32 @snd_card_rw_proc_new(ptr noundef %122, ptr noundef nonnull @.str.50, ptr noundef %11, ptr noundef nonnull @snd_riptide_proc_read, ptr noundef null) #8
  %123 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %card, align 4
  %call104 = call i32 @snd_card_register(ptr noundef %124) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %if.end89.cleanup_crit_edge, label %if.end108

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end108:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  %125 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %127 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %126, ptr %driver_data.i.i, align 4
  %128 = load i32, ptr @snd_card_riptide_probe.dev, align 4
  %inc109 = add i32 %128, 1
  store i32 %inc109, ptr @snd_card_riptide_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end108, %if.end89.cleanup_crit_edge, %snd_riptide_mixer.exit.cleanup_crit_edge, %snd_riptide_mixer.exit.thread, %snd_riptide_pcm.exit.thread, %snd_riptide_create.exit.cleanup_crit_edge, %if.then21.i, %do.body.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end108 ], [ -2, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ %37, %snd_riptide_create.exit.cleanup_crit_edge ], [ %call3.i171, %snd_riptide_mixer.exit.cleanup_crit_edge ], [ %call104, %if.end89.cleanup_crit_edge ], [ %call.i163, %snd_riptide_pcm.exit.thread ], [ %call.i168, %snd_riptide_mixer.exit.thread ], [ %call4.i, %do.body.i.cleanup_crit_edge ], [ %call.i, %if.end7.cleanup_crit_edge ], [ -16, %if.then21.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mpu401_uart_new(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_printk(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_opl3_create(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_opl3_hwdep_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_riptide_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %cif1 = getelementptr inbounds %struct.snd_riptide, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cif1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cif1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !291
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  %and = and i32 %6, 1048575
  %add = or i32 %and, -18874368
  %7 = inttoptr i32 %add to ptr
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %7) #8, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !292
  %9 = or i32 %8, 16777216
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %12 = ptrtoint ptr %11 to i32
  %and5 = and i32 %12, 1048575
  %add6 = or i32 %and5, -18874368
  %13 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %13, i32 %9) #8, !srcloc !290
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 21474800) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !293
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %17 = ptrtoint ptr %16 to i32
  %and14 = and i32 %17, 1048575
  %add15 = or i32 %and14, -18874368
  %18 = inttoptr i32 %add15 to ptr
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %18) #8, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !294
  %20 = and i32 %19, -16777217
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %23 = ptrtoint ptr %22 to i32
  %and22 = and i32 %23, 1048575
  %add23 = or i32 %and22, -18874368
  %24 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %24, i32 %20) #8, !srcloc !290
  %25 = ptrtoint ptr %cif1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cif1, align 4
  tail call void @kfree(ptr noundef %26) #8
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %fw_entry = getelementptr inbounds %struct.snd_riptide, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fw_entry, align 4
  tail call void @release_firmware(ptr noundef %28) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_riptide_interrupt(i32 noundef %irq, ptr nocapture noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cif1 = getelementptr inbounds %struct.snd_riptide, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %cif1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cif1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end57_crit_edge, label %if.then

entry.if.end57_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then:                                          ; preds = %entry
  %received_irqs = getelementptr inbounds %struct.snd_riptide, ptr %dev_id, i32 0, i32 23
  %2 = ptrtoint ptr %received_irqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %received_irqs, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %received_irqs, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %audio_status = getelementptr inbounds %struct.riptideport, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %audio_status to i32
  %and = and i32 %6, 1048575
  %add = or i32 %and, -18874368
  %7 = inttoptr i32 %add to ptr
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %7) #8, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !295
  %9 = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.then.if.then26_crit_edge

if.then.if.then26_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

lor.lhs.false:                                    ; preds = %if.then
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %audio_status7 = getelementptr inbounds %struct.riptideport, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %audio_status7 to i32
  %and8 = and i32 %12, 1048575
  %add9 = or i32 %and8, -18874368
  %13 = inttoptr i32 %add9 to ptr
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %13) #8, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !296
  %15 = and i32 %14, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool14.not = icmp eq i32 %15, 0
  br i1 %tobool14.not, label %lor.lhs.false15, label %lor.lhs.false.if.then26_crit_edge

lor.lhs.false.if.then26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %audio_status18 = getelementptr inbounds %struct.riptideport, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %audio_status18 to i32
  %and19 = and i32 %18, 1048575
  %add20 = or i32 %and19, -18874368
  %19 = inttoptr i32 %add20 to ptr
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %19) #8, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !297
  %21 = and i32 %20, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool25.not = icmp eq i32 %21, 0
  br i1 %tobool25.not, label %lor.lhs.false15.if.end_crit_edge, label %lor.lhs.false15.if.then26_crit_edge

lor.lhs.false15.if.then26_crit_edge:              ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

lor.lhs.false15.if.end_crit_edge:                 ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then26:                                        ; preds = %lor.lhs.false15.if.then26_crit_edge, %lor.lhs.false.if.then26_crit_edge, %if.then.if.then26_crit_edge
  %handled_irqs = getelementptr inbounds %struct.snd_riptide, ptr %dev_id, i32 0, i32 24
  %22 = ptrtoint ptr %handled_irqs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %handled_irqs, align 4
  %inc27 = add i32 %23, 1
  store i32 %inc27, ptr %handled_irqs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then26, %lor.lhs.false15.if.end_crit_edge
  %ret.0 = phi i32 [ 2, %if.then26 ], [ 1, %lor.lhs.false15.if.end_crit_edge ]
  %rmidi = getelementptr inbounds %struct.snd_riptide, ptr %dev_id, i32 0, i32 6
  %24 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmidi, align 4
  %tobool28.not = icmp eq ptr %25, null
  br i1 %tobool28.not, label %if.end.do.body_crit_edge, label %land.lhs.true

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true:                                    ; preds = %if.end
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %audio_status31 = getelementptr inbounds %struct.riptideport, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %audio_status31 to i32
  %and32 = and i32 %28, 1048575
  %add33 = or i32 %and32, -18874368
  %29 = inttoptr i32 %add33 to ptr
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %29) #8, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !298
  %31 = and i32 %30, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool38.not = icmp eq i32 %31, 0
  br i1 %tobool38.not, label %land.lhs.true.do.body_crit_edge, label %if.then39

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %handled_irqs40 = getelementptr inbounds %struct.snd_riptide, ptr %dev_id, i32 0, i32 24
  %32 = ptrtoint ptr %handled_irqs40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %handled_irqs40, align 4
  %inc41 = add i32 %33, 1
  store i32 %inc41, ptr %handled_irqs40, align 4
  %34 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %private_data, align 4
  %call43 = tail call i32 @snd_mpu401_uart_interrupt(i32 noundef %irq, ptr noundef %37) #8
  br label %do.body

do.body:                                          ; preds = %if.then39, %land.lhs.true.do.body_crit_edge, %if.end.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !299
  tail call void @arm_heavy_mb() #8
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %40 = ptrtoint ptr %39 to i32
  %and47 = and i32 %40, 1048575
  %add48 = or i32 %and47, -18874368
  %41 = inttoptr i32 %add48 to ptr
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %41) #8, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !300
  %43 = or i32 %42, 134217728
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %46 = ptrtoint ptr %45 to i32
  %and54 = and i32 %46, 1048575
  %add55 = or i32 %and54, -18874368
  %47 = inttoptr i32 %add55 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %47, i32 %43) #8, !srcloc !290
  br label %if.end57

if.end57:                                         ; preds = %do.body, %entry.if.end57_crit_edge
  %ret.1 = phi i32 [ %ret.0, %do.body ], [ 1, %entry.if.end57_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @riptide_handleirq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %substream = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cif1 = getelementptr inbounds %struct.snd_riptide, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %cif1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cif1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %substream) #8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %2 = getelementptr inbounds [4 x ptr], ptr %substream, i32 0, i32 3
  %uglygep = getelementptr i8, ptr %dev_id, i32 40
  %3 = call ptr @memcpy(ptr %substream, ptr %uglygep, i32 12)
  %capture_substream = getelementptr inbounds %struct.snd_riptide, ptr %dev_id, i32 0, i32 11
  %4 = ptrtoint ptr %capture_substream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %capture_substream, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %2, align 4
  br label %for.body6

for.body6:                                        ; preds = %for.inc78.for.body6_crit_edge, %for.body.preheader
  %i.1148 = phi i32 [ 0, %for.body.preheader ], [ %inc79, %for.inc78.for.body6_crit_edge ]
  %arrayidx7 = getelementptr [4 x ptr], ptr %substream, i32 0, i32 %i.1148
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %8, null
  br i1 %tobool8.not, label %for.body6.for.inc78_crit_edge, label %if.end10

for.body6.for.inc78_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc78

if.end10:                                         ; preds = %for.body6
  %runtime12 = getelementptr inbounds %struct.snd_pcm_substream, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %runtime12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %runtime12, align 4
  %tobool13.not = icmp eq ptr %10, null
  br i1 %tobool13.not, label %if.end10.for.inc78_crit_edge, label %if.end15

if.end10.for.inc78_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc78

if.end15:                                         ; preds = %if.end10
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 44
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_data, align 8
  %tobool16.not = icmp eq ptr %12, null
  br i1 %tobool16.not, label %if.end15.for.inc78_crit_edge, label %if.end18

if.end15.for.inc78_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc78

if.end18:                                         ; preds = %if.end15
  %state = getelementptr inbounds %struct.pcmhw, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp19.not = icmp eq i8 %14, 2
  br i1 %cmp19.not, label %if.end18.for.inc78_crit_edge, label %for.cond22.preheader

if.end18.for.inc78_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc78

for.cond22.preheader:                             ; preds = %if.end18
  %pages = getelementptr inbounds %struct.pcmhw, ptr %12, i32 0, i32 13
  %15 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp23143.not = icmp eq i32 %16, 0
  br i1 %cmp23143.not, label %for.cond22.preheader.for.end49_crit_edge, label %for.body25.lr.ph

for.cond22.preheader.for.end49_crit_edge:         ; preds = %for.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end49

for.body25.lr.ph:                                 ; preds = %for.cond22.preheader
  %sgdbuf = getelementptr inbounds %struct.pcmhw, ptr %12, i32 0, i32 11
  br label %for.body25

for.body25:                                       ; preds = %if.end44.for.body25_crit_edge, %for.body25.lr.ph
  %j.0145 = phi i32 [ 0, %for.body25.lr.ph ], [ %inc48, %if.end44.for.body25_crit_edge ]
  %pos.0144 = phi i32 [ 0, %for.body25.lr.ph ], [ %pos.2, %if.end44.for.body25_crit_edge ]
  %17 = ptrtoint ptr %sgdbuf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sgdbuf, align 4
  %dwStat_Ctl = getelementptr %struct.sgd, ptr %18, i32 %j.0145, i32 3
  %19 = ptrtoint ptr %dwStat_Ctl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dwStat_Ctl, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %tobool27.not = icmp sgt i32 %21, -1
  br i1 %tobool27.not, label %for.body25.if.end29_crit_edge, label %if.then28

for.body25.if.end29_crit_edge:                    ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then28:                                        ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #10
  %dwSegLen = getelementptr %struct.sgd, ptr %18, i32 %j.0145, i32 2
  %22 = ptrtoint ptr %dwSegLen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dwSegLen, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %add = add i32 %24, %pos.0144
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %for.body25.if.end29_crit_edge
  %pos.1 = phi i32 [ %add, %if.then28 ], [ %pos.0144, %for.body25.if.end29_crit_edge ]
  %and30 = and i32 %21, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end35_crit_edge, label %if.then32

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %dwSegLen33 = getelementptr %struct.sgd, ptr %18, i32 %j.0145, i32 2
  %25 = ptrtoint ptr %dwSegLen33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dwSegLen33, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %add34 = add i32 %27, %pos.1
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end29.if.end35_crit_edge
  %pos.2 = phi i32 [ %add34, %if.then32 ], [ %pos.1, %if.end29.if.end35_crit_edge ]
  %and36 = and i32 %21, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end44_crit_edge, label %land.lhs.true

if.end35.if.end44_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

land.lhs.true:                                    ; preds = %if.end35
  %28 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp40 = icmp eq i8 %29, 1
  br i1 %cmp40, label %if.then42, label %land.lhs.true.if.end44_crit_edge

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 2, ptr %state, align 1
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 1111, ptr noundef nonnull @.str.11) #8
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %land.lhs.true.if.end44_crit_edge, %if.end35.if.end44_crit_edge
  %and45 = and i32 %21, 536870911
  %31 = tail call i32 @llvm.bswap.i32(i32 %and45)
  %32 = ptrtoint ptr %dwStat_Ctl to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %dwStat_Ctl, align 4
  %inc48 = add nuw i32 %j.0145, 1
  %33 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pages, align 4
  %cmp23 = icmp ult i32 %inc48, %34
  br i1 %cmp23, label %if.end44.for.body25_crit_edge, label %if.end44.for.end49_crit_edge

if.end44.for.end49_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end49

if.end44.for.body25_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body25

for.end49:                                        ; preds = %if.end44.for.end49_crit_edge, %for.cond22.preheader.for.end49_crit_edge
  %pos.0.lcssa = phi i32 [ 0, %for.cond22.preheader.for.end49_crit_edge ], [ %pos.2, %if.end44.for.end49_crit_edge ]
  %pointer = getelementptr inbounds %struct.pcmhw, ptr %12, i32 0, i32 15
  %35 = ptrtoint ptr %pointer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pointer, align 4
  %add50 = add i32 %36, %pos.0.lcssa
  store i32 %add50, ptr %pointer, align 4
  %oldpos = getelementptr inbounds %struct.pcmhw, ptr %12, i32 0, i32 14
  %37 = ptrtoint ptr %oldpos to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %oldpos, align 4
  %add51 = add i32 %38, %pos.0.lcssa
  %39 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %40)
  %cmp54.not = icmp eq i8 %40, 2
  br i1 %cmp54.not, label %for.end49.for.inc78_crit_edge, label %if.then56

for.end49.for.inc78_crit_edge:                    ; preds = %for.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc78

if.then56:                                        ; preds = %for.end49
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 16
  %41 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %period_size, align 4
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 21
  %43 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %frame_bits.i, align 8
  %mul.i = mul i32 %44, %42
  %div1.i = lshr i32 %mul.i, 3
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %audio_status = getelementptr inbounds %struct.riptideport, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %audio_status to i32
  %and57 = and i32 %47, 1048575
  %add58 = or i32 %and57, -18874368
  %48 = inttoptr i32 %add58 to ptr
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %48) #8, !srcloc !288
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !301
  %mul.i140 = shl i32 %add51, 3
  %51 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i140, %52
  %53 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %period_size, align 4
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1128, ptr noundef nonnull @.str.12, i32 noundef %50, i32 noundef %div.i, i32 noundef %54) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %add51, i32 %div1.i)
  %cmp63.not = icmp ult i32 %add51, %div1.i
  br i1 %cmp63.not, label %for.inc78.critedge, label %if.then56.while.cond_crit_edge

if.then56.while.cond_crit_edge:                   ; preds = %if.then56
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.then56.while.cond_crit_edge
  %pos.3 = phi i32 [ %sub, %while.cond.while.cond_crit_edge ], [ %add51, %if.then56.while.cond_crit_edge ]
  %cmp67.not = icmp ult i32 %pos.3, %div1.i
  %sub = sub i32 %pos.3, %div1.i
  br i1 %cmp67.not, label %if.then73, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.then73:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %oldpos to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %pos.3, ptr %oldpos, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %8) #8
  br label %for.inc78

for.inc78.critedge:                               ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %oldpos to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add51, ptr %oldpos, align 4
  br label %for.inc78

for.inc78:                                        ; preds = %for.inc78.critedge, %if.then73, %for.end49.for.inc78_crit_edge, %if.end18.for.inc78_crit_edge, %if.end15.for.inc78_crit_edge, %if.end10.for.inc78_crit_edge, %for.body6.for.inc78_crit_edge
  %inc79 = add nuw nsw i32 %i.1148, 1
  %exitcond.not = icmp eq i32 %inc79, 4
  br i1 %exitcond.not, label %for.inc78.cleanup_crit_edge, label %for.inc78.for.body6_crit_edge

for.inc78.for.body6_crit_edge:                    ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6

for.inc78.cleanup_crit_edge:                      ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc78.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %substream) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_riptide_initialize(ptr noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %chip, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !302

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1770, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %entry
  %cif24 = getelementptr inbounds %struct.snd_riptide, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %cif24 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cif24, align 4
  %tobool25.not = icmp eq ptr %1, null
  br i1 %tobool25.not, label %if.then26, label %if.end23.if.end35_crit_edge

if.end23.if.end35_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then26:                                        ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 72) #11
  %tobool27.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool27.not, label %if.then26.cleanup_crit_edge, label %if.end29

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %port = getelementptr inbounds %struct.snd_riptide, ptr %chip, i32 0, i32 14
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %call7.i.i, align 8
  %lock = getelementptr inbounds %struct.cmdif, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @snd_riptide_initialize.__key, i16 noundef signext 3) #8
  %7 = ptrtoint ptr %cif24 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %cif24, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end29, %if.end23.if.end35_crit_edge
  %cif.0 = phi ptr [ %1, %if.end23.if.end35_crit_edge ], [ %call7.i.i, %if.end29 ]
  %is_reset = getelementptr inbounds %struct.cmdif, ptr %cif.0, i32 0, i32 7
  %8 = ptrtoint ptr %is_reset to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %is_reset, align 4
  %call36 = tail call fastcc i32 @riptide_reset(ptr noundef nonnull %cif.0, ptr noundef nonnull %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  %device_id40 = getelementptr inbounds %struct.snd_riptide, ptr %chip, i32 0, i32 19
  %9 = ptrtoint ptr %device_id40 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %device_id40, align 4
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i16 %10, label %if.end39.sw.epilog_crit_edge [
    i16 17168, label %if.end39.sw.bb_crit_edge
    i16 17184, label %if.end39.sw.bb_crit_edge77
    i16 17200, label %if.end39.sw.bb_crit_edge78
  ]

if.end39.sw.bb_crit_edge78:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end39.sw.bb_crit_edge77:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end39.sw.bb_crit_edge:                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end39.sw.epilog_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end39.sw.bb_crit_edge, %if.end39.sw.bb_crit_edge77, %if.end39.sw.bb_crit_edge78
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1791, ptr noundef nonnull @.str.14) #8
  %call41 = tail call fastcc i32 @sendcmd(ptr noundef nonnull %cif.0, i32 noundef 0, i32 noundef 114, i32 noundef 0, ptr noundef null)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end39.sw.epilog_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1795, ptr noundef nonnull @.str.15) #8
  %rmidi = getelementptr inbounds %struct.snd_riptide, ptr %chip, i32 0, i32 6
  %12 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmidi, align 4
  %tobool42.not = icmp eq ptr %13, null
  br i1 %tobool42.not, label %sw.epilog.cleanup_crit_edge, label %do.body44

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body44:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !303
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %cif.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cif.0, align 4
  %16 = ptrtoint ptr %15 to i32
  %and = and i32 %16, 1048575
  %add = or i32 %and, -18874368
  %17 = inttoptr i32 %add to ptr
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %17) #8, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !304
  %19 = or i32 %18, 131072
  %20 = ptrtoint ptr %cif.0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cif.0, align 4
  %22 = ptrtoint ptr %21 to i32
  %and53 = and i32 %22, 1048575
  %add54 = or i32 %and53, -18874368
  %23 = inttoptr i32 %add54 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %23, i32 %19) #8, !srcloc !290
  br label %cleanup

cleanup:                                          ; preds = %do.body44, %sw.epilog.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.then26.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %if.then26.cleanup_crit_edge ], [ %call36, %if.end35.cleanup_crit_edge ], [ 0, %do.body44 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mpu401_uart_interrupt(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @riptide_reset(ptr noundef %cif, ptr noundef %chip) unnamed_addr #2 align 64 {
entry:
  %firmware.i = alloca %union.firmware_version, align 8
  %rptr = alloca %union.cmdret, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rptr) #8
  %0 = ptrtoint ptr %rptr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %rptr, align 8
  %tobool.not = icmp eq ptr %cif, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %cmdcnt = getelementptr inbounds %struct.cmdif, ptr %cif, i32 0, i32 2
  %1 = ptrtoint ptr %cmdcnt to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %cmdcnt, align 4
  %cmdtime = getelementptr inbounds %struct.cmdif, ptr %cif, i32 0, i32 3
  %2 = ptrtoint ptr %cmdtime to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cmdtime, align 4
  %cmdtimemax = getelementptr inbounds %struct.cmdif, ptr %cif, i32 0, i32 4
  %3 = ptrtoint ptr %cmdtimemax to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %cmdtimemax, align 4
  %cmdtimemin = getelementptr inbounds %struct.cmdif, ptr %cif, i32 0, i32 5
  %4 = ptrtoint ptr %cmdtimemin to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %cmdtimemin, align 4
  %errcnt = getelementptr inbounds %struct.cmdif, ptr %cif, i32 0, i32 6
  %5 = ptrtoint ptr %errcnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %errcnt, align 4
  %is_reset = getelementptr inbounds %struct.cmdif, ptr %cif, i32 0, i32 7
  %6 = ptrtoint ptr %is_reset to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %is_reset, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %firmware.i) #8
  %7 = ptrtoint ptr %firmware.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %firmware.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !305
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %cif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cif, align 4
  %arrayidx.i = getelementptr %struct.riptideport, ptr %9, i32 0, i32 3, i32 0
  %10 = ptrtoint ptr %arrayidx.i to i32
  %and.i = and i32 %10, 1048575
  %add.i = or i32 %and.i, -18874368
  %11 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 0) #8, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %cif to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cif, align 4
  %data2.i = getelementptr %struct.riptideport, ptr %13, i32 0, i32 3, i32 0, i32 1
  %14 = ptrtoint ptr %data2.i to i32
  %and7.i = and i32 %14, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %15 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 0) #8, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !305
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %cif to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cif, align 4
  %arrayidx.i.1 = getelementptr %struct.riptideport, ptr %17, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %arrayidx.i.1 to i32
  %and.i.1 = and i32 %18, 1048575
  %add.i.1 = or i32 %and.i.1, -18874368
  %19 = inttoptr i32 %add.i.1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %19, i32 0) #8, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %cif to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cif, align 4
  %data2.i.1 = getelementptr %struct.riptideport, ptr %21, i32 0, i32 3, i32 1, i32 1
  %22 = ptrtoint ptr %data2.i.1 to i32
  %and7.i.1 = and i32 %22, 1048575
  %add8.i.1 = or i32 %and7.i.1, -18874368
  %23 = inttoptr i32 %add8.i.1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %23, i32 0) #8, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !307
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %cif to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cif, align 4
  %26 = ptrtoint ptr %25 to i32
  %and14.i = and i32 %26, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %27 = inttoptr i32 %add15.i to ptr
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %27) #8, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !308
  %29 = or i32 %28, 16777216
  %30 = ptrtoint ptr %cif to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cif, align 4
  %32 = ptrtoint ptr %31 to i32
  %and20.i = and i32 %32, 1048575
  %add21.i = or i32 %and20.i, -18874368
  %33 = inttoptr i32 %add21.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %33, i32 %29) #8, !srcloc !290
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 21474800) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !309
  tail call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %cif to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cif, align 4
  %37 = ptrtoint ptr %36 to i32
  %and29.i = and i32 %37, 1048575
  %add30.i = or i32 %and29.i, -18874368
  %38 = inttoptr i32 %add30.i to ptr
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %38) #8, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !310
  %40 = and i32 %39, -16777217
  %41 = ptrtoint ptr %cif to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cif, align 4
  %43 = ptrtoint ptr %42 to i32
  %and37.i = and i32 %43, 1048575
  %add38.i = or i32 %and37.i, -18874368
  %44 = inttoptr i32 %add38.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %44, i32 %40) #8, !srcloc !290
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 21474800) #8
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.inc61.i.for.body41.i_crit_edge, %do.body
  %dec.i154 = phi i32 [ 99999, %do.body ], [ %dec.i, %for.inc61.i.for.body41.i_crit_edge ]
  %46 = ptrtoint ptr %cif to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cif, align 4
  %audio_status.i = getelementptr inbounds %struct.riptideport, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %audio_status.i to i32
  %and44.i = and i32 %48, 1048575
  %add45.i = or i32 %and44.i, -18874368
  %49 = inttoptr i32 %add45.i to ptr
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %49) #8, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !311
  %51 = and i32 %50, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool50.not.i = icmp eq i32 %51, 0
  br i1 %tobool50.not.i, label %for.body41.i.for.inc61.i_crit_edge, label %land.lhs.true.i

for.body41.i.for.inc61.i_crit_edge:               ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc61.i

land.lhs.true.i:                                  ; preds = %for.body41.i
  %52 = ptrtoint ptr %cif to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cif, align 4
  %audio_status53.i = getelementptr inbounds %struct.riptideport, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %audio_status53.i to i32
  %and54.i = and i32 %54, 1048575
  %add55.i = or i32 %and54.i, -18874368
  %55 = inttoptr i32 %add55.i to ptr
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %55) #8, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !312
  %57 = and i32 %56, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool60.not.i = icmp eq i32 %57, 0
  br i1 %tobool60.not.i, label %if.else.i, label %land.lhs.true.i.for.inc61.i_crit_edge

land.lhs.true.i.for.inc61.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc61.i

for.inc61.i:                                      ; preds = %land.lhs.true.i.for.inc61.i_crit_edge, %for.body41.i.for.inc61.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 2147480) #8
  %dec.i = add nsw i32 %dec.i154, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.then64.critedge.i, label %for.inc61.i.for.body41.i_crit_edge

for.inc61.i.for.body41.i_crit_edge:               ; preds = %for.inc61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body41.i

if.then64.critedge.i:                             ; preds = %for.inc61.i
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %cif to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cif, align 4
  %audio_status67.i = getelementptr inbounds %struct.riptideport, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %audio_status67.i to i32
  %and68.i = and i32 %61, 1048575
  %add69.i = or i32 %and68.i, -18874368
  %62 = inttoptr i32 %add69.i to ptr
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %62) #8, !srcloc !288
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !313
  %65 = ptrtoint ptr %cif to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cif, align 4
  %audio_status75.i = getelementptr inbounds %struct.riptideport, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %audio_status75.i to i32
  %and76.i = and i32 %67, 1048575
  %add77.i = or i32 %and76.i, -18874368
  %68 = inttoptr i32 %add77.i to ptr
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %68) #8, !srcloc !288
  %70 = lshr i32 %69, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %and81.i = and i32 %70, 1
  %71 = ptrtoint ptr %cif to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cif, align 4
  %audio_status84.i = getelementptr inbounds %struct.riptideport, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %audio_status84.i to i32
  %and85.i = and i32 %73, 1048575
  %add86.i = or i32 %and85.i, -18874368
  %74 = inttoptr i32 %add86.i to ptr
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %74) #8, !srcloc !288
  %76 = lshr i32 %75, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  %and90.i = and i32 %76, 8
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 1198, ptr noundef nonnull @.str.17, i32 noundef %64, i32 noundef %and81.i, i32 noundef %and90.i) #8
  br label %try_to_load_firmware.exit.thread150

if.else.i:                                        ; preds = %land.lhs.true.i
  %77 = ptrtoint ptr %cif to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cif, align 4
  %audio_status93.i = getelementptr inbounds %struct.riptideport, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %audio_status93.i to i32
  %and94.i = and i32 %79, 1048575
  %add95.i = or i32 %and94.i, -18874368
  %80 = inttoptr i32 %add95.i to ptr
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %80) #8, !srcloc !288
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !316
  %83 = ptrtoint ptr %cif to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cif, align 4
  %audio_status101.i = getelementptr inbounds %struct.riptideport, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %audio_status101.i to i32
  %and102.i = and i32 %85, 1048575
  %add103.i = or i32 %and102.i, -18874368
  %86 = inttoptr i32 %add103.i to ptr
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %86) #8, !srcloc !288
  %88 = lshr i32 %87, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !317
  %and107.i = and i32 %88, 1
  %89 = ptrtoint ptr %cif to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cif, align 4
  %audio_status110.i = getelementptr inbounds %struct.riptideport, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %audio_status110.i to i32
  %and111.i = and i32 %91, 1048575
  %add112.i = or i32 %and111.i, -18874368
  %92 = inttoptr i32 %add112.i to ptr
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %92) #8, !srcloc !288
  %94 = lshr i32 %93, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !318
  %and116.i = and i32 %94, 8
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1204, ptr noundef nonnull @.str.18, i32 noundef %82, i32 noundef %and107.i, i32 noundef %and116.i) #8
  %call118.i = call fastcc i32 @sendcmd(ptr noundef %cif, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %firmware.i) #8
  %95 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %firmware.i, align 8
  %conv.i = zext i16 %96 to i32
  %CODEC.i = getelementptr inbounds %struct.riptide_firmware, ptr %firmware.i, i32 0, i32 1
  %97 = ptrtoint ptr %CODEC.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %CODEC.i, align 2
  %conv119.i = zext i16 %98 to i32
  %AUXDSP.i = getelementptr inbounds %struct.riptide_firmware, ptr %firmware.i, i32 0, i32 2
  %99 = ptrtoint ptr %AUXDSP.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %AUXDSP.i, align 4
  %conv120.i = zext i16 %100 to i32
  %PROG.i = getelementptr inbounds %struct.riptide_firmware, ptr %firmware.i, i32 0, i32 3
  %101 = ptrtoint ptr %PROG.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %PROG.i, align 2
  %conv121.i = zext i16 %102 to i32
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1210, ptr noundef nonnull @.str.19, i32 noundef %conv.i, i32 noundef %conv119.i, i32 noundef %conv120.i, i32 noundef %conv121.i) #8
  %tobool122.not.i = icmp eq ptr %chip, null
  br i1 %tobool122.not.i, label %if.else.i.try_to_load_firmware.exit.thread_crit_edge, label %for.body128.i

if.else.i.try_to_load_firmware.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %try_to_load_firmware.exit.thread

for.body128.i:                                    ; preds = %if.else.i
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) @firmware_versions, ptr noundef nonnull dereferenceable(8) %firmware.i, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool131.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool131.not.i, label %for.body128.i.try_to_load_firmware.exit.thread_crit_edge, label %for.end136.i

for.body128.i.try_to_load_firmware.exit.thread_crit_edge: ; preds = %for.body128.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %try_to_load_firmware.exit.thread

for.end136.i:                                     ; preds = %for.body128.i
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1221, ptr noundef nonnull @.str.20) #8
  %fw_entry.i = getelementptr inbounds %struct.snd_riptide, ptr %chip, i32 0, i32 2
  %103 = ptrtoint ptr %fw_entry.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %fw_entry.i, align 4
  %tobool137.not.i = icmp eq ptr %104, null
  br i1 %tobool137.not.i, label %if.then138.i, label %for.end136.i.if.end144.i_crit_edge

for.end136.i.if.end144.i_crit_edge:               ; preds = %for.end136.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144.i

if.then138.i:                                     ; preds = %for.end136.i
  %pci.i = getelementptr inbounds %struct.snd_riptide, ptr %chip, i32 0, i32 1
  %105 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %106, i32 0, i32 44
  %call140.i = call i32 @request_firmware(ptr noundef %fw_entry.i, ptr noundef nonnull @.str.21, ptr noundef %dev.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i)
  %tobool141.not.i = icmp eq i32 %call140.i, 0
  br i1 %tobool141.not.i, label %if.then138.i.if.end144.i_crit_edge, label %if.then142.i

if.then138.i.if.end144.i_crit_edge:               ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144.i

if.then142.i:                                     ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 1227, ptr noundef nonnull @.str.22, i32 noundef %call140.i) #8
  br label %try_to_load_firmware.exit.thread150

if.end144.i:                                      ; preds = %if.then138.i.if.end144.i_crit_edge, %for.end136.i.if.end144.i_crit_edge
  %107 = ptrtoint ptr %fw_entry.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %fw_entry.i, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp.not.i159.not = icmp eq i32 %110, 0
  br i1 %cmp.not.i159.not, label %loadfirmware.exit.thread, label %while.body.i.preheader

loadfirmware.exit.thread:                         ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 732, ptr noundef nonnull @.str.25, i32 noundef 0) #8
  br label %if.end150.i

while.body.i.preheader:                           ; preds = %if.end144.i
  %data.i = getelementptr inbounds %struct.firmware, ptr %108, i32 0, i32 1
  %111 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %data.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end30.i.while.body.i_crit_edge, %while.body.i.preheader
  %saddr.0.i164 = phi i32 [ %saddr.2.i, %if.end30.i.while.body.i_crit_edge ], [ 0, %while.body.i.preheader ]
  %laddr.0.i163 = phi i32 [ %laddr.2.i, %if.end30.i.while.body.i_crit_edge ], [ 0, %while.body.i.preheader ]
  %size.addr.0.i162 = phi i32 [ %size.addr.3.i, %if.end30.i.while.body.i_crit_edge ], [ %110, %while.body.i.preheader ]
  %img.addr.0.i160 = phi ptr [ %img.addr.2.i, %if.end30.i.while.body.i_crit_edge ], [ %112, %while.body.i.preheader ]
  %113 = ptrtoint ptr %img.addr.0.i160 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %img.addr.0.i160, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %114)
  %cmp2.i = icmp eq i8 %114, 58
  br i1 %cmp2.i, label %if.then.i, label %while.body.i.if.end30.i_crit_edge

while.body.i.if.end30.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.then.i:                                        ; preds = %while.body.i
  %arrayidx4.i = getelementptr i8, ptr %img.addr.0.i160, i32 7
  %arrayidx.i.i = getelementptr i8, ptr %img.addr.0.i160, i32 8
  %115 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx.i.i, align 1
  %call.i.i = call i32 @hex_to_bin(i8 noundef zeroext %116) #8
  %117 = call i32 @llvm.smax.i32(i32 %call.i.i, i32 0)
  %118 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx4.i, align 1
  %call.i.i.1 = call i32 @hex_to_bin(i8 noundef zeroext %119) #8
  %mul.i.i.1 = shl i32 %call.i.i.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %cmp7.i.i.1 = icmp slt i32 %call.i.i.1, 0
  %add.i.i.1 = select i1 %cmp7.i.i.1, i32 0, i32 %mul.i.i.1
  %sum.1.i.i.1 = add i32 %add.i.i.1, %117
  %120 = zext i32 %sum.1.i.i.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %sum.1.i.i.1, label %if.then.i.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb6.i
    i32 4, label %sw.bb9.i
    i32 3, label %sw.bb13.i
    i32 1, label %sw.bb20.i
  ]

if.then.i.sw.epilog.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then.i
  %arrayidx.i137 = getelementptr i8, ptr %img.addr.0.i160, i32 2
  %121 = ptrtoint ptr %arrayidx.i137 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx.i137, align 1
  %call.i138 = call i32 @hex_to_bin(i8 noundef zeroext %122) #8
  %123 = call i32 @llvm.smax.i32(i32 %call.i138, i32 0)
  %arrayidx.i137.1 = getelementptr i8, ptr %img.addr.0.i160, i32 1
  %124 = ptrtoint ptr %arrayidx.i137.1 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx.i137.1, align 1
  %call.i138.1 = call i32 @hex_to_bin(i8 noundef zeroext %125) #8
  %mul.i139.1 = shl i32 %call.i138.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138.1)
  %cmp7.i140.1 = icmp slt i32 %call.i138.1, 0
  %add.i141.1 = select i1 %cmp7.i140.1, i32 0, i32 %mul.i139.1
  %sum.1.i142.1 = add i32 %add.i141.1, %123
  %arrayidx1.i.i = getelementptr i8, ptr %img.addr.0.i160, i32 3
  %arrayidx.i123 = getelementptr i8, ptr %img.addr.0.i160, i32 6
  %126 = ptrtoint ptr %arrayidx.i123 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx.i123, align 1
  %call.i124 = call i32 @hex_to_bin(i8 noundef zeroext %127) #8
  %128 = call i32 @llvm.smax.i32(i32 %call.i124, i32 0)
  %arrayidx.i123.1 = getelementptr i8, ptr %img.addr.0.i160, i32 5
  %129 = ptrtoint ptr %arrayidx.i123.1 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx.i123.1, align 1
  %call.i124.1 = call i32 @hex_to_bin(i8 noundef zeroext %130) #8
  %mul.i125.1 = shl i32 %call.i124.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.1)
  %cmp7.i126.1 = icmp slt i32 %call.i124.1, 0
  %add.i127.1 = select i1 %cmp7.i126.1, i32 0, i32 %mul.i125.1
  %arrayidx.i123.2 = getelementptr i8, ptr %img.addr.0.i160, i32 4
  %131 = ptrtoint ptr %arrayidx.i123.2 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx.i123.2, align 1
  %call.i124.2 = call i32 @hex_to_bin(i8 noundef zeroext %132) #8
  %mul.i125.2 = shl i32 %call.i124.2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.2)
  %cmp7.i126.2 = icmp slt i32 %call.i124.2, 0
  %add.i127.2 = select i1 %cmp7.i126.2, i32 0, i32 %mul.i125.2
  %133 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx1.i.i, align 1
  %call.i124.3 = call i32 @hex_to_bin(i8 noundef zeroext %134) #8
  %mul.i125.3 = shl i32 %call.i124.3, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124.3)
  %cmp7.i126.3 = icmp slt i32 %call.i124.3, 0
  %add.i127.3 = select i1 %cmp7.i126.3, i32 0, i32 %mul.i125.3
  %sum.1.i128.1 = add i32 %laddr.0.i163, %saddr.0.i164
  %sum.1.i128.2 = add i32 %sum.1.i128.1, %128
  %sum.1.i128.3 = add i32 %sum.1.i128.2, %add.i127.1
  %add.i112 = add i32 %sum.1.i128.3, %add.i127.2
  %add.i45.i = add i32 %add.i112, %add.i127.3
  %call3.i.i = call fastcc i32 @sendcmd(ptr noundef %cif, i32 noundef 2, i32 noundef 17, i32 noundef %add.i45.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sum.1.i142.1)
  %tobool.not.i46.i155 = icmp eq i32 %sum.1.i142.1, 0
  br i1 %tobool.not.i46.i155, label %if.end.i.i.sw.epilog.i_crit_edge, label %while.body.i118.preheader.preheader

if.end.i.i.sw.epilog.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

while.body.i118.preheader.preheader:              ; preds = %if.end.i.i
  %add.ptr.i.i = getelementptr i8, ptr %img.addr.0.i160, i32 9
  br label %while.body.i118.preheader

while.body.i118.preheader:                        ; preds = %if.end9.i.i.while.body.i118.preheader_crit_edge, %while.body.i118.preheader.preheader
  %p.0.i.i157 = phi ptr [ %add.ptr10.i.i, %if.end9.i.i.while.body.i118.preheader_crit_edge ], [ %add.ptr.i.i, %while.body.i118.preheader.preheader ]
  %i.0.i.i156 = phi i32 [ %sub.i48.i, %if.end9.i.i.while.body.i118.preheader_crit_edge ], [ %sum.1.i142.1, %while.body.i118.preheader.preheader ]
  %arrayidx.i115 = getelementptr i8, ptr %p.0.i.i157, i32 7
  %135 = ptrtoint ptr %arrayidx.i115 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx.i115, align 1
  %call.i = call i32 @hex_to_bin(i8 noundef zeroext %136) #8
  %137 = call i32 @llvm.smax.i32(i32 %call.i, i32 0)
  %arrayidx.i115.1 = getelementptr i8, ptr %p.0.i.i157, i32 6
  %138 = ptrtoint ptr %arrayidx.i115.1 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx.i115.1, align 1
  %call.i.1 = call i32 @hex_to_bin(i8 noundef zeroext %139) #8
  %mul.i.1 = shl i32 %call.i.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp7.i.1 = icmp slt i32 %call.i.1, 0
  %add.i116.1 = select i1 %cmp7.i.1, i32 0, i32 %mul.i.1
  %sum.1.i.1 = add i32 %add.i116.1, %137
  %arrayidx.i115.2 = getelementptr i8, ptr %p.0.i.i157, i32 5
  %140 = ptrtoint ptr %arrayidx.i115.2 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx.i115.2, align 1
  %call.i.2 = call i32 @hex_to_bin(i8 noundef zeroext %141) #8
  %mul.i.2 = shl i32 %call.i.2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp7.i.2 = icmp slt i32 %call.i.2, 0
  %add.i116.2 = select i1 %cmp7.i.2, i32 0, i32 %mul.i.2
  %sum.1.i.2 = add i32 %sum.1.i.1, %add.i116.2
  %arrayidx.i115.3 = getelementptr i8, ptr %p.0.i.i157, i32 4
  %142 = ptrtoint ptr %arrayidx.i115.3 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx.i115.3, align 1
  %call.i.3 = call i32 @hex_to_bin(i8 noundef zeroext %143) #8
  %mul.i.3 = shl i32 %call.i.3, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %cmp7.i.3 = icmp slt i32 %call.i.3, 0
  %add.i116.3 = select i1 %cmp7.i.3, i32 0, i32 %mul.i.3
  %sum.1.i.3 = add i32 %sum.1.i.2, %add.i116.3
  %arrayidx.i115.4 = getelementptr i8, ptr %p.0.i.i157, i32 3
  %144 = ptrtoint ptr %arrayidx.i115.4 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx.i115.4, align 1
  %call.i.4 = call i32 @hex_to_bin(i8 noundef zeroext %145) #8
  %mul.i.4 = shl i32 %call.i.4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4)
  %cmp7.i.4 = icmp slt i32 %call.i.4, 0
  %add.i116.4 = select i1 %cmp7.i.4, i32 0, i32 %mul.i.4
  %sum.1.i.4 = add i32 %sum.1.i.3, %add.i116.4
  %arrayidx.i115.5 = getelementptr i8, ptr %p.0.i.i157, i32 2
  %146 = ptrtoint ptr %arrayidx.i115.5 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx.i115.5, align 1
  %call.i.5 = call i32 @hex_to_bin(i8 noundef zeroext %147) #8
  %mul.i.5 = shl i32 %call.i.5, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.5)
  %cmp7.i.5 = icmp slt i32 %call.i.5, 0
  %add.i116.5 = select i1 %cmp7.i.5, i32 0, i32 %mul.i.5
  %sum.1.i.5 = add i32 %sum.1.i.4, %add.i116.5
  %arrayidx.i115.6 = getelementptr i8, ptr %p.0.i.i157, i32 1
  %148 = ptrtoint ptr %arrayidx.i115.6 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx.i115.6, align 1
  %call.i.6 = call i32 @hex_to_bin(i8 noundef zeroext %149) #8
  %mul.i.6 = shl i32 %call.i.6, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.6)
  %cmp7.i.6 = icmp slt i32 %call.i.6, 0
  %add.i116.6 = select i1 %cmp7.i.6, i32 0, i32 %mul.i.6
  %sum.1.i.6 = add i32 %sum.1.i.5, %add.i116.6
  %150 = ptrtoint ptr %p.0.i.i157 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %p.0.i.i157, align 1
  %call.i.7 = call i32 @hex_to_bin(i8 noundef zeroext %151) #8
  %mul.i.7 = shl i32 %call.i.7, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.7)
  %cmp7.i.7 = icmp slt i32 %call.i.7, 0
  %add.i116.7 = select i1 %cmp7.i.7, i32 0, i32 %mul.i.7
  %sum.1.i.7 = add i32 %sum.1.i.6, %add.i116.7
  %and.i.i = shl i32 %sum.1.i.7, 4
  %shl.i.i = and i32 %and.i.i, -252645136
  %and5.i.i = lshr i32 %sum.1.i.7, 4
  %shr.i.i = and i32 %and5.i.i, 252645135
  %or.i.i = or i32 %shl.i.i, %shr.i.i
  %call6.i.i = call fastcc i32 @sendcmd(ptr noundef %cif, i32 noundef 2, i32 noundef 530, i32 noundef %or.i.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %while.body.i118.preheader.sw.epilog.i_crit_edge

while.body.i118.preheader.sw.epilog.i_crit_edge:  ; preds = %while.body.i118.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.end9.i.i:                                      ; preds = %while.body.i118.preheader
  %sub.i48.i = add i32 %i.0.i.i156, -4
  %add.ptr10.i.i = getelementptr i8, ptr %p.0.i.i157, i32 8
  %tobool.not.i46.i = icmp eq i32 %sub.i48.i, 0
  br i1 %tobool.not.i46.i, label %if.end9.i.i.sw.epilog.i_crit_edge, label %if.end9.i.i.while.body.i118.preheader_crit_edge

if.end9.i.i.while.body.i118.preheader_crit_edge:  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i118.preheader

if.end9.i.i.sw.epilog.i_crit_edge:                ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx7.i = getelementptr i8, ptr %img.addr.0.i160, i32 9
  %arrayidx.i53.i = getelementptr i8, ptr %img.addr.0.i160, i32 12
  %152 = ptrtoint ptr %arrayidx.i53.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx.i53.i, align 1
  %call.i54.i = call i32 @hex_to_bin(i8 noundef zeroext %153) #8
  %154 = call i32 @llvm.smax.i32(i32 %call.i54.i, i32 0)
  %arrayidx.i53.i.1 = getelementptr i8, ptr %img.addr.0.i160, i32 11
  %155 = ptrtoint ptr %arrayidx.i53.i.1 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx.i53.i.1, align 1
  %call.i54.i.1 = call i32 @hex_to_bin(i8 noundef zeroext %156) #8
  %mul.i55.i.1 = shl i32 %call.i54.i.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i.1)
  %cmp7.i56.i.1 = icmp slt i32 %call.i54.i.1, 0
  %add.i57.i.1 = select i1 %cmp7.i56.i.1, i32 0, i32 %mul.i55.i.1
  %sum.1.i58.i.1 = add i32 %add.i57.i.1, %154
  %arrayidx.i53.i.2 = getelementptr i8, ptr %img.addr.0.i160, i32 10
  %157 = ptrtoint ptr %arrayidx.i53.i.2 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx.i53.i.2, align 1
  %call.i54.i.2 = call i32 @hex_to_bin(i8 noundef zeroext %158) #8
  %mul.i55.i.2 = shl i32 %call.i54.i.2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i.2)
  %cmp7.i56.i.2 = icmp slt i32 %call.i54.i.2, 0
  %add.i57.i.2 = select i1 %cmp7.i56.i.2, i32 0, i32 %mul.i55.i.2
  %sum.1.i58.i.2 = add i32 %sum.1.i58.i.1, %add.i57.i.2
  %159 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx7.i, align 1
  %call.i54.i.3 = call i32 @hex_to_bin(i8 noundef zeroext %160) #8
  %mul.i55.i.3 = shl i32 %call.i54.i.3, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i.3)
  %cmp7.i56.i.3 = icmp slt i32 %call.i54.i.3, 0
  %add.i57.i.3 = select i1 %cmp7.i56.i.3, i32 0, i32 %mul.i55.i.3
  %sum.1.i58.i.3 = add i32 %sum.1.i58.i.2, %add.i57.i.3
  %shl.i = shl i32 %sum.1.i58.i.3, 4
  br label %sw.epilog.i

sw.bb9.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx10.i = getelementptr i8, ptr %img.addr.0.i160, i32 9
  %arrayidx.i67.i = getelementptr i8, ptr %img.addr.0.i160, i32 12
  %161 = ptrtoint ptr %arrayidx.i67.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx.i67.i, align 1
  %call.i68.i = call i32 @hex_to_bin(i8 noundef zeroext %162) #8
  %163 = call i32 @llvm.smax.i32(i32 %call.i68.i, i32 0)
  %arrayidx.i67.i.1 = getelementptr i8, ptr %img.addr.0.i160, i32 11
  %164 = ptrtoint ptr %arrayidx.i67.i.1 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx.i67.i.1, align 1
  %call.i68.i.1 = call i32 @hex_to_bin(i8 noundef zeroext %165) #8
  %mul.i69.i.1 = shl i32 %call.i68.i.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68.i.1)
  %cmp7.i70.i.1 = icmp slt i32 %call.i68.i.1, 0
  %add.i71.i.1 = select i1 %cmp7.i70.i.1, i32 0, i32 %mul.i69.i.1
  %sum.1.i72.i.1 = add i32 %add.i71.i.1, %163
  %arrayidx.i67.i.2 = getelementptr i8, ptr %img.addr.0.i160, i32 10
  %166 = ptrtoint ptr %arrayidx.i67.i.2 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx.i67.i.2, align 1
  %call.i68.i.2 = call i32 @hex_to_bin(i8 noundef zeroext %167) #8
  %mul.i69.i.2 = shl i32 %call.i68.i.2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68.i.2)
  %cmp7.i70.i.2 = icmp slt i32 %call.i68.i.2, 0
  %add.i71.i.2 = select i1 %cmp7.i70.i.2, i32 0, i32 %mul.i69.i.2
  %sum.1.i72.i.2 = add i32 %sum.1.i72.i.1, %add.i71.i.2
  %168 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx10.i, align 1
  %call.i68.i.3 = call i32 @hex_to_bin(i8 noundef zeroext %169) #8
  %mul.i69.i.3 = shl i32 %call.i68.i.3, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68.i.3)
  %cmp7.i70.i.3 = icmp slt i32 %call.i68.i.3, 0
  %add.i71.i.3 = select i1 %cmp7.i70.i.3, i32 0, i32 %mul.i69.i.3
  %sum.1.i72.i.3 = add i32 %sum.1.i72.i.2, %add.i71.i.3
  %shl12.i = shl i32 %sum.1.i72.i.3, 16
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx14.i = getelementptr i8, ptr %img.addr.0.i160, i32 9
  %arrayidx.i81.i = getelementptr i8, ptr %img.addr.0.i160, i32 16
  %170 = ptrtoint ptr %arrayidx.i81.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx.i81.i, align 1
  %call.i82.i = call i32 @hex_to_bin(i8 noundef zeroext %171) #8
  %172 = call i32 @llvm.smax.i32(i32 %call.i82.i, i32 0)
  %arrayidx.i81.i.1 = getelementptr i8, ptr %img.addr.0.i160, i32 15
  %173 = ptrtoint ptr %arrayidx.i81.i.1 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx.i81.i.1, align 1
  %call.i82.i.1 = call i32 @hex_to_bin(i8 noundef zeroext %174) #8
  %mul.i83.i.1 = shl i32 %call.i82.i.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.i.1)
  %cmp7.i84.i.1 = icmp slt i32 %call.i82.i.1, 0
  %add.i85.i.1 = select i1 %cmp7.i84.i.1, i32 0, i32 %mul.i83.i.1
  %sum.1.i86.i.1 = add i32 %add.i85.i.1, %172
  %arrayidx.i81.i.2 = getelementptr i8, ptr %img.addr.0.i160, i32 14
  %175 = ptrtoint ptr %arrayidx.i81.i.2 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx.i81.i.2, align 1
  %call.i82.i.2 = call i32 @hex_to_bin(i8 noundef zeroext %176) #8
  %mul.i83.i.2 = shl i32 %call.i82.i.2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.i.2)
  %cmp7.i84.i.2 = icmp slt i32 %call.i82.i.2, 0
  %add.i85.i.2 = select i1 %cmp7.i84.i.2, i32 0, i32 %mul.i83.i.2
  %sum.1.i86.i.2 = add i32 %sum.1.i86.i.1, %add.i85.i.2
  %arrayidx.i81.i.3 = getelementptr i8, ptr %img.addr.0.i160, i32 13
  %177 = ptrtoint ptr %arrayidx.i81.i.3 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx.i81.i.3, align 1
  %call.i82.i.3 = call i32 @hex_to_bin(i8 noundef zeroext %178) #8
  %mul.i83.i.3 = shl i32 %call.i82.i.3, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.i.3)
  %cmp7.i84.i.3 = icmp slt i32 %call.i82.i.3, 0
  %add.i85.i.3 = select i1 %cmp7.i84.i.3, i32 0, i32 %mul.i83.i.3
  %sum.1.i86.i.3 = add i32 %sum.1.i86.i.2, %add.i85.i.3
  %arrayidx.i81.i.4 = getelementptr i8, ptr %img.addr.0.i160, i32 12
  %179 = ptrtoint ptr %arrayidx.i81.i.4 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx.i81.i.4, align 1
  %call.i82.i.4 = call i32 @hex_to_bin(i8 noundef zeroext %180) #8
  %mul.i83.i.4 = shl i32 %call.i82.i.4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.i.4)
  %cmp7.i84.i.4 = icmp slt i32 %call.i82.i.4, 0
  %add.i85.i.4 = select i1 %cmp7.i84.i.4, i32 0, i32 %mul.i83.i.4
  %sum.1.i86.i.4 = add i32 %sum.1.i86.i.3, %add.i85.i.4
  %arrayidx.i81.i.5 = getelementptr i8, ptr %img.addr.0.i160, i32 11
  %181 = ptrtoint ptr %arrayidx.i81.i.5 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx.i81.i.5, align 1
  %call.i82.i.5 = call i32 @hex_to_bin(i8 noundef zeroext %182) #8
  %mul.i83.i.5 = shl i32 %call.i82.i.5, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.i.5)
  %cmp7.i84.i.5 = icmp slt i32 %call.i82.i.5, 0
  %add.i85.i.5 = select i1 %cmp7.i84.i.5, i32 0, i32 %mul.i83.i.5
  %sum.1.i86.i.5 = add i32 %sum.1.i86.i.4, %add.i85.i.5
  %arrayidx.i81.i.6 = getelementptr i8, ptr %img.addr.0.i160, i32 10
  %183 = ptrtoint ptr %arrayidx.i81.i.6 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx.i81.i.6, align 1
  %call.i82.i.6 = call i32 @hex_to_bin(i8 noundef zeroext %184) #8
  %mul.i83.i.6 = shl i32 %call.i82.i.6, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.i.6)
  %cmp7.i84.i.6 = icmp slt i32 %call.i82.i.6, 0
  %add.i85.i.6 = select i1 %cmp7.i84.i.6, i32 0, i32 %mul.i83.i.6
  %sum.1.i86.i.6 = add i32 %sum.1.i86.i.5, %add.i85.i.6
  %185 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx14.i, align 1
  %call.i82.i.7 = call i32 @hex_to_bin(i8 noundef zeroext %186) #8
  %mul.i83.i.7 = shl i32 %call.i82.i.7, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.i.7)
  %cmp7.i84.i.7 = icmp slt i32 %call.i82.i.7, 0
  %add.i85.i.7 = select i1 %cmp7.i84.i.7, i32 0, i32 %mul.i83.i.7
  %sum.1.i86.i.7 = add i32 %sum.1.i86.i.6, %add.i85.i.7
  %call16.i113 = call fastcc i32 @sendcmd(ptr noundef %cif, i32 noundef 2, i32 noundef 20, i32 noundef %sum.1.i86.i.7, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i113)
  %cmp17.not.i = icmp eq i32 %call16.i113, 0
  %spec.select.i = select i1 %cmp17.not.i, i32 0, i32 -13
  br label %sw.epilog.i

sw.bb20.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb20.i, %sw.bb13.i, %sw.bb9.i, %sw.bb6.i, %if.end9.i.i.sw.epilog.i_crit_edge, %while.body.i118.preheader.sw.epilog.i_crit_edge, %if.end.i.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge, %if.then.i.sw.epilog.i_crit_edge
  %size.addr.1.i = phi i32 [ %size.addr.0.i162, %if.then.i.sw.epilog.i_crit_edge ], [ 0, %sw.bb20.i ], [ %size.addr.0.i162, %sw.bb9.i ], [ %size.addr.0.i162, %sw.bb6.i ], [ %size.addr.0.i162, %sw.bb13.i ], [ %size.addr.0.i162, %sw.bb.i.sw.epilog.i_crit_edge ], [ %size.addr.0.i162, %if.end.i.i.sw.epilog.i_crit_edge ], [ %size.addr.0.i162, %if.end9.i.i.sw.epilog.i_crit_edge ], [ %size.addr.0.i162, %while.body.i118.preheader.sw.epilog.i_crit_edge ]
  %laddr.1.i = phi i32 [ %laddr.0.i163, %if.then.i.sw.epilog.i_crit_edge ], [ %laddr.0.i163, %sw.bb20.i ], [ %shl12.i, %sw.bb9.i ], [ %laddr.0.i163, %sw.bb6.i ], [ %laddr.0.i163, %sw.bb13.i ], [ %laddr.0.i163, %sw.bb.i.sw.epilog.i_crit_edge ], [ %laddr.0.i163, %if.end.i.i.sw.epilog.i_crit_edge ], [ %laddr.0.i163, %if.end9.i.i.sw.epilog.i_crit_edge ], [ %laddr.0.i163, %while.body.i118.preheader.sw.epilog.i_crit_edge ]
  %saddr.1.i = phi i32 [ %saddr.0.i164, %if.then.i.sw.epilog.i_crit_edge ], [ %saddr.0.i164, %sw.bb20.i ], [ %saddr.0.i164, %sw.bb9.i ], [ %shl.i, %sw.bb6.i ], [ %saddr.0.i164, %sw.bb13.i ], [ %saddr.0.i164, %sw.bb.i.sw.epilog.i_crit_edge ], [ %saddr.0.i164, %if.end.i.i.sw.epilog.i_crit_edge ], [ %saddr.0.i164, %if.end9.i.i.sw.epilog.i_crit_edge ], [ %saddr.0.i164, %while.body.i118.preheader.sw.epilog.i_crit_edge ]
  %err.1.i = phi i32 [ 0, %if.then.i.sw.epilog.i_crit_edge ], [ 0, %sw.bb20.i ], [ 0, %sw.bb9.i ], [ 0, %sw.bb6.i ], [ %spec.select.i, %sw.bb13.i ], [ -13, %sw.bb.i.sw.epilog.i_crit_edge ], [ 0, %if.end.i.i.sw.epilog.i_crit_edge ], [ -13, %while.body.i118.preheader.sw.epilog.i_crit_edge ], [ 0, %if.end9.i.i.sw.epilog.i_crit_edge ]
  br label %while.cond21.i

while.cond21.i:                                   ; preds = %while.body24.i.while.cond21.i_crit_edge, %sw.epilog.i
  %img.addr.1.i = phi ptr [ %img.addr.0.i160, %sw.epilog.i ], [ %incdec.ptr.i, %while.body24.i.while.cond21.i_crit_edge ]
  %size.addr.2.i = phi i32 [ %size.addr.1.i, %sw.epilog.i ], [ %dec.i114, %while.body24.i.while.cond21.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.2.i)
  %cmp22.not.i = icmp eq i32 %size.addr.2.i, 0
  br i1 %cmp22.not.i, label %if.end30.i.thread, label %while.body24.i

if.end30.i.thread:                                ; preds = %while.cond21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %cmp1.i173 = icmp eq i32 %err.1.i, 0
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 732, ptr noundef nonnull @.str.25, i32 noundef %err.1.i) #8
  br i1 %cmp1.i173, label %if.end30.i.thread.if.end150.i_crit_edge, label %if.end30.i.thread.try_to_load_firmware.exit_crit_edge

if.end30.i.thread.try_to_load_firmware.exit_crit_edge: ; preds = %if.end30.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %try_to_load_firmware.exit

if.end30.i.thread.if.end150.i_crit_edge:          ; preds = %if.end30.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150.i

while.body24.i:                                   ; preds = %while.cond21.i
  %dec.i114 = add i32 %size.addr.2.i, -1
  %incdec.ptr.i = getelementptr i8, ptr %img.addr.1.i, i32 1
  %187 = ptrtoint ptr %img.addr.1.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %img.addr.1.i, align 1
  %cmp26.i = icmp eq i8 %188, 10
  br i1 %cmp26.i, label %while.body24.i.if.end30.i_crit_edge, label %while.body24.i.while.cond21.i_crit_edge

while.body24.i.while.cond21.i_crit_edge:          ; preds = %while.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond21.i

while.body24.i.if.end30.i_crit_edge:              ; preds = %while.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.end30.i:                                       ; preds = %while.body24.i.if.end30.i_crit_edge, %while.body.i.if.end30.i_crit_edge
  %img.addr.2.i = phi ptr [ %img.addr.0.i160, %while.body.i.if.end30.i_crit_edge ], [ %incdec.ptr.i, %while.body24.i.if.end30.i_crit_edge ]
  %size.addr.3.i = phi i32 [ %size.addr.0.i162, %while.body.i.if.end30.i_crit_edge ], [ %dec.i114, %while.body24.i.if.end30.i_crit_edge ]
  %laddr.2.i = phi i32 [ %laddr.0.i163, %while.body.i.if.end30.i_crit_edge ], [ %laddr.1.i, %while.body24.i.if.end30.i_crit_edge ]
  %saddr.2.i = phi i32 [ %saddr.0.i164, %while.body.i.if.end30.i_crit_edge ], [ %saddr.1.i, %while.body24.i.if.end30.i_crit_edge ]
  %err.2.i = phi i32 [ 0, %while.body.i.if.end30.i_crit_edge ], [ %err.1.i, %while.body24.i.if.end30.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.3.i)
  %cmp.not.i = icmp ne i32 %size.addr.3.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.i)
  %cmp1.i = icmp eq i32 %err.2.i, 0
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp1.i, i1 false
  br i1 %or.cond.i, label %if.end30.i.while.body.i_crit_edge, label %loadfirmware.exit

if.end30.i.while.body.i_crit_edge:                ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

loadfirmware.exit:                                ; preds = %if.end30.i
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 732, ptr noundef nonnull @.str.25, i32 noundef %err.2.i) #8
  br i1 %cmp1.i, label %loadfirmware.exit.if.end150.i_crit_edge, label %loadfirmware.exit.try_to_load_firmware.exit_crit_edge

loadfirmware.exit.try_to_load_firmware.exit_crit_edge: ; preds = %loadfirmware.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %try_to_load_firmware.exit

loadfirmware.exit.if.end150.i_crit_edge:          ; preds = %loadfirmware.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150.i

if.end150.i:                                      ; preds = %loadfirmware.exit.if.end150.i_crit_edge, %if.end30.i.thread.if.end150.i_crit_edge, %loadfirmware.exit.thread
  %firmware151.i = getelementptr inbounds %struct.snd_riptide, ptr %chip, i32 0, i32 20
  %189 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %firmware.i, align 8
  %191 = ptrtoint ptr %firmware151.i to i32
  call void @__asan_storeN_noabort(i32 %191, i32 8)
  store i64 %190, ptr %firmware151.i, align 4
  br label %try_to_load_firmware.exit.thread

try_to_load_firmware.exit.thread:                 ; preds = %if.end150.i, %for.body128.i.try_to_load_firmware.exit.thread_crit_edge, %if.else.i.try_to_load_firmware.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %firmware.i) #8
  br label %do.end

try_to_load_firmware.exit.thread150:              ; preds = %if.then142.i, %if.then64.critedge.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %firmware.i) #8
  br label %cleanup

try_to_load_firmware.exit:                        ; preds = %loadfirmware.exit.try_to_load_firmware.exit_crit_edge, %if.end30.i.thread.try_to_load_firmware.exit_crit_edge
  %err.0.i.lcssa179 = phi i32 [ %err.1.i, %if.end30.i.thread.try_to_load_firmware.exit_crit_edge ], [ %err.2.i, %loadfirmware.exit.try_to_load_firmware.exit_crit_edge ]
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 1234, ptr noundef nonnull @.str.23, i32 noundef %err.0.i.lcssa179) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %firmware.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.lcssa179)
  %cmp = icmp slt i32 %err.0.i.lcssa179, 0
  br i1 %cmp, label %try_to_load_firmware.exit.cleanup_crit_edge, label %try_to_load_firmware.exit.do.end_crit_edge

try_to_load_firmware.exit.do.end_crit_edge:       ; preds = %try_to_load_firmware.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

try_to_load_firmware.exit.cleanup_crit_edge:      ; preds = %try_to_load_firmware.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %try_to_load_firmware.exit.do.end_crit_edge, %try_to_load_firmware.exit.thread
  %call5 = call fastcc i32 @sendcmd(ptr noundef %cif, i32 noundef 2, i32 noundef 96, i32 noundef 0, ptr noundef null)
  %call6 = call fastcc i32 @sendcmd(ptr noundef %cif, i32 noundef 3, i32 noundef 97, i32 noundef 0, ptr noundef nonnull %rptr)
  %192 = ptrtoint ptr %rptr to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %rptr, align 8
  %arrayidx7 = getelementptr inbounds [2 x i32], ptr %rptr, i32 0, i32 1
  %194 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx7, align 4
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1267, ptr noundef nonnull @.str.16, i32 noundef %193, i32 noundef %195) #8
  %call8 = call fastcc i32 @sendcmd(ptr noundef %cif, i32 noundef 2, i32 noundef 50, i32 noundef 0, ptr noundef null)
  %call9 = call fastcc i32 @sendcmd(ptr noundef %cif, i32 noundef 2, i32 noundef 65, i32 noundef 0, ptr noundef null)
  %call10 = call fastcc i32 @sendcmd(ptr noundef %cif, i32 noundef 2, i32 noundef 82, i32 noundef 0, ptr noundef null)
  %call11 = call fastcc i32 @sendcmd(ptr noundef %cif, i32 noundef 2, i32 noundef 98, i32 noundef 0, ptr noundef null)
  %call12 = call fastcc i32 @sendcmd(ptr noundef %cif, i32 noundef 0, i32 noundef 35, i32 noundef 0, ptr noundef null)
  call fastcc void @writearm(ptr noundef %cif, i32 noundef 197112, i32 noundef 1, i32 noundef 1)
  call fastcc void @writearm(ptr noundef %cif, i32 noundef 197108, i32 noundef 1, i32 noundef 1)
  %call15 = call fastcc i32 @sendcmd(ptr noundef %cif, i32 noundef 2, i32 noundef 308, i32 noundef 184550148, ptr noundef null)
  call fastcc void @setmixer(ptr noundef %cif, i16 noundef signext 11, i16 noundef zeroext 32767, i16 noundef zeroext 32767)
  call fastcc void @alloclbuspath(ptr noundef %cif, i8 noundef zeroext 13, ptr noundef nonnull @lbus_play_modem, ptr noundef null, ptr noundef null)
  %call17 = call fastcc i32 @sendcmd(ptr noundef %cif, i32 noundef 2, i32 noundef 1076, i32 noundef 150994947, ptr noundef null)
  call fastcc void @setmixer(ptr noundef %cif, i16 noundef signext 9, i16 noundef zeroext 32767, i16 noundef zeroext 32767)
  call fastcc void @writearm(ptr noundef %cif, i32 noundef 198252, i32 noundef 1, i32 noundef 5)
  call fastcc void @writearm(ptr noundef %cif, i32 noundef 197032, i32 noundef 2, i32 noundef 2)
  call fastcc void @writearm(ptr noundef %cif, i32 noundef 197220, i32 noundef 8, i32 noundef -1)
  call fastcc void @alloclbuspath(ptr noundef %cif, i8 noundef zeroext 34, ptr noundef nonnull @lbus_play_opl3, ptr noundef null, ptr noundef null)
  %call22 = call fastcc i32 @sendcmd(ptr noundef %cif, i32 noundef 2, i32 noundef -1149238464, i32 noundef 629205811, ptr noundef null)
  %call23 = call fastcc i32 @sendcmd(ptr noundef %cif, i32 noundef 2, i32 noundef 564, i32 noundef 117440515, ptr noundef null)
  %call24 = call fastcc i32 @sendcmd(ptr noundef %cif, i32 noundef 2, i32 noundef 112, i32 noundef 65536, ptr noundef null)
  call fastcc void @alloclbuspath(ptr noundef %cif, i8 noundef zeroext 0, ptr noundef nonnull @lbus_play_i2s, ptr noundef null, ptr noundef null)
  call fastcc void @alloclbuspath(ptr noundef %cif, i8 noundef zeroext 42, ptr noundef nonnull @lbus_play_out, ptr noundef null, ptr noundef null)
  call fastcc void @alloclbuspath(ptr noundef %cif, i8 noundef zeroext 42, ptr noundef nonnull @lbus_play_outhp, ptr noundef null, ptr noundef null)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !319
  call void @arm_heavy_mb() #8
  %196 = ptrtoint ptr %cif to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %cif, align 4
  %198 = ptrtoint ptr %197 to i32
  %and = and i32 %198, 1048575
  %add = or i32 %and, -18874368
  %199 = inttoptr i32 %add to ptr
  %200 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %199) #8, !srcloc !288
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %201 = or i32 %200, 134217728
  %202 = ptrtoint ptr %cif to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %cif, align 4
  %204 = ptrtoint ptr %203 to i32
  %and32 = and i32 %204, 1048575
  %add33 = or i32 %and32, -18874368
  %205 = inttoptr i32 %add33 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %205, i32 %201) #8, !srcloc !290
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  call void @arm_heavy_mb() #8
  %206 = ptrtoint ptr %cif to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %cif, align 4
  %208 = ptrtoint ptr %207 to i32
  %and41 = and i32 %208, 1048575
  %add42 = or i32 %and41, -18874368
  %209 = inttoptr i32 %add42 to ptr
  %210 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %209) #8, !srcloc !288
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %211 = or i32 %210, 67108864
  %212 = ptrtoint ptr %cif to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %cif, align 4
  %214 = ptrtoint ptr %213 to i32
  %and49 = and i32 %214, 1048575
  %add50 = or i32 %and49, -18874368
  %215 = inttoptr i32 %add50 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %215, i32 %211) #8, !srcloc !290
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  call void @arm_heavy_mb() #8
  %216 = ptrtoint ptr %cif to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %cif, align 4
  %218 = ptrtoint ptr %217 to i32
  %and58 = and i32 %218, 1048575
  %add59 = or i32 %and58, -18874368
  %219 = inttoptr i32 %add59 to ptr
  %220 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %219) #8, !srcloc !288
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !324
  %221 = or i32 %220, 134217728
  %222 = ptrtoint ptr %cif to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %cif, align 4
  %224 = ptrtoint ptr %223 to i32
  %and66 = and i32 %224, 1048575
  %add67 = or i32 %and66, -18874368
  %225 = inttoptr i32 %add67 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %225, i32 %221) #8, !srcloc !290
  %226 = ptrtoint ptr %is_reset to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 1, ptr %is_reset, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %try_to_load_firmware.exit.cleanup_crit_edge, %try_to_load_firmware.exit.thread150, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ %err.0.i.lcssa179, %try_to_load_firmware.exit.cleanup_crit_edge ], [ -5, %try_to_load_firmware.exit.thread150 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rptr) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sendcmd(ptr noundef %cif, i32 noundef %flags, i32 noundef %cmd, i32 noundef %parm, ptr noundef %ret) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cif, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !302

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 831, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %entry
  %0 = ptrtoint ptr %cif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cif, align 4
  %errcnt = getelementptr inbounds %struct.cmdif, ptr %cif, i32 0, i32 6
  %2 = ptrtoint ptr %errcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %errcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp = icmp ugt i32 %3, 10
  br i1 %cmp, label %if.then25, label %if.end33

if.then25:                                        ; preds = %if.end23
  %is_reset = getelementptr inbounds %struct.cmdif, ptr %cif, i32 0, i32 7
  %4 = ptrtoint ptr %is_reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %is_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool26.not = icmp eq i32 %5, 0
  br i1 %tobool26.not, label %if.then25.if.end32_crit_edge, label %if.then27

if.then25.if.end32_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then27:                                        ; preds = %if.then25
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 838, ptr noundef nonnull @.str.30) #8
  %call = tail call fastcc i32 @riptide_reset(ptr noundef nonnull %cif, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp28 = icmp eq i32 %call, 0
  br i1 %cmp28, label %if.then29, label %if.then27.if.end32_crit_edge

if.then27.if.end32_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then29:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %errcnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %errcnt, align 4
  br label %cleanup

if.end32:                                         ; preds = %if.then27.if.end32_crit_edge, %if.then25.if.end32_crit_edge
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 844, ptr noundef nonnull @.str.31) #8
  br label %cleanup

if.end33:                                         ; preds = %if.end23
  %tobool34.not = icmp eq ptr %ret, null
  br i1 %tobool34.not, label %if.end33.if.end37_crit_edge, label %if.then35

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ret, align 4
  %arrayidx36 = getelementptr [2 x i32], ptr %ret, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx36, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end33.if.end37_crit_edge
  %lock = getelementptr inbounds %struct.cmdif, ptr %cif, i32 0, i32 1
  %call43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %if.end37
  %inc294 = phi i32 [ 1, %if.end37 ], [ %inc, %while.body.land.rhs_crit_edge ]
  %9 = ptrtoint ptr %cif to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cif, align 4
  %audio_status = getelementptr inbounds %struct.riptideport, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %audio_status to i32
  %and = and i32 %11, 1048575
  %add = or i32 %and, -18874368
  %12 = inttoptr i32 %add to ptr
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %12) #8, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !325
  %14 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool55.not = icmp eq i32 %14, 0
  br i1 %tobool55.not, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #8
  %inc = add nuw nsw i32 %inc294, 1
  %exitcond.not = icmp eq i32 %inc, 50001
  br i1 %exitcond.not, label %while.body.errout_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.body.errout_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout

while.end:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %inc294)
  %cmp58 = icmp ugt i32 %inc294, 50000
  br i1 %cmp58, label %while.end.errout_crit_edge, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  br label %for.body

while.end.errout_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout

for.body:                                         ; preds = %if.end157.for.body_crit_edge, %while.end.for.body_crit_edge
  %j.0296 = phi i32 [ %inc158, %if.end157.for.body_crit_edge ], [ 0, %while.end.for.body_crit_edge ]
  %time.0295 = phi i32 [ %add159, %if.end157.for.body_crit_edge ], [ 0, %while.end.for.body_crit_edge ]
  %rem.urem = and i32 %j.0296, 1
  %arrayidx64 = getelementptr %struct.riptideport, ptr %1, i32 0, i32 3, i32 %rem.urem
  %stat = getelementptr %struct.riptideport, ptr %1, i32 0, i32 3, i32 %rem.urem, i32 2
  %16 = ptrtoint ptr %stat to i32
  %and66 = and i32 %16, 1048575
  %add67 = or i32 %and66, -18874368
  %17 = inttoptr i32 %add67 to ptr
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %17) #8, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !326
  %19 = and i32 %18, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool72.not = icmp eq i32 %19, 0
  br i1 %tobool72.not, label %for.body.if.end86_crit_edge, label %if.then73

for.body.if.end86_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then73:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %arrayidx64 to i32
  %and75 = and i32 %20, 1048575
  %add76 = or i32 %and75, -18874368
  %21 = inttoptr i32 %add76 to ptr
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %21) #8, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !327
  %data2 = getelementptr %struct.riptideport, ptr %1, i32 0, i32 3, i32 %rem.urem, i32 1
  %23 = ptrtoint ptr %data2 to i32
  %and81 = and i32 %23, 1048575
  %add82 = or i32 %and81, -18874368
  %24 = inttoptr i32 %add82 to ptr
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %24) #8, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !328
  br label %if.end86

if.end86:                                         ; preds = %if.then73, %for.body.if.end86_crit_edge
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %17) #8, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !329
  %27 = and i32 %26, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool95.not = icmp eq i32 %27, 0
  br i1 %tobool95.not, label %if.end157, label %if.then96

if.then96:                                        ; preds = %if.end86
  %28 = inttoptr i32 %add67 to ptr
  %and97 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.then96.do.body108_crit_edge, label %do.body100

if.then96.do.body108_crit_edge:                   ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body108

do.body100:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !330
  tail call void @arm_heavy_mb() #8
  %29 = tail call i32 @llvm.bswap.i32(i32 %parm)
  %data2103 = getelementptr %struct.riptideport, ptr %1, i32 0, i32 3, i32 %rem.urem, i32 1
  %30 = ptrtoint ptr %data2103 to i32
  %and104 = and i32 %30, 1048575
  %add105 = or i32 %and104, -18874368
  %31 = inttoptr i32 %add105 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %31, i32 %29) #8, !srcloc !290
  br label %do.body108

do.body108:                                       ; preds = %do.body100, %if.then96.do.body108_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !331
  tail call void @arm_heavy_mb() #8
  %32 = tail call i32 @llvm.bswap.i32(i32 %cmd)
  %33 = ptrtoint ptr %arrayidx64 to i32
  %and112 = and i32 %33, 1048575
  %add113 = or i32 %and112, -18874368
  %34 = inttoptr i32 %add113 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %34, i32 %32) #8, !srcloc !290
  %and115 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  %brmerge = or i1 %tobool116.not, %tobool34.not
  br i1 %brmerge, label %do.body108.if.end163_crit_edge, label %while.cond119.preheader

do.body108.if.end163_crit_edge:                   ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163

while.cond119.preheader:                          ; preds = %do.body108
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %28) #8, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !332
  %36 = and i32 %35, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool128.not297 = icmp eq i32 %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %time.0295)
  %cmp130298 = icmp ult i32 %time.0295, 50000
  %or.cond299 = select i1 %tobool128.not297, i1 %cmp130298, i1 false
  br i1 %or.cond299, label %while.cond119.preheader.while.body133_crit_edge, label %while.cond119.preheader.while.end135_crit_edge

while.cond119.preheader.while.end135_crit_edge:   ; preds = %while.cond119.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end135

while.cond119.preheader.while.body133_crit_edge:  ; preds = %while.cond119.preheader
  br label %while.body133

while.body133:                                    ; preds = %while.body133.while.body133_crit_edge, %while.cond119.preheader.while.body133_crit_edge
  %time.1300 = phi i32 [ %inc134, %while.body133.while.body133_crit_edge ], [ %time.0295, %while.cond119.preheader.while.body133_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 2147480) #8
  %inc134 = add nuw nsw i32 %time.1300, 1
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %28) #8, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !332
  %39 = and i32 %38, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool128.not = icmp eq i32 %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 49999, i32 %time.1300)
  %cmp130 = icmp ult i32 %time.1300, 49999
  %or.cond = select i1 %tobool128.not, i1 %cmp130, i1 false
  br i1 %or.cond, label %while.body133.while.body133_crit_edge, label %while.body133.while.end135_crit_edge

while.body133.while.end135_crit_edge:             ; preds = %while.body133
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end135

while.body133.while.body133_crit_edge:            ; preds = %while.body133
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body133

while.end135:                                     ; preds = %while.body133.while.end135_crit_edge, %while.cond119.preheader.while.end135_crit_edge
  %time.1.lcssa = phi i32 [ %time.0295, %while.cond119.preheader.while.end135_crit_edge ], [ %inc134, %while.body133.while.end135_crit_edge ]
  %cmp130.lcssa = phi i1 [ %cmp130298, %while.cond119.preheader.while.end135_crit_edge ], [ %cmp130, %while.body133.while.end135_crit_edge ]
  br i1 %cmp130.lcssa, label %if.then138, label %while.end135.errout_crit_edge

while.end135.errout_crit_edge:                    ; preds = %while.end135
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout

if.then138:                                       ; preds = %while.end135
  call void @__sanitizer_cov_trace_pc() #10
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %34) #8, !srcloc !288
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !333
  %42 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %ret, align 4
  %data2148 = getelementptr %struct.riptideport, ptr %1, i32 0, i32 3, i32 %rem.urem, i32 1
  %43 = ptrtoint ptr %data2148 to i32
  %and149 = and i32 %43, 1048575
  %add150 = or i32 %and149, -18874368
  %44 = inttoptr i32 %add150 to ptr
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %44) #8, !srcloc !288
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !334
  %arrayidx154 = getelementptr [2 x i32], ptr %ret, i32 0, i32 1
  %47 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx154, align 4
  br label %if.end163

if.end157:                                        ; preds = %if.end86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 4294960) #8
  %inc158 = add nuw nsw i32 %j.0296, 1
  %add159 = add nuw nsw i32 %time.0295, 2
  %exitcond308.not = icmp eq i32 %inc158, 25000
  br i1 %exitcond308.not, label %if.end157.errout_crit_edge, label %if.end157.for.body_crit_edge

if.end157.for.body_crit_edge:                     ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end157.errout_crit_edge:                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  br label %errout

if.end163:                                        ; preds = %if.then138, %do.body108.if.end163_crit_edge
  %time.2289 = phi i32 [ %time.0295, %do.body108.if.end163_crit_edge ], [ %time.1.lcssa, %if.then138 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call43) #8
  %cmdcnt = getelementptr inbounds %struct.cmdif, ptr %cif, i32 0, i32 2
  %49 = ptrtoint ptr %cmdcnt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cmdcnt, align 4
  %inc165 = add i32 %50, 1
  store i32 %inc165, ptr %cmdcnt, align 4
  %cmdtime = getelementptr inbounds %struct.cmdif, ptr %cif, i32 0, i32 3
  %51 = ptrtoint ptr %cmdtime to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cmdtime, align 4
  %add166 = add i32 %52, %time.2289
  store i32 %add166, ptr %cmdtime, align 4
  %cmdtimemax = getelementptr inbounds %struct.cmdif, ptr %cif, i32 0, i32 4
  %53 = ptrtoint ptr %cmdtimemax to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cmdtimemax, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %time.2289, i32 %54)
  %cmp167 = icmp ugt i32 %time.2289, %54
  br i1 %cmp167, label %if.then169, label %if.end163.if.end171_crit_edge

if.end163.if.end171_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

if.then169:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %cmdtimemax to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %time.2289, ptr %cmdtimemax, align 4
  br label %if.end171

if.end171:                                        ; preds = %if.then169, %if.end163.if.end171_crit_edge
  %cmdtimemin = getelementptr inbounds %struct.cmdif, ptr %cif, i32 0, i32 5
  %56 = ptrtoint ptr %cmdtimemin to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cmdtimemin, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %time.2289, i32 %57)
  %cmp172 = icmp ult i32 %time.2289, %57
  br i1 %cmp172, label %if.then174, label %if.end171.if.end176_crit_edge

if.end171.if.end176_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end176

if.then174:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %cmdtimemin to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %time.2289, ptr %cmdtimemin, align 4
  br label %if.end176

if.end176:                                        ; preds = %if.then174, %if.end171.if.end176_crit_edge
  %rem178 = urem i32 %inc165, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem178)
  %cmp179 = icmp eq i32 %rem178, 0
  br i1 %cmp179, label %if.then181, label %if.end176.cleanup_crit_edge

if.end176.cleanup_crit_edge:                      ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then181:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %cmdtimemin to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cmdtimemin, align 4
  %61 = ptrtoint ptr %cmdtimemax to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cmdtimemax, align 4
  %63 = ptrtoint ptr %errcnt to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %errcnt, align 4
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 907, ptr noundef nonnull @.str.32, i32 noundef %inc165, i32 noundef %add166, i32 noundef %60, i32 noundef %62, i32 noundef %64) #8
  br label %cleanup

errout:                                           ; preds = %if.end157.errout_crit_edge, %while.end135.errout_crit_edge, %while.end.errout_crit_edge, %while.body.errout_crit_edge
  %cmdport.2 = phi ptr [ null, %while.end.errout_crit_edge ], [ %arrayidx64, %while.end135.errout_crit_edge ], [ %arrayidx64, %if.end157.errout_crit_edge ], [ null, %while.body.errout_crit_edge ]
  %err.0 = phi i32 [ -16, %while.end.errout_crit_edge ], [ -38, %while.end135.errout_crit_edge ], [ -61, %if.end157.errout_crit_edge ], [ -16, %while.body.errout_crit_edge ]
  %65 = ptrtoint ptr %errcnt to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %errcnt, align 4
  %inc189 = add i32 %66, 1
  store i32 %inc189, ptr %errcnt, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call43) #8
  %cmdcnt191 = getelementptr inbounds %struct.cmdif, ptr %cif, i32 0, i32 2
  %67 = ptrtoint ptr %cmdcnt191 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cmdcnt191, align 4
  %stat192 = getelementptr inbounds %struct.cmdport, ptr %cmdport.2, i32 0, i32 2
  %sub.ptr.lhs.cast = ptrtoint ptr %stat192 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br i1 %tobool34.not, label %errout.cond.end199_crit_edge, label %cond.true196

errout.cond.end199_crit_edge:                     ; preds = %errout
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end199

cond.true196:                                     ; preds = %errout
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ret, align 4
  %arrayidx197 = getelementptr [2 x i32], ptr %ret, i32 0, i32 1
  %71 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx197, align 4
  br label %cond.end199

cond.end199:                                      ; preds = %cond.true196, %errout.cond.end199_crit_edge
  %cond291 = phi i32 [ %70, %cond.true196 ], [ 0, %errout.cond.end199_crit_edge ]
  %cond200 = phi i32 [ %72, %cond.true196 ], [ 0, %errout.cond.end199_crit_edge ]
  %and203 = and i32 %sub.ptr.lhs.cast, 1048575
  %add204 = or i32 %and203, -18874368
  %73 = inttoptr i32 %add204 to ptr
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %73) #8, !srcloc !288
  %75 = lshr i32 %74, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !335
  %and208 = and i32 %75, 1
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %73) #8, !srcloc !288
  %77 = lshr i32 %76, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !336
  %and216 = and i32 %77, 2
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 918, ptr noundef nonnull @.str.33, i32 noundef %68, i32 noundef %sub.ptr.sub, i32 noundef %flags, i32 noundef %cmd, i32 noundef %parm, i32 noundef %cond291, i32 noundef %cond200, i32 noundef %and208, i32 noundef %and216, i32 noundef %err.0) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end199, %if.then181, %if.end176.cleanup_crit_edge, %if.end32, %if.then29, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -5, %if.then29 ], [ -22, %if.end32 ], [ %err.0, %cond.end199 ], [ 0, %if.then181 ], [ 0, %if.end176.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @writearm(ptr noundef %cif, i32 noundef %addr, i32 noundef %data, i32 noundef %mask) unnamed_addr #2 align 64 {
entry:
  %rptr = alloca %union.cmdret, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rptr) #8
  %0 = ptrtoint ptr %rptr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %rptr, align 8
  %call = call fastcc i32 @sendcmd(ptr noundef %cif, i32 noundef 3, i32 noundef 528, i32 noundef %addr, ptr noundef nonnull %rptr)
  %neg = xor i32 %mask, -1
  %1 = ptrtoint ptr %rptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %.pn = phi i32 [ %2, %entry ], [ %7, %while.body.while.cond_crit_edge ]
  %i.0 = phi i32 [ 10, %entry ], [ %dec, %while.body.while.cond_crit_edge ]
  %storemerge = and i32 %.pn, %neg
  %3 = ptrtoint ptr %rptr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %storemerge, ptr %rptr, align 8
  %dec = add nsw i32 %i.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call fastcc i32 @sendcmd(ptr noundef %cif, i32 noundef 2, i32 noundef 273, i32 noundef %addr, ptr noundef null)
  %4 = ptrtoint ptr %rptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rptr, align 8
  %or = or i32 %5, %data
  %call3 = call fastcc i32 @sendcmd(ptr noundef %cif, i32 noundef 2, i32 noundef 530, i32 noundef %or, ptr noundef null)
  %call4 = call fastcc i32 @sendcmd(ptr noundef %cif, i32 noundef 3, i32 noundef 528, i32 noundef %addr, ptr noundef nonnull %rptr)
  %6 = ptrtoint ptr %rptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rptr, align 8
  %and6 = and i32 %7, %data
  %cmp = icmp eq i32 %and6, %data
  br i1 %cmp, label %while.body.while.end_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %flag.0 = phi i32 [ 1, %while.cond.while.end_crit_edge ], [ 0, %while.body.while.end_crit_edge ]
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 817, ptr noundef nonnull @.str.26, i32 noundef %addr, i32 noundef %data, i32 noundef %mask, i32 noundef %flag.0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rptr) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setmixer(ptr noundef %cif, i16 noundef signext %num, i16 noundef zeroext %rval, i16 noundef zeroext %lval) unnamed_addr #2 align 64 {
entry:
  %rptr = alloca %union.cmdret, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rptr) #8
  %0 = ptrtoint ptr %rptr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %rptr, align 8
  %1 = zext i16 %num to i32
  %conv1 = zext i16 %rval to i32
  %conv2 = zext i16 %lval to i32
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 928, ptr noundef nonnull @.str.27, i32 noundef %1, i32 noundef %conv1, i32 noundef %conv2) #8
  %and = shl nuw i32 %1, 16
  %shl = and i32 %and, 16711680
  %shl6 = shl i32 %1, 24
  %or = or i32 %shl, %shl6
  %or7 = or i32 %or, 80
  %shl12 = shl nuw i32 %conv2, 16
  %or13 = or i32 %shl12, %conv1
  %or21 = or i32 %or, 81
  %arrayidx26 = getelementptr inbounds [4 x i16], ptr %rptr, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %do.cond.do.body_crit_edge ]
  %call = call fastcc i32 @sendcmd(ptr noundef %cif, i32 noundef 2, i32 noundef %or7, i32 noundef %or13, ptr noundef null)
  %call22 = call fastcc i32 @sendcmd(ptr noundef %cif, i32 noundef 3, i32 noundef %or21, i32 noundef 0, ptr noundef nonnull %rptr)
  %2 = ptrtoint ptr %rptr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rptr, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %lval)
  %cmp = icmp eq i16 %3, %lval
  br i1 %cmp, label %land.lhs.true, label %do.body.do.cond_crit_edge

do.body.do.cond_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

land.lhs.true:                                    ; preds = %do.body
  %4 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx26, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %rval)
  %cmp29 = icmp eq i16 %5, %rval
  br i1 %cmp29, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.do.cond_crit_edge

land.lhs.true.do.cond_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond:                                          ; preds = %land.lhs.true.do.cond_crit_edge, %do.body.do.cond_crit_edge
  %inc = add nuw nsw i32 %i.0, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 935, ptr noundef nonnull @.str.28) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rptr) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alloclbuspath(ptr noundef %cif, i8 noundef zeroext %source, ptr nocapture noundef readonly %path, ptr noundef %mixer, ptr noundef %s) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %path to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %path, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp.not98 = icmp eq i8 %1, -1
  br i1 %cmp.not98, label %entry.while.end68_crit_edge, label %while.body.lr.ph

entry.while.end68_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end68

while.body.lr.ph:                                 ; preds = %entry
  %tobool.not = icmp eq ptr %mixer, null
  %tobool41.not = icmp eq ptr %s, null
  br label %while.body

while.body:                                       ; preds = %if.end67.while.body_crit_edge, %while.body.lr.ph
  %2 = phi i8 [ %1, %while.body.lr.ph ], [ %19, %if.end67.while.body_crit_edge ]
  %source.addr.0100 = phi i8 [ %source, %while.body.lr.ph ], [ %source.addr.1, %if.end67.while.body_crit_edge ]
  %path.addr.099 = phi ptr [ %path, %while.body.lr.ph ], [ %incdec.ptr, %if.end67.while.body_crit_edge ]
  %3 = and i8 %2, 127
  %conv4 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %3)
  %cmp5.not = icmp eq i8 %3, 60
  br i1 %cmp5.not, label %while.body.if.end53_crit_edge, label %if.then

while.body.if.end53_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then:                                          ; preds = %while.body
  %conv7 = zext i8 %source.addr.0100 to i32
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 745, ptr noundef nonnull @.str.29, i32 noundef %conv7, i32 noundef %conv4) #8
  %shl = shl nuw nsw i32 %conv7, 16
  %shl13 = shl nuw nsw i32 %conv4, 24
  %or = or i32 %shl13, %shl
  %call = tail call fastcc i32 @sendcmd(ptr noundef %cif, i32 noundef 2, i32 noundef 48, i32 noundef %or, ptr noundef null)
  %arrayidx = getelementptr [61 x [2 x i8]], ptr @lbusin2out, i32 0, i32 %conv4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = add nsw i32 %conv4, -42
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %6)
  %cmp19 = icmp ult i32 %6, -12
  %or.cond = or i1 %tobool.not, %cmp19
  br i1 %or.cond, label %if.then.if.end25_crit_edge, label %if.then22

if.then.if.end25_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then22:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add nsw i8 %3, -30
  %7 = ptrtoint ptr %mixer to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %sub, ptr %mixer, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.then.if.end25_crit_edge
  %8 = and i32 %conv4, 124
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %8)
  %cmp27 = icmp ne i32 %8, 20
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %3)
  %cmp30 = icmp ne i8 %3, 24
  %or.cond94 = select i1 %cmp27, i1 %cmp30, i1 false
  %9 = add nsw i32 %conv4, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %9)
  %cmp34 = icmp ult i32 %9, -7
  %or.cond95 = select i1 %or.cond94, i1 %cmp34, i1 false
  %10 = add nsw i32 %conv4, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %10)
  %cmp38 = icmp ult i32 %10, -5
  %or.cond96 = select i1 %or.cond95, i1 %cmp38, i1 false
  %or.cond97 = or i1 %tobool41.not, %or.cond96
  br i1 %or.cond97, label %if.end25.if.end53_crit_edge, label %if.then42

if.end25.if.end53_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then42:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %s to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %s, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp45.not = icmp ne i8 %12, -1
  %s.arrayidx48.idx = zext i1 %cmp45.not to i32
  %s.arrayidx48 = getelementptr i8, ptr %s, i32 %s.arrayidx48.idx
  %13 = ptrtoint ptr %s.arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %3, ptr %s.arrayidx48, align 1
  br label %if.end53

if.end53:                                         ; preds = %if.then42, %if.end25.if.end53_crit_edge, %while.body.if.end53_crit_edge
  %source.addr.1 = phi i8 [ %source.addr.0100, %while.body.if.end53_crit_edge ], [ %5, %if.end25.if.end53_crit_edge ], [ %5, %if.then42 ]
  %incdec.ptr = getelementptr i8, ptr %path.addr.099, i32 1
  %14 = ptrtoint ptr %path.addr.099 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %path.addr.099, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %tobool56.not = icmp sgt i8 %15, -1
  br i1 %tobool56.not, label %if.end53.if.end67_crit_edge, label %if.end53.while.cond58_crit_edge

if.end53.while.cond58_crit_edge:                  ; preds = %if.end53
  br label %while.cond58

if.end53.if.end67_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

while.cond58:                                     ; preds = %while.cond58.while.cond58_crit_edge, %if.end53.while.cond58_crit_edge
  %npath.0 = phi ptr [ %incdec.ptr63, %while.cond58.while.cond58_crit_edge ], [ %incdec.ptr, %if.end53.while.cond58_crit_edge ]
  %16 = ptrtoint ptr %npath.0 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %npath.0, align 1
  %cmp60.not = icmp eq i8 %17, -1
  %incdec.ptr63 = getelementptr i8, ptr %npath.0, i32 1
  br i1 %cmp60.not, label %while.end, label %while.cond58.while.cond58_crit_edge

while.cond58.while.cond58_crit_edge:              ; preds = %while.cond58
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond58

while.end:                                        ; preds = %while.cond58
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i8 %source.addr.1, 1
  tail call fastcc void @alloclbuspath(ptr noundef %cif, i8 noundef zeroext %add, ptr noundef %incdec.ptr63, ptr noundef %mixer, ptr noundef %s)
  br label %if.end67

if.end67:                                         ; preds = %while.end, %if.end53.if.end67_crit_edge
  %18 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr, align 1
  %cmp.not = icmp eq i8 %19, -1
  br i1 %cmp.not, label %if.end67.while.end68_crit_edge, label %if.end67.while.body_crit_edge

if.end67.while.body_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end67.while.end68_crit_edge:                   ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end68

while.end68:                                      ; preds = %if.end67.while.end68_crit_edge, %entry.while.end68_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_riptide_playback_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number, align 4
  %arrayidx = getelementptr %struct.snd_riptide, ptr %1, i32 0, i32 10, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %substream, ptr %arrayidx, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %7 = call ptr @memcpy(ptr %hw, ptr @snd_riptide_playback, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 88) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx2 = getelementptr [3 x %struct.lbuspath], ptr @lbus_play_paths, i32 0, i32 %5
  %9 = call ptr @memcpy(ptr %call7.i.i, ptr %arrayidx2, i32 12)
  %arrayidx3 = getelementptr [3 x i8], ptr @play_ids, i32 0, i32 %5
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx3, align 1
  %id = getelementptr inbounds %struct.pcmhw, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %id, align 4
  %arrayidx4 = getelementptr [3 x i8], ptr @play_sources, i32 0, i32 %5
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx4, align 1
  %source = getelementptr inbounds %struct.pcmhw, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %source to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %source, align 8
  %intdec = getelementptr inbounds %struct.pcmhw, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %intdec to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %intdec, align 1
  %arrayidx7 = getelementptr %struct.pcmhw, ptr %call7.i.i, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %arrayidx7, align 2
  %state = getelementptr inbounds %struct.pcmhw, ptr %call7.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %state, align 1
  %private_data8 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %19 = ptrtoint ptr %private_data8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %private_data8, align 8
  %call9 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_riptide_playback_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number, align 4
  store ptr null, ptr %private_data1, align 8
  %arrayidx = getelementptr %struct.snd_riptide, ptr %1, i32 0, i32 10, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_riptide_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %hw_params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %sgdlist2 = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 10
  %id = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 4
  %conv = zext i8 %7 to i32
  %area = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %area, align 4
  %addr = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 10, i32 2
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr, align 4
  %bytes = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 10, i32 3
  %12 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bytes, align 4
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1555, ptr noundef nonnull @.str.34, i32 noundef %conv, ptr noundef %9, i32 noundef %11, i32 noundef %13) #8
  %14 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %area, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_dma_free_pages(ptr noundef %sgdlist2) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pci = getelementptr inbounds %struct.snd_riptide, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %call.i = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef 2, ptr noundef %dev, i32 noundef 0, i32 noundef 4096, ptr noundef %sgdlist2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 1563, ptr noundef nonnull @.str.35, i32 noundef 4096) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %area, align 4
  %sgdbuf = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 11
  %20 = ptrtoint ptr %sgdbuf to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %sgdbuf, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5
  %retval.0 = phi i32 [ %call.i, %if.then5 ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_riptide_hw_free(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %cif2 = getelementptr inbounds %struct.snd_riptide, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %cif2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cif2, align 4
  %tobool.not = icmp eq ptr %7, null
  %tobool3.not = icmp eq ptr %5, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then:                                          ; preds = %entry
  %lbuspath = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %lbuspath to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lbuspath, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %source = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %source, align 4
  tail call fastcc void @freelbuspath(ptr noundef nonnull %7, i8 noundef zeroext %11, ptr noundef nonnull %9)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %12 = ptrtoint ptr %lbuspath to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %lbuspath, align 4
  %source8 = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %source8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %source8, align 4
  %intdec = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %intdec to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %intdec, align 1
  %arrayidx10 = getelementptr %struct.pcmhw, ptr %5, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %arrayidx10, align 1
  %area = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %area, align 4
  %tobool11.not = icmp eq ptr %17, null
  br i1 %tobool11.not, label %if.end.if.end17_crit_edge, label %if.then12

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sgdlist = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 10
  tail call void @snd_dma_free_pages(ptr noundef %sgdlist) #8
  %18 = ptrtoint ptr %area to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %area, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end.if.end17_crit_edge, %entry.if.end17_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_riptide_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  %rptr.i = alloca %union.cmdret, align 8
  call void @__sanitizer_cov_trace_pc() #10
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
  %cif4 = getelementptr inbounds %struct.snd_riptide, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %cif4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cif4, align 4
  %tobool.not = icmp eq ptr %7, null
  %tobool5.not = icmp eq ptr %5, null
  %spec.select = select i1 %tobool.not, i1 true, i1 %tobool5.not
  br i1 %spec.select, label %do.end, label %if.end28, !prof !302

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1455, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end28:                                         ; preds = %entry
  %id = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id, align 4
  %conv = zext i8 %9 to i32
  %channels29 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %10 = ptrtoint ptr %channels29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channels29, align 8
  %format30 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %12 = ptrtoint ptr %format30 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %format30, align 4
  %rate31 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %14 = ptrtoint ptr %rate31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rate31, align 4
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1459, ptr noundef nonnull @.str.37, i32 noundef %conv, i32 noundef %11, i32 noundef %13, i32 noundef %15) #8
  %lock = getelementptr inbounds %struct.snd_riptide, ptr %1, i32 0, i32 21
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %16 = ptrtoint ptr %channels29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channels29, align 8
  %18 = ptrtoint ptr %format30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %format30, align 4
  %20 = ptrtoint ptr %rate31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rate31, align 4
  %22 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %17, label %if.end28.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb41
  ]

if.end28.sw.epilog_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %21)
  %cmp = icmp eq i32 %21, 48000
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp36 = icmp eq i32 %19, 2
  %or.cond = select i1 %cmp, i1 %cmp36, i1 false
  %mono = getelementptr inbounds %struct.lbuspath, ptr %5, i32 0, i32 2
  %spec.select269 = select i1 %or.cond, ptr %5, ptr %mono
  br label %sw.epilog.sink.split

sw.bb41:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %21)
  %cmp42 = icmp eq i32 %21, 48000
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp45 = icmp eq i32 %19, 2
  %or.cond237 = select i1 %cmp42, i1 %cmp45, i1 false
  %stereo = getelementptr inbounds %struct.lbuspath, ptr %5, i32 0, i32 1
  %spec.select270 = select i1 %or.cond237, ptr %5, ptr %stereo
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb41, %sw.bb
  %.sink = phi ptr [ %spec.select269, %sw.bb ], [ %spec.select270, %sw.bb41 ]
  %23 = ptrtoint ptr %.sink to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %.sink, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end28.sw.epilog_crit_edge
  %lbuspath.0 = phi ptr [ null, %if.end28.sw.epilog_crit_edge ], [ %24, %sw.epilog.sink.split ]
  %area = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %area, align 4
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1480, ptr noundef nonnull @.str.38, ptr noundef %26) #8
  %27 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %area, align 4
  %tobool55.not = icmp eq ptr %28, null
  br i1 %tobool55.not, label %sw.epilog.if.end92_crit_edge, label %if.then56

sw.epilog.if.end92_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then56:                                        ; preds = %sw.epilog
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %29 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buffer_size, align 4
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %31 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %frame_bits.i, align 8
  %mul.i = mul i32 %32, %30
  %div1.i = lshr i32 %mul.i, 3
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %33 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %period_size, align 4
  %mul.i241 = mul i32 %34, %32
  %div1.i242 = lshr i32 %mul.i241, 3
  %add = add nsw i32 %div1.i, -1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.then56
  %f.0 = phi i32 [ 4096, %if.then56 ], [ %shr, %while.cond.while.cond_crit_edge ]
  %shr = lshr i32 %f.0, 1
  %sub = add nsw i32 %add, %shr
  %shl = shl nuw nsw i32 %f.0, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %shl)
  %cmp58.not = icmp ule i32 %sub, %shl
  %shl60 = shl nuw nsw i32 %f.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl60, i32 %div1.i242)
  %cmp61 = icmp ugt i32 %shl60, %div1.i242
  %or.cond238 = select i1 %cmp58.not, i1 %cmp61, i1 false
  br i1 %or.cond238, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %sub65 = add nsw i32 %add, %f.0
  %div = udiv i32 %sub65, %f.0
  %size66 = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 12
  %35 = ptrtoint ptr %size66 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div1.i, ptr %size66, align 4
  %pages67 = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 13
  %36 = ptrtoint ptr %pages67 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div, ptr %pages67, align 4
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1495, ptr noundef nonnull @.str.39, i32 noundef %div1.i, i32 noundef %div, i32 noundef %f.0, i32 noundef %div1.i242) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %f.0, i32 %sub65)
  %cmp68257.not = icmp ugt i32 %f.0, %sub65
  br i1 %cmp68257.not, label %while.end.for.end_crit_edge, label %for.body.lr.ph

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %while.end
  %sgdbuf = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 11
  %addr73 = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 10, i32 2
  %37 = tail call i32 @llvm.bswap.i32(i32 %f.0)
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end75.for.body_crit_edge, %for.body.lr.ph
  %p.0263 = phi ptr [ null, %for.body.lr.ph ], [ %arrayidx, %if.end75.for.body_crit_edge ]
  %pt.0262 = phi i32 [ 0, %for.body.lr.ph ], [ %rem, %if.end75.for.body_crit_edge ]
  %size.0261 = phi i32 [ %div1.i, %for.body.lr.ph ], [ %sub87, %if.end75.for.body_crit_edge ]
  %j.0260 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select239, %if.end75.for.body_crit_edge ]
  %i.0258 = phi i32 [ 0, %for.body.lr.ph ], [ %inc88, %if.end75.for.body_crit_edge ]
  %38 = ptrtoint ptr %sgdbuf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sgdbuf, align 4
  %arrayidx = getelementptr %struct.sgd, ptr %39, i32 %i.0258
  %tobool70.not = icmp eq ptr %p.0263, null
  br i1 %tobool70.not, label %for.body.if.end75_crit_edge, label %if.then71

for.body.if.end75_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then71:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %addr73 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %addr73, align 4
  %mul = shl i32 %i.0258, 4
  %add74 = add i32 %41, %mul
  %42 = tail call i32 @llvm.bswap.i32(i32 %add74)
  %43 = ptrtoint ptr %p.0263 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %p.0263, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then71, %for.body.if.end75_crit_edge
  %44 = ptrtoint ptr %addr73 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %addr73, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx, align 4
  %shl79 = shl i32 %j.0260, 12
  %48 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %runtime1, align 4
  %dma_buffer_p.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %49, i32 0, i32 53
  %50 = ptrtoint ptr %dma_buffer_p.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dma_buffer_p.i, align 8
  %call.i = tail call i32 @snd_sgbuf_get_addr(ptr noundef %51, i32 noundef %shl79) #8
  %add81 = add i32 %call.i, %pt.0262
  %52 = tail call i32 @llvm.bswap.i32(i32 %add81)
  %dwSegPtrPhys = getelementptr %struct.sgd, ptr %39, i32 %i.0258, i32 1
  %53 = ptrtoint ptr %dwSegPtrPhys to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %dwSegPtrPhys, align 4
  %add82 = add nuw nsw i32 %pt.0262, %f.0
  %rem = and i32 %add82, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp83 = icmp eq i32 %rem, 0
  %inc = zext i1 %cmp83 to i32
  %spec.select239 = add i32 %j.0260, %inc
  %dwSegLen = getelementptr %struct.sgd, ptr %39, i32 %i.0258, i32 2
  %54 = ptrtoint ptr %dwSegLen to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %37, ptr %dwSegLen, align 4
  %dwStat_Ctl = getelementptr %struct.sgd, ptr %39, i32 %i.0258, i32 3
  %55 = ptrtoint ptr %dwStat_Ctl to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 117440512, ptr %dwStat_Ctl, align 4
  %sub87 = sub i32 %size.0261, %f.0
  %inc88 = add nuw i32 %i.0258, 1
  %exitcond.not = icmp eq i32 %inc88, %umax
  br i1 %exitcond.not, label %if.end75.for.end_crit_edge, label %if.end75.for.body_crit_edge

if.end75.for.body_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end75.for.end_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end75.for.end_crit_edge, %while.end.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %while.end.for.end_crit_edge ], [ %inc88, %if.end75.for.end_crit_edge ]
  %size.0.lcssa = phi i32 [ %div1.i, %while.end.for.end_crit_edge ], [ %sub87, %if.end75.for.end_crit_edge ]
  %56 = tail call i32 @llvm.bswap.i32(i32 %size.0.lcssa)
  %sgdbuf89 = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 11
  %57 = ptrtoint ptr %sgdbuf89 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sgdbuf89, align 4
  %dwSegLen91 = getelementptr %struct.sgd, ptr %58, i32 %i.0.lcssa, i32 2
  %59 = ptrtoint ptr %dwSegLen91 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %56, ptr %dwSegLen91, align 4
  br label %if.end92

if.end92:                                         ; preds = %for.end, %sw.epilog.if.end92_crit_edge
  %tobool93.not = icmp eq ptr %lbuspath.0, null
  br i1 %tobool93.not, label %if.end92.if.end107_crit_edge, label %land.lhs.true94

if.end92.if.end107_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

land.lhs.true94:                                  ; preds = %if.end92
  %lbuspath95 = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 1
  %60 = ptrtoint ptr %lbuspath95 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %lbuspath95, align 4
  %cmp96.not = icmp eq ptr %lbuspath.0, %61
  br i1 %cmp96.not, label %land.lhs.true94.if.end107_crit_edge, label %if.then98

land.lhs.true94.if.end107_crit_edge:              ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

if.then98:                                        ; preds = %land.lhs.true94
  %tobool100.not = icmp eq ptr %61, null
  br i1 %tobool100.not, label %if.then98.if.end103_crit_edge, label %if.then101

if.then98.if.end103_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

if.then101:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  %source = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 2
  %62 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %source, align 4
  tail call fastcc void @freelbuspath(ptr noundef %7, i8 noundef zeroext %63, ptr noundef nonnull %61)
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %if.then98.if.end103_crit_edge
  %source104 = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 2
  %64 = ptrtoint ptr %source104 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %source104, align 4
  %mixer = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 4
  %intdec = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 3
  tail call fastcc void @alloclbuspath(ptr noundef %7, i8 noundef zeroext %65, ptr noundef nonnull %lbuspath.0, ptr noundef %mixer, ptr noundef %intdec)
  %66 = ptrtoint ptr %lbuspath95 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %lbuspath.0, ptr %lbuspath95, align 4
  %rate106 = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 7
  %67 = ptrtoint ptr %rate106 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %rate106, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.end103, %land.lhs.true94.if.end107_crit_edge, %if.end92.if.end107_crit_edge
  %rate108 = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 7
  %68 = ptrtoint ptr %rate108 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rate108, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %21)
  %cmp109.not = icmp eq i32 %69, %21
  br i1 %cmp109.not, label %lor.lhs.false, label %if.end107.if.then118_crit_edge

if.end107.if.then118_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then118

lor.lhs.false:                                    ; preds = %if.end107
  %format111 = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 9
  %70 = ptrtoint ptr %format111 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %format111, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %19)
  %cmp112.not = icmp eq i32 %71, %19
  br i1 %cmp112.not, label %lor.lhs.false114, label %lor.lhs.false.if.then118_crit_edge

lor.lhs.false.if.then118_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then118

lor.lhs.false114:                                 ; preds = %lor.lhs.false
  %channels115 = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 8
  %72 = ptrtoint ptr %channels115 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %channels115, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %17)
  %cmp116.not = icmp eq i32 %73, %17
  br i1 %cmp116.not, label %lor.lhs.false114.if.end134_crit_edge, label %lor.lhs.false114.if.then118_crit_edge

lor.lhs.false114.if.then118_crit_edge:            ; preds = %lor.lhs.false114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then118

lor.lhs.false114.if.end134_crit_edge:             ; preds = %lor.lhs.false114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

if.then118:                                       ; preds = %lor.lhs.false114.if.then118_crit_edge, %lor.lhs.false.if.then118_crit_edge, %if.end107.if.then118_crit_edge
  %74 = ptrtoint ptr %rate108 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %21, ptr %rate108, align 4
  %format120 = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 9
  %75 = ptrtoint ptr %format120 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %19, ptr %format120, align 4
  %channels121 = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 8
  %76 = ptrtoint ptr %channels121 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %17, ptr %channels121, align 4
  %mixer122 = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 4
  %77 = ptrtoint ptr %mixer122 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %mixer122, align 1
  %79 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %id, align 4
  %conv124 = trunc i32 %17 to i8
  %conv.i = zext i8 %78 to i32
  %conv1.i = zext i8 %80 to i32
  %conv2.i = and i32 %17, 255
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1010, ptr noundef nonnull @.str.40, i32 noundef %conv.i, i32 noundef %conv1.i, i32 noundef %conv2.i, i32 noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv124)
  %cmp.i = icmp eq i8 %conv124, 1
  %call.i243 = tail call i32 @snd_pcm_format_width(i32 noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i243)
  %cmp6.i = icmp eq i32 %call.i243, 8
  %call9.i = tail call i32 @snd_pcm_format_unsigned(i32 noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.not.i = icmp eq i32 %call9.i, 0
  %call13.i = tail call i32 @snd_pcm_format_big_endian(i32 noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.not.i = icmp eq i32 %call13.i, 0
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %shl20.i = select i1 %cmp6.i, i32 16777216, i32 0
  %or.i = or i32 %shl20.i, %shl.i
  %or21.i = or i32 %or.i, 37
  %conv22.i = zext i1 %cmp.i to i32
  %shl25.i = select i1 %cmp14.not.i, i32 0, i32 256
  %shl29.i = select i1 %cmp10.not.i, i32 0, i32 65536
  %or26.i = or i32 %shl29.i, %conv22.i
  %or30.i = or i32 %or26.i, %shl25.i
  %shl33.i = shl nuw i32 %conv1.i, 24
  %or34.i = or i32 %or30.i, %shl33.i
  %call35.i = tail call fastcc i32 @sendcmd(ptr noundef %7, i32 noundef 2, i32 noundef %or21.i, i32 noundef %or34.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool.not.i, label %if.then118.lor.lhs.false127_crit_edge, label %land.lhs.true.i

if.then118.lor.lhs.false127_crit_edge:            ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false127

land.lhs.true.i:                                  ; preds = %if.then118
  %call57.i = tail call fastcc i32 @sendcmd(ptr noundef %7, i32 noundef 2, i32 noundef %or21.i, i32 noundef %or34.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %land.lhs.true.i.lor.lhs.false127_crit_edge, label %setsampleformat.exit

land.lhs.true.i.lor.lhs.false127_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false127

setsampleformat.exit:                             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1018, ptr noundef nonnull @.str.41) #8
  br label %if.end134

lor.lhs.false127:                                 ; preds = %land.lhs.true.i.lor.lhs.false127_crit_edge, %if.then118.lor.lhs.false127_crit_edge
  %intdec128 = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rptr.i) #8
  %81 = ptrtoint ptr %rptr.i to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 0, ptr %rptr.i, align 8
  %82 = ptrtoint ptr %intdec128 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %intdec128, align 1
  %conv.i244 = zext i8 %83 to i32
  %arrayidx1.i = getelementptr %struct.pcmhw, ptr %5, i32 0, i32 3, i32 1
  %84 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i245 = zext i8 %85 to i32
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1032, ptr noundef nonnull @.str.42, i32 noundef %conv.i244, i32 noundef %conv2.i245, i32 noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %21)
  %cmp.i246 = icmp eq i32 %21, 48000
  %phi.bo.i = shl i32 %21, 16
  %spec.select.i = select i1 %cmp.i246, i32 -1149304832, i32 %phi.bo.i
  %spec.select.i.frozen = freeze i32 %spec.select.i
  %div.i = udiv i32 %spec.select.i.frozen, 48000
  %86 = mul i32 %div.i, 48000
  %rem.i.decomposed = sub i32 %spec.select.i.frozen, %86
  %and13.i = and i32 %div.i, 65535
  %shl15.i = shl nuw i32 %rem.i.decomposed, 16
  %or16.i = or i32 %and13.i, %shl15.i
  %arrayidx22.i = getelementptr inbounds [4 x i16], ptr %rptr.i, i32 0, i32 1
  %arrayidx26.i = getelementptr inbounds [4 x i16], ptr %rptr.i, i32 0, i32 2
  %arrayidx31.i = getelementptr inbounds [4 x i16], ptr %rptr.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end41.i.for.body.i_crit_edge, %lor.lhs.false127
  %i.076.i = phi i32 [ 0, %lor.lhs.false127 ], [ %inc42.i, %if.end41.i.for.body.i_crit_edge ]
  %intdec.addr.073.i = phi ptr [ %intdec128, %lor.lhs.false127 ], [ %incdec.ptr.i, %if.end41.i.for.body.i_crit_edge ]
  %87 = ptrtoint ptr %intdec.addr.073.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %intdec.addr.073.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %88)
  %cmp7.not.i = icmp eq i8 %88, -1
  br i1 %cmp7.not.i, label %for.body.i.if.end41.i_crit_edge, label %for.body.i.do.body.i_crit_edge

for.body.i.do.body.i_crit_edge:                   ; preds = %for.body.i
  br label %do.body.i

for.body.i.if.end41.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %for.body.i.do.body.i_crit_edge
  %i.1.i = phi i32 [ %inc.i, %land.rhs.i.do.body.i_crit_edge ], [ %i.076.i, %for.body.i.do.body.i_crit_edge ]
  %89 = ptrtoint ptr %intdec.addr.073.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %intdec.addr.073.i, align 1
  %conv9.i = zext i8 %90 to i32
  %shl.i247 = shl nuw nsw i32 %conv9.i, 8
  %or12.i = or i32 %shl.i247, -1149239232
  %call.i248 = call fastcc i32 @sendcmd(ptr noundef %7, i32 noundef 2, i32 noundef %or12.i, i32 noundef %or16.i, ptr noundef null) #8
  %91 = ptrtoint ptr %intdec.addr.073.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %intdec.addr.073.i, align 1
  %conv17.i = zext i8 %92 to i32
  %shl19.i = shl nuw nsw i32 %conv17.i, 8
  %or20.i = or i32 %shl19.i, 66
  %call21.i = call fastcc i32 @sendcmd(ptr noundef %7, i32 noundef 1, i32 noundef %or20.i, i32 noundef 0, ptr noundef nonnull %rptr.i) #8
  %93 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx22.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -17536, i16 %94)
  %cmp24.not.i = icmp eq i16 %94, -17536
  br i1 %cmp24.not.i, label %do.body.i.if.end41.i_crit_edge, label %land.lhs.true.i249

do.body.i.if.end41.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

land.lhs.true.i249:                               ; preds = %do.body.i
  %95 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx26.i, align 4
  %conv27.i = zext i16 %96 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %conv27.i)
  %cmp28.not.i = icmp eq i32 %div.i, %conv27.i
  br i1 %cmp28.not.i, label %land.lhs.true.i249.if.end41.i_crit_edge, label %land.lhs.true30.i

land.lhs.true.i249.if.end41.i_crit_edge:          ; preds = %land.lhs.true.i249
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

land.lhs.true30.i:                                ; preds = %land.lhs.true.i249
  %97 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %arrayidx31.i, align 2
  %conv32.i = zext i16 %98 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.decomposed, i32 %conv32.i)
  %cmp33.not.i = icmp eq i32 %rem.i.decomposed, %conv32.i
  br i1 %cmp33.not.i, label %land.lhs.true30.i.if.end41.i_crit_edge, label %land.rhs.i

land.lhs.true30.i.if.end41.i_crit_edge:           ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

land.rhs.i:                                       ; preds = %land.lhs.true30.i
  %inc.i = add i32 %i.1.i, 1
  %exitcond.not.i = icmp eq i32 %i.1.i, 10
  br i1 %exitcond.not.i, label %setsamplerate.exit, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end41.i:                                       ; preds = %land.lhs.true30.i.if.end41.i_crit_edge, %land.lhs.true.i249.if.end41.i_crit_edge, %do.body.i.if.end41.i_crit_edge, %for.body.i.if.end41.i_crit_edge
  %i.3.i = phi i32 [ %i.076.i, %for.body.i.if.end41.i_crit_edge ], [ %i.1.i, %do.body.i.if.end41.i_crit_edge ], [ %i.1.i, %land.lhs.true.i249.if.end41.i_crit_edge ], [ %i.1.i, %land.lhs.true30.i.if.end41.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %intdec.addr.073.i, i32 1
  %inc42.i = add nsw i32 %i.3.i, 1
  %cmp4.i = icmp slt i32 %i.3.i, 1
  br i1 %cmp4.i, label %if.end41.i.for.body.i_crit_edge, label %setsamplerate.exit.thread

if.end41.i.for.body.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

setsamplerate.exit.thread:                        ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rptr.i) #8
  br label %if.end134

setsamplerate.exit:                               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %intdec.addr.073.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %intdec.addr.073.i, align 1
  %conv40.i = zext i8 %100 to i32
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1048, ptr noundef nonnull @.str.43, i32 noundef %conv40.i, i32 noundef %21) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rptr.i) #8
  br label %if.end134

if.end134:                                        ; preds = %setsamplerate.exit, %setsamplerate.exit.thread, %setsampleformat.exit, %lor.lhs.false114.if.end134_crit_edge
  %err.0 = phi i32 [ 0, %lor.lhs.false114.if.end134_crit_edge ], [ 0, %setsamplerate.exit.thread ], [ -5, %setsamplerate.exit ], [ -5, %setsampleformat.exit ]
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end134, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %err.0, %if.end134 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_riptide_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  %rptr = alloca %union.cmdret, align 8
  call void @__sanitizer_cov_trace_pc() #10
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
  %cif2 = getelementptr inbounds %struct.snd_riptide, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %cif2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cif2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rptr) #8
  %8 = ptrtoint ptr %rptr to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %rptr, align 8
  %lock = getelementptr inbounds %struct.snd_riptide, ptr %1, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %9 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %cmd, label %sw.default [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge147
    i32 0, label %entry.sw.bb22_crit_edge
    i32 5, label %entry.sw.bb22_crit_edge148
    i32 3, label %sw.bb61
    i32 4, label %sw.bb79
  ]

entry.sw.bb22_crit_edge148:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb22

entry.sw.bb22_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb22

entry.sw.bb_crit_edge147:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge147
  %state = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %state, align 1
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %id = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 5
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %id, align 4
  %conv3 = zext i8 %14 to i32
  %shl = shl nuw i32 %conv3, 24
  %or = or i32 %shl, 32
  %addr = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 10, i32 2
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr, align 4
  %call = tail call fastcc i32 @sendcmd(ptr noundef %7, i32 noundef 2, i32 noundef %or, i32 noundef %16, ptr noundef null)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !337
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %7, align 4
  %19 = ptrtoint ptr %18 to i32
  %and5 = and i32 %19, 1048575
  %add = or i32 %and5, -18874368
  %20 = inttoptr i32 %add to ptr
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %20) #8, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !338
  %22 = or i32 %21, 67108864
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %7, align 4
  %25 = ptrtoint ptr %24 to i32
  %and11 = and i32 %25, 1048575
  %add12 = or i32 %and11, -18874368
  %26 = inttoptr i32 %add12 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %26, i32 %22) #8, !srcloc !290
  %27 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %state, align 1
  %mixer = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 4
  %28 = ptrtoint ptr %mixer to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mixer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %29)
  %cmp.not = icmp eq i8 %29, -1
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %if.then17

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then17:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %conv19 = zext i8 %29 to i16
  tail call fastcc void @setmixer(ptr noundef %7, i16 noundef signext %conv19, i16 noundef zeroext 32767, i16 noundef zeroext 32767)
  br label %if.end

if.end:                                           ; preds = %if.then17, %if.then.if.end_crit_edge
  %openstreams = getelementptr inbounds %struct.snd_riptide, ptr %1, i32 0, i32 12
  %30 = ptrtoint ptr %openstreams to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %openstreams, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %openstreams, align 4
  %oldpos = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 14
  %32 = ptrtoint ptr %oldpos to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %oldpos, align 4
  %pointer = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 15
  %33 = ptrtoint ptr %pointer to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %pointer, align 4
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry.sw.bb22_crit_edge, %entry.sw.bb22_crit_edge148
  %mixer23 = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 4
  %34 = ptrtoint ptr %mixer23 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %mixer23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %35)
  %cmp25.not = icmp eq i8 %35, -1
  br i1 %cmp25.not, label %sw.bb22.if.end31_crit_edge, label %if.then27

sw.bb22.if.end31_crit_edge:                       ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then27:                                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  %conv29 = zext i8 %35 to i16
  tail call fastcc void @setmixer(ptr noundef %7, i16 noundef signext %conv29, i16 noundef zeroext 0, i16 noundef zeroext 0)
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %sw.bb22.if.end31_crit_edge
  %36 = ptrtoint ptr %mixer23 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %mixer23, align 1
  %conv33 = zext i8 %37 to i16
  tail call fastcc void @setmixer(ptr noundef %7, i16 noundef signext %conv33, i16 noundef zeroext 0, i16 noundef zeroext 0)
  %id35 = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 5
  %38 = ptrtoint ptr %id35 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %id35, align 4
  %conv36 = zext i8 %39 to i32
  %shl38 = shl nuw i32 %conv36, 24
  %call39 = tail call fastcc i32 @sendcmd(ptr noundef %7, i32 noundef 2, i32 noundef 34, i32 noundef %shl38, ptr noundef null)
  %state40 = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 6
  %40 = ptrtoint ptr %state40 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 2, ptr %state40, align 1
  %openstreams41 = getelementptr inbounds %struct.snd_riptide, ptr %1, i32 0, i32 12
  %41 = ptrtoint ptr %openstreams41 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %openstreams41, align 4
  %dec = add i32 %42, -1
  store i32 %dec, ptr %openstreams41, align 4
  %arrayidx = getelementptr inbounds [2 x i32], ptr %rptr, i32 0, i32 1
  br label %do.body42

do.body42:                                        ; preds = %land.rhs.do.body42_crit_edge, %if.end31
  %j.0 = phi i32 [ 0, %if.end31 ], [ %inc53, %land.rhs.do.body42_crit_edge ]
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 4
  %45 = ptrtoint ptr %id35 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %id35, align 4
  %conv44 = zext i8 %46 to i32
  %shl46 = shl nuw i32 %conv44, 24
  %call48 = call fastcc i32 @sendcmd(ptr noundef %7, i32 noundef 3, i32 noundef 36, i32 noundef %shl46, ptr noundef nonnull %rptr)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %47(i32 noundef 214748) #8
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %49)
  %cmp51.not = icmp eq i32 %44, %49
  br i1 %cmp51.not, label %do.body42.sw.epilog_crit_edge, label %land.rhs

do.body42.sw.epilog_crit_edge:                    ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.rhs:                                         ; preds = %do.body42
  %inc53 = add nuw nsw i32 %j.0, 1
  %exitcond.not = icmp eq i32 %inc53, 11
  br i1 %exitcond.not, label %if.then59, label %land.rhs.do.body42_crit_edge

land.rhs.do.body42_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body42

if.then59:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 1420, ptr noundef nonnull @.str.44) #8
  br label %sw.epilog

sw.bb61:                                          ; preds = %entry
  %state62 = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 6
  %50 = ptrtoint ptr %state62 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %state62, align 1
  %52 = and i8 %51, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool65.not = icmp eq i8 %52, 0
  br i1 %tobool65.not, label %if.then66, label %sw.bb61.sw.epilog_crit_edge

sw.bb61.sw.epilog_crit_edge:                      ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then66:                                        ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #10
  %id67 = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 5
  %53 = ptrtoint ptr %id67 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %id67, align 4
  %conv68 = zext i8 %54 to i32
  %shl70 = shl nuw i32 %conv68, 24
  %call71 = tail call fastcc i32 @sendcmd(ptr noundef %7, i32 noundef 2, i32 noundef 33, i32 noundef %shl70, ptr noundef null)
  %55 = ptrtoint ptr %state62 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %state62, align 1
  %57 = or i8 %56, 4
  store i8 %57, ptr %state62, align 1
  %openstreams76 = getelementptr inbounds %struct.snd_riptide, ptr %1, i32 0, i32 12
  %58 = ptrtoint ptr %openstreams76 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %openstreams76, align 4
  %dec77 = add i32 %59, -1
  store i32 %dec77, ptr %openstreams76, align 4
  br label %sw.epilog

sw.bb79:                                          ; preds = %entry
  %state80 = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 6
  %60 = ptrtoint ptr %state80 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %state80, align 1
  %62 = and i8 %61, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool83.not = icmp eq i8 %62, 0
  br i1 %tobool83.not, label %sw.bb79.sw.epilog_crit_edge, label %if.then84

sw.bb79.sw.epilog_crit_edge:                      ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then84:                                        ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #10
  %id85 = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 5
  %63 = ptrtoint ptr %id85 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %id85, align 4
  %conv86 = zext i8 %64 to i32
  %shl88 = shl nuw i32 %conv86, 24
  %or89 = or i32 %shl88, 32
  %addr91 = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 10, i32 2
  %65 = ptrtoint ptr %addr91 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %addr91, align 4
  %call92 = tail call fastcc i32 @sendcmd(ptr noundef %7, i32 noundef 2, i32 noundef %or89, i32 noundef %66, ptr noundef null)
  %67 = ptrtoint ptr %state80 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %state80, align 1
  %69 = and i8 %68, -5
  store i8 %69, ptr %state80, align 1
  %openstreams97 = getelementptr inbounds %struct.snd_riptide, ptr %1, i32 0, i32 12
  %70 = ptrtoint ptr %openstreams97 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %openstreams97, align 4
  %inc98 = add i32 %71, 1
  store i32 %inc98, ptr %openstreams97, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  br label %cleanup

sw.epilog:                                        ; preds = %if.then84, %sw.bb79.sw.epilog_crit_edge, %if.then66, %sw.bb61.sw.epilog_crit_edge, %if.then59, %do.body42.sw.epilog_crit_edge, %if.end, %sw.bb.sw.epilog_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rptr) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_riptide_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  %rptr = alloca %union.cmdret, align 8
  call void @__sanitizer_cov_trace_pc() #10
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
  %cif4 = getelementptr inbounds %struct.snd_riptide, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %cif4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cif4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rptr) #8
  %8 = ptrtoint ptr %rptr to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %rptr, align 8
  %id = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 5
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %id, align 4
  %conv = zext i8 %10 to i32
  %shl = shl nuw i32 %conv, 24
  %call = call fastcc i32 @sendcmd(ptr noundef %7, i32 noundef 3, i32 noundef 36, i32 noundef %shl, ptr noundef nonnull %rptr)
  %size = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 12
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %entry.if.else27_crit_edge, label %land.lhs.true

entry.if.else27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else27

land.lhs.true:                                    ; preds = %entry
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %13 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %period_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not = icmp eq i32 %14, 0
  br i1 %tobool5.not, label %land.lhs.true.if.else27_crit_edge, label %if.then

land.lhs.true.if.else27_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else27

if.then:                                          ; preds = %land.lhs.true
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %id, align 4
  %conv7 = zext i8 %16 to i32
  %arrayidx = getelementptr inbounds [2 x i32], ptr %rptr, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %rem = urem i32 %18, %12
  %mul.i = shl i32 %18, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %19 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %20
  %rem15 = urem i32 %div.i, %14
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1365, ptr noundef nonnull @.str.45, i32 noundef %conv7, i32 noundef %18, i32 noundef %rem, i32 noundef %div.i, i32 noundef %rem15) #8
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %pointer = getelementptr inbounds %struct.pcmhw, ptr %5, i32 0, i32 15
  %23 = ptrtoint ptr %pointer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pointer, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp = icmp ugt i32 %22, %24
  %25 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size, align 4
  br i1 %cmp, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %rem21 = urem i32 %22, %26
  %mul.i54 = shl i32 %rem21, 3
  %27 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %frame_bits.i, align 8
  %div.i56 = udiv i32 %mul.i54, %28
  br label %if.end31

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %rem25 = urem i32 %24, %26
  %mul.i57 = shl i32 %rem25, 3
  %29 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %frame_bits.i, align 8
  %div.i59 = udiv i32 %mul.i57, %30
  br label %if.end31

if.else27:                                        ; preds = %land.lhs.true.if.else27_crit_edge, %entry.if.else27_crit_edge
  %period_size29 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %31 = ptrtoint ptr %period_size29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %period_size29, align 4
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1376, ptr noundef nonnull @.str.46, i32 noundef %12, i32 noundef %32) #8
  br label %if.end31

if.end31:                                         ; preds = %if.else27, %if.else, %if.then18
  %ret.0 = phi i32 [ %div.i56, %if.then18 ], [ %div.i59, %if.else ], [ 0, %if.else27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rptr) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dma_free_pages(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dma_alloc_dir_pages(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @freelbuspath(ptr noundef %cif, i8 noundef zeroext %source, ptr nocapture noundef readonly %path) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %path to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %path, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp.not40 = icmp eq i8 %1, -1
  br i1 %cmp.not40, label %entry.while.end28_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end28_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end28

while.body:                                       ; preds = %if.end27.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi i8 [ %11, %if.end27.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %path.addr.042 = phi ptr [ %incdec.ptr, %if.end27.while.body_crit_edge ], [ %path, %entry.while.body_crit_edge ]
  %source.addr.041 = phi i8 [ %source.addr.1, %if.end27.while.body_crit_edge ], [ %source, %entry.while.body_crit_edge ]
  %3 = and i8 %2, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %3)
  %cmp5.not = icmp eq i8 %3, 60
  br i1 %cmp5.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv4 = zext i8 %3 to i32
  %conv7 = zext i8 %source.addr.041 to i32
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 783, ptr noundef nonnull @.str.36, i32 noundef %conv7, i32 noundef %conv4) #8
  %shl = shl nuw nsw i32 %conv7, 16
  %shl13 = shl nuw nsw i32 %conv4, 24
  %or = or i32 %shl13, %shl
  %call = tail call fastcc i32 @sendcmd(ptr noundef %cif, i32 noundef 2, i32 noundef 49, i32 noundef %or, ptr noundef null)
  %arrayidx = getelementptr [61 x [2 x i8]], ptr @lbusin2out, i32 0, i32 %conv4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = ptrtoint ptr %path.addr.042 to i32
  call void @__asan_load1_noabort(i32 %6)
  %.pr = load i8, ptr %path.addr.042, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %7 = phi i8 [ %.pr, %if.then ], [ %2, %while.body.if.end_crit_edge ]
  %source.addr.1 = phi i8 [ %5, %if.then ], [ %source.addr.041, %while.body.if.end_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %path.addr.042, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %tobool.not = icmp sgt i8 %7, -1
  br i1 %tobool.not, label %if.end.if.end27_crit_edge, label %if.end.while.cond18_crit_edge

if.end.while.cond18_crit_edge:                    ; preds = %if.end
  br label %while.cond18

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

while.cond18:                                     ; preds = %while.cond18.while.cond18_crit_edge, %if.end.while.cond18_crit_edge
  %npath.0 = phi ptr [ %incdec.ptr23, %while.cond18.while.cond18_crit_edge ], [ %incdec.ptr, %if.end.while.cond18_crit_edge ]
  %8 = ptrtoint ptr %npath.0 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %npath.0, align 1
  %cmp20.not = icmp eq i8 %9, -1
  %incdec.ptr23 = getelementptr i8, ptr %npath.0, i32 1
  br i1 %cmp20.not, label %while.end, label %while.cond18.while.cond18_crit_edge

while.cond18.while.cond18_crit_edge:              ; preds = %while.cond18
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond18

while.end:                                        ; preds = %while.cond18
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i8 %source.addr.1, 1
  tail call fastcc void @freelbuspath(ptr noundef %cif, i8 noundef zeroext %add, ptr noundef %incdec.ptr23)
  br label %if.end27

if.end27:                                         ; preds = %while.end, %if.end.if.end27_crit_edge
  %10 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %incdec.ptr, align 1
  %cmp.not = icmp eq i8 %11, -1
  br i1 %cmp.not, label %if.end27.while.end28_crit_edge, label %if.end27.while.body_crit_edge

if.end27.while.body_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end27.while.end28_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end28

while.end28:                                      ; preds = %if.end27.while.end28_crit_edge, %entry.while.end28_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sgbuf_get_addr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_unsigned(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_big_endian(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_riptide_capture_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %capture_substream = getelementptr inbounds %struct.snd_riptide, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %capture_substream to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %capture_substream, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %5 = call ptr @memcpy(ptr %hw, ptr @snd_riptide_capture, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 88) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = call ptr @memcpy(ptr %call7.i.i, ptr @lbus_rec_path, i32 12)
  %id = getelementptr inbounds %struct.pcmhw, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 21, ptr %id, align 4
  %source = getelementptr inbounds %struct.pcmhw, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %source to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 37, ptr %source, align 8
  %intdec = getelementptr inbounds %struct.pcmhw, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %intdec to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %intdec, align 1
  %arrayidx3 = getelementptr %struct.pcmhw, ptr %call7.i.i, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %arrayidx3, align 2
  %state = getelementptr inbounds %struct.pcmhw, ptr %call7.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %state, align 1
  %private_data4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %13 = ptrtoint ptr %private_data4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %private_data4, align 8
  %call5 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_riptide_capture_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  store ptr null, ptr %private_data1, align 8
  %capture_substream = getelementptr inbounds %struct.snd_riptide, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %capture_substream to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %capture_substream, align 4
  tail call void @kfree(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_riptide_codec_write(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  %rptr = alloca %union.cmdret, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cif1 = getelementptr inbounds %struct.snd_riptide, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cif1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cif1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rptr) #8
  %4 = ptrtoint ptr %rptr to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %rptr, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !302

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1736, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end24:                                         ; preds = %entry
  %conv = zext i16 %reg to i32
  %conv25 = zext i16 %val to i32
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1739, ptr noundef nonnull @.str.47, i32 noundef %conv, i32 noundef %conv25) #8
  %shl = shl nuw i32 %conv, 16
  %or = or i32 %shl, %conv25
  %arrayidx = getelementptr inbounds [4 x i16], ptr %rptr, i32 0, i32 1
  br label %do.body26

do.body26:                                        ; preds = %land.rhs.do.body26_crit_edge, %if.end24
  %i.0 = phi i32 [ 0, %if.end24 ], [ %inc, %land.rhs.do.body26_crit_edge ]
  %call = call fastcc i32 @sendcmd(ptr noundef nonnull %3, i32 noundef 2, i32 noundef 96, i32 noundef %or, ptr noundef null)
  %call33 = call fastcc i32 @sendcmd(ptr noundef nonnull %3, i32 noundef 3, i32 noundef 97, i32 noundef %shl, ptr noundef nonnull %rptr)
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %val)
  %cmp.not = icmp eq i16 %6, %val
  br i1 %cmp.not, label %do.body26.cleanup_crit_edge, label %land.rhs

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs:                                         ; preds = %do.body26
  %inc = add nuw nsw i32 %i.0, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %if.then43, label %land.rhs.do.body26_crit_edge

land.rhs.do.body26_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body26

if.then43:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1745, ptr noundef nonnull @.str.48) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %do.body26.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rptr) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @snd_riptide_codec_read(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg) #2 align 64 {
entry:
  %rptr = alloca %union.cmdret, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cif1 = getelementptr inbounds %struct.snd_riptide, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cif1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cif1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rptr) #8
  %4 = ptrtoint ptr %rptr to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %rptr, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !302

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1755, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end24:                                         ; preds = %entry
  %conv = zext i16 %reg to i32
  %shl = shl nuw i32 %conv, 16
  %call = call fastcc i32 @sendcmd(ptr noundef nonnull %3, i32 noundef 3, i32 noundef 97, i32 noundef %shl, ptr noundef nonnull %rptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end24.if.end31_crit_edge, label %if.then26

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %call30 = call fastcc i32 @sendcmd(ptr noundef nonnull %3, i32 noundef 3, i32 noundef 97, i32 noundef %shl, ptr noundef nonnull %rptr)
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.end24.if.end31_crit_edge
  %arrayidx = getelementptr inbounds [4 x i16], ptr %rptr, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  %conv33 = zext i16 %6 to i32
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1760, ptr noundef nonnull @.str.49, i32 noundef %conv, i32 noundef %conv33) #8
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end
  %retval.0 = phi i16 [ 0, %do.end ], [ %8, %if.end31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rptr) #8
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_bus(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_mixer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_riptide_proc_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #2 align 64 {
entry:
  %rptr.i.i = alloca %union.cmdret, align 8
  %sink.i = alloca [60 x i8], align 1
  %rptr.i = alloca %union.cmdret, align 8
  %p = alloca [256 x i8], align 1
  %rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %p) #8
  %2 = call ptr @memset(ptr %p, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate) #8
  %3 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %rate, align 4, !annotation !285
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.51, ptr noundef %longname) #8
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %device_id = getelementptr inbounds %struct.snd_riptide, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %device_id, align 4
  %conv = zext i16 %11 to i32
  %handled_irqs = getelementptr inbounds %struct.snd_riptide, ptr %1, i32 0, i32 24
  %12 = ptrtoint ptr %handled_irqs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %handled_irqs, align 4
  %received_irqs = getelementptr inbounds %struct.snd_riptide, ptr %1, i32 0, i32 23
  %14 = ptrtoint ptr %received_irqs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %received_irqs, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.52, i32 noundef %conv, i32 noundef %13, i32 noundef %15) #8
  %port = getelementptr inbounds %struct.snd_riptide, ptr %1, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.0202 = phi i32 [ 0, %if.end ], [ %add9, %for.body.for.body_crit_edge ]
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  %18 = and i32 %i.0202, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool6.not = icmp eq i32 %18, 0
  %cond = select i1 %tobool6.not, i32 10, i32 32
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port, align 4
  %add = add i32 %20, %i.0202
  %and = and i32 %add, 1048575
  %add7 = or i32 %and, -18874368
  %21 = inttoptr i32 %add7 to ptr
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %21) #8, !srcloc !288
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !339
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.53, i32 noundef %cond, i32 noundef %i.0202, i32 noundef %23) #8
  %add9 = add nuw nsw i32 %i.0202, 4
  %cmp = icmp ult i32 %i.0202, 60
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %cif10 = getelementptr inbounds %struct.snd_riptide, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %cif10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cif10, align 4
  %tobool11.not = icmp eq ptr %25, null
  br i1 %tobool11.not, label %for.end.if.end34_crit_edge, label %if.then12

for.end.if.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then12:                                        ; preds = %for.end
  %26 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buffer, align 4
  %firmware = getelementptr inbounds %struct.snd_riptide, ptr %1, i32 0, i32 20
  %28 = ptrtoint ptr %firmware to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %firmware, align 4
  %conv14 = zext i16 %29 to i32
  %CODEC = getelementptr inbounds %struct.riptide_firmware, ptr %firmware, i32 0, i32 1
  %30 = ptrtoint ptr %CODEC to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %CODEC, align 2
  %conv16 = zext i16 %31 to i32
  %AUXDSP = getelementptr inbounds %struct.snd_riptide, ptr %1, i32 0, i32 20, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %AUXDSP to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %AUXDSP, align 4
  %conv18 = zext i16 %33 to i32
  %PROG = getelementptr inbounds %struct.riptide_firmware, ptr %firmware, i32 0, i32 3
  %34 = ptrtoint ptr %PROG to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %PROG, align 2
  %conv20 = zext i16 %35 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %27, ptr noundef nonnull @.str.54, i32 noundef %conv14, i32 noundef %conv16, i32 noundef %conv18, i32 noundef %conv20) #8
  %36 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %37, ptr noundef nonnull @.str.55) #8
  %arrayidx15.i = getelementptr inbounds [4 x i16], ptr %rptr.i, i32 0, i32 1
  br label %for.body25

for.body25:                                       ; preds = %getmixer.exit.for.body25_crit_edge, %if.then12
  %i.1205 = phi i32 [ 0, %if.then12 ], [ %inc, %getmixer.exit.for.body25_crit_edge ]
  %lval.0204 = phi i16 [ 0, %if.then12 ], [ %lval.1, %getmixer.exit.for.body25_crit_edge ]
  %rval.0203 = phi i16 [ 0, %if.then12 ], [ %rval.1, %getmixer.exit.for.body25_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rptr.i) #8
  %38 = ptrtoint ptr %rptr.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 0, ptr %rptr.i, align 8
  %sext = shl i32 %i.1205, 16
  %conv.i = ashr exact i32 %sext, 16
  %shl3.i = shl i32 %i.1205, 24
  %or.i = or i32 %sext, %shl3.i
  %or4.i = or i32 %or.i, 81
  %call.i = call fastcc i32 @sendcmd(ptr noundef nonnull %25, i32 noundef 3, i32 noundef %or4.i, i32 noundef 0, ptr noundef nonnull %rptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body25.if.end.i_crit_edge, label %land.lhs.true.i

for.body25.if.end.i_crit_edge:                    ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body25
  %call13.i = call fastcc i32 @sendcmd(ptr noundef nonnull %25, i32 noundef 3, i32 noundef %or4.i, i32 noundef 0, ptr noundef nonnull %rptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.getmixer.exit_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i.getmixer.exit_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = zext i16 %rval.0203 to i32
  %.pre210 = zext i16 %lval.0204 to i32
  br label %getmixer.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body25.if.end.i_crit_edge
  %39 = ptrtoint ptr %rptr.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %rptr.i, align 8
  %41 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx15.i, align 2
  %conv17.i = zext i16 %40 to i32
  %conv18.i = zext i16 %42 to i32
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1067, ptr noundef nonnull @.str.64, i32 noundef %conv.i, i32 noundef %conv17.i, i32 noundef %conv18.i) #8
  br label %getmixer.exit

getmixer.exit:                                    ; preds = %if.end.i, %land.lhs.true.i.getmixer.exit_crit_edge
  %conv30.pre-phi = phi i32 [ %.pre210, %land.lhs.true.i.getmixer.exit_crit_edge ], [ %conv18.i, %if.end.i ]
  %conv29.pre-phi = phi i32 [ %.pre, %land.lhs.true.i.getmixer.exit_crit_edge ], [ %conv17.i, %if.end.i ]
  %rval.1 = phi i16 [ %rval.0203, %land.lhs.true.i.getmixer.exit_crit_edge ], [ %40, %if.end.i ]
  %lval.1 = phi i16 [ %lval.0204, %land.lhs.true.i.getmixer.exit_crit_edge ], [ %42, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rptr.i) #8
  %43 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %44, ptr noundef nonnull @.str.56, i32 noundef %i.1205, i32 noundef %conv29.pre-phi, i32 noundef %conv30.pre-phi) #8
  %inc = add nuw nsw i32 %i.1205, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end32, label %getmixer.exit.for.body25_crit_edge

getmixer.exit.for.body25_crit_edge:               ; preds = %getmixer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body25

for.end32:                                        ; preds = %getmixer.exit
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buffer, align 4
  %cmdcnt = getelementptr inbounds %struct.cmdif, ptr %25, i32 0, i32 2
  %47 = ptrtoint ptr %cmdcnt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cmdcnt, align 4
  %errcnt = getelementptr inbounds %struct.cmdif, ptr %25, i32 0, i32 6
  %49 = ptrtoint ptr %errcnt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %errcnt, align 4
  %cmdtime = getelementptr inbounds %struct.cmdif, ptr %25, i32 0, i32 3
  %51 = ptrtoint ptr %cmdtime to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cmdtime, align 4
  %cmdtimemax = getelementptr inbounds %struct.cmdif, ptr %25, i32 0, i32 4
  %53 = ptrtoint ptr %cmdtimemax to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cmdtimemax, align 4
  %cmdtimemin = getelementptr inbounds %struct.cmdif, ptr %25, i32 0, i32 5
  %55 = ptrtoint ptr %cmdtimemin to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cmdtimemin, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %46, ptr noundef nonnull @.str.57, i32 noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %56) #8
  br label %if.end34

if.end34:                                         ; preds = %for.end32, %for.end.if.end34_crit_edge
  %57 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buffer, align 4
  %openstreams = getelementptr inbounds %struct.snd_riptide, ptr %1, i32 0, i32 12
  %59 = ptrtoint ptr %openstreams to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %openstreams, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %58, ptr noundef nonnull @.str.58, i32 noundef %60) #8
  %arrayidx = getelementptr %struct.snd_riptide, ptr %1, i32 0, i32 10, i32 0
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx, align 4
  %tobool40.not = icmp eq ptr %62, null
  br i1 %tobool40.not, label %if.end34.for.inc69_crit_edge, label %lor.lhs.false

if.end34.for.inc69_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69

lor.lhs.false:                                    ; preds = %if.end34
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %62, i32 0, i32 11
  %63 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %runtime, align 4
  %tobool43.not = icmp eq ptr %64, null
  br i1 %tobool43.not, label %lor.lhs.false.for.inc69_crit_edge, label %if.end45

lor.lhs.false.for.inc69_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69

if.end45:                                         ; preds = %lor.lhs.false
  %private_data49 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %64, i32 0, i32 44
  %65 = ptrtoint ptr %private_data49 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %private_data49, align 8
  %tobool50.not = icmp eq ptr %66, null
  br i1 %tobool50.not, label %if.end45.for.inc69_crit_edge, label %if.then51

if.end45.for.inc69_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69

if.then51:                                        ; preds = %if.end45
  %67 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %buffer, align 4
  %id = getelementptr inbounds %struct.pcmhw, ptr %66, i32 0, i32 5
  %69 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %id, align 4
  %conv53 = zext i8 %70 to i32
  %mixer = getelementptr inbounds %struct.pcmhw, ptr %66, i32 0, i32 4
  %71 = ptrtoint ptr %mixer to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %mixer, align 1
  %conv54 = zext i8 %72 to i32
  %source = getelementptr inbounds %struct.pcmhw, ptr %66, i32 0, i32 2
  %73 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %source, align 4
  %conv55 = zext i8 %74 to i32
  %intdec = getelementptr inbounds %struct.pcmhw, ptr %66, i32 0, i32 3
  %75 = ptrtoint ptr %intdec to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %intdec, align 1
  %conv57 = zext i8 %76 to i32
  %arrayidx59 = getelementptr %struct.pcmhw, ptr %66, i32 0, i32 3, i32 1
  %77 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %78 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %68, ptr noundef nonnull @.str.59, i32 noundef %conv53, i32 noundef %conv54, i32 noundef %conv55, i32 noundef %conv57, i32 noundef %conv60) #8
  %call63 = call fastcc i32 @getsamplerate(ptr noundef %25, ptr noundef %intdec, ptr noundef nonnull %rate)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then65, label %if.then51.for.inc69_crit_edge

if.then51.for.inc69_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69

if.then65:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %buffer, align 4
  %81 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rate, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %80, ptr noundef nonnull @.str.60, i32 noundef %82) #8
  br label %for.inc69

for.inc69:                                        ; preds = %if.then65, %if.then51.for.inc69_crit_edge, %if.end45.for.inc69_crit_edge, %lor.lhs.false.for.inc69_crit_edge, %if.end34.for.inc69_crit_edge
  %arrayidx.1 = getelementptr %struct.snd_riptide, ptr %1, i32 0, i32 10, i32 1
  %83 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.1, align 4
  %tobool40.not.1 = icmp eq ptr %84, null
  br i1 %tobool40.not.1, label %for.inc69.for.inc69.1_crit_edge, label %lor.lhs.false.1

for.inc69.for.inc69.1_crit_edge:                  ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69.1

lor.lhs.false.1:                                  ; preds = %for.inc69
  %runtime.1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %84, i32 0, i32 11
  %85 = ptrtoint ptr %runtime.1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %runtime.1, align 4
  %tobool43.not.1 = icmp eq ptr %86, null
  br i1 %tobool43.not.1, label %lor.lhs.false.1.for.inc69.1_crit_edge, label %if.end45.1

lor.lhs.false.1.for.inc69.1_crit_edge:            ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69.1

if.end45.1:                                       ; preds = %lor.lhs.false.1
  %private_data49.1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %86, i32 0, i32 44
  %87 = ptrtoint ptr %private_data49.1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %private_data49.1, align 8
  %tobool50.not.1 = icmp eq ptr %88, null
  br i1 %tobool50.not.1, label %if.end45.1.for.inc69.1_crit_edge, label %if.then51.1

if.end45.1.for.inc69.1_crit_edge:                 ; preds = %if.end45.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69.1

if.then51.1:                                      ; preds = %if.end45.1
  %89 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %buffer, align 4
  %id.1 = getelementptr inbounds %struct.pcmhw, ptr %88, i32 0, i32 5
  %91 = ptrtoint ptr %id.1 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %id.1, align 4
  %conv53.1 = zext i8 %92 to i32
  %mixer.1 = getelementptr inbounds %struct.pcmhw, ptr %88, i32 0, i32 4
  %93 = ptrtoint ptr %mixer.1 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %mixer.1, align 1
  %conv54.1 = zext i8 %94 to i32
  %source.1 = getelementptr inbounds %struct.pcmhw, ptr %88, i32 0, i32 2
  %95 = ptrtoint ptr %source.1 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %source.1, align 4
  %conv55.1 = zext i8 %96 to i32
  %intdec.1 = getelementptr inbounds %struct.pcmhw, ptr %88, i32 0, i32 3
  %97 = ptrtoint ptr %intdec.1 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %intdec.1, align 1
  %conv57.1 = zext i8 %98 to i32
  %arrayidx59.1 = getelementptr %struct.pcmhw, ptr %88, i32 0, i32 3, i32 1
  %99 = ptrtoint ptr %arrayidx59.1 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx59.1, align 1
  %conv60.1 = zext i8 %100 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %90, ptr noundef nonnull @.str.59, i32 noundef %conv53.1, i32 noundef %conv54.1, i32 noundef %conv55.1, i32 noundef %conv57.1, i32 noundef %conv60.1) #8
  %call63.1 = call fastcc i32 @getsamplerate(ptr noundef %25, ptr noundef %intdec.1, ptr noundef nonnull %rate)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.1)
  %tobool64.not.1 = icmp eq i32 %call63.1, 0
  br i1 %tobool64.not.1, label %if.then65.1, label %if.then51.1.for.inc69.1_crit_edge

if.then51.1.for.inc69.1_crit_edge:                ; preds = %if.then51.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69.1

if.then65.1:                                      ; preds = %if.then51.1
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %buffer, align 4
  %103 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rate, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %102, ptr noundef nonnull @.str.60, i32 noundef %104) #8
  br label %for.inc69.1

for.inc69.1:                                      ; preds = %if.then65.1, %if.then51.1.for.inc69.1_crit_edge, %if.end45.1.for.inc69.1_crit_edge, %lor.lhs.false.1.for.inc69.1_crit_edge, %for.inc69.for.inc69.1_crit_edge
  %arrayidx.2 = getelementptr %struct.snd_riptide, ptr %1, i32 0, i32 10, i32 2
  %105 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.2, align 4
  %tobool40.not.2 = icmp eq ptr %106, null
  br i1 %tobool40.not.2, label %for.inc69.1.for.inc69.2_crit_edge, label %lor.lhs.false.2

for.inc69.1.for.inc69.2_crit_edge:                ; preds = %for.inc69.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69.2

lor.lhs.false.2:                                  ; preds = %for.inc69.1
  %runtime.2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %106, i32 0, i32 11
  %107 = ptrtoint ptr %runtime.2 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %runtime.2, align 4
  %tobool43.not.2 = icmp eq ptr %108, null
  br i1 %tobool43.not.2, label %lor.lhs.false.2.for.inc69.2_crit_edge, label %if.end45.2

lor.lhs.false.2.for.inc69.2_crit_edge:            ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69.2

if.end45.2:                                       ; preds = %lor.lhs.false.2
  %private_data49.2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %108, i32 0, i32 44
  %109 = ptrtoint ptr %private_data49.2 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %private_data49.2, align 8
  %tobool50.not.2 = icmp eq ptr %110, null
  br i1 %tobool50.not.2, label %if.end45.2.for.inc69.2_crit_edge, label %if.then51.2

if.end45.2.for.inc69.2_crit_edge:                 ; preds = %if.end45.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69.2

if.then51.2:                                      ; preds = %if.end45.2
  %111 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %buffer, align 4
  %id.2 = getelementptr inbounds %struct.pcmhw, ptr %110, i32 0, i32 5
  %113 = ptrtoint ptr %id.2 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %id.2, align 4
  %conv53.2 = zext i8 %114 to i32
  %mixer.2 = getelementptr inbounds %struct.pcmhw, ptr %110, i32 0, i32 4
  %115 = ptrtoint ptr %mixer.2 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %mixer.2, align 1
  %conv54.2 = zext i8 %116 to i32
  %source.2 = getelementptr inbounds %struct.pcmhw, ptr %110, i32 0, i32 2
  %117 = ptrtoint ptr %source.2 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %source.2, align 4
  %conv55.2 = zext i8 %118 to i32
  %intdec.2 = getelementptr inbounds %struct.pcmhw, ptr %110, i32 0, i32 3
  %119 = ptrtoint ptr %intdec.2 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %intdec.2, align 1
  %conv57.2 = zext i8 %120 to i32
  %arrayidx59.2 = getelementptr %struct.pcmhw, ptr %110, i32 0, i32 3, i32 1
  %121 = ptrtoint ptr %arrayidx59.2 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx59.2, align 1
  %conv60.2 = zext i8 %122 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %112, ptr noundef nonnull @.str.59, i32 noundef %conv53.2, i32 noundef %conv54.2, i32 noundef %conv55.2, i32 noundef %conv57.2, i32 noundef %conv60.2) #8
  %call63.2 = call fastcc i32 @getsamplerate(ptr noundef %25, ptr noundef %intdec.2, ptr noundef nonnull %rate)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.2)
  %tobool64.not.2 = icmp eq i32 %call63.2, 0
  br i1 %tobool64.not.2, label %if.then65.2, label %if.then51.2.for.inc69.2_crit_edge

if.then51.2.for.inc69.2_crit_edge:                ; preds = %if.then51.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69.2

if.then65.2:                                      ; preds = %if.then51.2
  call void @__sanitizer_cov_trace_pc() #10
  %123 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %buffer, align 4
  %125 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %rate, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %124, ptr noundef nonnull @.str.60, i32 noundef %126) #8
  br label %for.inc69.2

for.inc69.2:                                      ; preds = %if.then65.2, %if.then51.2.for.inc69.2_crit_edge, %if.end45.2.for.inc69.2_crit_edge, %lor.lhs.false.2.for.inc69.2_crit_edge, %for.inc69.1.for.inc69.2_crit_edge
  %capture_substream = getelementptr inbounds %struct.snd_riptide, ptr %1, i32 0, i32 11
  %127 = ptrtoint ptr %capture_substream to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %capture_substream, align 4
  %tobool72.not = icmp eq ptr %128, null
  br i1 %tobool72.not, label %for.inc69.2.if.end103_crit_edge, label %land.lhs.true

for.inc69.2.if.end103_crit_edge:                  ; preds = %for.inc69.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

land.lhs.true:                                    ; preds = %for.inc69.2
  %runtime74 = getelementptr inbounds %struct.snd_pcm_substream, ptr %128, i32 0, i32 11
  %129 = ptrtoint ptr %runtime74 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %runtime74, align 4
  %tobool75.not = icmp eq ptr %130, null
  br i1 %tobool75.not, label %land.lhs.true.if.end103_crit_edge, label %if.then76

land.lhs.true.if.end103_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

if.then76:                                        ; preds = %land.lhs.true
  %private_data79 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %130, i32 0, i32 44
  %131 = ptrtoint ptr %private_data79 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %private_data79, align 8
  %tobool80.not = icmp eq ptr %132, null
  br i1 %tobool80.not, label %if.then76.if.end103_crit_edge, label %if.then81

if.then76.if.end103_crit_edge:                    ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

if.then81:                                        ; preds = %if.then76
  %133 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %buffer, align 4
  %id83 = getelementptr inbounds %struct.pcmhw, ptr %132, i32 0, i32 5
  %135 = ptrtoint ptr %id83 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %id83, align 4
  %conv84 = zext i8 %136 to i32
  %mixer85 = getelementptr inbounds %struct.pcmhw, ptr %132, i32 0, i32 4
  %137 = ptrtoint ptr %mixer85 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %mixer85, align 1
  %conv86 = zext i8 %138 to i32
  %source87 = getelementptr inbounds %struct.pcmhw, ptr %132, i32 0, i32 2
  %139 = ptrtoint ptr %source87 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %source87, align 4
  %conv88 = zext i8 %140 to i32
  %intdec89 = getelementptr inbounds %struct.pcmhw, ptr %132, i32 0, i32 3
  %141 = ptrtoint ptr %intdec89 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %intdec89, align 1
  %conv91 = zext i8 %142 to i32
  %arrayidx93 = getelementptr %struct.pcmhw, ptr %132, i32 0, i32 3, i32 1
  %143 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx93, align 1
  %conv94 = zext i8 %144 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %134, ptr noundef nonnull @.str.59, i32 noundef %conv84, i32 noundef %conv86, i32 noundef %conv88, i32 noundef %conv91, i32 noundef %conv94) #8
  %call97 = call fastcc i32 @getsamplerate(ptr noundef %25, ptr noundef %intdec89, ptr noundef nonnull %rate)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.then99, label %if.then81.if.end103_crit_edge

if.then81.if.end103_crit_edge:                    ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

if.then99:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  %145 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %buffer, align 4
  %147 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %rate, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %146, ptr noundef nonnull @.str.60, i32 noundef %148) #8
  br label %if.end103

if.end103:                                        ; preds = %if.then99, %if.then81.if.end103_crit_edge, %if.then76.if.end103_crit_edge, %land.lhs.true.if.end103_crit_edge, %for.inc69.2.if.end103_crit_edge
  %149 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %150, ptr noundef nonnull @.str.61) #8
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %sink.i) #8
  %151 = call ptr @memset(ptr %sink.i, i32 255, i32 60)
  %arrayidx13.i.i = getelementptr inbounds [8 x i8], ptr %rptr.i.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end103
  %j.025.i = phi i32 [ 0, %if.end103 ], [ %j.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.024.i = phi i32 [ 0, %if.end103 ], [ %inc12.i, %for.inc.i.for.body.i_crit_edge ]
  %conv.i200 = trunc i32 %i.024.i to i8
  %arrayidx2.i = getelementptr [60 x i8], ptr %sink.i, i32 0, i32 %i.024.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rptr.i.i) #8
  %152 = ptrtoint ptr %rptr.i.i to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 0, ptr %rptr.i.i, align 8
  %or.i.i = mul nuw nsw i32 %i.024.i, 16842752
  %call.i.i = call fastcc i32 @sendcmd(ptr noundef %25, i32 noundef 3, i32 noundef 51, i32 noundef %or.i.i, ptr noundef nonnull %rptr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.if.end.i.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %call11.i.i = call fastcc i32 @sendcmd(ptr noundef %25, i32 noundef 3, i32 noundef 51, i32 noundef %or.i.i, ptr noundef nonnull %rptr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %getsourcesink.exitthread-pre-split.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %for.body.i.if.end.i.i_crit_edge
  %153 = ptrtoint ptr %rptr.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %rptr.i.i, align 8
  %155 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx13.i.i, align 1
  %157 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %156, ptr %arrayidx2.i, align 1
  %conv14.i.i = zext i8 %154 to i32
  %conv15.i.i = zext i8 %156 to i32
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 966, ptr noundef nonnull @.str.67, i32 noundef %conv14.i.i, i32 noundef %conv15.i.i) #8
  br label %getsourcesink.exit.i

getsourcesink.exitthread-pre-split.i:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %158 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %.pr.i = load i8, ptr %arrayidx2.i, align 1
  br label %getsourcesink.exit.i

getsourcesink.exit.i:                             ; preds = %getsourcesink.exitthread-pre-split.i, %if.end.i.i
  %159 = phi i8 [ %.pr.i, %getsourcesink.exitthread-pre-split.i ], [ %156, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rptr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %159)
  %cmp5.i = icmp ult i8 %159, 60
  br i1 %cmp5.i, label %if.then.i, label %getsourcesink.exit.i.for.inc.i_crit_edge

getsourcesink.exit.i.for.inc.i_crit_edge:         ; preds = %getsourcesink.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %getsourcesink.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add i32 %j.025.i, 1
  %arrayidx8.i = getelementptr i8, ptr %p, i32 %j.025.i
  %160 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %159, ptr %arrayidx8.i, align 1
  %inc10.i = add i32 %j.025.i, 2
  %arrayidx11.i = getelementptr i8, ptr %p, i32 %inc.i
  %161 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %conv.i200, ptr %arrayidx11.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %getsourcesink.exit.i.for.inc.i_crit_edge
  %j.1.i = phi i32 [ %inc10.i, %if.then.i ], [ %j.025.i, %getsourcesink.exit.i.for.inc.i_crit_edge ]
  %inc12.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc12.i, 60
  br i1 %exitcond.not.i, label %getpaths.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

getpaths.exit:                                    ; preds = %for.inc.i
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %sink.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %j.1.i)
  %cmp107207 = icmp sgt i32 %j.1.i, 1
  br i1 %cmp107207, label %getpaths.exit.while.body_crit_edge, label %getpaths.exit.while.end_crit_edge

getpaths.exit.while.end_crit_edge:                ; preds = %getpaths.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

getpaths.exit.while.body_crit_edge:               ; preds = %getpaths.exit
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %getpaths.exit.while.body_crit_edge
  %i.3208 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ %j.1.i, %getpaths.exit.while.body_crit_edge ]
  %sub = add nsw i32 %i.3208, -2
  %162 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %buffer, align 4
  %arrayidx110 = getelementptr [256 x i8], ptr %p, i32 0, i32 %sub
  %164 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx110, align 1
  %conv111 = zext i8 %165 to i32
  %add112 = add nsw i32 %i.3208, -1
  %arrayidx113 = getelementptr [256 x i8], ptr %p, i32 0, i32 %add112
  %166 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx113, align 1
  %conv114 = zext i8 %167 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %163, ptr noundef nonnull @.str.62, i32 noundef %conv111, i32 noundef %conv114) #8
  %cmp107 = icmp ugt i32 %i.3208, 3
  br i1 %cmp107, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %getpaths.exit.while.end_crit_edge
  %168 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %169, ptr noundef nonnull @.str.63) #8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %p) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @getsamplerate(ptr noundef %cif, ptr nocapture noundef readonly %intdec, ptr nocapture noundef writeonly %rate) unnamed_addr #2 align 64 {
entry:
  %rptr = alloca %union.cmdret, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rptr) #8
  %0 = ptrtoint ptr %rptr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %rptr, align 8
  %arrayidx = getelementptr inbounds [4 x i16], ptr %rptr, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [4 x i16], ptr %rptr, i32 0, i32 2
  %arrayidx16 = getelementptr inbounds [4 x i16], ptr %rptr, i32 0, i32 3
  %1 = ptrtoint ptr %intdec to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %intdec, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %cmp1.not = icmp eq i8 %2, -1
  br i1 %cmp1.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then:                                          ; preds = %entry
  %conv = zext i8 %2 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %or = or i32 %shl, 66
  %call = call fastcc i32 @sendcmd(ptr noundef %cif, i32 noundef 1, i32 noundef %or, i32 noundef 0, ptr noundef nonnull %rptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %3 = ptrtoint ptr %intdec to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %intdec, align 1
  %conv4 = zext i8 %4 to i32
  %shl6 = shl nuw nsw i32 %conv4, 8
  %or7 = or i32 %shl6, 66
  %call8 = call fastcc i32 @sendcmd(ptr noundef %cif, i32 noundef 1, i32 noundef %or7, i32 noundef 0, ptr noundef nonnull %rptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  %conv11 = zext i16 %6 to i32
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx13, align 4
  %conv14 = zext i16 %8 to i32
  %mul = mul nuw i32 %conv11, %conv14
  %9 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx16, align 2
  %conv17 = zext i16 %10 to i32
  %add19 = add nuw i32 %mul, %conv17
  %div57 = lshr i32 %add19, 16
  br label %if.end21

if.end21:                                         ; preds = %if.end, %entry.if.end21_crit_edge
  %p.sroa.0.0 = phi i32 [ 0, %entry.if.end21_crit_edge ], [ %div57, %if.end ]
  %incdec.ptr = getelementptr i8, ptr %intdec, i32 1
  %11 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %incdec.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp1.not.1 = icmp eq i8 %12, -1
  br i1 %cmp1.not.1, label %if.end21.if.end21.1_crit_edge, label %if.then.1

if.end21.if.end21.1_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.1

if.then.1:                                        ; preds = %if.end21
  %conv.1 = zext i8 %12 to i32
  %shl.1 = shl nuw nsw i32 %conv.1, 8
  %or.1 = or i32 %shl.1, 66
  %call.1 = call fastcc i32 @sendcmd(ptr noundef %cif, i32 noundef 1, i32 noundef %or.1, i32 noundef 0, ptr noundef nonnull %rptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %if.then.1.if.end.1_crit_edge, label %land.lhs.true.1

if.then.1.if.end.1_crit_edge:                     ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.1

land.lhs.true.1:                                  ; preds = %if.then.1
  %13 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %incdec.ptr, align 1
  %conv4.1 = zext i8 %14 to i32
  %shl6.1 = shl nuw nsw i32 %conv4.1, 8
  %or7.1 = or i32 %shl6.1, 66
  %call8.1 = call fastcc i32 @sendcmd(ptr noundef %cif, i32 noundef 1, i32 noundef %or7.1, i32 noundef 0, ptr noundef nonnull %rptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1)
  %tobool9.not.1 = icmp eq i32 %call8.1, 0
  br i1 %tobool9.not.1, label %land.lhs.true.1.if.end.1_crit_edge, label %land.lhs.true.1.cleanup_crit_edge

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.1.if.end.1_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.1

if.end.1:                                         ; preds = %land.lhs.true.1.if.end.1_crit_edge, %if.then.1.if.end.1_crit_edge
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx, align 2
  %conv11.1 = zext i16 %16 to i32
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx13, align 4
  %conv14.1 = zext i16 %18 to i32
  %mul.1 = mul nuw i32 %conv11.1, %conv14.1
  %19 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx16, align 2
  %conv17.1 = zext i16 %20 to i32
  %add19.1 = add nuw i32 %mul.1, %conv17.1
  %div57.1 = lshr i32 %add19.1, 16
  br label %if.end21.1

if.end21.1:                                       ; preds = %if.end.1, %if.end21.if.end21.1_crit_edge
  %p.sroa.8.0 = phi i32 [ 0, %if.end21.if.end21.1_crit_edge ], [ %div57.1, %if.end.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %p.sroa.0.0)
  %tobool23.not = icmp eq i32 %p.sroa.0.0, 0
  br i1 %tobool23.not, label %if.end21.1.if.end35_crit_edge, label %if.then24

if.end21.1.if.end35_crit_edge:                    ; preds = %if.end21.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then24:                                        ; preds = %if.end21.1
  call void @__sanitizer_cov_trace_cmp4(i32 %p.sroa.8.0, i32 %p.sroa.0.0)
  %cmp27.not = icmp eq i32 %p.sroa.8.0, %p.sroa.0.0
  br i1 %cmp27.not, label %if.then24.if.end35_crit_edge, label %if.then29

if.then24.if.end35_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then29:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 993, ptr noundef nonnull @.str.65, i32 noundef %p.sroa.0.0, i32 noundef %p.sroa.8.0) #8
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %if.then24.if.end35_crit_edge, %if.end21.1.if.end35_crit_edge
  %storemerge = phi i32 [ %p.sroa.0.0, %if.then29 ], [ %p.sroa.0.0, %if.then24.if.end35_crit_edge ], [ %p.sroa.8.0, %if.end21.1.if.end35_crit_edge ]
  %21 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %storemerge, ptr %rate, align 4
  %22 = ptrtoint ptr %intdec to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %intdec, align 1
  %conv37 = zext i8 %23 to i32
  %24 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %incdec.ptr, align 1
  %conv39 = zext i8 %25 to i32
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 997, ptr noundef nonnull @.str.66, i32 noundef %conv37, i32 noundef %conv39, i32 noundef %storemerge) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %land.lhs.true.1.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35 ], [ -5, %land.lhs.true.1.cleanup_crit_edge ], [ -5, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rptr) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @riptide_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %in_suspend = getelementptr inbounds %struct.snd_riptide, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %in_suspend to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %in_suspend, align 4
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %5 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 768, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %ac97 = getelementptr inbounds %struct.snd_riptide, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_suspend(ptr noundef %7) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @riptide_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %call1 = tail call fastcc i32 @snd_riptide_initialize(ptr noundef %3)
  %ac97 = getelementptr inbounds %struct.snd_riptide, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_resume(ptr noundef %5) #8
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %6 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %in_suspend = getelementptr inbounds %struct.snd_riptide, ptr %3, i32 0, i32 25
  %7 = ptrtoint ptr %in_suspend to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %in_suspend, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_riptide_joystick_probe(ptr nocapture noundef writeonly %pci, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @snd_riptide_joystick_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %0)
  %cmp = icmp sgt i32 %0, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1, !range !286
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end.inc_dev_crit_edge, label %if.end2

if.end.inc_dev_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %inc_dev

if.end2:                                          ; preds = %if.end
  %arrayidx3 = getelementptr [32 x i32], ptr @joystick_port, i32 0, i32 %0
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %if.end2.inc_dev_crit_edge, label %if.end6

if.end2.inc_dev_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %inc_dev

if.end6:                                          ; preds = %if.end2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1248) #11
  %tobool7.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool7.not, label %if.end6.inc_dev_crit_edge, label %if.end9

if.end6.inc_dev_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %inc_dev

if.end9:                                          ; preds = %if.end6
  %6 = load i32, ptr @snd_riptide_joystick_probe.dev, align 4
  %arrayidx10 = getelementptr [32 x i32], ptr @joystick_port, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx10, align 4
  %call11 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %8, i32 noundef 8, ptr noundef nonnull @.str.69, i32 noundef 0) #8
  %tobool12.not = icmp eq ptr %call11, null
  %9 = load i32, ptr @snd_riptide_joystick_probe.dev, align 4
  %arrayidx14 = getelementptr [32 x i32], ptr @joystick_port, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx14, align 4
  br i1 %tobool12.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 1999, ptr noundef nonnull @.str.70, i32 noundef %11) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %inc_dev

if.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %io = getelementptr inbounds %struct.gameport, ptr %call7.i.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %io to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %io, align 4
  tail call void @__gameport_register_port(ptr noundef nonnull %call7.i.i.i, ptr noundef null) #8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i.i, ptr %driver_data.i.i, align 4
  br label %inc_dev

inc_dev:                                          ; preds = %if.end15, %if.then13, %if.end6.inc_dev_crit_edge, %if.end2.inc_dev_crit_edge, %if.end.inc_dev_crit_edge
  %ret.0 = phi i32 [ 0, %if.end15 ], [ -16, %if.then13 ], [ -2, %if.end.inc_dev_crit_edge ], [ 0, %if.end2.inc_dev_crit_edge ], [ -12, %if.end6.inc_dev_crit_edge ]
  %14 = load i32, ptr @snd_riptide_joystick_probe.dev, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr @snd_riptide_joystick_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %inc_dev, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %inc_dev ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_riptide_joystick_remove(ptr nocapture noundef readonly %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %io = getelementptr inbounds %struct.gameport, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io, align 4
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %3, i32 noundef 8) #8
  tail call void @gameport_unregister_port(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__gameport_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !17, !19, !21, !22, !24, !26, !27, !29, !31, !32, !34, !36, !37, !39, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !69, !71, !73, !75, !77, !78, !80, !82, !84, !86, !88, !90, !91, !93, !95, !97, !99, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274}
!llvm.module.flags = !{!276, !277, !278, !279, !280, !281, !282, !283}
!llvm.ident = !{!284}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/riptide/riptide.c", i32 103, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/riptide/riptide.c", i32 104, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/riptide/riptide.c", i32 105, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_firmware246, !8, !"__UNIQUE_ID_firmware246", i1 false, i1 false}
!8 = !{!"../sound/pci/riptide/riptide.c", i32 106, i32 1}
!9 = !{ptr @__param_index, !10, !"__param_index", i1 false, i1 false}
!10 = !{!"../sound/pci/riptide/riptide.c", i32 118, i32 1}
!11 = !{ptr @__UNIQUE_ID_indextype247, !10, !"__UNIQUE_ID_indextype247", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_index248, !13, !"__UNIQUE_ID_index248", i1 false, i1 false}
!13 = !{!"../sound/pci/riptide/riptide.c", i32 119, i32 1}
!14 = !{ptr @__param_id, !15, !"__param_id", i1 false, i1 false}
!15 = !{!"../sound/pci/riptide/riptide.c", i32 120, i32 1}
!16 = !{ptr @__UNIQUE_ID_idtype249, !15, !"__UNIQUE_ID_idtype249", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_id250, !18, !"__UNIQUE_ID_id250", i1 false, i1 false}
!18 = !{!"../sound/pci/riptide/riptide.c", i32 121, i32 1}
!19 = !{ptr @__param_enable, !20, !"__param_enable", i1 false, i1 false}
!20 = !{!"../sound/pci/riptide/riptide.c", i32 122, i32 1}
!21 = !{ptr @__UNIQUE_ID_enabletype251, !20, !"__UNIQUE_ID_enabletype251", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_enable252, !23, !"__UNIQUE_ID_enable252", i1 false, i1 false}
!23 = !{!"../sound/pci/riptide/riptide.c", i32 123, i32 1}
!24 = !{ptr @__param_joystick_port, !25, !"__param_joystick_port", i1 false, i1 false}
!25 = !{!"../sound/pci/riptide/riptide.c", i32 125, i32 1}
!26 = !{ptr @__UNIQUE_ID_joystick_porttype253, !25, !"__UNIQUE_ID_joystick_porttype253", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_joystick_port254, !28, !"__UNIQUE_ID_joystick_port254", i1 false, i1 false}
!28 = !{!"../sound/pci/riptide/riptide.c", i32 126, i32 1}
!29 = !{ptr @__param_mpu_port, !30, !"__param_mpu_port", i1 false, i1 false}
!30 = !{!"../sound/pci/riptide/riptide.c", i32 128, i32 1}
!31 = !{ptr @__UNIQUE_ID_mpu_porttype255, !30, !"__UNIQUE_ID_mpu_porttype255", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_mpu_port256, !33, !"__UNIQUE_ID_mpu_port256", i1 false, i1 false}
!33 = !{!"../sound/pci/riptide/riptide.c", i32 129, i32 1}
!34 = !{ptr @__param_opl3_port, !35, !"__param_opl3_port", i1 false, i1 false}
!35 = !{!"../sound/pci/riptide/riptide.c", i32 130, i32 1}
!36 = !{ptr @__UNIQUE_ID_opl3_porttype257, !35, !"__UNIQUE_ID_opl3_porttype257", i1 false, i1 false}
!37 = !{ptr @__UNIQUE_ID_opl3_port258, !38, !"__UNIQUE_ID_opl3_port258", i1 false, i1 false}
!38 = !{!"../sound/pci/riptide/riptide.c", i32 131, i32 1}
!39 = !{ptr @__initcall__kmod_snd_riptide__259_2168_alsa_card_riptide_init6, !40, !"__initcall__kmod_snd_riptide__259_2168_alsa_card_riptide_init6", i1 false, i1 false}
!40 = !{!"../sound/pci/riptide/riptide.c", i32 2168, i32 1}
!41 = !{ptr @__exitcall_alsa_card_riptide_exit, !42, !"__exitcall_alsa_card_riptide_exit", i1 false, i1 false}
!42 = !{!"../sound/pci/riptide/riptide.c", i32 2169, i32 1}
!43 = !{ptr @__param_str_index, !10, !"__param_str_index", i1 false, i1 false}
!44 = !{ptr @__param_arr_index, !10, !"__param_arr_index", i1 false, i1 false}
!45 = !{ptr @index, !46, !"index", i1 false, i1 false}
!46 = !{!"../sound/pci/riptide/riptide.c", i32 108, i32 12}
!47 = !{ptr @__param_str_id, !15, !"__param_str_id", i1 false, i1 false}
!48 = !{ptr @__param_arr_id, !15, !"__param_arr_id", i1 false, i1 false}
!49 = !{ptr @id, !50, !"id", i1 false, i1 false}
!50 = !{!"../sound/pci/riptide/riptide.c", i32 109, i32 14}
!51 = !{ptr @__param_str_enable, !20, !"__param_str_enable", i1 false, i1 false}
!52 = !{ptr @__param_arr_enable, !20, !"__param_arr_enable", i1 false, i1 false}
!53 = !{ptr @enable, !54, !"enable", i1 false, i1 false}
!54 = !{!"../sound/pci/riptide/riptide.c", i32 110, i32 13}
!55 = !{ptr @__param_str_joystick_port, !25, !"__param_str_joystick_port", i1 false, i1 false}
!56 = !{ptr @__param_arr_joystick_port, !25, !"__param_arr_joystick_port", i1 false, i1 false}
!57 = !{ptr @joystick_port, !58, !"joystick_port", i1 false, i1 false}
!58 = !{!"../sound/pci/riptide/riptide.c", i32 113, i32 12}
!59 = !{ptr @__param_str_mpu_port, !30, !"__param_str_mpu_port", i1 false, i1 false}
!60 = !{ptr @__param_arr_mpu_port, !30, !"__param_arr_mpu_port", i1 false, i1 false}
!61 = !{ptr @mpu_port, !62, !"mpu_port", i1 false, i1 false}
!62 = !{!"../sound/pci/riptide/riptide.c", i32 115, i32 12}
!63 = !{ptr @__param_str_opl3_port, !35, !"__param_str_opl3_port", i1 false, i1 false}
!64 = !{ptr @__param_arr_opl3_port, !35, !"__param_arr_opl3_port", i1 false, i1 false}
!65 = !{ptr @opl3_port, !66, !"opl3_port", i1 false, i1 false}
!66 = !{!"../sound/pci/riptide/riptide.c", i32 116, i32 12}
!67 = !{ptr @.str, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/pci/riptide/riptide.c", i32 2128, i32 10}
!69 = !{ptr @driver, !70, !"driver", i1 false, i1 false}
!70 = !{!"../sound/pci/riptide/riptide.c", i32 2127, i32 26}
!71 = !{ptr @snd_riptide_ids, !72, !"snd_riptide_ids", i1 false, i1 false}
!72 = !{!"../sound/pci/riptide/riptide.c", i32 495, i32 35}
!73 = !{ptr @snd_card_riptide_probe.dev, !74, !"dev", i1 false, i1 false}
!74 = !{!"../sound/pci/riptide/riptide.c", i32 2028, i32 13}
!75 = !{ptr @.str.2, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/pci/riptide/riptide.c", i32 2074, i32 4}
!77 = !{ptr @.str.3, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.4, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/pci/riptide/riptide.c", i32 2086, i32 4}
!80 = !{ptr @.str.5, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/pci/riptide/riptide.c", i32 2093, i32 5}
!82 = !{ptr @.str.6, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/pci/riptide/riptide.c", i32 2105, i32 23}
!84 = distinct !{null, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/pci/riptide/riptide.c", i32 2106, i32 26}
!86 = !{ptr @.str.8, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/pci/riptide/riptide.c", i32 2109, i32 4}
!88 = !{ptr @snd_riptide_create.__key, !89, !"__key", i1 false, i1 false}
!89 = !{!"../sound/pci/riptide/riptide.c", i32 1827, i32 2}
!90 = !{ptr @.str.9, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.10, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/pci/riptide/riptide.c", i32 1848, i32 3}
!93 = !{ptr @.str.11, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/pci/riptide/riptide.c", i32 1110, i32 6}
!95 = !{ptr @.str.12, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/pci/riptide/riptide.c", i32 1124, i32 5}
!97 = !{ptr @snd_riptide_initialize.__key, !98, !"__key", i1 false, i1 false}
!98 = !{!"../sound/pci/riptide/riptide.c", i32 1779, i32 3}
!99 = !{ptr @.str.13, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.14, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/pci/riptide/riptide.c", i32 1791, i32 3}
!102 = !{ptr @.str.15, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/pci/riptide/riptide.c", i32 1795, i32 2}
!104 = !{ptr @.str.16, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/pci/riptide/riptide.c", i32 1267, i32 2}
!106 = !{ptr @.str.17, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/pci/riptide/riptide.c", i32 1194, i32 3}
!108 = !{ptr @.str.18, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/riptide/riptide.c", i32 1201, i32 3}
!110 = !{ptr @.str.19, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/pci/riptide/riptide.c", i32 1208, i32 2}
!112 = !{ptr @.str.20, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/riptide/riptide.c", i32 1221, i32 2}
!114 = !{ptr @.str.21, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/pci/riptide/riptide.c", i32 1223, i32 43}
!116 = !{ptr @.str.22, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/pci/riptide/riptide.c", i32 1226, i32 4}
!118 = !{ptr @.str.23, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/riptide/riptide.c", i32 1233, i32 3}
!120 = !{ptr @firmware_versions, !121, !"firmware_versions", i1 false, i1 false}
!121 = !{!"../sound/pci/riptide/riptide.c", i32 638, i32 31}
!122 = !{ptr @.str.25, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/pci/riptide/riptide.c", i32 732, i32 2}
!124 = !{ptr @.str.26, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/pci/riptide/riptide.c", i32 816, i32 2}
!126 = !{ptr @.str.27, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/pci/riptide/riptide.c", i32 928, i32 2}
!128 = !{ptr @.str.28, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/pci/riptide/riptide.c", i32 935, i32 2}
!130 = !{ptr @.str.29, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/pci/riptide/riptide.c", i32 745, i32 4}
!132 = !{ptr @lbusin2out, !133, !"lbusin2out", i1 false, i1 false}
!133 = !{!"../sound/pci/riptide/riptide.c", i32 518, i32 28}
!134 = !{ptr @lbus_play_modem, !135, !"lbus_play_modem", i1 false, i1 false}
!135 = !{!"../sound/pci/riptide/riptide.c", i32 561, i32 28}
!136 = !{ptr @lbus_play_opl3, !137, !"lbus_play_opl3", i1 false, i1 false}
!137 = !{!"../sound/pci/riptide/riptide.c", i32 558, i32 28}
!138 = !{ptr @lbus_play_i2s, !139, !"lbus_play_i2s", i1 false, i1 false}
!139 = !{!"../sound/pci/riptide/riptide.c", i32 564, i32 28}
!140 = !{ptr @lbus_play_out, !141, !"lbus_play_out", i1 false, i1 false}
!141 = !{!"../sound/pci/riptide/riptide.c", i32 567, i32 28}
!142 = !{ptr @lbus_play_outhp, !143, !"lbus_play_outhp", i1 false, i1 false}
!143 = !{!"../sound/pci/riptide/riptide.c", i32 570, i32 28}
!144 = !{ptr @.str.30, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/pci/riptide/riptide.c", i32 837, i32 4}
!146 = !{ptr @.str.31, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/pci/riptide/riptide.c", i32 844, i32 3}
!148 = !{ptr @.str.32, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/pci/riptide/riptide.c", i32 904, i32 3}
!150 = !{ptr @.str.33, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/pci/riptide/riptide.c", i32 913, i32 2}
!152 = !{ptr @snd_riptide_playback_ops, !153, !"snd_riptide_playback_ops", i1 false, i1 false}
!153 = !{!"../sound/pci/riptide/riptide.c", i32 1662, i32 33}
!154 = !{ptr @snd_riptide_playback, !155, !"snd_riptide_playback", i1 false, i1 false}
!155 = !{!"../sound/pci/riptide/riptide.c", i32 1309, i32 38}
!156 = !{ptr @lbus_play_paths, !157, !"lbus_play_paths", i1 false, i1 false}
!157 = !{!"../sound/pci/riptide/riptide.c", i32 614, i32 30}
!158 = !{ptr @lbus_play_noconv1, !159, !"lbus_play_noconv1", i1 false, i1 false}
!159 = !{!"../sound/pci/riptide/riptide.c", i32 573, i32 28}
!160 = !{ptr @lbus_play_stereo1, !161, !"lbus_play_stereo1", i1 false, i1 false}
!161 = !{!"../sound/pci/riptide/riptide.c", i32 576, i32 28}
!162 = !{ptr @lbus_play_mono1, !163, !"lbus_play_mono1", i1 false, i1 false}
!163 = !{!"../sound/pci/riptide/riptide.c", i32 579, i32 28}
!164 = !{ptr @lbus_play_noconv2, !165, !"lbus_play_noconv2", i1 false, i1 false}
!165 = !{!"../sound/pci/riptide/riptide.c", i32 582, i32 28}
!166 = !{ptr @lbus_play_stereo2, !167, !"lbus_play_stereo2", i1 false, i1 false}
!167 = !{!"../sound/pci/riptide/riptide.c", i32 585, i32 28}
!168 = !{ptr @lbus_play_mono2, !169, !"lbus_play_mono2", i1 false, i1 false}
!169 = !{!"../sound/pci/riptide/riptide.c", i32 588, i32 28}
!170 = !{ptr @lbus_play_noconv3, !171, !"lbus_play_noconv3", i1 false, i1 false}
!171 = !{!"../sound/pci/riptide/riptide.c", i32 591, i32 28}
!172 = !{ptr @lbus_play_stereo3, !173, !"lbus_play_stereo3", i1 false, i1 false}
!173 = !{!"../sound/pci/riptide/riptide.c", i32 594, i32 28}
!174 = !{ptr @lbus_play_mono3, !175, !"lbus_play_mono3", i1 false, i1 false}
!175 = !{!"../sound/pci/riptide/riptide.c", i32 597, i32 28}
!176 = !{ptr @play_ids, !177, !"play_ids", i1 false, i1 false}
!177 = !{!"../sound/pci/riptide/riptide.c", i32 610, i32 28}
!178 = !{ptr @play_sources, !179, !"play_sources", i1 false, i1 false}
!179 = !{!"../sound/pci/riptide/riptide.c", i32 611, i32 28}
!180 = !{ptr @.str.34, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/pci/riptide/riptide.c", i32 1553, i32 2}
!182 = !{ptr @.str.35, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/pci/riptide/riptide.c", i32 1562, i32 3}
!184 = !{ptr @.str.36, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/pci/riptide/riptide.c", i32 783, i32 4}
!186 = !{ptr @.str.37, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/pci/riptide/riptide.c", i32 1458, i32 2}
!188 = !{ptr @.str.38, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/pci/riptide/riptide.c", i32 1479, i32 2}
!190 = !{ptr @.str.39, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/pci/riptide/riptide.c", i32 1493, i32 3}
!192 = !{ptr @.str.40, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/pci/riptide/riptide.c", i32 1008, i32 2}
!194 = !{ptr @.str.41, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/pci/riptide/riptide.c", i32 1018, i32 3}
!196 = !{ptr @.str.42, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/pci/riptide/riptide.c", i32 1031, i32 2}
!198 = !{ptr @.str.43, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/pci/riptide/riptide.c", i32 1047, i32 5}
!200 = !{ptr @.str.44, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/pci/riptide/riptide.c", i32 1420, i32 4}
!202 = !{ptr @.str.45, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/pci/riptide/riptide.c", i32 1360, i32 3}
!204 = !{ptr @.str.46, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/pci/riptide/riptide.c", i32 1375, i32 3}
!206 = !{ptr @snd_riptide_capture_ops, !207, !"snd_riptide_capture_ops", i1 false, i1 false}
!207 = !{!"../sound/pci/riptide/riptide.c", i32 1671, i32 33}
!208 = !{ptr @snd_riptide_capture, !209, !"snd_riptide_capture", i1 false, i1 false}
!209 = !{!"../sound/pci/riptide/riptide.c", i32 1328, i32 38}
!210 = !{ptr @lbus_rec_path, !211, !"lbus_rec_path", i1 false, i1 false}
!211 = !{!"../sound/pci/riptide/riptide.c", i32 631, i32 30}
!212 = !{ptr @lbus_rec_noconv1, !213, !"lbus_rec_noconv1", i1 false, i1 false}
!213 = !{!"../sound/pci/riptide/riptide.c", i32 600, i32 28}
!214 = !{ptr @lbus_rec_stereo1, !215, !"lbus_rec_stereo1", i1 false, i1 false}
!215 = !{!"../sound/pci/riptide/riptide.c", i32 603, i32 28}
!216 = !{ptr @lbus_rec_mono1, !217, !"lbus_rec_mono1", i1 false, i1 false}
!217 = !{!"../sound/pci/riptide/riptide.c", i32 606, i32 28}
!218 = !{ptr @snd_riptide_mixer.ops, !219, !"ops", i1 false, i1 false}
!219 = !{!"../sound/pci/riptide/riptide.c", i32 1948, i32 39}
!220 = !{ptr @.str.47, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/pci/riptide/riptide.c", i32 1739, i32 2}
!222 = !{ptr @.str.48, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/pci/riptide/riptide.c", i32 1745, i32 3}
!224 = !{ptr @.str.49, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/pci/riptide/riptide.c", i32 1760, i32 2}
!226 = !{ptr @.str.50, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/pci/riptide/riptide.c", i32 1939, i32 35}
!228 = !{ptr @.str.51, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/pci/riptide/riptide.c", i32 1878, i32 2}
!230 = !{ptr @.str.52, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/pci/riptide/riptide.c", i32 1879, i32 2}
!232 = !{ptr @.str.53, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/pci/riptide/riptide.c", i32 1882, i32 3}
!234 = !{ptr @.str.54, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/pci/riptide/riptide.c", i32 1886, i32 3}
!236 = !{ptr @.str.55, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/pci/riptide/riptide.c", i32 1892, i32 3}
!238 = !{ptr @.str.56, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/pci/riptide/riptide.c", i32 1895, i32 4}
!240 = !{ptr @.str.57, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/pci/riptide/riptide.c", i32 1897, i32 3}
!242 = !{ptr @.str.58, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/pci/riptide/riptide.c", i32 1902, i32 2}
!244 = !{ptr @.str.59, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/pci/riptide/riptide.c", i32 1909, i32 4}
!246 = !{ptr @.str.60, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/pci/riptide/riptide.c", i32 1914, i32 5}
!248 = !{ptr @.str.61, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/pci/riptide/riptide.c", i32 1928, i32 2}
!250 = !{ptr @.str.62, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/pci/riptide/riptide.c", i32 1932, i32 3}
!252 = !{ptr @.str.63, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/pci/riptide/riptide.c", i32 1934, i32 2}
!254 = !{ptr @.str.64, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/pci/riptide/riptide.c", i32 1067, i32 2}
!256 = !{ptr @.str.65, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/pci/riptide/riptide.c", i32 993, i32 4}
!258 = !{ptr @.str.66, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/pci/riptide/riptide.c", i32 997, i32 2}
!260 = !{ptr @.str.67, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/pci/riptide/riptide.c", i32 966, i32 2}
!262 = !{ptr @riptide_pm, !263, !"riptide_pm", i1 false, i1 false}
!263 = !{!"../sound/pci/riptide/riptide.c", i32 1169, i32 8}
!264 = !{ptr @.str.68, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/pci/riptide/riptide.c", i32 2138, i32 10}
!266 = !{ptr @joystick_driver, !267, !"joystick_driver", i1 false, i1 false}
!267 = !{!"../sound/pci/riptide/riptide.c", i32 2137, i32 26}
!268 = !{ptr @snd_riptide_joystick_ids, !269, !"snd_riptide_joystick_ids", i1 false, i1 false}
!269 = !{!"../sound/pci/riptide/riptide.c", i32 504, i32 35}
!270 = !{ptr @snd_riptide_joystick_probe.dev, !271, !"dev", i1 false, i1 false}
!271 = !{!"../sound/pci/riptide/riptide.c", i32 1974, i32 13}
!272 = !{ptr @.str.69, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/pci/riptide/riptide.c", i32 1996, i32 7}
!274 = !{ptr @.str.70, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/pci/riptide/riptide.c", i32 1997, i32 3}
!276 = !{i32 1, !"wchar_size", i32 2}
!277 = !{i32 1, !"min_enum_size", i32 4}
!278 = !{i32 8, !"branch-target-enforcement", i32 0}
!279 = !{i32 8, !"sign-return-address", i32 0}
!280 = !{i32 8, !"sign-return-address-all", i32 0}
!281 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!282 = !{i32 7, !"uwtable", i32 1}
!283 = !{i32 7, !"frame-pointer", i32 2}
!284 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!285 = !{!"auto-init"}
!286 = !{i8 0, i8 2}
!287 = !{i64 2155038144}
!288 = !{i64 4267058}
!289 = !{i64 2155038876}
!290 = !{i64 4266640}
!291 = !{i64 2155031609}
!292 = !{i64 2155032350}
!293 = !{i64 2155035058}
!294 = !{i64 2155035800}
!295 = !{i64 2155017651}
!296 = !{i64 2155018584}
!297 = !{i64 2155019517}
!298 = !{i64 2155020450}
!299 = !{i64 2155022443}
!300 = !{i64 2155023184}
!301 = !{i64 2154967628}
!302 = !{!"branch_weights", i32 1, i32 2000}
!303 = !{i64 2155028711}
!304 = !{i64 2155029452}
!305 = !{i64 2154972555}
!306 = !{i64 2154973139}
!307 = !{i64 2154975378}
!308 = !{i64 2154976119}
!309 = !{i64 2154978827}
!310 = !{i64 2154979569}
!311 = !{i64 2154981757}
!312 = !{i64 2154982690}
!313 = !{i64 2154983857}
!314 = !{i64 2154984790}
!315 = !{i64 2154985723}
!316 = !{i64 2154986841}
!317 = !{i64 2154987774}
!318 = !{i64 2154988707}
!319 = !{i64 2154994806}
!320 = !{i64 2154995547}
!321 = !{i64 2154997704}
!322 = !{i64 2154998445}
!323 = !{i64 2155000602}
!324 = !{i64 2155001343}
!325 = !{i64 2154950296}
!326 = !{i64 2154951678}
!327 = !{i64 2154952464}
!328 = !{i64 2154953250}
!329 = !{i64 2154954075}
!330 = !{i64 2154954406}
!331 = !{i64 2154954964}
!332 = !{i64 2154956038}
!333 = !{i64 2154957378}
!334 = !{i64 2154958164}
!335 = !{i64 2154960160}
!336 = !{i64 2154960985}
!337 = !{i64 2155010700}
!338 = !{i64 2155011441}
!339 = !{i64 2155040302}
