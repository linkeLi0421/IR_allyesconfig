; ModuleID = '/llk/IR_all_yes/sound/pci/lola/lola.c_pt.bc'
source_filename = "../sound/pci/lola/lola.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.atomic_t = type { i32 }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lola = type { ptr, ptr, [2 x %struct.lola_bar], i32, %struct.spinlock, %struct.mutex, %struct.lola_rb, %struct.lola_rb, i32, i32, i32, i32, i32, i32, ptr, i32, [2 x %struct.lola_pcm], i32, i32, [2 x %struct.lola_pin_array], %struct.lola_clock_widget, i32, i32, %struct.lola_mixer_widget, i32, i32, i32, i32, i32, i8, i32, i32 }
%struct.lola_bar = type { i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lola_rb = type { ptr, i32, i16, i16, i32 }
%struct.lola_pcm = type { i32, ptr, [16 x %struct.lola_stream] }
%struct.lola_stream = type { i32, i32, i32, i8, ptr, ptr, i32, i32, i32, i32, i8 }
%struct.lola_pin_array = type { i32, i32, [16 x %struct.lola_pin] }
%struct.lola_pin = type { i32, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lola_clock_widget = type { i32, i32, i32, i32, i8, [48 x %struct.lola_sample_clock], [48 x i32] }
%struct.lola_sample_clock = type { i32, i32, i32 }
%struct.lola_mixer_widget = type { i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.72, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.72 = type { ptr }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }

@__param_str_index = internal constant [15 x i8] c"snd_lola.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype242 = internal constant [37 x i8] c"snd_lola.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index243 = internal constant [58 x i8] c"snd_lola.parm=index:Index value for Digigram Lola driver.\00", section ".modinfo", align 1
@__param_str_id = internal constant [12 x i8] c"snd_lola.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype244 = internal constant [36 x i8] c"snd_lola.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id245 = internal constant [53 x i8] c"snd_lola.parm=id:ID string for Digigram Lola driver.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [16 x i8] c"snd_lola.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype246 = internal constant [39 x i8] c"snd_lola.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable247 = internal constant [50 x i8] c"snd_lola.parm=enable:Enable Digigram Lola driver.\00", section ".modinfo", align 1
@__param_str_granularity = internal constant [21 x i8] c"snd_lola.granularity\00", align 1
@__param_arr_granularity = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @granularity }, align 4
@__param_granularity = internal constant %struct.kernel_param { ptr @__param_str_granularity, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_granularity } }, section "__param", align 4
@__UNIQUE_ID_granularitytype248 = internal constant [43 x i8] c"snd_lola.parmtype=granularity:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_granularity249 = internal constant [44 x i8] c"snd_lola.parm=granularity:Granularity value\00", section ".modinfo", align 1
@__param_str_sample_rate_min = internal constant [25 x i8] c"snd_lola.sample_rate_min\00", align 1
@__param_arr_sample_rate_min = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @sample_rate_min }, align 4
@__param_sample_rate_min = internal constant %struct.kernel_param { ptr @__param_str_sample_rate_min, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_sample_rate_min } }, section "__param", align 4
@__UNIQUE_ID_sample_rate_mintype250 = internal constant [47 x i8] c"snd_lola.parmtype=sample_rate_min:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_sample_rate_min251 = internal constant [50 x i8] c"snd_lola.parm=sample_rate_min:Minimal sample rate\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [38 x i8] c"snd_lola.file=sound/pci/lola/snd-lola\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [21 x i8] c"snd_lola.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [42 x i8] c"snd_lola.description=Digigram Lola driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author255 = internal constant [45 x i8] c"snd_lola.author=Takashi Iwai <tiwai@suse.de>\00", section ".modinfo", align 1
@__param_str_debug = internal constant [15 x i8] c"snd_lola.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype256 = internal constant [28 x i8] c"snd_lola.parmtype=debug:int\00", section ".modinfo", align 1
@lola_codec_write.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"snd_lola\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lola_codec_write\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sound/pci/lola/lola.c\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"snd-lola: codec_write NID=%x, verb=%x, data=%x, ext=%x\0A\00", [40 x i8] zeroinitializer }, align 32
@lola_codec_read.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lola_codec_read\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"snd-lola: codec_read NID=%x, verb=%x, data=%x, ext=%x\0A\00", [41 x i8] zeroinitializer }, align 32
@__initcall__kmod_snd_lola__262_704_lola_driver_init6 = internal global ptr @lola_driver_init, section ".initcall6.init", align 4
@lola_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @lola_ids, ptr @lola_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_lola_driver_exit = internal global ptr @lola_driver_exit, section ".exitcall.exit", align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@granularity = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32], [32 x i8] zeroinitializer }, align 32
@sample_rate_min = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 16000, i32 16000, i32 16000, i32 16000, i32 16000, i32 16000, i32 16000, i32 16000, i32 16000, i32 16000, i32 16000, i32 16000, i32 16000, i32 16000, i32 16000, i32 16000, i32 16000, i32 16000, i32 16000, i32 16000, i32 16000, i32 16000, i32 16000, i32 16000, i32 16000, i32 16000, i32 16000, i32 16000, i32 16000, i32 16000, i32 16000, i32 16000], [32 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rirb_get_response.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rirb_get_response\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"snd-lola: get_response: %x, %x\0A\00", [32 x i8] zeroinitializer }, align 32
@rirb_get_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 161, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"RIRB ERROR: NID=%x, verb=%x, data=%x, ext=%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rirb_get_response._entry_ptr = internal global ptr @rirb_get_response._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rirb_get_response._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.2, i32 171, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"RIRB response error\0A\00", [43 x i8] zeroinitializer }, align 32
@rirb_get_response._entry_ptr.13 = internal global ptr @rirb_get_response._entry.11, section ".printk_index", align 4
@rirb_get_response._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.2, i32 173, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"switching to polling mode\0A\00", [37 x i8] zeroinitializer }, align 32
@rirb_get_response._entry_ptr.16 = internal global ptr @rirb_get_response._entry.14, section ".printk_index", align 4
@lola_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4969, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@lola_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@lola_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 658, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error creating card!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lola_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@lola_probe._entry_ptr = internal global ptr @lola_probe._entry, section ".printk_index", align 4
@lola_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->reg_lock\00", [16 x i8] zeroinitializer }, align 32
@lola_create.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&chip->open_mutex\00", [46 x i8] zeroinitializer }, align 32
@lola_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 570, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid granularity %d, reset to %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lola_create\00", [20 x i8] zeroinitializer }, align 32
@lola_create._entry_ptr = internal global ptr @lola_create._entry, section ".printk_index", align 4
@lola_create._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 579, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Invalid sample_rate_min %d, reset to 16000\0A\00", [52 x i8] zeroinitializer }, align 32
@lola_create._entry_ptr.27 = internal global ptr @lola_create._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"snd-lola\00", [23 x i8] zeroinitializer }, align 32
@lola_create._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.24, ptr @.str.2, i32 600, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to grab IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@lola_create._entry_ptr.31 = internal global ptr @lola_create._entry.29, section ".printk_index", align 4
@lola_create.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.32, i8 0, i8 -103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"streams in=%d, out=%d, version=0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@lola_create._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.24, ptr @.str.2, i32 619, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid DEVER = %x\0A\00", [44 x i8] zeroinitializer }, align 32
@lola_create._entry_ptr.35 = internal global ptr @lola_create._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Lola\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Digigram Lola\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s at 0x%lx irq %i\00", [45 x i8] zeroinitializer }, align 32
@reset_controller._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 316, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot reset controller\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reset_controller\00", [47 x i8] zeroinitializer }, align 32
@reset_controller._entry_ptr = internal global ptr @reset_controller._entry, section ".printk_index", align 4
@lola_parse_tree._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 439, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Can't read VENDOR_ID\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lola_parse_tree\00", [16 x i8] zeroinitializer }, align 32
@lola_parse_tree._entry_ptr = internal global ptr @lola_parse_tree._entry, section ".printk_index", align 4
@lola_parse_tree._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 444, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unknown codec vendor 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@lola_parse_tree._entry_ptr.45 = internal global ptr @lola_parse_tree._entry.43, section ".printk_index", align 4
@lola_parse_tree._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.2, i32 450, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Can't read FUNCTION_TYPE\0A\00", [38 x i8] zeroinitializer }, align 32
@lola_parse_tree._entry_ptr.48 = internal global ptr @lola_parse_tree._entry.46, section ".printk_index", align 4
@lola_parse_tree._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.42, ptr @.str.2, i32 454, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unknown function type %d\0A\00", [38 x i8] zeroinitializer }, align 32
@lola_parse_tree._entry_ptr.51 = internal global ptr @lola_parse_tree._entry.49, section ".printk_index", align 4
@lola_parse_tree._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.42, ptr @.str.2, i32 460, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Can't read SPECCAPS\0A\00", [43 x i8] zeroinitializer }, align 32
@lola_parse_tree._entry_ptr.54 = internal global ptr @lola_parse_tree._entry.52, section ".printk_index", align 4
@lola_parse_tree.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.55, i8 0, i8 117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"speccaps=0x%x, pins in=%d, out=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@lola_parse_tree._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.42, ptr @.str.2, i32 472, ptr @.str.19, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid Lola-spec caps 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@lola_parse_tree._entry_ptr.58 = internal global ptr @lola_parse_tree._entry.56, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 61, i32 12 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 184, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 196, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [12 x i8] c"lola_driver\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 698, i32 26 }
@___asan_gen_.84 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 23, i32 12 }
@___asan_gen_.87 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 24, i32 14 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 25, i32 13 }
@___asan_gen_.93 = private unnamed_addr constant [12 x i8] c"granularity\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 39, i32 12 }
@___asan_gen_.96 = private unnamed_addr constant [16 x i8] c"sample_rate_min\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 44, i32 12 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 154, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 157, i32 5 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 171, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 173, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [9 x i8] c"lola_ids\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 691, i32 35 }
@___asan_gen_.132 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 643, i32 13 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 658, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 549, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 550, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 568, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 577, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 583, i32 53 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 600, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 610, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 619, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 627, i32 23 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 628, i32 27 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 630, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 316, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 439, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 444, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 450, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 454, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 460, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 466, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.250 = private constant [25 x i8] c"../sound/pci/lola/lola.c\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 472, i32 3 }
@llvm.compiler.used = appending global [103 x ptr] [ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_debugtype256, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_enable247, ptr @__UNIQUE_ID_enabletype246, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_granularity249, ptr @__UNIQUE_ID_granularitytype248, ptr @__UNIQUE_ID_id245, ptr @__UNIQUE_ID_idtype244, ptr @__UNIQUE_ID_index243, ptr @__UNIQUE_ID_indextype242, ptr @__UNIQUE_ID_license253, ptr @__UNIQUE_ID_sample_rate_min251, ptr @__UNIQUE_ID_sample_rate_mintype250, ptr @__exitcall_lola_driver_exit, ptr @__initcall__kmod_snd_lola__262_704_lola_driver_init6, ptr @__param_debug, ptr @__param_enable, ptr @__param_granularity, ptr @__param_id, ptr @__param_index, ptr @__param_sample_rate_min, ptr @lola_create._entry, ptr @lola_create._entry.25, ptr @lola_create._entry.29, ptr @lola_create._entry.33, ptr @lola_create._entry_ptr, ptr @lola_create._entry_ptr.27, ptr @lola_create._entry_ptr.31, ptr @lola_create._entry_ptr.35, ptr @lola_driver_exit, ptr @lola_parse_tree._entry, ptr @lola_parse_tree._entry.43, ptr @lola_parse_tree._entry.46, ptr @lola_parse_tree._entry.49, ptr @lola_parse_tree._entry.52, ptr @lola_parse_tree._entry.56, ptr @lola_parse_tree._entry_ptr, ptr @lola_parse_tree._entry_ptr.45, ptr @lola_parse_tree._entry_ptr.48, ptr @lola_parse_tree._entry_ptr.51, ptr @lola_parse_tree._entry_ptr.54, ptr @lola_parse_tree._entry_ptr.58, ptr @lola_probe._entry, ptr @lola_probe._entry_ptr, ptr @reset_controller._entry, ptr @reset_controller._entry_ptr, ptr @rirb_get_response._entry, ptr @rirb_get_response._entry.11, ptr @rirb_get_response._entry.14, ptr @rirb_get_response._entry_ptr, ptr @rirb_get_response._entry_ptr.13, ptr @rirb_get_response._entry_ptr.16, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @lola_driver, ptr @index, ptr @id, ptr @enable, ptr @granularity, ptr @sample_rate_min, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @lola_ids, ptr @lola_probe.dev, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @lola_create.__key, ptr @.str.20, ptr @lola_create.__key.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.57], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @granularity to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sample_rate_min to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rirb_get_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rirb_get_response._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rirb_get_response._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_create.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_create._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_create._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_create._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_controller._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_parse_tree._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_parse_tree._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_parse_tree._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_parse_tree._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_parse_tree._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_parse_tree._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lola_codec_write(ptr noundef %chip, i32 noundef %nid, i32 noundef %verb, i32 noundef %data, i32 noundef %extdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %do.body1, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lola_codec_write.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lola_codec_write, %if.then4)) #8
          to label %do.end6 [label %if.then4], !srcloc !177

