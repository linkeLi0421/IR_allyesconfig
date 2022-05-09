; ModuleID = '/llk/IR_all_yes/sound/pci/emu10k1/emu10k1.c_pt.bc'
source_filename = "../sound/pci/emu10k1/emu10k1.c"
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.72, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.snd_emu10k1 = type { i32, i32, i8, ptr, i32, i32, i32, i16, i32, i32, i32, i32, i8, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.snd_dma_device, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, [3 x i32], i32, [4 x [2 x i8]], %struct.snd_emu10k1_fx8010, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, [64 x %struct.snd_emu10k1_voice], [4 x %struct.snd_emu10k1_voice], %struct.snd_emu10k1_voice, i32, i32, i32, %struct.snd_emu1010, [32 x %struct.snd_emu10k1_pcm_mixer], [16 x %struct.snd_emu10k1_pcm_mixer], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi, [2 x i32], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_emu10k1_fx8010 = type { i16, i16, i16, i16, i32, %struct.snd_dma_buffer, i32, [128 x i8], i32, i32, %struct.list_head, %struct.mutex, [8 x %struct.snd_emu10k1_fx8010_pcm], %struct.spinlock, ptr }
%struct.snd_emu10k1_fx8010_pcm = type { i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, [32 x i8], %struct.snd_pcm_indirect, i32, i32, %struct.snd_emu10k1_fx8010_irq }
%struct.snd_pcm_indirect = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_emu10k1_fx8010_irq = type { ptr, ptr, i16, ptr }
%struct.snd_emu10k1_voice = type { ptr, i32, i8, ptr, ptr }
%struct.snd_emu1010 = type { [64 x i32], [64 x i32], i32, i32, i32, i32, i32, %struct.delayed_work, i32 }
%struct.snd_emu10k1_pcm_mixer = type { [3 x [8 x i8]], [3 x [8 x i8]], [3 x i16], ptr }
%struct.snd_emu10k1_midi = type { ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, ptr }
%struct.snd_emu_chip_details = type { i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.snd_seq_device = type { ptr, i32, ptr, [80 x i8], i32, ptr, ptr, ptr, %struct.device }

@__UNIQUE_ID_author242 = internal constant [52 x i8] c"snd_emu10k1.author=Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [32 x i8] c"snd_emu10k1.description=EMU10K1\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [47 x i8] c"snd_emu10k1.file=sound/pci/emu10k1/snd-emu10k1\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [24 x i8] c"snd_emu10k1.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [18 x i8] c"snd_emu10k1.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [40 x i8] c"snd_emu10k1.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [62 x i8] c"snd_emu10k1.parm=index:Index value for the EMU10K1 soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [15 x i8] c"snd_emu10k1.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [39 x i8] c"snd_emu10k1.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [57 x i8] c"snd_emu10k1.parm=id:ID string for the EMU10K1 soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [19 x i8] c"snd_emu10k1.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype250 = internal constant [42 x i8] c"snd_emu10k1.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable251 = internal constant [54 x i8] c"snd_emu10k1.parm=enable:Enable the EMU10K1 soundcard.\00", section ".modinfo", align 1
@__param_str_extin = internal constant [18 x i8] c"snd_emu10k1.extin\00", align 1
@__param_arr_extin = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @extin }, align 4
@__param_extin = internal constant %struct.kernel_param { ptr @__param_str_extin, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_extin } }, section "__param", align 4
@__UNIQUE_ID_extintype252 = internal constant [40 x i8] c"snd_emu10k1.parmtype=extin:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_extin253 = internal constant [75 x i8] c"snd_emu10k1.parm=extin:Available external inputs for FX8010. Zero=default.\00", section ".modinfo", align 1
@__param_str_extout = internal constant [19 x i8] c"snd_emu10k1.extout\00", align 1
@__param_arr_extout = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @extout }, align 4
@__param_extout = internal constant %struct.kernel_param { ptr @__param_str_extout, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_extout } }, section "__param", align 4
@__UNIQUE_ID_extouttype254 = internal constant [41 x i8] c"snd_emu10k1.parmtype=extout:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_extout255 = internal constant [77 x i8] c"snd_emu10k1.parm=extout:Available external outputs for FX8010. Zero=default.\00", section ".modinfo", align 1
@__param_str_seq_ports = internal constant [22 x i8] c"snd_emu10k1.seq_ports\00", align 1
@__param_arr_seq_ports = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @seq_ports }, align 4
@__param_seq_ports = internal constant %struct.kernel_param { ptr @__param_str_seq_ports, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_seq_ports } }, section "__param", align 4
@__UNIQUE_ID_seq_portstype256 = internal constant [44 x i8] c"snd_emu10k1.parmtype=seq_ports:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_seq_ports257 = internal constant [79 x i8] c"snd_emu10k1.parm=seq_ports:Allocated sequencer ports for internal synthesizer.\00", section ".modinfo", align 1
@__param_str_max_synth_voices = internal constant [29 x i8] c"snd_emu10k1.max_synth_voices\00", align 1
@__param_arr_max_synth_voices = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @max_synth_voices }, align 4
@__param_max_synth_voices = internal constant %struct.kernel_param { ptr @__param_str_max_synth_voices, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_max_synth_voices } }, section "__param", align 4
@__UNIQUE_ID_max_synth_voicestype258 = internal constant [51 x i8] c"snd_emu10k1.parmtype=max_synth_voices:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_synth_voices259 = internal constant [74 x i8] c"snd_emu10k1.parm=max_synth_voices:Maximum number of voices for WaveTable.\00", section ".modinfo", align 1
@__param_str_max_buffer_size = internal constant [28 x i8] c"snd_emu10k1.max_buffer_size\00", align 1
@__param_arr_max_buffer_size = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @max_buffer_size }, align 4
@__param_max_buffer_size = internal constant %struct.kernel_param { ptr @__param_str_max_buffer_size, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_max_buffer_size } }, section "__param", align 4
@__UNIQUE_ID_max_buffer_sizetype260 = internal constant [50 x i8] c"snd_emu10k1.parmtype=max_buffer_size:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_buffer_size261 = internal constant [67 x i8] c"snd_emu10k1.parm=max_buffer_size:Maximum sample buffer size in MB.\00", section ".modinfo", align 1
@__param_str_enable_ir = internal constant [22 x i8] c"snd_emu10k1.enable_ir\00", align 1
@__param_arr_enable_ir = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable_ir }, align 4
@__param_enable_ir = internal constant %struct.kernel_param { ptr @__param_str_enable_ir, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable_ir } }, section "__param", align 4
@__UNIQUE_ID_enable_irtype262 = internal constant [45 x i8] c"snd_emu10k1.parmtype=enable_ir:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_ir263 = internal constant [38 x i8] c"snd_emu10k1.parm=enable_ir:Enable IR.\00", section ".modinfo", align 1
@__param_str_subsystem = internal constant [22 x i8] c"snd_emu10k1.subsystem\00", align 1
@__param_arr_subsystem = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_uint, ptr @subsystem }, align 4
@__param_subsystem = internal constant %struct.kernel_param { ptr @__param_str_subsystem, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_subsystem } }, section "__param", align 4
@__UNIQUE_ID_subsystemtype264 = internal constant [45 x i8] c"snd_emu10k1.parmtype=subsystem:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_subsystem265 = internal constant [55 x i8] c"snd_emu10k1.parm=subsystem:Force card subsystem model.\00", section ".modinfo", align 1
@__param_str_delay_pcm_irq = internal constant [26 x i8] c"snd_emu10k1.delay_pcm_irq\00", align 1
@__param_arr_delay_pcm_irq = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_uint, ptr @delay_pcm_irq }, align 4
@__param_delay_pcm_irq = internal constant %struct.kernel_param { ptr @__param_str_delay_pcm_irq, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_delay_pcm_irq } }, section "__param", align 4
@__UNIQUE_ID_delay_pcm_irqtype266 = internal constant [49 x i8] c"snd_emu10k1.parmtype=delay_pcm_irq:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_delay_pcm_irq267 = internal constant [95 x i8] c"snd_emu10k1.parm=delay_pcm_irq:Delay PCM interrupt by specified number of samples (default 0).\00", section ".modinfo", align 1
@__initcall__kmod_snd_emu10k1__268_261_emu10k1_driver_init6 = internal global ptr @emu10k1_driver_init, section ".initcall6.init", align 4
@emu10k1_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_emu10k1_ids, ptr @snd_card_emu10k1_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_emu10k1_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_emu10k1_driver_exit = internal global ptr @emu10k1_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@extin = internal global { [32 x i32], [32 x i8] } zeroinitializer, align 32
@extout = internal global { [32 x i32], [32 x i8] } zeroinitializer, align 32
@seq_ports = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4], [32 x i8] zeroinitializer }, align 32
@max_synth_voices = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64], [32 x i8] zeroinitializer }, align 32
@max_buffer_size = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128, i32 128], [32 x i8] zeroinitializer }, align 32
@enable_ir = internal global { [32 x i8], [32 x i8] } zeroinitializer, align 32
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@subsystem = internal global { [32 x i32], [32 x i8] } zeroinitializer, align 32
@delay_pcm_irq = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd_emu10k1\00", [20 x i8] zeroinitializer }, align 32
@snd_emu10k1_ids = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4354, i32 2, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4354, i32 4, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4354, i32 8, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_emu10k1_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @snd_emu10k1_suspend, ptr @snd_emu10k1_resume, ptr @snd_emu10k1_suspend, ptr @snd_emu10k1_resume, ptr @snd_emu10k1_suspend, ptr @snd_emu10k1_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@snd_card_emu10k1_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"emu10k1-synth\00", [18 x i8] zeroinitializer }, align 32
@snd_card_emu10k1_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 168, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"can't initialize Emu10k1 wavetable synth\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_card_emu10k1_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/pci/emu10k1/emu10k1.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_card_emu10k1_probe._entry_ptr = internal global ptr @snd_card_emu10k1_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Emu-10k1 Synth\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s (rev.%d, serial:0x%x) at 0x%lx, irq %i\00", [54 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.9 = private unnamed_addr constant [15 x i8] c"emu10k1_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 252, i32 26 }
@___asan_gen_.12 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 27, i32 12 }
@___asan_gen_.15 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 28, i32 14 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 29, i32 13 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"extin\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 30, i32 12 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"extout\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 31, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant [10 x i8] c"seq_ports\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 32, i32 12 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"max_synth_voices\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 33, i32 12 }
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"max_buffer_size\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 34, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant [10 x i8] c"enable_ir\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 35, i32 13 }
@___asan_gen_.39 = private unnamed_addr constant [10 x i8] c"subsystem\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 36, i32 13 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"delay_pcm_irq\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 37, i32 13 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 261, i32 1 }
@___asan_gen_.48 = private unnamed_addr constant [16 x i8] c"snd_emu10k1_ids\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 64, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"snd_emu10k1_pm\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 246, i32 8 }
@___asan_gen_.54 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 87, i32 13 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 164, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 167, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 172, i32 22 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [31 x i8] c"../sound/pci/emu10k1/emu10k1.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 185, i32 4 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_delay_pcm_irq267, ptr @__UNIQUE_ID_delay_pcm_irqtype266, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_enable251, ptr @__UNIQUE_ID_enable_ir263, ptr @__UNIQUE_ID_enable_irtype262, ptr @__UNIQUE_ID_enabletype250, ptr @__UNIQUE_ID_extin253, ptr @__UNIQUE_ID_extintype252, ptr @__UNIQUE_ID_extout255, ptr @__UNIQUE_ID_extouttype254, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_license245, ptr @__UNIQUE_ID_max_buffer_size261, ptr @__UNIQUE_ID_max_buffer_sizetype260, ptr @__UNIQUE_ID_max_synth_voices259, ptr @__UNIQUE_ID_max_synth_voicestype258, ptr @__UNIQUE_ID_seq_ports257, ptr @__UNIQUE_ID_seq_portstype256, ptr @__UNIQUE_ID_subsystem265, ptr @__UNIQUE_ID_subsystemtype264, ptr @__exitcall_emu10k1_driver_exit, ptr @__initcall__kmod_snd_emu10k1__268_261_emu10k1_driver_init6, ptr @__param_delay_pcm_irq, ptr @__param_enable, ptr @__param_enable_ir, ptr @__param_extin, ptr @__param_extout, ptr @__param_id, ptr @__param_index, ptr @__param_max_buffer_size, ptr @__param_max_synth_voices, ptr @__param_seq_ports, ptr @__param_subsystem, ptr @emu10k1_driver_exit, ptr @snd_card_emu10k1_probe._entry, ptr @snd_card_emu10k1_probe._entry_ptr, ptr @emu10k1_driver, ptr @index, ptr @id, ptr @enable, ptr @extin, ptr @extout, ptr @seq_ports, ptr @max_synth_voices, ptr @max_buffer_size, ptr @enable_ir, ptr @subsystem, ptr @delay_pcm_irq, ptr @.str, ptr @snd_emu10k1_ids, ptr @snd_emu10k1_pm, ptr @snd_card_emu10k1_probe.dev, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu10k1_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extin to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extout to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_ports to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_synth_voices to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_buffer_size to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_ir to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @subsystem to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay_pcm_irq to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_ids to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_card_emu10k1_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_card_emu10k1_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @emu10k1_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @emu10k1_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @emu10k1_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @emu10k1_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_card_emu10k1_probe(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #2 align 64 {
entry:
  %card = alloca ptr, align 4
  %wave = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #6
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !141
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wave) #6
  %1 = ptrtoint ptr %wave to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %wave, align 4
  %2 = load i32, ptr @snd_card_emu10k1_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %2)
  %cmp = icmp sgt i32 %2, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end2

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

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
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %6, ptr noundef %8, ptr noundef null, i32 noundef 7256, ptr noundef nonnull %card) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_data, align 8
  %13 = load i32, ptr @snd_card_emu10k1_probe.dev, align 4
  %arrayidx8 = getelementptr [32 x i32], ptr @max_buffer_size, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %15)
  %cmp9 = icmp slt i32 %15, 32
  br i1 %cmp9, label %if.end7.if.end17.sink.split_crit_edge, label %if.else

