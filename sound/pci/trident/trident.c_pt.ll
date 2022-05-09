; ModuleID = '/llk/IR_all_yes/sound/pci/trident/trident.c_pt.bc'
source_filename = "../sound/pci/trident/trident.c"
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
%struct.snd_trident = type { i32, i32, i8, i32, i32, i32, i32, %struct.snd_trident_tlb, i8, i8, i32, i32, ptr, i32, [2 x i32], i32, i32, i8, %struct.snd_4dwave, %struct.spinlock, %struct.spinlock, %struct.snd_dma_device, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [32 x %struct.snd_trident_pcm_mixer], ptr, ptr, ptr, ptr, %struct.spinlock, ptr }
%struct.snd_trident_tlb = type { ptr, i32, ptr, ptr, ptr }
%struct.snd_4dwave = type { i32, [4 x %struct.snd_trident_port], [64 x %struct.snd_trident_voice], i32, i32, i32 }
%struct.snd_trident_port = type { ptr, ptr, i32, i32, i32, i8 }
%struct.snd_trident_voice = type { i32, i8, i32, i8, i8, i8, ptr, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_trident_pcm_mixer = type { ptr, i16, i8, i8, i8, i8 }

@__UNIQUE_ID_author242 = internal constant [78 x i8] c"snd_trident.author=Jaroslav Kysela <perex@perex.cz>, <audio@tridentmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [58 x i8] c"snd_trident.description=Trident 4D-WaveDX/NX & SiS SI7018\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [47 x i8] c"snd_trident.file=sound/pci/trident/snd-trident\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [24 x i8] c"snd_trident.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [18 x i8] c"snd_trident.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [40 x i8] c"snd_trident.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [69 x i8] c"snd_trident.parm=index:Index value for Trident 4DWave PCI soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [15 x i8] c"snd_trident.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [39 x i8] c"snd_trident.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [64 x i8] c"snd_trident.parm=id:ID string for Trident 4DWave PCI soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [19 x i8] c"snd_trident.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype250 = internal constant [42 x i8] c"snd_trident.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable251 = internal constant [61 x i8] c"snd_trident.parm=enable:Enable Trident 4DWave PCI soundcard.\00", section ".modinfo", align 1
@__param_str_pcm_channels = internal constant [25 x i8] c"snd_trident.pcm_channels\00", align 1
@__param_arr_pcm_channels = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @pcm_channels }, align 4
@__param_pcm_channels = internal constant %struct.kernel_param { ptr @__param_str_pcm_channels, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_pcm_channels } }, section "__param", align 4
@__UNIQUE_ID_pcm_channelstype252 = internal constant [47 x i8] c"snd_trident.parmtype=pcm_channels:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_pcm_channels253 = internal constant [76 x i8] c"snd_trident.parm=pcm_channels:Number of hardware channels assigned for PCM.\00", section ".modinfo", align 1
@__param_str_wavetable_size = internal constant [27 x i8] c"snd_trident.wavetable_size\00", align 1
@__param_arr_wavetable_size = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @wavetable_size }, align 4
@__param_wavetable_size = internal constant %struct.kernel_param { ptr @__param_str_wavetable_size, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_wavetable_size } }, section "__param", align 4
@__UNIQUE_ID_wavetable_sizetype254 = internal constant [49 x i8] c"snd_trident.parmtype=wavetable_size:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_wavetable_size255 = internal constant [79 x i8] c"snd_trident.parm=wavetable_size:Maximum memory size in kB for wavetable synth.\00", section ".modinfo", align 1
@__initcall__kmod_snd_trident__256_148_trident_driver_init6 = internal global ptr @trident_driver_init, section ".initcall6.init", align 4
@trident_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_trident_ids, ptr @snd_trident_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_trident_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_trident_driver_exit = internal global ptr @trident_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@pcm_channels = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32], [32 x i8] zeroinitializer }, align 32
@wavetable_size = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192, i32 8192], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd_trident\00", [20 x i8] zeroinitializer }, align 32
@snd_trident_ids = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4131, i32 8192, i32 -1, i32 -1, i32 262400, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 4131, i32 8193, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4153, i32 28696, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_trident_pm = external dso_local constant %struct.dev_pm_ops, align 4
@snd_trident_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TRID4DWAVEDX\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TRID4DWAVENX\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SI7018\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SiS \00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Trident \00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s PCI Audio at 0x%lx, irq %d\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 270737408, i64 270737409, i64 272199704]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 270737409, i64 272199704]
@___asan_gen_.9 = private unnamed_addr constant [15 x i8] c"trident_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 137, i32 26 }
@___asan_gen_.12 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 21, i32 12 }
@___asan_gen_.15 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 22, i32 14 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 23, i32 13 }
@___asan_gen_.21 = private unnamed_addr constant [13 x i8] c"pcm_channels\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 24, i32 12 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"wavetable_size\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 25, i32 12 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 148, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"snd_trident_ids\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 38, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 52, i32 13 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 80, i32 9 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 83, i32 9 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 86, i32 9 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 89, i32 9 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 93, i32 27 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 95, i32 27 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [31 x i8] c"../sound/pci/trident/trident.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 98, i32 26 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_enable251, ptr @__UNIQUE_ID_enabletype250, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_license245, ptr @__UNIQUE_ID_pcm_channels253, ptr @__UNIQUE_ID_pcm_channelstype252, ptr @__UNIQUE_ID_wavetable_size255, ptr @__UNIQUE_ID_wavetable_sizetype254, ptr @__exitcall_trident_driver_exit, ptr @__initcall__kmod_snd_trident__256_148_trident_driver_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @__param_pcm_channels, ptr @__param_wavetable_size, ptr @trident_driver_exit, ptr @trident_driver, ptr @index, ptr @id, ptr @enable, ptr @pcm_channels, ptr @wavetable_size, ptr @.str, ptr @snd_trident_ids, ptr @snd_trident_probe.dev, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trident_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_channels to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wavetable_size to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_ids to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_trident_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @trident_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @trident_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @trident_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @trident_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_trident_probe(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #2 align 64 {
entry:
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #6
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !85
  %1 = load i32, ptr @snd_trident_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp = icmp sgt i32 %1, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end2

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

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
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %5, ptr noundef %7, ptr noundef null, i32 noundef 7704, ptr noundef nonnull %card) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 8
  %12 = load i32, ptr @snd_trident_probe.dev, align 4
  %arrayidx8 = getelementptr [32 x i32], ptr @pcm_channels, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx8, align 4
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 7
  %15 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vendor, align 8
  %conv = zext i16 %16 to i32
  %shl = shl nuw i32 %conv, 16
  %device = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 8
  %17 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %device, align 2
  %conv9 = zext i16 %18 to i32
  %or = or i32 %shl, %conv9
  call void @__sanitizer_cov_trace_const_cmp4(i32 272199704, i32 %or)
  %cmp10 = icmp eq i32 %or, 272199704
  %cond = select i1 %cmp10, i32 1, i32 2
  %arrayidx12 = getelementptr [32 x i32], ptr @wavetable_size, i32 0, i32 %12
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx12, align 4
  %call13 = call i32 @snd_trident_create(ptr noundef %9, ptr noundef %pci, i32 noundef %14, i32 noundef %cond, i32 noundef %20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end7.cleanup_crit_edge, label %if.end17

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  %device18 = getelementptr inbounds %struct.snd_trident, ptr %11, i32 0, i32 1
  %21 = ptrtoint ptr %device18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %device18, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %sw.default [
    i32 270737408, label %if.end17.sw.epilog_crit_edge
    i32 270737409, label %sw.bb19
    i32 272199704, label %sw.bb20
  ]

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb20, %sw.bb19, %if.end17.sw.epilog_crit_edge
  %str.0 = phi ptr [ @.str.4, %sw.default ], [ @.str.3, %sw.bb20 ], [ @.str.2, %sw.bb19 ], [ @.str.1, %if.end17.sw.epilog_crit_edge ]
  %24 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %25, i32 0, i32 2
  %call21 = call ptr @strcpy(ptr noundef %driver, ptr noundef nonnull %str.0) #9
  %26 = ptrtoint ptr %device18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %device18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272199704, i32 %27)
  %cmp23 = icmp eq i32 %27, 272199704
  %shortname = getelementptr inbounds %struct.snd_card, ptr %25, i32 0, i32 3
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %28 = call ptr @memcpy(ptr %shortname, ptr @.str.5, i32 5)
  br label %if.end31

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %29 = call ptr @memcpy(ptr %shortname, ptr @.str.6, i32 9)
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then25
  %shortname32 = getelementptr inbounds %struct.snd_card, ptr %25, i32 0, i32 3
  %call34 = call ptr @strcat(ptr noundef %shortname32, ptr noundef nonnull %str.0)
  %longname = getelementptr inbounds %struct.snd_card, ptr %25, i32 0, i32 4
  %port = getelementptr inbounds %struct.snd_trident, ptr %11, i32 0, i32 3
  %30 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port, align 4
  %32 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %11, align 4
  %call38 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.7, ptr noundef %shortname32, i32 noundef %31, i32 noundef %33)
  %call40 = call i32 @snd_trident_pcm(ptr noundef %11, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.end31.cleanup_crit_edge, label %if.end44

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end44:                                         ; preds = %if.end31
  %34 = ptrtoint ptr %device18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %device18, align 4
  %36 = and i32 %35, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 270737408, i32 %36)
  %switch = icmp eq i32 %36, 270737408
  br i1 %switch, label %sw.bb46, label %if.end44.sw.epilog53_crit_edge