if.then4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lola_codec_write.__UNIQUE_ID_ddebug258, ptr noundef nonnull @.str.3, i32 noundef %nid, i32 noundef %verb, i32 noundef %data, i32 noundef %extdata) #8
  br label %do.end6

do.end6:                                          ; preds = %if.then4, %do.body1, %entry.do.end6_crit_edge
  %call7 = tail call fastcc i32 @corb_send_verb(ptr noundef %chip, i32 noundef %nid, i32 noundef %verb, i32 noundef %data, i32 noundef %extdata)
  ret i32 %call7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @corb_send_verb(ptr noundef %chip, i32 noundef %nid, i32 noundef %verb, i32 noundef %data, i32 noundef %extdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %last_cmd_nid = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 10
  %0 = ptrtoint ptr %last_cmd_nid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %nid, ptr %last_cmd_nid, align 4
  %last_verb = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 11
  %1 = ptrtoint ptr %last_verb to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %verb, ptr %last_verb, align 4
  %last_data = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 12
  %2 = ptrtoint ptr %last_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %data, ptr %last_data, align 4
  %last_extdata = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 13
  %3 = ptrtoint ptr %last_extdata to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %extdata, ptr %last_extdata, align 4
  %reg_lock = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #8
  %cmds = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 7, i32 4
  %4 = ptrtoint ptr %cmds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %cmp7 = icmp slt i32 %5, 255
  br i1 %cmp7, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl i32 %nid, 20
  %shl1 = shl i32 %verb, 8
  %or = or i32 %shl1, %shl
  %or2 = or i32 %or, %data
  %corb = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 6
  %wp9 = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 6, i32 3
  %6 = ptrtoint ptr %wp9 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %wp9, align 2
  %8 = add i16 %7, 1
  %9 = and i16 %8, 255
  store i16 %9, ptr %wp9, align 2
  %10 = tail call i32 @llvm.bswap.i32(i32 %or2)
  %11 = ptrtoint ptr %corb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %corb, align 4
  %13 = shl nuw nsw i16 %9, 1
  %mul = zext i16 %13 to i32
  %arrayidx = getelementptr i32, ptr %12, i32 %mul
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %10, ptr %arrayidx, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %extdata)
  %16 = ptrtoint ptr %corb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %corb, align 4
  %add18 = or i32 %mul, 1
  %arrayidx19 = getelementptr i32, ptr %17, i32 %add18
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %arrayidx19, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void @arm_heavy_mb() #8
  %19 = shl nuw i16 %9, 8
  %remap_addr = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 2, i32 0, i32 1
  %20 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 72
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %19) #8, !srcloc !179
  %22 = ptrtoint ptr %cmds to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cmds, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %cmds, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !180
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ -5, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call4) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lola_codec_read(ptr noundef %chip, i32 noundef %nid, i32 noundef %verb, i32 noundef %data, i32 noundef %extdata, ptr nocapture noundef writeonly %val, ptr noundef %extval) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %do.body1, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lola_codec_read.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lola_codec_read, %if.then4)) #8
          to label %do.end7 [label %if.then4], !srcloc !177

if.then4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lola_codec_read.__UNIQUE_ID_ddebug259, ptr noundef nonnull @.str.5, i32 noundef %nid, i32 noundef %verb, i32 noundef %data, i32 noundef %extdata) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then4, %do.body1, %entry.do.end7_crit_edge
  %call8 = tail call fastcc i32 @corb_send_verb(ptr noundef %chip, i32 noundef %nid, i32 noundef %verb, i32 noundef %data, i32 noundef %extdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end7.cleanup_crit_edge, label %if.end11

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call fastcc i32 @rirb_get_response(ptr noundef %chip, ptr noundef %val, ptr noundef %extval)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end11 ], [ %call8, %do.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rirb_get_response(ptr noundef %chip, ptr nocapture noundef writeonly %val, ptr noundef writeonly %extval) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %polling_mode = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 29
  %reg_lock = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 4
  %remap_addr.i = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 2, i32 0, i32 1
  %rirb.i = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 7
  %wp2.i = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 7, i32 3
  %rp9.i = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 7, i32 2
  %cmds.i = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 7, i32 4
  %res31.i = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 8
  %res_ex32.i = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 9
  br label %again

again:                                            ; preds = %do.end47, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 100
  br label %for.cond

for.cond:                                         ; preds = %if.end30, %again
  %1 = ptrtoint ptr %polling_mode to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %polling_mode, align 4
  %2 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %for.cond.if.end_crit_edge, label %if.then

for.cond.if.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.cond
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #8
  %3 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 88
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #8, !srcloc !181
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  %7 = ptrtoint ptr %wp2.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %wp2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %8)
  %cmp.i = icmp eq i16 %6, %8
  br i1 %cmp.i, label %if.then.lola_update_rirb.exit_crit_edge, label %if.end.i

if.then.lola_update_rirb.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %lola_update_rirb.exit

if.end.i:                                         ; preds = %if.then
  %9 = ptrtoint ptr %wp2.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %6, ptr %wp2.i, align 2
  %10 = ptrtoint ptr %rp9.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %rp9.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %6)
  %cmp11.not62.i = icmp eq i16 %11, %6
  br i1 %cmp11.not62.i, label %if.end.i.lola_update_rirb.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.lola_update_rirb.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lola_update_rirb.exit

while.body.i:                                     ; preds = %if.end39.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %12 = phi i16 [ %31, %if.end39.i.while.body.i_crit_edge ], [ %11, %if.end.i.while.body.i_crit_edge ]
  %inc.i = add i16 %12, 1
  %13 = and i16 %inc.i, 255
  %14 = ptrtoint ptr %rp9.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %rp9.i, align 4
  %15 = shl nuw nsw i16 %13, 1
  %shl.i = zext i16 %15 to i32
  %16 = ptrtoint ptr %rirb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rirb.i, align 4
  %add.i = or i32 %shl.i, 1
  %arrayidx23.i = getelementptr i32, ptr %17, i32 %add.i
  %18 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx23.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  %arrayidx26.i = getelementptr i32, ptr %17, i32 %shl.i
  %21 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx26.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  %and.i = and i32 %20, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then27.i

if.then27.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call zeroext i1 @lola_update_ext_clock_freq(ptr noundef %chip, i32 noundef %23) #8
  br label %if.end39.i

if.else.i:                                        ; preds = %while.body.i
  %24 = ptrtoint ptr %cmds.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cmds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool29.not.i = icmp eq i32 %25, 0
  br i1 %tobool29.not.i, label %if.else.i.if.end39.i_crit_edge, label %if.then30.i

if.else.i.if.end39.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.i

if.then30.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %res31.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %res31.i, align 4
  %27 = ptrtoint ptr %res_ex32.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %20, ptr %res_ex32.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !183
  %28 = ptrtoint ptr %cmds.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cmds.i, align 4
  %dec.i = add i32 %29, -1
  store i32 %dec.i, ptr %cmds.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then30.i, %if.else.i.if.end39.i_crit_edge, %if.then27.i
  %30 = ptrtoint ptr %rp9.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %rp9.i, align 4
  %cmp11.not.i = icmp eq i16 %31, %6
  br i1 %cmp11.not.i, label %if.end39.i.lola_update_rirb.exit_crit_edge, label %if.end39.i.while.body.i_crit_edge

if.end39.i.while.body.i_crit_edge:                ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end39.i.lola_update_rirb.exit_crit_edge:       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lola_update_rirb.exit

lola_update_rirb.exit:                            ; preds = %if.end39.i.lola_update_rirb.exit_crit_edge, %if.end.i.lola_update_rirb.exit_crit_edge, %if.then.lola_update_rirb.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #8
  br label %if.end

if.end:                                           ; preds = %lola_update_rirb.exit, %for.cond.if.end_crit_edge
  %32 = ptrtoint ptr %cmds.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cmds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool2.not = icmp eq i32 %33, 0
  br i1 %tobool2.not, label %if.then3, label %if.end27

if.then3:                                         ; preds = %if.end
  %34 = ptrtoint ptr %res31.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %res31.i, align 4
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %val, align 4
  %tobool4.not = icmp eq ptr %extval, null
  br i1 %tobool4.not, label %if.then3.do.body_crit_edge, label %if.then5

if.then3.do.body_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %res_ex32.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %res_ex32.i, align 4
  %39 = ptrtoint ptr %extval to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %extval, align 4
  br label %do.body

do.body:                                          ; preds = %if.then5, %if.then3.do.body_crit_edge
  %40 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp = icmp sgt i32 %40, 1
  br i1 %cmp, label %do.body8, label %do.body.do.end19_crit_edge

do.body.do.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rirb_get_response.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rirb_get_response, %if.then13)) #8
          to label %do.end19 [label %if.then13], !srcloc !177

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %res31.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %res31.i, align 4
  %43 = ptrtoint ptr %res_ex32.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %res_ex32.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rirb_get_response.__UNIQUE_ID_ddebug257, ptr noundef nonnull @.str.7, i32 noundef %42, i32 noundef %44) #8
  br label %do.end19

do.end19:                                         ; preds = %if.then13, %do.body8, %do.body.do.end19_crit_edge
  %45 = ptrtoint ptr %res_ex32.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %res_ex32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %tobool21.not = icmp sgt i32 %46, -1
  br i1 %tobool21.not, label %do.end19.cleanup_crit_edge, label %do.end25

do.end19.cleanup_crit_edge:                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end25:                                         ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %chip, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %48, i32 0, i32 27
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 8
  %last_cmd_nid = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 10
  %51 = ptrtoint ptr %last_cmd_nid to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %last_cmd_nid, align 4
  %last_verb = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 11
  %53 = ptrtoint ptr %last_verb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %last_verb, align 4
  %last_data = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 12
  %55 = ptrtoint ptr %last_data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %last_data, align 4
  %last_extdata = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 13
  %57 = ptrtoint ptr %last_extdata to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %last_extdata, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.8, i32 noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %58) #11
  br label %cleanup

if.end27:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %59
  %cmp28 = icmp slt i32 %sub, 0
  br i1 %cmp28, label %do.end35, label %if.end30

if.end30:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 4294960) #8
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 169, i32 noundef 0) #8
  %call.i = tail call i32 @__cond_resched() #8
  br label %for.cond

do.end35:                                         ; preds = %if.end27
  %61 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %chip, align 4
  %dev37 = getelementptr inbounds %struct.snd_card, ptr %62, i32 0, i32 27
  %63 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev37, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %64, ptr noundef nonnull @.str.12) #11
  %65 = ptrtoint ptr %polling_mode to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load39 = load i8, ptr %polling_mode, align 4
  %66 = and i8 %bf.load39, 32
  %tobool43.not = icmp eq i8 %66, 0
  br i1 %tobool43.not, label %do.end47, label %do.end35.cleanup_crit_edge