if.end7.if.end17.sink.split_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.sink.split

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %15)
  %cmp13 = icmp ugt i32 %15, 1024
  br i1 %cmp13, label %if.else.if.end17.sink.split_crit_edge, label %if.else.if.end17_crit_edge

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.else.if.end17.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.sink.split

if.end17.sink.split:                              ; preds = %if.else.if.end17.sink.split_crit_edge, %if.end7.if.end17.sink.split_crit_edge
  %.sink = phi i32 [ 32, %if.end7.if.end17.sink.split_crit_edge ], [ 1024, %if.else.if.end17.sink.split_crit_edge ]
  %16 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %arrayidx8, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %if.else.if.end17_crit_edge
  %arrayidx18 = getelementptr [32 x i32], ptr @extin, i32 0, i32 %13
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx18, align 4
  %conv = trunc i32 %18 to i16
  %arrayidx19 = getelementptr [32 x i32], ptr @extout, i32 0, i32 %13
  %19 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx19, align 4
  %conv20 = trunc i32 %20 to i16
  %21 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx8, align 4
  %mul22 = shl i32 %22, 20
  %arrayidx23 = getelementptr [32 x i8], ptr @enable_ir, i32 0, i32 %13
  %23 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx23, align 1, !range !142
  %25 = zext i8 %24 to i32
  %arrayidx26 = getelementptr [32 x i32], ptr @subsystem, i32 0, i32 %13
  %26 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx26, align 4
  %call27 = call i32 @snd_emu10k1_create(ptr noundef %10, ptr noundef %pci, i16 noundef zeroext %conv, i16 noundef zeroext %conv20, i32 noundef %mul22, i32 noundef %25, i32 noundef %27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end17.cleanup_crit_edge, label %if.end31

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end31:                                         ; preds = %if.end17
  %28 = load i32, ptr @snd_card_emu10k1_probe.dev, align 4
  %arrayidx32 = getelementptr [32 x i32], ptr @delay_pcm_irq, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx32, align 4
  %and = and i32 %30, 31
  %delay_pcm_irq = getelementptr inbounds %struct.snd_emu10k1, ptr %12, i32 0, i32 13
  %31 = ptrtoint ptr %delay_pcm_irq to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and, ptr %delay_pcm_irq, align 4
  %call33 = call i32 @snd_emu10k1_pcm(ptr noundef %12, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end31.cleanup_crit_edge, label %if.end37

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %if.end31
  %call38 = call i32 @snd_emu10k1_pcm_mic(ptr noundef %12, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.end37.cleanup_crit_edge, label %if.end42

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end42:                                         ; preds = %if.end37
  %call43 = call i32 @snd_emu10k1_pcm_efx(ptr noundef %12, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.end42.cleanup_crit_edge, label %if.end47

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end47:                                         ; preds = %if.end42
  %card_capabilities = getelementptr inbounds %struct.snd_emu10k1, ptr %12, i32 0, i32 3
  %32 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %card_capabilities, align 4
  %ca0151_chip = getelementptr inbounds %struct.snd_emu_chip_details, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %ca0151_chip to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ca0151_chip, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool48.not = icmp eq i8 %35, 0
  br i1 %tobool48.not, label %if.end47.if.end56_crit_edge, label %if.then49

if.end47.if.end56_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then49:                                        ; preds = %if.end47
  %call.i = call ptr @snd_devm_alloc_dir_pages(ptr noundef %dev, i32 noundef 2, i32 noundef 0, i32 noundef 1024) #6
  %p16v_buffer = getelementptr inbounds %struct.snd_emu10k1, ptr %12, i32 0, i32 18
  %36 = ptrtoint ptr %p16v_buffer to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %p16v_buffer, align 4
  %tobool53.not = icmp eq ptr %call.i, null
  br i1 %tobool53.not, label %if.then49.cleanup_crit_edge, label %if.then49.if.end56_crit_edge

if.then49.if.end56_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end56:                                         ; preds = %if.then49.if.end56_crit_edge, %if.end47.if.end56_crit_edge
  %call57 = call i32 @snd_emu10k1_mixer(ptr noundef %12, i32 noundef 0, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.end56.cleanup_crit_edge, label %if.end61

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end61:                                         ; preds = %if.end56
  %call62 = call i32 @snd_emu10k1_timer(ptr noundef %12, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.end61.cleanup_crit_edge, label %if.end66

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end66:                                         ; preds = %if.end61
  %call67 = call i32 @snd_emu10k1_pcm_multi(ptr noundef %12, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.end66.cleanup_crit_edge, label %if.end71

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end71:                                         ; preds = %if.end66
  %37 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %card_capabilities, align 4
  %ca0151_chip73 = getelementptr inbounds %struct.snd_emu_chip_details, ptr %38, i32 0, i32 9
  %39 = ptrtoint ptr %ca0151_chip73 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ca0151_chip73, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool74.not = icmp eq i8 %40, 0
  br i1 %tobool74.not, label %if.end71.if.end81_crit_edge, label %if.then75

if.end71.if.end81_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.then75:                                        ; preds = %if.end71
  %call76 = call i32 @snd_p16v_pcm(ptr noundef %12, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %if.then75.cleanup_crit_edge, label %if.then75.if.end81_crit_edge

if.then75.if.end81_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.then75.cleanup_crit_edge:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end81:                                         ; preds = %if.then75.if.end81_crit_edge, %if.end71.if.end81_crit_edge
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %12, i32 0, i32 4
  %41 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool82.not = icmp eq i32 %42, 0
  br i1 %tobool82.not, label %if.else89, label %if.then83

if.then83:                                        ; preds = %if.end81
  %call84 = call i32 @snd_emu10k1_audigy_midi(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %if.then83.cleanup_crit_edge, label %if.then83.if.end95_crit_edge

if.then83.if.end95_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

if.then83.cleanup_crit_edge:                      ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else89:                                        ; preds = %if.end81
  %call90 = call i32 @snd_emu10k1_midi(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.else89.cleanup_crit_edge, label %if.else89.if.end95_crit_edge

if.else89.if.end95_crit_edge:                     ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

if.else89.cleanup_crit_edge:                      ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end95:                                         ; preds = %if.else89.if.end95_crit_edge, %if.then83.if.end95_crit_edge
  %call96 = call i32 @snd_emu10k1_fx8010_new(ptr noundef %12, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %if.end95.cleanup_crit_edge, label %if.end100

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end100:                                        ; preds = %if.end95
  %43 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %card, align 4
  %call101 = call i32 @snd_seq_device_new(ptr noundef %44, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 16, ptr noundef nonnull %wave) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %if.end100.do.end_crit_edge, label %lor.lhs.false

if.end100.do.end_crit_edge:                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end100
  %45 = ptrtoint ptr %wave to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wave, align 4
  %cmp104 = icmp eq ptr %46, null
  br i1 %cmp104, label %lor.lhs.false.do.end_crit_edge, label %if.else109

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end100.do.end_crit_edge
  %card107 = getelementptr inbounds %struct.snd_emu10k1, ptr %12, i32 0, i32 32
  %47 = ptrtoint ptr %card107 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %card107, align 4
  %dev108 = getelementptr inbounds %struct.snd_card, ptr %48, i32 0, i32 27
  %49 = ptrtoint ptr %dev108 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev108, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.2) #9
  br label %if.end113

if.else109:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %46, i32 1040
  %name = getelementptr inbounds %struct.snd_seq_device, ptr %46, i32 0, i32 3
  %51 = call ptr @memcpy(ptr %name, ptr @.str.7, i32 15)
  %52 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %12, ptr %add.ptr, align 4
  %index = getelementptr i8, ptr %46, i32 1044
  %53 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %index, align 4
  %54 = load i32, ptr @snd_card_emu10k1_probe.dev, align 4
  %arrayidx111 = getelementptr [32 x i32], ptr @seq_ports, i32 0, i32 %54
  %55 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx111, align 4
  %seq_ports = getelementptr i8, ptr %46, i32 1048
  %57 = ptrtoint ptr %seq_ports to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %seq_ports, align 4
  %58 = load i32, ptr @snd_card_emu10k1_probe.dev, align 4
  %arrayidx112 = getelementptr [32 x i32], ptr @max_synth_voices, i32 0, i32 %58
  %59 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx112, align 4
  %max_voices = getelementptr i8, ptr %46, i32 1052
  %61 = ptrtoint ptr %max_voices to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %max_voices, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.else109, %do.end
  %62 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %card_capabilities, align 4
  %driver116 = getelementptr inbounds %struct.snd_emu_chip_details, ptr %65, i32 0, i32 20
  %66 = ptrtoint ptr %driver116 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %driver116, align 4
  %call117 = call i32 @strscpy(ptr noundef %driver, ptr noundef %67, i32 noundef 16) #6
  %68 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %card, align 4
  %shortname = getelementptr inbounds %struct.snd_card, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %card_capabilities, align 4
  %name120 = getelementptr inbounds %struct.snd_emu_chip_details, ptr %71, i32 0, i32 21
  %72 = ptrtoint ptr %name120 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %name120, align 4
  %call121 = call i32 @strscpy(ptr noundef %shortname, ptr noundef %73, i32 noundef 32) #6
  %74 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %75, i32 0, i32 4
  %shortname123 = getelementptr inbounds %struct.snd_card, ptr %75, i32 0, i32 3
  %revision = getelementptr inbounds %struct.snd_emu10k1, ptr %12, i32 0, i32 5
  %76 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %revision, align 4
  %serial = getelementptr inbounds %struct.snd_emu10k1, ptr %12, i32 0, i32 6
  %78 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %serial, align 4
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %12, i32 0, i32 1
  %80 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %port, align 4
  %82 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %12, align 4
  %call125 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %longname, i32 noundef 80, ptr noundef nonnull @.str.8, ptr noundef %shortname123, i32 noundef %77, i32 noundef %79, i32 noundef %81, i32 noundef %83)
  %84 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %card, align 4
  %call126 = call i32 @snd_card_register(ptr noundef %85) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %cmp127 = icmp slt i32 %call126, 0
  br i1 %cmp127, label %if.end113.cleanup_crit_edge, label %if.end130

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end130:                                        ; preds = %if.end113
  %86 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %card_capabilities, align 4
  %emu_model = getelementptr inbounds %struct.snd_emu_chip_details, ptr %87, i32 0, i32 15
  %88 = ptrtoint ptr %emu_model to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %emu_model, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool132.not = icmp eq i8 %89, 0
  br i1 %tobool132.not, label %if.end130.if.end135_crit_edge, label %if.then133

if.end130.if.end135_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

if.then133:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #8
  %firmware_work = getelementptr inbounds %struct.snd_emu10k1, ptr %12, i32 0, i32 52, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %90 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %90, ptr noundef %firmware_work, i32 noundef 0) #6
  br label %if.end135

if.end135:                                        ; preds = %if.then133, %if.end130.if.end135_crit_edge
  %91 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %93 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %driver_data.i.i, align 4
  %94 = load i32, ptr @snd_card_emu10k1_probe.dev, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end135, %if.end.cleanup.sink.split_crit_edge
  %.sink198 = phi i32 [ %94, %if.end135 ], [ %2, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.end135 ], [ -2, %if.end.cleanup.sink.split_crit_edge ]
  %inc136 = add i32 %.sink198, 1
  store i32 %inc136, ptr @snd_card_emu10k1_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end113.cleanup_crit_edge, %if.end95.cleanup_crit_edge, %if.else89.cleanup_crit_edge, %if.then83.cleanup_crit_edge, %if.then75.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.then49.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ %call27, %if.end17.cleanup_crit_edge ], [ %call33, %if.end31.cleanup_crit_edge ], [ %call38, %if.end37.cleanup_crit_edge ], [ %call43, %if.end42.cleanup_crit_edge ], [ -12, %if.then49.cleanup_crit_edge ], [ %call57, %if.end56.cleanup_crit_edge ], [ %call62, %if.end61.cleanup_crit_edge ], [ %call67, %if.end66.cleanup_crit_edge ], [ %call76, %if.then75.cleanup_crit_edge ], [ %call84, %if.then83.cleanup_crit_edge ], [ %call90, %if.else89.cleanup_crit_edge ], [ %call96, %if.end95.cleanup_crit_edge ], [ %call126, %if.end113.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wave) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_create(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_pcm(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_pcm_mic(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_pcm_efx(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_mixer(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_pcm_multi(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_p16v_pcm(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_audigy_midi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_midi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_fx8010_new(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_device_new(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_devm_alloc_dir_pages(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  %suspend = getelementptr inbounds %struct.snd_emu10k1, ptr %3, i32 0, i32 86
  %5 = ptrtoint ptr %suspend to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %suspend, align 4
  %firmware_work = getelementptr inbounds %struct.snd_emu10k1, ptr %3, i32 0, i32 52, i32 7
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %firmware_work) #6
  %ac97 = getelementptr inbounds %struct.snd_emu10k1, ptr %3, i32 0, i32 30
  %6 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_suspend(ptr noundef %7) #6
  tail call void @snd_emu10k1_efx_suspend(ptr noundef %3) #6
  tail call void @snd_emu10k1_suspend_regs(ptr noundef %3) #6
  %card_capabilities = getelementptr inbounds %struct.snd_emu10k1, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card_capabilities, align 4
  %ca0151_chip = getelementptr inbounds %struct.snd_emu_chip_details, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %ca0151_chip to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ca0151_chip, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_p16v_suspend(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2 = tail call i32 @snd_emu10k1_done(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_emu10k1_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  tail call void @snd_emu10k1_resume_init(ptr noundef %3) #6
  tail call void @snd_emu10k1_efx_resume(ptr noundef %3) #6
  %ac97 = getelementptr inbounds %struct.snd_emu10k1, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ac97, align 4
  tail call void @snd_ac97_resume(ptr noundef %5) #6
  tail call void @snd_emu10k1_resume_regs(ptr noundef %3) #6
  %card_capabilities = getelementptr inbounds %struct.snd_emu10k1, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card_capabilities, align 4
  %ca0151_chip = getelementptr inbounds %struct.snd_emu_chip_details, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %ca0151_chip to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ca0151_chip, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_p16v_resume(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %suspend = getelementptr inbounds %struct.snd_emu10k1, ptr %3, i32 0, i32 86
  %10 = ptrtoint ptr %suspend to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %suspend, align 4
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %11 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  %12 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card_capabilities, align 4
  %emu_model = getelementptr inbounds %struct.snd_emu_chip_details, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %emu_model to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %emu_model, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool2.not = icmp eq i8 %15, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %firmware_work = getelementptr inbounds %struct.snd_emu10k1, ptr %3, i32 0, i32 52, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %firmware_work, i32 noundef 0) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_efx_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_suspend_regs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_p16v_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_emu10k1_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_resume_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_efx_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_emu10k1_resume_regs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_p16v_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !40, !42, !44, !45, !47, !49, !50, !52, !54, !55, !57, !59, !60, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !112, !114, !116, !118, !120, !121, !122, !123, !124, !125, !126, !128, !130}
!llvm.module.flags = !{!132, !133, !134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 18, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 19, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 20, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 39, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype246, !8, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index247, !11, !"__UNIQUE_ID_index247", i1 false, i1 false}
!11 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 40, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 41, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype248, !13, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id249, !16, !"__UNIQUE_ID_id249", i1 false, i1 false}
!16 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 42, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 43, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype250, !18, !"__UNIQUE_ID_enabletype250", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable251, !21, !"__UNIQUE_ID_enable251", i1 false, i1 false}
!21 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 44, i32 1}
!22 = !{ptr @__param_extin, !23, !"__param_extin", i1 false, i1 false}
!23 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 45, i32 1}
!24 = !{ptr @__UNIQUE_ID_extintype252, !23, !"__UNIQUE_ID_extintype252", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_extin253, !26, !"__UNIQUE_ID_extin253", i1 false, i1 false}
!26 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 46, i32 1}
!27 = !{ptr @__param_extout, !28, !"__param_extout", i1 false, i1 false}
!28 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 47, i32 1}
!29 = !{ptr @__UNIQUE_ID_extouttype254, !28, !"__UNIQUE_ID_extouttype254", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_extout255, !31, !"__UNIQUE_ID_extout255", i1 false, i1 false}
!31 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 48, i32 1}
!32 = !{ptr @__param_seq_ports, !33, !"__param_seq_ports", i1 false, i1 false}
!33 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 49, i32 1}
!34 = !{ptr @__UNIQUE_ID_seq_portstype256, !33, !"__UNIQUE_ID_seq_portstype256", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_seq_ports257, !36, !"__UNIQUE_ID_seq_ports257", i1 false, i1 false}
!36 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 50, i32 1}
!37 = !{ptr @__param_max_synth_voices, !38, !"__param_max_synth_voices", i1 false, i1 false}
!38 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 51, i32 1}
!39 = !{ptr @__UNIQUE_ID_max_synth_voicestype258, !38, !"__UNIQUE_ID_max_synth_voicestype258", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_max_synth_voices259, !41, !"__UNIQUE_ID_max_synth_voices259", i1 false, i1 false}
!41 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 52, i32 1}
!42 = !{ptr @__param_max_buffer_size, !43, !"__param_max_buffer_size", i1 false, i1 false}
!43 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 53, i32 1}
!44 = !{ptr @__UNIQUE_ID_max_buffer_sizetype260, !43, !"__UNIQUE_ID_max_buffer_sizetype260", i1 false, i1 false}
!45 = !{ptr @__UNIQUE_ID_max_buffer_size261, !46, !"__UNIQUE_ID_max_buffer_size261", i1 false, i1 false}
!46 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 54, i32 1}
!47 = !{ptr @__param_enable_ir, !48, !"__param_enable_ir", i1 false, i1 false}
!48 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 55, i32 1}
!49 = !{ptr @__UNIQUE_ID_enable_irtype262, !48, !"__UNIQUE_ID_enable_irtype262", i1 false, i1 false}
!50 = !{ptr @__UNIQUE_ID_enable_ir263, !51, !"__UNIQUE_ID_enable_ir263", i1 false, i1 false}
!51 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 56, i32 1}
!52 = !{ptr @__param_subsystem, !53, !"__param_subsystem", i1 false, i1 false}
!53 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 57, i32 1}
!54 = !{ptr @__UNIQUE_ID_subsystemtype264, !53, !"__UNIQUE_ID_subsystemtype264", i1 false, i1 false}
!55 = !{ptr @__UNIQUE_ID_subsystem265, !56, !"__UNIQUE_ID_subsystem265", i1 false, i1 false}
!56 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 58, i32 1}
!57 = !{ptr @__param_delay_pcm_irq, !58, !"__param_delay_pcm_irq", i1 false, i1 false}
!58 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 59, i32 1}
!59 = !{ptr @__UNIQUE_ID_delay_pcm_irqtype266, !58, !"__UNIQUE_ID_delay_pcm_irqtype266", i1 false, i1 false}
!60 = !{ptr @__UNIQUE_ID_delay_pcm_irq267, !61, !"__UNIQUE_ID_delay_pcm_irq267", i1 false, i1 false}
!61 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 60, i32 1}
!62 = !{ptr @__initcall__kmod_snd_emu10k1__268_261_emu10k1_driver_init6, !63, !"__initcall__kmod_snd_emu10k1__268_261_emu10k1_driver_init6", i1 false, i1 false}
!63 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 261, i32 1}
!64 = !{ptr @__exitcall_emu10k1_driver_exit, !63, !"__exitcall_emu10k1_driver_exit", i1 false, i1 false}
!65 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!66 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!67 = !{ptr @index, !68, !"index", i1 false, i1 false}
!68 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 27, i32 12}
!69 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!70 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!71 = !{ptr @id, !72, !"id", i1 false, i1 false}
!72 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 28, i32 14}
!73 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!74 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!75 = !{ptr @enable, !76, !"enable", i1 false, i1 false}
!76 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 29, i32 13}
!77 = !{ptr @__param_str_extin, !23, !"__param_str_extin", i1 false, i1 false}
!78 = !{ptr @__param_arr_extin, !23, !"__param_arr_extin", i1 false, i1 false}
!79 = !{ptr @extin, !80, !"extin", i1 false, i1 false}
!80 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 30, i32 12}
!81 = !{ptr @__param_str_extout, !28, !"__param_str_extout", i1 false, i1 false}
!82 = !{ptr @__param_arr_extout, !28, !"__param_arr_extout", i1 false, i1 false}
!83 = !{ptr @extout, !84, !"extout", i1 false, i1 false}
!84 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 31, i32 12}
!85 = !{ptr @__param_str_seq_ports, !33, !"__param_str_seq_ports", i1 false, i1 false}
!86 = !{ptr @__param_arr_seq_ports, !33, !"__param_arr_seq_ports", i1 false, i1 false}
!87 = !{ptr @seq_ports, !88, !"seq_ports", i1 false, i1 false}
!88 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 32, i32 12}
!89 = !{ptr @__param_str_max_synth_voices, !38, !"__param_str_max_synth_voices", i1 false, i1 false}
!90 = !{ptr @__param_arr_max_synth_voices, !38, !"__param_arr_max_synth_voices", i1 false, i1 false}
!91 = !{ptr @max_synth_voices, !92, !"max_synth_voices", i1 false, i1 false}
!92 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 33, i32 12}
!93 = !{ptr @__param_str_max_buffer_size, !43, !"__param_str_max_buffer_size", i1 false, i1 false}
!94 = !{ptr @__param_arr_max_buffer_size, !43, !"__param_arr_max_buffer_size", i1 false, i1 false}
!95 = !{ptr @max_buffer_size, !96, !"max_buffer_size", i1 false, i1 false}
!96 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 34, i32 12}
!97 = !{ptr @__param_str_enable_ir, !48, !"__param_str_enable_ir", i1 false, i1 false}
!98 = !{ptr @__param_arr_enable_ir, !48, !"__param_arr_enable_ir", i1 false, i1 false}
!99 = !{ptr @enable_ir, !100, !"enable_ir", i1 false, i1 false}
!100 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 35, i32 13}
!101 = !{ptr @__param_str_subsystem, !53, !"__param_str_subsystem", i1 false, i1 false}
!102 = !{ptr @__param_arr_subsystem, !53, !"__param_arr_subsystem", i1 false, i1 false}
!103 = !{ptr @subsystem, !104, !"subsystem", i1 false, i1 false}
!104 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 36, i32 13}
!105 = !{ptr @__param_str_delay_pcm_irq, !58, !"__param_str_delay_pcm_irq", i1 false, i1 false}
!106 = !{ptr @__param_arr_delay_pcm_irq, !58, !"__param_arr_delay_pcm_irq", i1 false, i1 false}
!107 = !{ptr @delay_pcm_irq, !108, !"delay_pcm_irq", i1 false, i1 false}
!108 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 37, i32 13}
!109 = !{ptr @.str, !63, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @emu10k1_driver, !111, !"emu10k1_driver", i1 false, i1 false}
!111 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 252, i32 26}
!112 = !{ptr @snd_emu10k1_ids, !113, !"snd_emu10k1_ids", i1 false, i1 false}
!113 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 64, i32 35}
!114 = !{ptr @snd_card_emu10k1_probe.dev, !115, !"dev", i1 false, i1 false}
!115 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 87, i32 13}
!116 = !{ptr @.str.1, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 164, i32 34}
!118 = !{ptr @.str.2, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 167, i32 3}
!120 = !{ptr @.str.3, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.4, !119, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.5, !119, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.6, !119, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @snd_card_emu10k1_probe._entry, !119, !"_entry", i1 false, i1 false}
!125 = !{ptr @snd_card_emu10k1_probe._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.7, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 172, i32 22}
!128 = !{ptr @.str.8, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 185, i32 4}
!130 = !{ptr @snd_emu10k1_pm, !131, !"snd_emu10k1_pm", i1 false, i1 false}
!131 = !{!"../sound/pci/emu10k1/emu10k1.c", i32 246, i32 8}
!132 = !{i32 1, !"wchar_size", i32 2}
!133 = !{i32 1, !"min_enum_size", i32 4}
!134 = !{i32 8, !"branch-target-enforcement", i32 0}
!135 = !{i32 8, !"sign-return-address", i32 0}
!136 = !{i32 8, !"sign-return-address-all", i32 0}
!137 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!138 = !{i32 7, !"uwtable", i32 1}
!139 = !{i32 7, !"frame-pointer", i32 2}
!140 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!141 = !{!"auto-init"}
!142 = !{i8 0, i8 2}