if.end44.sw.epilog53_crit_edge:                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog53

sw.bb46:                                          ; preds = %if.end44
  %call48 = call i32 @snd_trident_foldback_pcm(ptr noundef %11, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %sw.bb46.cleanup_crit_edge, label %sw.epilog53thread-pre-split

sw.bb46.cleanup_crit_edge:                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog53thread-pre-split:                      ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %device18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr = load i32, ptr %device18, align 4
  br label %sw.epilog53

sw.epilog53:                                      ; preds = %sw.epilog53thread-pre-split, %if.end44.sw.epilog53_crit_edge
  %38 = phi i32 [ %.pr, %sw.epilog53thread-pre-split ], [ %35, %if.end44.sw.epilog53_crit_edge ]
  %pcm_dev.0 = phi i32 [ 2, %sw.epilog53thread-pre-split ], [ 1, %if.end44.sw.epilog53_crit_edge ]
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %38, label %sw.epilog53.if.end67_crit_edge [
    i32 270737409, label %sw.epilog53.if.then60_crit_edge
    i32 272199704, label %sw.epilog53.if.then60_crit_edge123
  ]

sw.epilog53.if.then60_crit_edge123:               ; preds = %sw.epilog53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then60

sw.epilog53.if.then60_crit_edge:                  ; preds = %sw.epilog53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then60

sw.epilog53.if.end67_crit_edge:                   ; preds = %sw.epilog53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then60:                                        ; preds = %sw.epilog53.if.then60_crit_edge, %sw.epilog53.if.then60_crit_edge123
  %call62 = call i32 @snd_trident_spdif_pcm(ptr noundef %11, i32 noundef %pcm_dev.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.then60.cleanup_crit_edge, label %if.then60.if.end67_crit_edge

if.then60.if.end67_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end67:                                         ; preds = %if.then60.if.end67_crit_edge, %sw.epilog53.if.end67_crit_edge
  %40 = ptrtoint ptr %device18 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %device18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272199704, i32 %41)
  %cmp69.not = icmp eq i32 %41, 272199704
  br i1 %cmp69.not, label %if.end67.if.end77_crit_edge, label %if.then71

if.end67.if.end77_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then71:                                        ; preds = %if.end67
  %42 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %card, align 4
  %midi_port = getelementptr inbounds %struct.snd_trident, ptr %11, i32 0, i32 4
  %44 = ptrtoint ptr %midi_port to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %midi_port, align 4
  %rmidi = getelementptr inbounds %struct.snd_trident, ptr %11, i32 0, i32 27
  %call72 = call i32 @snd_mpu401_uart_new(ptr noundef %43, i32 noundef 0, i16 noundef zeroext 9, i32 noundef %45, i32 noundef 36, i32 noundef -1, ptr noundef %rmidi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.then71.cleanup_crit_edge, label %if.then71.if.end77_crit_edge

if.then71.if.end77_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then71.cleanup_crit_edge:                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end77:                                         ; preds = %if.then71.if.end77_crit_edge, %if.end67.if.end77_crit_edge
  %call78 = call i32 @snd_trident_create_gameport(ptr noundef %11) #6
  %46 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %card, align 4
  %call79 = call i32 @snd_card_register(ptr noundef %47) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %if.end77.cleanup_crit_edge, label %if.end83

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end83:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %50 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %driver_data.i.i, align 4
  %51 = load i32, ptr @snd_trident_probe.dev, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end83, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %51, %if.end83 ], [ %1, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.end83 ], [ -2, %if.end.cleanup.sink.split_crit_edge ]
  %inc84 = add i32 %.sink, 1
  store i32 %inc84, ptr @snd_trident_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end77.cleanup_crit_edge, %if.then71.cleanup_crit_edge, %if.then60.cleanup_crit_edge, %sw.bb46.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ %call13, %if.end7.cleanup_crit_edge ], [ %call40, %if.end31.cleanup_crit_edge ], [ %call48, %sw.bb46.cleanup_crit_edge ], [ %call62, %if.then60.cleanup_crit_edge ], [ %call72, %if.then71.cleanup_crit_edge ], [ %call79, %if.end77.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_trident_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_trident_pcm(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_trident_foldback_pcm(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_trident_spdif_pcm(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mpu401_uart_new(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_trident_create_gameport(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/trident/trident.c", i32 17, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/trident/trident.c", i32 18, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/trident/trident.c", i32 19, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/trident/trident.c", i32 27, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype246, !8, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index247, !11, !"__UNIQUE_ID_index247", i1 false, i1 false}
!11 = !{!"../sound/pci/trident/trident.c", i32 28, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/trident/trident.c", i32 29, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype248, !13, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id249, !16, !"__UNIQUE_ID_id249", i1 false, i1 false}
!16 = !{!"../sound/pci/trident/trident.c", i32 30, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/pci/trident/trident.c", i32 31, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype250, !18, !"__UNIQUE_ID_enabletype250", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable251, !21, !"__UNIQUE_ID_enable251", i1 false, i1 false}
!21 = !{!"../sound/pci/trident/trident.c", i32 32, i32 1}
!22 = !{ptr @__param_pcm_channels, !23, !"__param_pcm_channels", i1 false, i1 false}
!23 = !{!"../sound/pci/trident/trident.c", i32 33, i32 1}
!24 = !{ptr @__UNIQUE_ID_pcm_channelstype252, !23, !"__UNIQUE_ID_pcm_channelstype252", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_pcm_channels253, !26, !"__UNIQUE_ID_pcm_channels253", i1 false, i1 false}
!26 = !{!"../sound/pci/trident/trident.c", i32 34, i32 1}
!27 = !{ptr @__param_wavetable_size, !28, !"__param_wavetable_size", i1 false, i1 false}
!28 = !{!"../sound/pci/trident/trident.c", i32 35, i32 1}
!29 = !{ptr @__UNIQUE_ID_wavetable_sizetype254, !28, !"__UNIQUE_ID_wavetable_sizetype254", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_wavetable_size255, !31, !"__UNIQUE_ID_wavetable_size255", i1 false, i1 false}
!31 = !{!"../sound/pci/trident/trident.c", i32 36, i32 1}
!32 = !{ptr @__initcall__kmod_snd_trident__256_148_trident_driver_init6, !33, !"__initcall__kmod_snd_trident__256_148_trident_driver_init6", i1 false, i1 false}
!33 = !{!"../sound/pci/trident/trident.c", i32 148, i32 1}
!34 = !{ptr @__exitcall_trident_driver_exit, !33, !"__exitcall_trident_driver_exit", i1 false, i1 false}
!35 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!36 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!37 = !{ptr @index, !38, !"index", i1 false, i1 false}
!38 = !{!"../sound/pci/trident/trident.c", i32 21, i32 12}
!39 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!40 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!41 = !{ptr @id, !42, !"id", i1 false, i1 false}
!42 = !{!"../sound/pci/trident/trident.c", i32 22, i32 14}
!43 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!44 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!45 = !{ptr @enable, !46, !"enable", i1 false, i1 false}
!46 = !{!"../sound/pci/trident/trident.c", i32 23, i32 13}
!47 = !{ptr @__param_str_pcm_channels, !23, !"__param_str_pcm_channels", i1 false, i1 false}
!48 = !{ptr @__param_arr_pcm_channels, !23, !"__param_arr_pcm_channels", i1 false, i1 false}
!49 = !{ptr @pcm_channels, !50, !"pcm_channels", i1 false, i1 false}
!50 = !{!"../sound/pci/trident/trident.c", i32 24, i32 12}
!51 = !{ptr @__param_str_wavetable_size, !28, !"__param_str_wavetable_size", i1 false, i1 false}
!52 = !{ptr @__param_arr_wavetable_size, !28, !"__param_arr_wavetable_size", i1 false, i1 false}
!53 = !{ptr @wavetable_size, !54, !"wavetable_size", i1 false, i1 false}
!54 = !{!"../sound/pci/trident/trident.c", i32 25, i32 12}
!55 = !{ptr @.str, !33, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @trident_driver, !57, !"trident_driver", i1 false, i1 false}
!57 = !{!"../sound/pci/trident/trident.c", i32 137, i32 26}
!58 = !{ptr @snd_trident_ids, !59, !"snd_trident_ids", i1 false, i1 false}
!59 = !{!"../sound/pci/trident/trident.c", i32 38, i32 35}
!60 = !{ptr @snd_trident_probe.dev, !61, !"dev", i1 false, i1 false}
!61 = !{!"../sound/pci/trident/trident.c", i32 52, i32 13}
!62 = !{ptr @.str.1, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/pci/trident/trident.c", i32 80, i32 9}
!64 = !{ptr @.str.2, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/pci/trident/trident.c", i32 83, i32 9}
!66 = !{ptr @.str.3, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/pci/trident/trident.c", i32 86, i32 9}
!68 = !{ptr @.str.4, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/pci/trident/trident.c", i32 89, i32 9}
!70 = !{ptr @.str.5, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/pci/trident/trident.c", i32 93, i32 27}
!72 = !{ptr @.str.6, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/pci/trident/trident.c", i32 95, i32 27}
!74 = !{ptr @.str.7, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/pci/trident/trident.c", i32 98, i32 26}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{!"auto-init"}
!86 = !{i8 0, i8 2}