do.end35.cleanup_crit_edge:                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end47:                                         ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %chip, align 4
  %dev49 = getelementptr inbounds %struct.snd_card, ptr %68, i32 0, i32 27
  %69 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev49, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %70, ptr noundef nonnull @.str.15) #11
  %71 = ptrtoint ptr %polling_mode to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load51 = load i8, ptr %polling_mode, align 4
  %bf.set = or i8 %bf.load51, 32
  store i8 %bf.set, ptr %polling_mode, align 4
  br label %again

cleanup:                                          ; preds = %do.end35.cleanup_crit_edge, %do.end25, %do.end19.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end25 ], [ 0, %do.end19.cleanup_crit_edge ], [ -5, %do.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lola_codec_flush(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #8
  %call = call fastcc i32 @rirb_get_response(ptr noundef %chip, ptr noundef nonnull %tmp, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lola_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @lola_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lola_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @lola_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lola_update_ext_clock_freq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lola_probe(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #0 align 64 {
entry:
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #8
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !184
  %1 = load i32, ptr @lola_probe.dev, align 4
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
  %3 = load i8, ptr %arrayidx, align 1, !range !185
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @lola_probe.dev, align 4
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
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %5, ptr noundef %7, ptr noundef null, i32 noundef 3832, ptr noundef nonnull %card) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end2
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 8
  %12 = load i32, ptr @lola_probe.dev, align 4
  %call9 = call fastcc i32 @lola_create(ptr noundef %9, ptr noundef %pci, i32 noundef %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = call fastcc i32 @lola_parse_tree(ptr noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = call i32 @lola_create_pcm(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %call21 = call i32 @lola_create_mixer(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end20.cleanup_crit_edge, label %if.end24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  call void @lola_proc_debug_new(ptr noundef %11) #8
  %13 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card, align 4
  %call25 = call i32 @snd_card_register(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %driver_data.i.i, align 4
  %18 = load i32, ptr @lola_probe.dev, align 4
  %inc29 = add i32 %18, 1
  store i32 %inc29, ptr @lola_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end24.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end28 ], [ -2, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lola_create(ptr noundef %card, ptr noundef %pci, i32 noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %call = tail call i32 @pcim_enable_device(ptr noundef %pci) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %reg_lock = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %reg_lock, ptr noundef nonnull @.str.20, ptr noundef nonnull @lola_create.__key, i16 noundef signext 3) #8
  %open_mutex = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %open_mutex, ptr noundef nonnull @.str.22, ptr noundef nonnull @lola_create.__key.21) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %card, ptr %1, align 4
  %pci6 = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %pci6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pci, ptr %pci6, align 4
  %irq = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %irq, align 4
  %private_free = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 10
  %5 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @lola_free, ptr %private_free, align 4
  %arrayidx = getelementptr [32 x i32], ptr @granularity, i32 0, i32 %dev
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %granularity = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 26
  %8 = ptrtoint ptr %granularity to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %granularity, align 4
  %9 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %do.end14 [
    i32 8, label %do.body.sw.epilog_crit_edge
    i32 16, label %sw.bb8
    i32 32, label %sw.bb10
  ]

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end14:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %dev16 = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev16, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.23, i32 noundef %7, i32 noundef 32) #11
  %14 = ptrtoint ptr %granularity to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 32, ptr %granularity, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end14, %sw.bb10, %sw.bb8, %do.body.sw.epilog_crit_edge
  %.sink = phi i32 [ 192000, %do.end14 ], [ 192000, %sw.bb10 ], [ 96000, %sw.bb8 ], [ 48000, %do.body.sw.epilog_crit_edge ]
  %sample_rate_max19 = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 28
  %15 = ptrtoint ptr %sample_rate_max19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %sample_rate_max19, align 4
  %arrayidx20 = getelementptr [32 x i32], ptr @sample_rate_min, i32 0, i32 %dev
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx20, align 4
  %sample_rate_min = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 27
  %18 = ptrtoint ptr %sample_rate_min to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %sample_rate_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %.sink)
  %cmp23 = icmp ugt i32 %17, %.sink
  br i1 %cmp23, label %do.end27, label %sw.epilog.if.end32_crit_edge

sw.epilog.if.end32_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

do.end27:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %dev29 = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev29, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.26, i32 noundef %17) #11
  %23 = ptrtoint ptr %sample_rate_min to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16000, ptr %sample_rate_min, align 4
  br label %if.end32

if.end32:                                         ; preds = %do.end27, %sw.epilog.if.end32_crit_edge
  %call33 = tail call i32 @pcim_iomap_regions(ptr noundef %pci, i32 noundef 5, ptr noundef nonnull @.str.28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end32.cleanup_crit_edge, label %if.end36

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %24 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %resource, align 8
  %bar = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %bar to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %bar, align 4
  %call39 = tail call ptr @pcim_iomap_table(ptr noundef %pci) #8
  %27 = ptrtoint ptr %call39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call39, align 4
  %remap_addr = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 2, i32 0, i32 1
  %29 = ptrtoint ptr %remap_addr to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %remap_addr, align 4
  %arrayidx44 = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 2
  %30 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx44, align 8
  %arrayidx47 = getelementptr %struct.lola, ptr %1, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx47, align 4
  %call49 = tail call ptr @pcim_iomap_table(ptr noundef %pci) #8
  %arrayidx50 = getelementptr ptr, ptr %call49, i32 2
  %33 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx50, align 4
  %remap_addr53 = getelementptr %struct.lola, ptr %1, i32 0, i32 2, i32 1, i32 1
  %35 = ptrtoint ptr %remap_addr53 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %remap_addr53, align 4
  tail call void @pci_set_master(ptr noundef %pci) #8
  %36 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %remap_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %37, i32 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !187
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i

do.body.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %39 = ptrtoint ptr %remap_addr53 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %remap_addr53, align 4
  %add.ptr5.i = getelementptr i8, ptr %40, i32 3842
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 0) #8, !srcloc !189
  br label %if.end57

if.end.i:                                         ; preds = %if.end36
  %cold_reset.i = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 29
  %41 = ptrtoint ptr %cold_reset.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load.i = load i8, ptr %cold_reset.i, align 4
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %cold_reset.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  tail call void @arm_heavy_mb() #8
  %42 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %remap_addr, align 4
  %add.ptr12.i = getelementptr i8, ptr %43, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 16777216) #8, !srcloc !189
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -20, %44
  br label %do.body14.i

do.body14.i:                                      ; preds = %do.cond27.i.do.body14.i_crit_edge, %if.end.i
  tail call void @msleep(i32 noundef 1) #8
  %45 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %remap_addr, align 4
  %add.ptr20.i = getelementptr i8, ptr %46, i32 8
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #8, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool24.not.i = icmp eq i32 %47, 0
  br i1 %tobool24.not.i, label %do.cond27.i, label %do.body14.i.if.end57_crit_edge

do.body14.i.if.end57_crit_edge:                   ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

do.cond27.i:                                      ; preds = %do.body14.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %48
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.cond27.i.do.body14.i_crit_edge, label %reset_controller.exit

do.cond27.i.do.body14.i_crit_edge:                ; preds = %do.cond27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14.i

reset_controller.exit:                            ; preds = %do.cond27.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %50, i32 0, i32 27
  %51 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.39) #11
  br label %cleanup

if.end57:                                         ; preds = %do.body14.i.if.end57_crit_edge, %do.body.i
  %dev58 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %irq59 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %53 = ptrtoint ptr %irq59 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %irq59, align 4
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev58, i32 noundef %54, ptr noundef nonnull @lola_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end68, label %do.end64

do.end64:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %dev66 = getelementptr inbounds %struct.snd_card, ptr %56, i32 0, i32 27
  %57 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev66, align 8
  %59 = ptrtoint ptr %irq59 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %irq59, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.30, i32 noundef %60) #11
  br label %cleanup

if.end68:                                         ; preds = %if.end57
  %61 = ptrtoint ptr %irq59 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %irq59, align 4
  %63 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %irq, align 4
  %sync_irq = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 33
  %64 = ptrtoint ptr %sync_irq to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %62, ptr %sync_irq, align 4
  %65 = ptrtoint ptr %remap_addr53 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %remap_addr53, align 4
  %add.ptr = getelementptr i8, ptr %66, i32 4
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !186
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  %and = and i32 %68, 1023
  %pcm = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 16
  %arrayidx77 = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 1
  %69 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %and, ptr %arrayidx77, align 4
  %shr78 = lshr i32 %68, 10
  %and79 = and i32 %shr78, 1023
  %70 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %and79, ptr %pcm, align 4
  %shr83 = lshr i32 %68, 24
  %version = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 24
  %71 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %shr83, ptr %version, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lola_create.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lola_create, %if.then91)) #8
          to label %do.end103 [label %if.then91], !srcloc !177

if.then91:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  %dev93 = getelementptr inbounds %struct.snd_card, ptr %73, i32 0, i32 27
  %74 = ptrtoint ptr %dev93 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev93, align 8
  %76 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx77, align 4
  %78 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pcm, align 4
  %80 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %version, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lola_create.__UNIQUE_ID_ddebug261, ptr noundef %75, ptr noundef nonnull @.str.32, i32 noundef %77, i32 noundef %79, i32 noundef %81) #8
  br label %do.end103

do.end103:                                        ; preds = %if.then91, %if.end68
  %82 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %83)
  %cmp107 = icmp ugt i32 %83, 16
  br i1 %cmp107, label %do.end103.do.end124_crit_edge, label %lor.lhs.false

do.end103.do.end124_crit_edge:                    ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end124

lor.lhs.false:                                    ; preds = %do.end103
  %84 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pcm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %85)
  %cmp111 = icmp ugt i32 %85, 16
  br i1 %cmp111, label %lor.lhs.false.do.end124_crit_edge, label %lor.lhs.false112

lor.lhs.false.do.end124_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end124

lor.lhs.false112:                                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool116.not = icmp eq i32 %83, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool120.not = icmp eq i32 %85, 0
  %or.cond = select i1 %tobool116.not, i1 %tobool120.not, i1 false
  br i1 %or.cond, label %lor.lhs.false112.do.end124_crit_edge, label %if.end127

lor.lhs.false112.do.end124_crit_edge:             ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end124

do.end124:                                        ; preds = %lor.lhs.false112.do.end124_crit_edge, %lor.lhs.false.do.end124_crit_edge, %do.end103.do.end124_crit_edge
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 4
  %dev126 = getelementptr inbounds %struct.snd_card, ptr %87, i32 0, i32 27
  %88 = ptrtoint ptr %dev126 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev126, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.34, i32 noundef %68) #11
  br label %cleanup

if.end127:                                        ; preds = %lor.lhs.false112
  %90 = ptrtoint ptr %pci6 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pci6, align 4
  %dev.i229 = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 44
  %call.i.i = tail call ptr @snd_devm_alloc_dir_pages(ptr noundef %dev.i229, i32 noundef 2, i32 noundef 0, i32 noundef 4096) #8
  %rb.i = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 14
  %92 = ptrtoint ptr %rb.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call.i.i, ptr %rb.i, align 4
  %tobool.not.i230 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i230, label %if.end127.cleanup_crit_edge, label %if.end.i234

if.end127.cleanup_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i234:                                      ; preds = %if.end127
  %addr.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %call.i.i, i32 0, i32 2
  %93 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %addr.i, align 4
  %corb.i = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 6
  %addr3.i = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 6, i32 1
  %95 = ptrtoint ptr %addr3.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %addr3.i, align 4
  %area.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %call.i.i, i32 0, i32 1
  %96 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %area.i, align 4
  %98 = ptrtoint ptr %corb.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %97, ptr %corb.i, align 4
  %99 = load i32, ptr %addr.i, align 4
  %add.i = add i32 %99, 2048
  %rirb.i = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 7
  %addr8.i = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 7, i32 1
  %100 = ptrtoint ptr %addr8.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %add.i, ptr %addr8.i, align 4
  %101 = load ptr, ptr %area.i, align 4
  %add.ptr.i231 = getelementptr i8, ptr %101, i32 2048
  %102 = ptrtoint ptr %rirb.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %add.ptr.i231, ptr %rirb.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  tail call void @arm_heavy_mb() #8
  %103 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %remap_addr, align 4
  %add.ptr13.i = getelementptr i8, ptr %104, i32 92
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13.i, i8 0) #8, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !195
  tail call void @arm_heavy_mb() #8
  %105 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %remap_addr, align 4
  %add.ptr20.i233 = getelementptr i8, ptr %106, i32 76
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20.i233, i8 0) #8, !srcloc !194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %107 = load volatile i32, ptr @jiffies, align 128
  %add22.neg.i = sub i32 -20, %107
  br label %do.body23.i

do.body23.i:                                      ; preds = %if.end43.i.do.body23.i_crit_edge, %if.end.i234
  %108 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %remap_addr, align 4
  %add.ptr27.i = getelementptr i8, ptr %109, i32 92
  %110 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr27.i) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool31.not.i = icmp eq i8 %110, 0
  br i1 %tobool31.not.i, label %land.lhs.true.i, label %do.body23.i.if.end43.i_crit_edge

do.body23.i.if.end43.i_crit_edge:                 ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

land.lhs.true.i:                                  ; preds = %do.body23.i
  %111 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %remap_addr, align 4
  %add.ptr37.i = getelementptr i8, ptr %112, i32 76
  %113 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr37.i) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool41.not.i = icmp eq i8 %113, 0
  br i1 %tobool41.not.i, label %land.lhs.true.i.do.body46.i_crit_edge, label %land.lhs.true.i.if.end43.i_crit_edge

land.lhs.true.i.if.end43.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

land.lhs.true.i.do.body46.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body46.i

if.end43.i:                                       ; preds = %land.lhs.true.i.if.end43.i_crit_edge, %do.body23.i.if.end43.i_crit_edge
  tail call void @msleep(i32 noundef 1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %114 = load volatile i32, ptr @jiffies, align 128
  %sub.i235 = add i32 %add22.neg.i, %114
  %cmp.i236 = icmp slt i32 %sub.i235, 0
  br i1 %cmp.i236, label %if.end43.i.do.body23.i_crit_edge, label %if.end43.i.do.body46.i_crit_edge

if.end43.i.do.body46.i_crit_edge:                 ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body46.i

if.end43.i.do.body23.i_crit_edge:                 ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body23.i

do.body46.i:                                      ; preds = %if.end43.i.do.body46.i_crit_edge, %land.lhs.true.i.do.body46.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  tail call void @arm_heavy_mb() #8
  %115 = ptrtoint ptr %addr3.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %addr3.i, align 4
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #8
  %118 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %remap_addr, align 4
  %add.ptr54.i = getelementptr i8, ptr %119, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i, i32 %117) #8, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !200
  tail call void @arm_heavy_mb() #8
  %120 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %remap_addr, align 4
  %add.ptr64.i = getelementptr i8, ptr %121, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64.i, i32 0) #8, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  tail call void @arm_heavy_mb() #8
  %122 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %remap_addr, align 4
  %add.ptr71.i = getelementptr i8, ptr %123, i32 78
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr71.i, i8 2) #8, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  tail call void @arm_heavy_mb() #8
  %124 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %remap_addr, align 4
  %add.ptr78.i = getelementptr i8, ptr %125, i32 72
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr78.i, i16 0) #8, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  tail call void @arm_heavy_mb() #8
  %126 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %remap_addr, align 4
  %add.ptr85.i = getelementptr i8, ptr %127, i32 74
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr85.i, i16 128) #8, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !204
  tail call void @arm_heavy_mb() #8
  %128 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %remap_addr, align 4
  %add.ptr92.i = getelementptr i8, ptr %129, i32 76
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr92.i, i8 2) #8, !srcloc !194
  %130 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %remap_addr, align 4
  %add.ptr98.i = getelementptr i8, ptr %131, i32 77
  %132 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr98.i) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !205
  %133 = and i8 %132, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool103.not.i = icmp eq i8 %133, 0
  br i1 %tobool103.not.i, label %do.body46.i.if.end112.i_crit_edge, label %do.body105.i

do.body46.i.if.end112.i_crit_edge:                ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112.i

do.body105.i:                                     ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !206
  tail call void @arm_heavy_mb() #8
  %134 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %remap_addr, align 4
  %add.ptr111.i = getelementptr i8, ptr %135, i32 77
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr111.i, i8 1) #8, !srcloc !194
  br label %if.end112.i

if.end112.i:                                      ; preds = %do.body105.i, %do.body46.i.if.end112.i_crit_edge
  %wp.i = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 6, i32 3
  %136 = ptrtoint ptr %wp.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 0, ptr %wp.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !207
  tail call void @arm_heavy_mb() #8
  %137 = ptrtoint ptr %addr8.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %addr8.i, align 4
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #8
  %140 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %remap_addr, align 4
  %add.ptr122.i = getelementptr i8, ptr %141, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr122.i, i32 %139) #8, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !208
  tail call void @arm_heavy_mb() #8
  %142 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %remap_addr, align 4
  %add.ptr133.i = getelementptr i8, ptr %143, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr133.i, i32 0) #8, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !209
  tail call void @arm_heavy_mb() #8
  %144 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %remap_addr, align 4
  %add.ptr140.i = getelementptr i8, ptr %145, i32 94
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr140.i, i8 2) #8, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !210
  tail call void @arm_heavy_mb() #8
  %146 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %remap_addr, align 4
  %add.ptr147.i = getelementptr i8, ptr %147, i32 88
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr147.i, i16 128) #8, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  %148 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %remap_addr, align 4
  %add.ptr154.i = getelementptr i8, ptr %149, i32 90
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr154.i, i16 256) #8, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !212
  tail call void @arm_heavy_mb() #8
  %150 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %remap_addr, align 4
  %add.ptr161.i = getelementptr i8, ptr %151, i32 92
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr161.i, i8 3) #8, !srcloc !194
  %152 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %remap_addr, align 4
  %add.ptr167.i = getelementptr i8, ptr %153, i32 93
  %154 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr167.i) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !213
  %155 = and i8 %154, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool174.not.i = icmp eq i8 %155, 0
  br i1 %tobool174.not.i, label %if.end112.i.if.end131_crit_edge, label %do.body176.i

if.end112.i.if.end131_crit_edge:                  ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end131

do.body176.i:                                     ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  tail call void @arm_heavy_mb() #8
  %156 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %remap_addr, align 4
  %add.ptr182.i = getelementptr i8, ptr %157, i32 93
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr182.i, i8 %155) #8, !srcloc !194
  br label %if.end131

if.end131:                                        ; preds = %do.body176.i, %if.end112.i.if.end131_crit_edge
  %cmds.i = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 7, i32 4
  %158 = ptrtoint ptr %cmds.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %cmds.i, align 4
  %rp.i = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 7, i32 2
  %159 = ptrtoint ptr %rp.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 0, ptr %rp.i, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 2
  %160 = call ptr @memcpy(ptr %driver, ptr @.str.36, i32 5)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 3
  %call134 = tail call i32 @strscpy(ptr noundef %shortname, ptr noundef nonnull @.str.37, i32 noundef 32) #8
  %longname = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 4
  %161 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %bar, align 4
  %163 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %irq, align 4
  %call142 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %longname, i32 noundef 80, ptr noundef nonnull @.str.38, ptr noundef %shortname, i32 noundef %162, i32 noundef %164)
  %mixername = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 6
  %call146 = tail call ptr @strcpy(ptr noundef %mixername, ptr noundef %shortname) #12
  %165 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %pcm, align 4
  %notmask.i = shl nsw i32 -1, %166
  %sub.i238 = xor i32 %notmask.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !215
  tail call void @arm_heavy_mb() #8
  %167 = tail call i32 @llvm.bswap.i32(i32 %sub.i238) #8
  %168 = ptrtoint ptr %remap_addr53 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %remap_addr53, align 4
  %add.ptr.i240 = getelementptr i8, ptr %169, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i240, i32 %167) #8, !srcloc !189
  %170 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx77, align 4
  %notmask27.i = shl nsw i32 -1, %171
  %sub6.i = xor i32 %notmask27.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  %172 = tail call i32 @llvm.bswap.i32(i32 %sub6.i) #8
  %173 = ptrtoint ptr %remap_addr53 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %remap_addr53, align 4
  %add.ptr13.i241 = getelementptr i8, ptr %174, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i241, i32 %172) #8, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !217
  tail call void @arm_heavy_mb() #8
  %175 = ptrtoint ptr %remap_addr53 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %remap_addr53, align 4
  %add.ptr20.i242 = getelementptr i8, ptr %176, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i242, i32 240) #8, !srcloc !189
  %initialized = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 29
  %177 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %177)
  %bf.load = load i8, ptr %initialized, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %initialized, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end131, %if.end127.cleanup_crit_edge, %do.end124, %do.end64, %reset_controller.exit, %if.end32.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end64 ], [ -22, %do.end124 ], [ 0, %if.end131 ], [ %call, %entry.cleanup_crit_edge ], [ %call33, %if.end32.cleanup_crit_edge ], [ -5, %reset_controller.exit ], [ -12, %if.end127.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lola_parse_tree(ptr noundef %chip) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  %nid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nid) #8
  %1 = ptrtoint ptr %nid to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %nid, align 4, !annotation !184
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.i = icmp sgt i32 %2, 1
  br i1 %cmp.i, label %do.body1.i, label %entry.do.end7.i_crit_edge

entry.do.end7.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lola_codec_read.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lola_parse_tree, %if.then4.i)) #8
          to label %do.end7.i [label %if.then4.i], !srcloc !177

if.then4.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lola_codec_read.__UNIQUE_ID_ddebug259, ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 3840, i32 noundef 0, i32 noundef 0) #8
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then4.i, %do.body1.i, %entry.do.end7.i_crit_edge
  %last_cmd_nid.i = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 10
  %3 = ptrtoint ptr %last_cmd_nid.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %last_cmd_nid.i, align 4
  %last_verb.i = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 11
  %4 = ptrtoint ptr %last_verb.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3840, ptr %last_verb.i, align 4
  %last_data.i = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 12
  %5 = ptrtoint ptr %last_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %last_data.i, align 4
  %last_extdata.i = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 13
  %6 = ptrtoint ptr %last_extdata.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %last_extdata.i, align 4
  %reg_lock.i = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 4
  %call4.i201 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #8
  %cmds.i = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 7, i32 4
  %7 = ptrtoint ptr %cmds.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cmds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %8)
  %cmp7.i = icmp slt i32 %8, 255
  br i1 %cmp7.i, label %lola_codec_read.exit, label %lola_codec_read.exit.thread

lola_codec_read.exit.thread:                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call4.i201) #8
  br label %do.end

lola_codec_read.exit:                             ; preds = %do.end7.i
  %corb.i = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 6
  %wp9.i = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 6, i32 3
  %9 = ptrtoint ptr %wp9.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %wp9.i, align 2
  %11 = add i16 %10, 1
  %12 = and i16 %11, 255
  store i16 %12, ptr %wp9.i, align 2
  %13 = ptrtoint ptr %corb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %corb.i, align 4
  %15 = shl nuw nsw i16 %12, 1
  %mul.i = zext i16 %15 to i32
  %arrayidx.i = getelementptr i32, ptr %14, i32 %mul.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3840, ptr %arrayidx.i, align 4
  %17 = load ptr, ptr %corb.i, align 4
  %add18.i = or i32 %mul.i, 1
  %arrayidx19.i = getelementptr i32, ptr %17, i32 %add18.i
  %18 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx19.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void @arm_heavy_mb() #8
  %19 = shl nuw i16 %12, 8
  %remap_addr.i = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 2, i32 0, i32 1
  %20 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 72
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %19) #8, !srcloc !179
  %22 = ptrtoint ptr %cmds.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cmds.i, align 4
  %inc.i = add i32 %23, 1
  store i32 %inc.i, ptr %cmds.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call4.i201) #8
  %call12.i = call fastcc i32 @rirb_get_response(ptr noundef %chip, ptr noundef nonnull %val, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp = icmp slt i32 %call12.i, 0
  br i1 %cmp, label %lola_codec_read.exit.do.end_crit_edge, label %if.end

lola_codec_read.exit.do.end_crit_edge:            ; preds = %lola_codec_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lola_codec_read.exit.do.end_crit_edge, %lola_codec_read.exit.thread
  %retval.0.i180246 = phi i32 [ -5, %lola_codec_read.exit.thread ], [ %call12.i, %lola_codec_read.exit.do.end_crit_edge ]
  %24 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %25, i32 0, i32 27
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.41) #11
  br label %cleanup

if.end:                                           ; preds = %lola_codec_read.exit
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val, align 4
  %shr = lshr i32 %29, 16
  store i32 %shr, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4969, i32 %shr)
  %cmp1.not = icmp eq i32 %shr, 4969
  br i1 %cmp1.not, label %if.end8, label %do.end5

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chip, align 4
  %dev7 = getelementptr inbounds %struct.snd_card, ptr %31, i32 0, i32 27
  %32 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev7, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.44, i32 noundef %shr) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %34 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp.i181 = icmp sgt i32 %34, 1
  br i1 %cmp.i181, label %do.body1.i182, label %if.end8.do.end7.i186_crit_edge

if.end8.do.end7.i186_crit_edge:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i186

do.body1.i182:                                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lola_codec_read.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lola_parse_tree, %if.then4.i183)) #8
          to label %do.end7.i186 [label %if.then4.i183], !srcloc !177

if.then4.i183:                                    ; preds = %do.body1.i182
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lola_codec_read.__UNIQUE_ID_ddebug259, ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 3840, i32 noundef 5, i32 noundef 0) #8
  br label %do.end7.i186

do.end7.i186:                                     ; preds = %if.then4.i183, %do.body1.i182, %if.end8.do.end7.i186_crit_edge
  %35 = ptrtoint ptr %last_cmd_nid.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %last_cmd_nid.i, align 4
  %36 = ptrtoint ptr %last_verb.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 3840, ptr %last_verb.i, align 4
  %37 = ptrtoint ptr %last_data.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 5, ptr %last_data.i, align 4
  %38 = ptrtoint ptr %last_extdata.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %last_extdata.i, align 4
  %call4.i207 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #8
  %39 = ptrtoint ptr %cmds.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cmds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %40)
  %cmp7.i209 = icmp slt i32 %40, 255
  br i1 %cmp7.i209, label %lola_codec_read.exit190, label %lola_codec_read.exit190.thread

lola_codec_read.exit190.thread:                   ; preds = %do.end7.i186
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call4.i207) #8
  br label %do.end14

lola_codec_read.exit190:                          ; preds = %do.end7.i186
  %41 = ptrtoint ptr %wp9.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %wp9.i, align 2
  %43 = add i16 %42, 1
  %44 = and i16 %43, 255
  store i16 %44, ptr %wp9.i, align 2
  %45 = ptrtoint ptr %corb.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %corb.i, align 4
  %47 = shl nuw nsw i16 %44, 1
  %mul.i212 = zext i16 %47 to i32
  %arrayidx.i213 = getelementptr i32, ptr %46, i32 %mul.i212
  %48 = ptrtoint ptr %arrayidx.i213 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 83894016, ptr %arrayidx.i213, align 4
  %49 = load ptr, ptr %corb.i, align 4
  %add18.i214 = or i32 %mul.i212, 1
  %arrayidx19.i215 = getelementptr i32, ptr %49, i32 %add18.i214
  %50 = ptrtoint ptr %arrayidx19.i215 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %arrayidx19.i215, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void @arm_heavy_mb() #8
  %51 = shl nuw i16 %44, 8
  %52 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i217 = getelementptr i8, ptr %53, i32 72
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i217, i16 %51) #8, !srcloc !179
  %54 = ptrtoint ptr %cmds.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cmds.i, align 4
  %inc.i218 = add i32 %55, 1
  store i32 %inc.i218, ptr %cmds.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call4.i207) #8
  %call12.i187 = call fastcc i32 @rirb_get_response(ptr noundef %chip, ptr noundef nonnull %val, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i187)
  %cmp10 = icmp slt i32 %call12.i187, 0
  br i1 %cmp10, label %lola_codec_read.exit190.do.end14_crit_edge, label %if.end17

lola_codec_read.exit190.do.end14_crit_edge:       ; preds = %lola_codec_read.exit190
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

do.end14:                                         ; preds = %lola_codec_read.exit190.do.end14_crit_edge, %lola_codec_read.exit190.thread
  %retval.0.i189251 = phi i32 [ -5, %lola_codec_read.exit190.thread ], [ %call12.i187, %lola_codec_read.exit190.do.end14_crit_edge ]
  %56 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %chip, align 4
  %dev16 = getelementptr inbounds %struct.snd_card, ptr %57, i32 0, i32 27
  %58 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev16, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.47) #11
  br label %cleanup

if.end17:                                         ; preds = %lola_codec_read.exit190
  %60 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp18.not = icmp eq i32 %61, 1
  br i1 %cmp18.not, label %if.end25, label %do.end22

do.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %chip, align 4
  %dev24 = getelementptr inbounds %struct.snd_card, ptr %63, i32 0, i32 27
  %64 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev24, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.50, i32 noundef %61) #11
  br label %cleanup

if.end25:                                         ; preds = %if.end17
  %66 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp.i191 = icmp sgt i32 %66, 1
  br i1 %cmp.i191, label %do.body1.i192, label %if.end25.do.end7.i196_crit_edge

if.end25.do.end7.i196_crit_edge:                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i196

do.body1.i192:                                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lola_codec_read.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lola_parse_tree, %if.then4.i193)) #8
          to label %do.end7.i196 [label %if.then4.i193], !srcloc !177

if.then4.i193:                                    ; preds = %do.body1.i192
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lola_codec_read.__UNIQUE_ID_ddebug259, ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 3840, i32 noundef 128, i32 noundef 0) #8
  br label %do.end7.i196

do.end7.i196:                                     ; preds = %if.then4.i193, %do.body1.i192, %if.end25.do.end7.i196_crit_edge
  %67 = ptrtoint ptr %last_cmd_nid.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %last_cmd_nid.i, align 4
  %68 = ptrtoint ptr %last_verb.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 3840, ptr %last_verb.i, align 4
  %69 = ptrtoint ptr %last_data.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 128, ptr %last_data.i, align 4
  %70 = ptrtoint ptr %last_extdata.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %last_extdata.i, align 4
  %call4.i227 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #8
  %71 = ptrtoint ptr %cmds.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cmds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %72)
  %cmp7.i229 = icmp slt i32 %72, 255
  br i1 %cmp7.i229, label %lola_codec_read.exit200, label %lola_codec_read.exit200.thread

lola_codec_read.exit200.thread:                   ; preds = %do.end7.i196
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call4.i227) #8
  br label %do.end31

lola_codec_read.exit200:                          ; preds = %do.end7.i196
  %73 = ptrtoint ptr %wp9.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %wp9.i, align 2
  %75 = add i16 %74, 1
  %76 = and i16 %75, 255
  store i16 %76, ptr %wp9.i, align 2
  %77 = ptrtoint ptr %corb.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %corb.i, align 4
  %79 = shl nuw nsw i16 %76, 1
  %mul.i232 = zext i16 %79 to i32
  %arrayidx.i233 = getelementptr i32, ptr %78, i32 %mul.i232
  %80 = ptrtoint ptr %arrayidx.i233 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -2147475712, ptr %arrayidx.i233, align 4
  %81 = load ptr, ptr %corb.i, align 4
  %add18.i234 = or i32 %mul.i232, 1
  %arrayidx19.i235 = getelementptr i32, ptr %81, i32 %add18.i234
  %82 = ptrtoint ptr %arrayidx19.i235 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %arrayidx19.i235, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void @arm_heavy_mb() #8
  %83 = shl nuw i16 %76, 8
  %84 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i237 = getelementptr i8, ptr %85, i32 72
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i237, i16 %83) #8, !srcloc !179
  %86 = ptrtoint ptr %cmds.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cmds.i, align 4
  %inc.i238 = add i32 %87, 1
  store i32 %inc.i238, ptr %cmds.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock.i, i32 noundef %call4.i227) #8
  %call12.i197 = call fastcc i32 @rirb_get_response(ptr noundef %chip, ptr noundef nonnull %val, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i197)
  %cmp27 = icmp slt i32 %call12.i197, 0
  br i1 %cmp27, label %lola_codec_read.exit200.do.end31_crit_edge, label %if.end34

lola_codec_read.exit200.do.end31_crit_edge:       ; preds = %lola_codec_read.exit200
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end31

do.end31:                                         ; preds = %lola_codec_read.exit200.do.end31_crit_edge, %lola_codec_read.exit200.thread
  %retval.0.i199256 = phi i32 [ -5, %lola_codec_read.exit200.thread ], [ %call12.i197, %lola_codec_read.exit200.do.end31_crit_edge ]
  %88 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %chip, align 4
  %dev33 = getelementptr inbounds %struct.snd_card, ptr %89, i32 0, i32 27
  %90 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev33, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.53) #11
  br label %cleanup

if.end34:                                         ; preds = %lola_codec_read.exit200
  %92 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %val, align 4
  %lola_caps = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 25
  %94 = ptrtoint ptr %lola_caps to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %lola_caps, align 4
  %shr36 = lshr i32 %93, 10
  %and = and i32 %shr36, 767
  %pin = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 19
  %arrayidx = getelementptr %struct.lola, ptr %chip, i32 0, i32 19, i32 1
  %95 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %and, ptr %arrayidx, align 4
  %and38 = and i32 %93, 767
  %96 = ptrtoint ptr %pin to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %and38, ptr %pin, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lola_parse_tree.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lola_parse_tree, %if.then46)) #8
          to label %do.end58 [label %if.then46], !srcloc !177

if.then46:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %chip, align 4
  %dev48 = getelementptr inbounds %struct.snd_card, ptr %98, i32 0, i32 27
  %99 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev48, align 8
  %101 = ptrtoint ptr %lola_caps to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %lola_caps, align 4
  %103 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx, align 4
  %105 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pin, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lola_parse_tree.__UNIQUE_ID_ddebug260, ptr noundef %100, ptr noundef nonnull @.str.55, i32 noundef %102, i32 noundef %104, i32 noundef %106) #8
  br label %do.end58

do.end58:                                         ; preds = %if.then46, %if.end34
  %107 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %108)
  %cmp62 = icmp ugt i32 %108, 16
  br i1 %cmp62, label %do.end58.do.end70_crit_edge, label %lor.lhs.false

do.end58.do.end70_crit_edge:                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end70

lor.lhs.false:                                    ; preds = %do.end58
  %109 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %110)
  %cmp66 = icmp ugt i32 %110, 16
  br i1 %cmp66, label %lor.lhs.false.do.end70_crit_edge, label %if.end73

lor.lhs.false.do.end70_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end70

do.end70:                                         ; preds = %lor.lhs.false.do.end70_crit_edge, %do.end58.do.end70_crit_edge
  %111 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %chip, align 4
  %dev72 = getelementptr inbounds %struct.snd_card, ptr %112, i32 0, i32 27
  %113 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev72, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.57, i32 noundef %93) #11
  br label %cleanup

if.end73:                                         ; preds = %lor.lhs.false
  %115 = ptrtoint ptr %nid to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 2, ptr %nid, align 4
  %call74 = call i32 @lola_init_pcm(ptr noundef %chip, i32 noundef 1, ptr noundef nonnull %nid) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.end73.cleanup_crit_edge, label %if.end77

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end77:                                         ; preds = %if.end73
  %call78 = call i32 @lola_init_pcm(ptr noundef %chip, i32 noundef 0, ptr noundef nonnull %nid) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.end77.cleanup_crit_edge, label %if.end81

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end81:                                         ; preds = %if.end77
  %call82 = call i32 @lola_init_pins(ptr noundef %chip, i32 noundef 1, ptr noundef nonnull %nid) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %if.end81.cleanup_crit_edge, label %if.end85

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end85:                                         ; preds = %if.end81
  %call86 = call i32 @lola_init_pins(ptr noundef %chip, i32 noundef 0, ptr noundef nonnull %nid) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %if.end85.cleanup_crit_edge, label %if.end89

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end89:                                         ; preds = %if.end85
  %116 = ptrtoint ptr %lola_caps to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %lola_caps, align 4
  %and91 = and i32 %117, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %cmp92.not = icmp eq i32 %and91, 0
  br i1 %cmp92.not, label %if.end89.if.end98_crit_edge, label %if.then93

if.end89.if.end98_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then93:                                        ; preds = %if.end89
  %118 = ptrtoint ptr %nid to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %nid, align 4
  %call94 = call i32 @lola_init_clock_widget(ptr noundef %chip, i32 noundef %119) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %if.then93.cleanup_crit_edge, label %if.end97

if.then93.cleanup_crit_edge:                      ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end97:                                         ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #10
  %120 = ptrtoint ptr %nid to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %nid, align 4
  %inc = add i32 %121, 1
  store i32 %inc, ptr %nid, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.end89.if.end98_crit_edge
  %122 = ptrtoint ptr %lola_caps to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %lola_caps, align 4
  %and100 = and i32 %123, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %cmp101.not = icmp eq i32 %and100, 0
  br i1 %cmp101.not, label %if.end98.if.end108_crit_edge, label %if.then102

if.end98.if.end108_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

if.then102:                                       ; preds = %if.end98
  %124 = ptrtoint ptr %nid to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %nid, align 4
  %call103 = call i32 @lola_init_mixer_widget(ptr noundef %chip, i32 noundef %125) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %if.then102.cleanup_crit_edge, label %if.end106

if.then102.cleanup_crit_edge:                     ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end106:                                        ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  %126 = ptrtoint ptr %nid to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %nid, align 4
  %inc107 = add i32 %127, 1
  store i32 %inc107, ptr %nid, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.end106, %if.end98.if.end108_crit_edge
  %call109 = call i32 @lola_enable_clock_events(ptr noundef %chip) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %cmp110 = icmp slt i32 %call109, 0
  br i1 %cmp110, label %if.end108.cleanup_crit_edge, label %if.end112

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end112:                                        ; preds = %if.end108
  %cold_reset = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 29
  %128 = ptrtoint ptr %cold_reset to i32
  call void @__asan_load1_noabort(i32 %128)
  %bf.load = load i8, ptr %cold_reset, align 4
  %129 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool113.not = icmp eq i8 %129, 0
  %granularity.i = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 26
  %130 = ptrtoint ptr %granularity.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %granularity.i, align 4
  br i1 %tobool113.not, label %if.then114, label %if.else

if.then114:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 @lola_set_granularity(ptr noundef %chip, i32 noundef %131, i1 noundef zeroext true) #8
  %cur_index.i = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 20, i32 2
  %132 = ptrtoint ptr %cur_index.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cur_index.i, align 4
  %call1.i = call i32 @lola_set_clock_index(ptr noundef %chip, i32 noundef %133) #8
  %call2.i = call i32 @lola_enable_clock_events(ptr noundef %chip) #8
  %call3.i = call i32 @lola_setup_all_analog_gains(ptr noundef %chip, i32 noundef 1, i1 noundef zeroext false) #8
  %input_src_mask.i = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 18
  %134 = ptrtoint ptr %input_src_mask.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %input_src_mask.i, align 4
  %call4.i = call i32 @lola_set_src_config(ptr noundef %chip, i32 noundef %135, i1 noundef zeroext false) #8
  %call5.i = call i32 @lola_setup_all_analog_gains(ptr noundef %chip, i32 noundef 0, i1 noundef zeroext false) #8
  %136 = ptrtoint ptr %cold_reset to i32
  call void @__asan_load1_noabort(i32 %136)
  %bf.load116 = load i8, ptr %cold_reset, align 4
  %bf.set = or i8 %bf.load116, 64
  store i8 %bf.set, ptr %cold_reset, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end112
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %131)
  %cmp118.not = icmp eq i32 %131, 8
  br i1 %cmp118.not, label %if.else.cleanup_crit_edge, label %if.then119

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then119:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call121 = call i32 @lola_set_granularity(ptr noundef %chip, i32 noundef %131, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then119, %if.else.cleanup_crit_edge, %if.then114, %if.end108.cleanup_crit_edge, %if.then102.cleanup_crit_edge, %if.then93.cleanup_crit_edge, %if.end85.cleanup_crit_edge, %if.end81.cleanup_crit_edge, %if.end77.cleanup_crit_edge, %if.end73.cleanup_crit_edge, %do.end70, %do.end31, %do.end22, %do.end14, %do.end5, %do.end
  %retval.0 = phi i32 [ %retval.0.i180246, %do.end ], [ -22, %do.end5 ], [ %retval.0.i189251, %do.end14 ], [ -22, %do.end22 ], [ %retval.0.i199256, %do.end31 ], [ -22, %do.end70 ], [ %call74, %if.end73.cleanup_crit_edge ], [ %call78, %if.end77.cleanup_crit_edge ], [ %call82, %if.end81.cleanup_crit_edge ], [ %call86, %if.end85.cleanup_crit_edge ], [ %call94, %if.then93.cleanup_crit_edge ], [ %call103, %if.then102.cleanup_crit_edge ], [ %call109, %if.end108.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then119 ], [ 0, %if.then114 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nid) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lola_create_pcm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lola_create_mixer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lola_proc_debug_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lola_free(ptr nocapture noundef readonly %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %initialized = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !218
  tail call void @arm_heavy_mb() #8
  %remap_addr.i.i = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 2, i32 0, i32 1
  %3 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 92
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 0) #8, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !219
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %6, i32 76
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6.i.i, i8 0) #8, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !220
  tail call void @arm_heavy_mb() #8
  %remap_addr.i2.i = getelementptr %struct.lola, ptr %1, i32 0, i32 2, i32 1, i32 1
  %7 = ptrtoint ptr %remap_addr.i2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %remap_addr.i2.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %8, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 0) #8, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %remap_addr.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %remap_addr.i2.i, align 4
  %add.ptr6.i4.i = getelementptr i8, ptr %10, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i4.i, i32 0) #8, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %remap_addr.i2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %remap_addr.i2.i, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %12, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i, i32 0) #8, !srcloc !189
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @lola_free_mixer(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lola_interrupt(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock = getelementptr inbounds %struct.lola, ptr %dev_id, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #8
  %remap_addr = getelementptr %struct.lola, ptr %dev_id, i32 0, i32 2, i32 1, i32 1
  %arrayidx22 = getelementptr %struct.lola, ptr %dev_id, i32 0, i32 16, i32 1
  %pcm61 = getelementptr inbounds %struct.lola, ptr %dev_id, i32 0, i32 16
  %remap_addr120 = getelementptr inbounds %struct.lola, ptr %dev_id, i32 0, i32 2, i32 0, i32 1
  %rirb.i = getelementptr inbounds %struct.lola, ptr %dev_id, i32 0, i32 7
  %wp2.i = getelementptr inbounds %struct.lola, ptr %dev_id, i32 0, i32 7, i32 3
  %rp9.i = getelementptr inbounds %struct.lola, ptr %dev_id, i32 0, i32 7, i32 2
  %cmds.i = getelementptr inbounds %struct.lola, ptr %dev_id, i32 0, i32 7, i32 4
  %res31.i = getelementptr inbounds %struct.lola, ptr %dev_id, i32 0, i32 8
  %res_ex32.i = getelementptr inbounds %struct.lola, ptr %dev_id, i32 0, i32 9
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %tobool181.not = phi i32 [ 0, %entry ], [ 1, %for.cond.backedge ]
  %notify_outs.0 = phi i32 [ 0, %entry ], [ %notify_outs.1.lcssa, %for.cond.backedge ]
  %notify_ins.0 = phi i32 [ 0, %entry ], [ %notify_ins.1.lcssa, %for.cond.backedge ]
  %0 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 148
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !186
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  %4 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %2, label %if.end [
    i32 0, label %for.cond.for.end175_crit_edge
    i32 -1, label %for.cond.for.end175_crit_edge274
  ]

for.cond.for.end175_crit_edge274:                 ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end175

for.cond.for.end175_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end175

if.end:                                           ; preds = %for.cond
  %5 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %remap_addr, align 4
  %add.ptr7 = getelementptr i8, ptr %6, i32 152
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #8, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  %8 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remap_addr, align 4
  %add.ptr16 = getelementptr i8, ptr %9, i32 156
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #8, !srcloc !186
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !225
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool21.not255 = icmp eq i32 %7, 0
  br i1 %tobool21.not255, label %if.end.for.end_crit_edge, label %land.rhs.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.rhs.preheader:                               ; preds = %if.end
  %12 = tail call i32 @llvm.bswap.i32(i32 %7)
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.preheader
  %notify_ins.1260 = phi i32 [ %notify_ins.3, %for.inc.land.rhs_crit_edge ], [ %notify_ins.0, %land.rhs.preheader ]
  %i.0257 = phi i32 [ %inc, %for.inc.land.rhs_crit_edge ], [ 0, %land.rhs.preheader ]
  %in_sts.0256 = phi i32 [ %in_sts.1, %for.inc.land.rhs_crit_edge ], [ %12, %land.rhs.preheader ]
  %13 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0257, i32 %14)
  %cmp23 = icmp ult i32 %i.0257, %14
  br i1 %cmp23, label %for.body, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %shl = shl nuw i32 1, %i.0257
  %and = and i32 %shl, %in_sts.0256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %for.body.for.inc_crit_edge, label %if.end26

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end26:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %neg = xor i32 %shl, -1
  %and28 = and i32 %in_sts.0256, %neg
  %15 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %remap_addr, align 4
  %add.ptr34 = getelementptr i8, ptr %16, i32 160
  %mul = mul i32 %i.0257, 24
  %add.ptr35 = getelementptr i8, ptr %add.ptr34, i32 %mul
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #8, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !226
  %18 = and i32 %17, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool46.not = icmp eq i32 %18, 0
  %or49 = select i1 %tobool46.not, i32 0, i32 %shl
  %notify_ins.2 = or i32 %or49, %notify_ins.1260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %remap_addr, align 4
  %add.ptr54 = getelementptr i8, ptr %20, i32 160
  %add.ptr56 = getelementptr i8, ptr %add.ptr54, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %17) #8, !srcloc !189
  br label %for.inc

for.inc:                                          ; preds = %if.end26, %for.body.for.inc_crit_edge
  %in_sts.1 = phi i32 [ %and28, %if.end26 ], [ %in_sts.0256, %for.body.for.inc_crit_edge ]
  %notify_ins.3 = phi i32 [ %notify_ins.2, %if.end26 ], [ %notify_ins.1260, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.0257, 1
  %tobool21.not = icmp eq i32 %in_sts.1, 0
  br i1 %tobool21.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %if.end.for.end_crit_edge
  %notify_ins.1.lcssa = phi i32 [ %notify_ins.0, %if.end.for.end_crit_edge ], [ %notify_ins.3, %for.inc.for.end_crit_edge ], [ %notify_ins.1260, %land.rhs.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool59.not264 = icmp eq i32 %10, 0
  br i1 %tobool59.not264, label %for.end.for.end112_crit_edge, label %for.end.land.rhs60_crit_edge

for.end.land.rhs60_crit_edge:                     ; preds = %for.end
  br label %land.rhs60

for.end.for.end112_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end112

land.rhs60:                                       ; preds = %for.inc110.land.rhs60_crit_edge, %for.end.land.rhs60_crit_edge
  %notify_outs.1269 = phi i32 [ %notify_outs.3, %for.inc110.land.rhs60_crit_edge ], [ %notify_outs.0, %for.end.land.rhs60_crit_edge ]
  %i.1266 = phi i32 [ %inc111, %for.inc110.land.rhs60_crit_edge ], [ 0, %for.end.land.rhs60_crit_edge ]
  %out_sts.0265 = phi i32 [ %out_sts.1, %for.inc110.land.rhs60_crit_edge ], [ %11, %for.end.land.rhs60_crit_edge ]
  %21 = ptrtoint ptr %pcm61 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pcm61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1266, i32 %22)
  %cmp64 = icmp ult i32 %i.1266, %22
  br i1 %cmp64, label %for.body66, label %land.rhs60.for.end112_crit_edge

land.rhs60.for.end112_crit_edge:                  ; preds = %land.rhs60
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end112

for.body66:                                       ; preds = %land.rhs60
  %shl67 = shl nuw i32 1, %i.1266
  %and68 = and i32 %shl67, %out_sts.0265
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %for.body66.for.inc110_crit_edge, label %if.end71

for.body66.for.inc110_crit_edge:                  ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc110

if.end71:                                         ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #10
  %neg73 = xor i32 %shl67, -1
  %and74 = and i32 %out_sts.0265, %neg73
  %23 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %remap_addr, align 4
  %add.ptr80 = getelementptr i8, ptr %24, i32 160
  %25 = mul i32 %i.1266, 24
  %mul81 = add i32 %25, 384
  %add.ptr82 = getelementptr i8, ptr %add.ptr80, i32 %mul81
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82) #8, !srcloc !186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  %27 = and i32 %26, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool94.not = icmp eq i32 %27, 0
  %or97 = select i1 %tobool94.not, i32 0, i32 %shl67
  %notify_outs.2 = or i32 %or97, %notify_outs.1269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %remap_addr, align 4
  %add.ptr105 = getelementptr i8, ptr %29, i32 160
  %add.ptr108 = getelementptr i8, ptr %add.ptr105, i32 %mul81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 %26) #8, !srcloc !189
  br label %for.inc110

for.inc110:                                       ; preds = %if.end71, %for.body66.for.inc110_crit_edge
  %out_sts.1 = phi i32 [ %and74, %if.end71 ], [ %out_sts.0265, %for.body66.for.inc110_crit_edge ]
  %notify_outs.3 = phi i32 [ %notify_outs.2, %if.end71 ], [ %notify_outs.1269, %for.body66.for.inc110_crit_edge ]
  %inc111 = add nuw i32 %i.1266, 1
  %tobool59.not = icmp eq i32 %out_sts.1, 0
  br i1 %tobool59.not, label %for.inc110.for.end112_crit_edge, label %for.inc110.land.rhs60_crit_edge

for.inc110.land.rhs60_crit_edge:                  ; preds = %for.inc110
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs60

for.inc110.for.end112_crit_edge:                  ; preds = %for.inc110
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end112

for.end112:                                       ; preds = %for.inc110.for.end112_crit_edge, %land.rhs60.for.end112_crit_edge, %for.end.for.end112_crit_edge
  %notify_outs.1.lcssa = phi i32 [ %notify_outs.0, %for.end.for.end112_crit_edge ], [ %notify_outs.3, %for.inc110.for.end112_crit_edge ], [ %notify_outs.1269, %land.rhs60.for.end112_crit_edge ]
  %and113 = and i32 %3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %for.end112.if.end159_crit_edge, label %if.then115

for.end112.if.end159_crit_edge:                   ; preds = %for.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end159

if.then115:                                       ; preds = %for.end112
  %30 = ptrtoint ptr %remap_addr120 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %remap_addr120, align 4
  %add.ptr121 = getelementptr i8, ptr %31, i32 93
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr121) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !230
  %33 = and i8 %32, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool127.not = icmp eq i8 %33, 0
  br i1 %tobool127.not, label %if.then115.if.end136_crit_edge, label %do.body129

if.then115.if.end136_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

do.body129:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !231
  tail call void @arm_heavy_mb() #8
  %34 = ptrtoint ptr %remap_addr120 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %remap_addr120, align 4
  %add.ptr135 = getelementptr i8, ptr %35, i32 93
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr135, i8 %33) #8, !srcloc !194
  br label %if.end136

if.end136:                                        ; preds = %do.body129, %if.then115.if.end136_crit_edge
  %36 = ptrtoint ptr %remap_addr120 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %remap_addr120, align 4
  %add.ptr142 = getelementptr i8, ptr %37, i32 77
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr142) #8, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  %39 = and i8 %38, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool149.not = icmp eq i8 %39, 0
  br i1 %tobool149.not, label %if.end136.if.end158_crit_edge, label %do.body151

if.end136.if.end158_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

do.body151:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !233
  tail call void @arm_heavy_mb() #8
  %40 = ptrtoint ptr %remap_addr120 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %remap_addr120, align 4
  %add.ptr157 = getelementptr i8, ptr %41, i32 77
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr157, i8 1) #8, !srcloc !194
  br label %if.end158

if.end158:                                        ; preds = %do.body151, %if.end136.if.end158_crit_edge
  %42 = ptrtoint ptr %remap_addr120 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %remap_addr120, align 4
  %add.ptr.i = getelementptr i8, ptr %43, i32 88
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #8, !srcloc !181
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  %46 = ptrtoint ptr %wp2.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %wp2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %45, i16 %47)
  %cmp.i = icmp eq i16 %45, %47
  br i1 %cmp.i, label %if.end158.if.end159_crit_edge, label %if.end.i

if.end158.if.end159_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end159

if.end.i:                                         ; preds = %if.end158
  %48 = ptrtoint ptr %wp2.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %45, ptr %wp2.i, align 2
  %49 = ptrtoint ptr %rp9.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %rp9.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %50, i16 %45)
  %cmp11.not62.i = icmp eq i16 %50, %45
  br i1 %cmp11.not62.i, label %if.end.i.if.end159_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.if.end159_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end159

while.body.i:                                     ; preds = %if.end39.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %51 = phi i16 [ %70, %if.end39.i.while.body.i_crit_edge ], [ %50, %if.end.i.while.body.i_crit_edge ]
  %inc.i = add i16 %51, 1
  %52 = and i16 %inc.i, 255
  %53 = ptrtoint ptr %rp9.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %rp9.i, align 4
  %54 = shl nuw nsw i16 %52, 1
  %shl.i = zext i16 %54 to i32
  %55 = ptrtoint ptr %rirb.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rirb.i, align 4
  %add.i = or i32 %shl.i, 1
  %arrayidx23.i = getelementptr i32, ptr %56, i32 %add.i
  %57 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx23.i, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #8
  %arrayidx26.i = getelementptr i32, ptr %56, i32 %shl.i
  %60 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx26.i, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #8
  %and.i = and i32 %59, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then27.i

if.then27.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call zeroext i1 @lola_update_ext_clock_freq(ptr noundef %dev_id, i32 noundef %62) #8
  br label %if.end39.i

if.else.i:                                        ; preds = %while.body.i
  %63 = ptrtoint ptr %cmds.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cmds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool29.not.i = icmp eq i32 %64, 0
  br i1 %tobool29.not.i, label %if.else.i.if.end39.i_crit_edge, label %if.then30.i

if.else.i.if.end39.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.i

if.then30.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %res31.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %62, ptr %res31.i, align 4
  %66 = ptrtoint ptr %res_ex32.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %59, ptr %res_ex32.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !183
  %67 = ptrtoint ptr %cmds.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cmds.i, align 4
  %dec.i = add i32 %68, -1
  store i32 %dec.i, ptr %cmds.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then30.i, %if.else.i.if.end39.i_crit_edge, %if.then27.i
  %69 = ptrtoint ptr %rp9.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %rp9.i, align 4
  %cmp11.not.i = icmp eq i16 %70, %45
  br i1 %cmp11.not.i, label %if.end39.i.if.end159_crit_edge, label %if.end39.i.while.body.i_crit_edge

if.end39.i.while.body.i_crit_edge:                ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end39.i.if.end159_crit_edge:                   ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end159

if.end159:                                        ; preds = %if.end39.i.if.end159_crit_edge, %if.end.i.if.end159_crit_edge, %if.end158.if.end159_crit_edge, %for.end112.if.end159_crit_edge
  %and160 = and i32 %3, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %if.end159.for.cond.backedge_crit_edge, label %do.body163

if.end159.for.cond.backedge_crit_edge:            ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %do.body163, %if.end159.for.cond.backedge_crit_edge
  br label %for.cond

do.body163:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !234
  tail call void @arm_heavy_mb() #8
  %71 = lshr exact i32 %and160, 24
  %72 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %remap_addr, align 4
  %add.ptr170 = getelementptr i8, ptr %73, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr170, i32 %71) #8, !srcloc !189
  br label %for.cond.backedge

for.end175:                                       ; preds = %for.cond.for.end175_crit_edge, %for.cond.for.end175_crit_edge274
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #8
  tail call void @lola_pcm_update(ptr noundef %dev_id, ptr noundef %arrayidx22, i32 noundef %notify_ins.0) #8
  tail call void @lola_pcm_update(ptr noundef %dev_id, ptr noundef %pcm61, i32 noundef %notify_outs.0) #8
  ret i32 %tobool181.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lola_free_mixer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lola_pcm_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_devm_alloc_dir_pages(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lola_init_pcm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lola_init_pins(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lola_init_clock_widget(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lola_init_mixer_widget(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lola_enable_clock_events(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lola_set_granularity(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lola_set_clock_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lola_setup_all_analog_gains(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lola_set_src_config(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !34, !35, !37, !38, !39, !40, !41, !43, !44, !45, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !73, !74, !75, !77, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !93, !95, !97, !98, !99, !100, !101, !103, !104, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !120, !121, !122, !124, !125, !127, !128, !129, !131, !133, !135, !137, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !166, !167}
!llvm.module.flags = !{!168, !169, !170, !171, !172, !173, !174, !175}
!llvm.ident = !{!176}

!0 = !{ptr @__param_index, !1, !"__param_index", i1 false, i1 false}
!1 = !{!"../sound/pci/lola/lola.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_indextype242, !1, !"__UNIQUE_ID_indextype242", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_index243, !4, !"__UNIQUE_ID_index243", i1 false, i1 false}
!4 = !{!"../sound/pci/lola/lola.c", i32 28, i32 1}
!5 = !{ptr @__param_id, !6, !"__param_id", i1 false, i1 false}
!6 = !{!"../sound/pci/lola/lola.c", i32 29, i32 1}
!7 = !{ptr @__UNIQUE_ID_idtype244, !6, !"__UNIQUE_ID_idtype244", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_id245, !9, !"__UNIQUE_ID_id245", i1 false, i1 false}
!9 = !{!"../sound/pci/lola/lola.c", i32 30, i32 1}
!10 = !{ptr @__param_enable, !11, !"__param_enable", i1 false, i1 false}
!11 = !{!"../sound/pci/lola/lola.c", i32 31, i32 1}
!12 = !{ptr @__UNIQUE_ID_enabletype246, !11, !"__UNIQUE_ID_enabletype246", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_enable247, !14, !"__UNIQUE_ID_enable247", i1 false, i1 false}
!14 = !{!"../sound/pci/lola/lola.c", i32 32, i32 1}
!15 = !{ptr @__param_granularity, !16, !"__param_granularity", i1 false, i1 false}
!16 = !{!"../sound/pci/lola/lola.c", i32 48, i32 1}
!17 = !{ptr @__UNIQUE_ID_granularitytype248, !16, !"__UNIQUE_ID_granularitytype248", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_granularity249, !19, !"__UNIQUE_ID_granularity249", i1 false, i1 false}
!19 = !{!"../sound/pci/lola/lola.c", i32 49, i32 1}
!20 = !{ptr @__param_sample_rate_min, !21, !"__param_sample_rate_min", i1 false, i1 false}
!21 = !{!"../sound/pci/lola/lola.c", i32 50, i32 1}
!22 = !{ptr @__UNIQUE_ID_sample_rate_mintype250, !21, !"__UNIQUE_ID_sample_rate_mintype250", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_sample_rate_min251, !24, !"__UNIQUE_ID_sample_rate_min251", i1 false, i1 false}
!24 = !{!"../sound/pci/lola/lola.c", i32 51, i32 1}
!25 = !{ptr @__UNIQUE_ID_file252, !26, !"__UNIQUE_ID_file252", i1 false, i1 false}
!26 = !{!"../sound/pci/lola/lola.c", i32 56, i32 1}
!27 = !{ptr @__UNIQUE_ID_license253, !26, !"__UNIQUE_ID_license253", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_description254, !29, !"__UNIQUE_ID_description254", i1 false, i1 false}
!29 = !{!"../sound/pci/lola/lola.c", i32 57, i32 1}
!30 = !{ptr @__UNIQUE_ID_author255, !31, !"__UNIQUE_ID_author255", i1 false, i1 false}
!31 = !{!"../sound/pci/lola/lola.c", i32 58, i32 1}
!32 = !{ptr @__param_debug, !33, !"__param_debug", i1 false, i1 false}
!33 = !{!"../sound/pci/lola/lola.c", i32 62, i32 1}
!34 = !{ptr @__UNIQUE_ID_debugtype256, !33, !"__UNIQUE_ID_debugtype256", i1 false, i1 false}
!35 = !{ptr @.str, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/pci/lola/lola.c", i32 184, i32 2}
!37 = !{ptr @.str.1, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.2, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.3, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @lola_codec_write.__UNIQUE_ID_ddebug258, !36, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!41 = !{ptr @.str.4, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/pci/lola/lola.c", i32 196, i32 2}
!43 = !{ptr @.str.5, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @lola_codec_read.__UNIQUE_ID_ddebug259, !42, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!45 = !{ptr @__initcall__kmod_snd_lola__262_704_lola_driver_init6, !46, !"__initcall__kmod_snd_lola__262_704_lola_driver_init6", i1 false, i1 false}
!46 = !{!"../sound/pci/lola/lola.c", i32 704, i32 1}
!47 = !{ptr @__exitcall_lola_driver_exit, !46, !"__exitcall_lola_driver_exit", i1 false, i1 false}
!48 = !{ptr @debug, !49, !"debug", i1 false, i1 false}
!49 = !{!"../sound/pci/lola/lola.c", i32 61, i32 12}
!50 = !{ptr @__param_str_index, !1, !"__param_str_index", i1 false, i1 false}
!51 = !{ptr @__param_arr_index, !1, !"__param_arr_index", i1 false, i1 false}
!52 = !{ptr @index, !53, !"index", i1 false, i1 false}
!53 = !{!"../sound/pci/lola/lola.c", i32 23, i32 12}
!54 = !{ptr @__param_str_id, !6, !"__param_str_id", i1 false, i1 false}
!55 = !{ptr @__param_arr_id, !6, !"__param_arr_id", i1 false, i1 false}
!56 = !{ptr @id, !57, !"id", i1 false, i1 false}
!57 = !{!"../sound/pci/lola/lola.c", i32 24, i32 14}
!58 = !{ptr @__param_str_enable, !11, !"__param_str_enable", i1 false, i1 false}
!59 = !{ptr @__param_arr_enable, !11, !"__param_arr_enable", i1 false, i1 false}
!60 = !{ptr @enable, !61, !"enable", i1 false, i1 false}
!61 = !{!"../sound/pci/lola/lola.c", i32 25, i32 13}
!62 = !{ptr @__param_str_granularity, !16, !"__param_str_granularity", i1 false, i1 false}
!63 = !{ptr @__param_arr_granularity, !16, !"__param_arr_granularity", i1 false, i1 false}
!64 = !{ptr @granularity, !65, !"granularity", i1 false, i1 false}
!65 = !{!"../sound/pci/lola/lola.c", i32 39, i32 12}
!66 = !{ptr @__param_str_sample_rate_min, !21, !"__param_str_sample_rate_min", i1 false, i1 false}
!67 = !{ptr @__param_arr_sample_rate_min, !21, !"__param_arr_sample_rate_min", i1 false, i1 false}
!68 = !{ptr @sample_rate_min, !69, !"sample_rate_min", i1 false, i1 false}
!69 = !{!"../sound/pci/lola/lola.c", i32 44, i32 12}
!70 = !{ptr @__param_str_debug, !33, !"__param_str_debug", i1 false, i1 false}
!71 = !{ptr @.str.6, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/pci/lola/lola.c", i32 154, i32 4}
!73 = !{ptr @.str.7, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @rirb_get_response.__UNIQUE_ID_ddebug257, !72, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!75 = !{ptr @.str.8, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/pci/lola/lola.c", i32 157, i32 5}
!77 = !{ptr @.str.9, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.10, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @rirb_get_response._entry, !76, !"_entry", i1 false, i1 false}
!80 = !{ptr @rirb_get_response._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.12, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/pci/lola/lola.c", i32 171, i32 2}
!83 = !{ptr @rirb_get_response._entry.11, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @rirb_get_response._entry_ptr.13, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.15, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/pci/lola/lola.c", i32 173, i32 3}
!87 = !{ptr @rirb_get_response._entry.14, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @rirb_get_response._entry_ptr.16, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @lola_driver, !90, !"lola_driver", i1 false, i1 false}
!90 = !{!"../sound/pci/lola/lola.c", i32 698, i32 26}
!91 = !{ptr @lola_ids, !92, !"lola_ids", i1 false, i1 false}
!92 = !{!"../sound/pci/lola/lola.c", i32 691, i32 35}
!93 = !{ptr @lola_probe.dev, !94, !"dev", i1 false, i1 false}
!94 = !{!"../sound/pci/lola/lola.c", i32 643, i32 13}
!95 = !{ptr @.str.17, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/pci/lola/lola.c", i32 658, i32 3}
!97 = !{ptr @.str.18, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.19, !96, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @lola_probe._entry, !96, !"_entry", i1 false, i1 false}
!100 = !{ptr @lola_probe._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @lola_create.__key, !102, !"__key", i1 false, i1 false}
!102 = !{!"../sound/pci/lola/lola.c", i32 549, i32 2}
!103 = !{ptr @.str.20, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @lola_create.__key.21, !105, !"__key", i1 false, i1 false}
!105 = !{!"../sound/pci/lola/lola.c", i32 550, i32 2}
!106 = !{ptr @.str.22, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.23, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/pci/lola/lola.c", i32 568, i32 3}
!109 = !{ptr @.str.24, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @lola_create._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @lola_create._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.26, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/lola/lola.c", i32 577, i32 3}
!114 = !{ptr @lola_create._entry.25, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @lola_create._entry_ptr.27, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.28, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/pci/lola/lola.c", i32 583, i32 53}
!118 = !{ptr @.str.30, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/lola/lola.c", i32 600, i32 3}
!120 = !{ptr @lola_create._entry.29, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @lola_create._entry_ptr.31, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.32, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/pci/lola/lola.c", i32 610, i32 2}
!124 = !{ptr @lola_create.__UNIQUE_ID_ddebug261, !123, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!125 = !{ptr @.str.34, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/pci/lola/lola.c", i32 619, i32 3}
!127 = !{ptr @lola_create._entry.33, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @lola_create._entry_ptr.35, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.36, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/pci/lola/lola.c", i32 627, i32 23}
!131 = !{ptr @.str.37, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/pci/lola/lola.c", i32 628, i32 27}
!133 = !{ptr @.str.38, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/pci/lola/lola.c", i32 630, i32 4}
!135 = !{ptr @.str.39, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/pci/lola/lola.c", i32 316, i32 3}
!137 = !{ptr @.str.40, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @reset_controller._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @reset_controller._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.41, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/pci/lola/lola.c", i32 439, i32 3}
!142 = !{ptr @.str.42, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @lola_parse_tree._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @lola_parse_tree._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.44, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/pci/lola/lola.c", i32 444, i32 3}
!147 = !{ptr @lola_parse_tree._entry.43, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @lola_parse_tree._entry_ptr.45, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.47, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/pci/lola/lola.c", i32 450, i32 3}
!151 = !{ptr @lola_parse_tree._entry.46, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @lola_parse_tree._entry_ptr.48, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.50, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/pci/lola/lola.c", i32 454, i32 3}
!155 = !{ptr @lola_parse_tree._entry.49, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @lola_parse_tree._entry_ptr.51, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.53, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/pci/lola/lola.c", i32 460, i32 3}
!159 = !{ptr @lola_parse_tree._entry.52, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @lola_parse_tree._entry_ptr.54, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.55, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/pci/lola/lola.c", i32 466, i32 2}
!163 = !{ptr @lola_parse_tree.__UNIQUE_ID_ddebug260, !162, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!164 = !{ptr @.str.57, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/pci/lola/lola.c", i32 472, i32 3}
!166 = !{ptr @lola_parse_tree._entry.56, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @lola_parse_tree._entry_ptr.58, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{i32 1, !"wchar_size", i32 2}
!169 = !{i32 1, !"min_enum_size", i32 4}
!170 = !{i32 8, !"branch-target-enforcement", i32 0}
!171 = !{i32 8, !"sign-return-address", i32 0}
!172 = !{i32 8, !"sign-return-address-all", i32 0}
!173 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!174 = !{i32 7, !"uwtable", i32 1}
!175 = !{i32 7, !"frame-pointer", i32 2}
!176 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!177 = !{i64 2148707831, i64 2148707836, i64 2148707849, i64 2148707893, i64 2148707927, i64 2148707948}
!178 = !{i64 2154698137}
!179 = !{i64 6232342}
!180 = !{i64 2154698496}
!181 = !{i64 6232542}
!182 = !{i64 2154699158}
!183 = !{i64 2154699643}
!184 = !{!"auto-init"}
!185 = !{i8 0, i8 2}
!186 = !{i64 6233380}
!187 = !{i64 2154722645}
!188 = !{i64 2154723002}
!189 = !{i64 6232962}
!190 = !{i64 2154723568}
!191 = !{i64 2154724447}
!192 = !{i64 2154760842}
!193 = !{i64 2154730266}
!194 = !{i64 6232765}
!195 = !{i64 2154730687}
!196 = !{i64 6233160}
!197 = !{i64 2154731133}
!198 = !{i64 2154731505}
!199 = !{i64 2154732276}
!200 = !{i64 2154733009}
!201 = !{i64 2154733687}
!202 = !{i64 2154734109}
!203 = !{i64 2154734671}
!204 = !{i64 2154735244}
!205 = !{i64 2154735693}
!206 = !{i64 2154736068}
!207 = !{i64 2154736533}
!208 = !{i64 2154737266}
!209 = !{i64 2154737944}
!210 = !{i64 2154738383}
!211 = !{i64 2154738945}
!212 = !{i64 2154739522}
!213 = !{i64 2154739978}
!214 = !{i64 2154740388}
!215 = !{i64 2154726818}
!216 = !{i64 2154727402}
!217 = !{i64 2154728003}
!218 = !{i64 2154740811}
!219 = !{i64 2154741232}
!220 = !{i64 2154728556}
!221 = !{i64 2154729105}
!222 = !{i64 2154729654}
!223 = !{i64 2154714844}
!224 = !{i64 2154715510}
!225 = !{i64 2154716176}
!226 = !{i64 2154717068}
!227 = !{i64 2154717532}
!228 = !{i64 2154718694}
!229 = !{i64 2154719171}
!230 = !{i64 2154719800}
!231 = !{i64 2154720214}
!232 = !{i64 2154720664}
!233 = !{i64 2154721043}
!234 = !{i64 2154721586}
