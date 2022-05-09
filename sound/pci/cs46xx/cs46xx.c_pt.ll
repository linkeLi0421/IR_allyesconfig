; ModuleID = '/llk/IR_all_yes/sound/pci/cs46xx/cs46xx.c_pt.bc'
source_filename = "../sound/pci/cs46xx/cs46xx.c"
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
%struct.snd_cs46xx = type { i32, i32, i32, %union.anon.74, i32, %struct.anon.76, i32, ptr, [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.mutex, ptr, ptr, ptr, ptr, [5 x ptr], ptr }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { %struct.snd_cs46xx_region, %struct.snd_cs46xx_region, %struct.snd_cs46xx_region, %struct.snd_cs46xx_region, %struct.snd_cs46xx_region }
%struct.snd_cs46xx_region = type { [24 x i8], i32, ptr, i32 }
%struct.anon.76 = type { %struct.snd_dma_buffer, i32, i32, %struct.snd_pcm_indirect, ptr }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_indirect = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author242 = internal constant [51 x i8] c"snd_cs46xx.author=Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [56 x i8] c"snd_cs46xx.description=Cirrus Logic Sound Fusion CS46XX\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [44 x i8] c"snd_cs46xx.file=sound/pci/cs46xx/snd-cs46xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [23 x i8] c"snd_cs46xx.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [17 x i8] c"snd_cs46xx.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [39 x i8] c"snd_cs46xx.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [60 x i8] c"snd_cs46xx.parm=index:Index value for the CS46xx soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [14 x i8] c"snd_cs46xx.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [38 x i8] c"snd_cs46xx.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [55 x i8] c"snd_cs46xx.parm=id:ID string for the CS46xx soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [18 x i8] c"snd_cs46xx.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype250 = internal constant [41 x i8] c"snd_cs46xx.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable251 = internal constant [48 x i8] c"snd_cs46xx.parm=enable:Enable CS46xx soundcard.\00", section ".modinfo", align 1
@__param_str_external_amp = internal constant [24 x i8] c"snd_cs46xx.external_amp\00", align 1
@__param_arr_external_amp = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @external_amp }, align 4
@__param_external_amp = internal constant %struct.kernel_param { ptr @__param_str_external_amp, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_external_amp } }, section "__param", align 4
@__UNIQUE_ID_external_amptype252 = internal constant [47 x i8] c"snd_cs46xx.parmtype=external_amp:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_external_amp253 = internal constant [65 x i8] c"snd_cs46xx.parm=external_amp:Force to enable external amplifier.\00", section ".modinfo", align 1
@__param_str_thinkpad = internal constant [20 x i8] c"snd_cs46xx.thinkpad\00", align 1
@__param_arr_thinkpad = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @thinkpad }, align 4
@__param_thinkpad = internal constant %struct.kernel_param { ptr @__param_str_thinkpad, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_thinkpad } }, section "__param", align 4
@__UNIQUE_ID_thinkpadtype254 = internal constant [43 x i8] c"snd_cs46xx.parmtype=thinkpad:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_thinkpad255 = internal constant [68 x i8] c"snd_cs46xx.parm=thinkpad:Force to enable Thinkpad's CLKRUN control.\00", section ".modinfo", align 1
@__param_str_mmap_valid = internal constant [22 x i8] c"snd_cs46xx.mmap_valid\00", align 1
@__param_arr_mmap_valid = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @mmap_valid }, align 4
@__param_mmap_valid = internal constant %struct.kernel_param { ptr @__param_str_mmap_valid, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_mmap_valid } }, section "__param", align 4
@__UNIQUE_ID_mmap_validtype256 = internal constant [45 x i8] c"snd_cs46xx.parmtype=mmap_valid:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_mmap_valid257 = internal constant [45 x i8] c"snd_cs46xx.parm=mmap_valid:Support OSS mmap.\00", section ".modinfo", align 1
@__initcall__kmod_snd_cs46xx__258_138_cs46xx_driver_init6 = internal global ptr @cs46xx_driver_init, section ".initcall6.init", align 4
@cs46xx_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_cs46xx_ids, ptr @snd_card_cs46xx_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_cs46xx_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_cs46xx_driver_exit = internal global ptr @cs46xx_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@external_amp = internal global { [32 x i8], [32 x i8] } zeroinitializer, align 32
@thinkpad = internal global { [32 x i8], [32 x i8] } zeroinitializer, align 32
@mmap_valid = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snd_cs46xx\00", [21 x i8] zeroinitializer }, align 32
@snd_cs46xx_ids = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4115, i32 24577, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4115, i32 24579, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4115, i32 24580, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_cs46xx_pm = external dso_local constant %struct.dev_pm_ops, align 4
@snd_card_cs46xx_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CS46xx\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Sound Fusion CS46xx\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s at 0x%lx/0x%lx, irq %i\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"cs46xx_driver\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 127, i32 26 }
@___asan_gen_.7 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 25, i32 12 }
@___asan_gen_.10 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 26, i32 14 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 27, i32 13 }
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"external_amp\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 28, i32 13 }
@___asan_gen_.19 = private unnamed_addr constant [9 x i8] c"thinkpad\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 29, i32 13 }
@___asan_gen_.22 = private unnamed_addr constant [11 x i8] c"mmap_valid\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 30, i32 13 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 138, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"snd_cs46xx_ids\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 45, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 57, i32 13 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 110, i32 23 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 111, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [29 x i8] c"../sound/pci/cs46xx/cs46xx.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 112, i32 26 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_enable251, ptr @__UNIQUE_ID_enabletype250, ptr @__UNIQUE_ID_external_amp253, ptr @__UNIQUE_ID_external_amptype252, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_license245, ptr @__UNIQUE_ID_mmap_valid257, ptr @__UNIQUE_ID_mmap_validtype256, ptr @__UNIQUE_ID_thinkpad255, ptr @__UNIQUE_ID_thinkpadtype254, ptr @__exitcall_cs46xx_driver_exit, ptr @__initcall__kmod_snd_cs46xx__258_138_cs46xx_driver_init6, ptr @__param_enable, ptr @__param_external_amp, ptr @__param_id, ptr @__param_index, ptr @__param_mmap_valid, ptr @__param_thinkpad, ptr @cs46xx_driver_exit, ptr @cs46xx_driver, ptr @index, ptr @id, ptr @enable, ptr @external_amp, ptr @thinkpad, ptr @mmap_valid, ptr @.str, ptr @snd_cs46xx_ids, ptr @snd_card_cs46xx_probe.dev, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs46xx_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @external_amp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thinkpad to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmap_valid to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs46xx_ids to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_card_cs46xx_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cs46xx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @cs46xx_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cs46xx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @cs46xx_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_card_cs46xx_probe(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #2 align 64 {
entry:
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #5
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !86
  %1 = load i32, ptr @snd_card_cs46xx_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp = icmp sgt i32 %1, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end2

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
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
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %5, ptr noundef %7, ptr noundef null, i32 noundef 548, ptr noundef nonnull %card) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 8
  %12 = load i32, ptr @snd_card_cs46xx_probe.dev, align 4
  %arrayidx8 = getelementptr [32 x i8], ptr @external_amp, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx8, align 1, !range !87
  %15 = zext i8 %14 to i32
  %arrayidx10 = getelementptr [32 x i8], ptr @thinkpad, i32 0, i32 %12
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx10, align 1, !range !87
  %18 = zext i8 %17 to i32
  %call13 = call i32 @snd_cs46xx_create(ptr noundef %9, ptr noundef %pci, i32 noundef %15, i32 noundef %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end7.cleanup_crit_edge, label %if.end17

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.end7
  %19 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card, align 4
  %private_data18 = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %private_data18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %11, ptr %private_data18, align 8
  %22 = load i32, ptr @snd_card_cs46xx_probe.dev, align 4
  %arrayidx19 = getelementptr [32 x i8], ptr @mmap_valid, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx19, align 1, !range !87
  %25 = zext i8 %24 to i32
  %accept_valid = getelementptr inbounds %struct.snd_cs46xx, ptr %11, i32 0, i32 24
  %26 = ptrtoint ptr %accept_valid to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %accept_valid, align 4
  %call22 = call i32 @snd_cs46xx_pcm(ptr noundef %11, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end17.cleanup_crit_edge, label %if.end26

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  %call27 = call i32 @snd_cs46xx_pcm_rear(ptr noundef %11, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end26.cleanup_crit_edge, label %if.end31

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %call32 = call i32 @snd_cs46xx_pcm_iec958(ptr noundef %11, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end31.cleanup_crit_edge, label %if.end36

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %call37 = call i32 @snd_cs46xx_mixer(ptr noundef %11, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end36.cleanup_crit_edge, label %if.end41

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end41:                                         ; preds = %if.end36
  %nr_ac97_codecs = getelementptr inbounds %struct.snd_cs46xx, ptr %11, i32 0, i32 6
  %27 = ptrtoint ptr %nr_ac97_codecs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr_ac97_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp42 = icmp eq i32 %28, 2
  br i1 %cmp42, label %if.then44, label %if.end41.if.end50_crit_edge

if.end41.if.end50_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then44:                                        ; preds = %if.end41
  %call45 = call i32 @snd_cs46xx_pcm_center_lfe(ptr noundef %11, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then44.cleanup_crit_edge, label %if.then44.if.end50_crit_edge

if.then44.if.end50_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end50:                                         ; preds = %if.then44.if.end50_crit_edge, %if.end41.if.end50_crit_edge
  %call51 = call i32 @snd_cs46xx_midi(ptr noundef %11, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.end50.cleanup_crit_edge, label %if.end55

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end55:                                         ; preds = %if.end50
  %call56 = call i32 @snd_cs46xx_start_dsp(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.end55.cleanup_crit_edge, label %if.end60

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end60:                                         ; preds = %if.end55
  %call61 = call i32 @snd_cs46xx_gameport(ptr noundef %11) #5
  %29 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %30, i32 0, i32 2
  %31 = call ptr @memcpy(ptr %driver, ptr @.str.1, i32 7)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %30, i32 0, i32 3
  %32 = call ptr @memcpy(ptr %shortname, ptr @.str.2, i32 20)
  %longname = getelementptr inbounds %struct.snd_card, ptr %30, i32 0, i32 4
  %ba0_addr = getelementptr inbounds %struct.snd_cs46xx, ptr %11, i32 0, i32 1
  %33 = ptrtoint ptr %ba0_addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ba0_addr, align 4
  %ba1_addr = getelementptr inbounds %struct.snd_cs46xx, ptr %11, i32 0, i32 2
  %35 = ptrtoint ptr %ba1_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ba1_addr, align 4
  %37 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %11, align 4
  %call68 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.3, ptr noundef %shortname, i32 noundef %34, i32 noundef %36, i32 noundef %38)
  %39 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %card, align 4
  %call69 = call i32 @snd_card_register(ptr noundef %40) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.end60.cleanup_crit_edge, label %if.end73

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end73:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %43 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %driver_data.i.i, align 4
  %44 = load i32, ptr @snd_card_cs46xx_probe.dev, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end73, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %44, %if.end73 ], [ %1, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.end73 ], [ -2, %if.end.cleanup.sink.split_crit_edge ]
  %inc74 = add i32 %.sink, 1
  store i32 %inc74, ptr @snd_card_cs46xx_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end60.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.then44.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ %call13, %if.end7.cleanup_crit_edge ], [ %call22, %if.end17.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ], [ %call32, %if.end31.cleanup_crit_edge ], [ %call37, %if.end36.cleanup_crit_edge ], [ %call45, %if.then44.cleanup_crit_edge ], [ %call51, %if.end50.cleanup_crit_edge ], [ %call56, %if.end55.cleanup_crit_edge ], [ %call69, %if.end60.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_cs46xx_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_cs46xx_pcm(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_cs46xx_pcm_rear(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_cs46xx_pcm_iec958(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_cs46xx_mixer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_cs46xx_pcm_center_lfe(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_cs46xx_midi(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_cs46xx_start_dsp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_cs46xx_gameport(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !67, !69, !71, !73, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/cs46xx/cs46xx.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/cs46xx/cs46xx.c", i32 22, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/cs46xx/cs46xx.c", i32 23, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/cs46xx/cs46xx.c", i32 32, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype246, !8, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index247, !11, !"__UNIQUE_ID_index247", i1 false, i1 false}
!11 = !{!"../sound/pci/cs46xx/cs46xx.c", i32 33, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/cs46xx/cs46xx.c", i32 34, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype248, !13, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id249, !16, !"__UNIQUE_ID_id249", i1 false, i1 false}
!16 = !{!"../sound/pci/cs46xx/cs46xx.c", i32 35, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/pci/cs46xx/cs46xx.c", i32 36, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype250, !18, !"__UNIQUE_ID_enabletype250", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable251, !21, !"__UNIQUE_ID_enable251", i1 false, i1 false}
!21 = !{!"../sound/pci/cs46xx/cs46xx.c", i32 37, i32 1}
!22 = !{ptr @__param_external_amp, !23, !"__param_external_amp", i1 false, i1 false}
!23 = !{!"../sound/pci/cs46xx/cs46xx.c", i32 38, i32 1}
!24 = !{ptr @__UNIQUE_ID_external_amptype252, !23, !"__UNIQUE_ID_external_amptype252", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_external_amp253, !26, !"__UNIQUE_ID_external_amp253", i1 false, i1 false}
!26 = !{!"../sound/pci/cs46xx/cs46xx.c", i32 39, i32 1}
!27 = !{ptr @__param_thinkpad, !28, !"__param_thinkpad", i1 false, i1 false}
!28 = !{!"../sound/pci/cs46xx/cs46xx.c", i32 40, i32 1}
!29 = !{ptr @__UNIQUE_ID_thinkpadtype254, !28, !"__UNIQUE_ID_thinkpadtype254", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_thinkpad255, !31, !"__UNIQUE_ID_thinkpad255", i1 false, i1 false}
!31 = !{!"../sound/pci/cs46xx/cs46xx.c", i32 41, i32 1}
!32 = !{ptr @__param_mmap_valid, !33, !"__param_mmap_valid", i1 false, i1 false}
!33 = !{!"../sound/pci/cs46xx/cs46xx.c", i32 42, i32 1}
!34 = !{ptr @__UNIQUE_ID_mmap_validtype256, !33, !"__UNIQUE_ID_mmap_validtype256", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_mmap_valid257, !36, !"__UNIQUE_ID_mmap_valid257", i1 false, i1 false}
!36 = !{!"../sound/pci/cs46xx/cs46xx.c", i32 43, i32 1}
!37 = !{ptr @__initcall__kmod_snd_cs46xx__258_138_cs46xx_driver_init6, !38, !"__initcall__kmod_snd_cs46xx__258_138_cs46xx_driver_init6", i1 false, i1 false}
!38 = !{!"../sound/pci/cs46xx/cs46xx.c", i32 138, i32 1}
!39 = !{ptr @__exitcall_cs46xx_driver_exit, !38, !"__exitcall_cs46xx_driver_exit", i1 false, i1 false}
!40 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!41 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!42 = !{ptr @index, !43, !"index", i1 false, i1 false}
!43 = !{!"../sound/pci/cs46xx/cs46xx.c", i32 25, i32 12}
!44 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!45 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!46 = !{ptr @id, !47, !"id", i1 false, i1 false}
!47 = !{!"../sound/pci/cs46xx/cs46xx.c", i32 26, i32 14}
!48 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!49 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!50 = !{ptr @enable, !51, !"enable", i1 false, i1 false}
!51 = !{!"../sound/pci/cs46xx/cs46xx.c", i32 27, i32 13}
!52 = !{ptr @__param_str_external_amp, !23, !"__param_str_external_amp", i1 false, i1 false}
!53 = !{ptr @__param_arr_external_amp, !23, !"__param_arr_external_amp", i1 false, i1 false}
!54 = !{ptr @external_amp, !55, !"external_amp", i1 false, i1 false}
!55 = !{!"../sound/pci/cs46xx/cs46xx.c", i32 28, i32 13}
!56 = !{ptr @__param_str_thinkpad, !28, !"__param_str_thinkpad", i1 false, i1 false}
!57 = !{ptr @__param_arr_thinkpad, !28, !"__param_arr_thinkpad", i1 false, i1 false}
!58 = !{ptr @thinkpad, !59, !"thinkpad", i1 false, i1 false}
!59 = !{!"../sound/pci/cs46xx/cs46xx.c", i32 29, i32 13}
!60 = !{ptr @__param_str_mmap_valid, !33, !"__param_str_mmap_valid", i1 false, i1 false}
!61 = !{ptr @__param_arr_mmap_valid, !33, !"__param_arr_mmap_valid", i1 false, i1 false}
!62 = !{ptr @mmap_valid, !63, !"mmap_valid", i1 false, i1 false}
!63 = !{!"../sound/pci/cs46xx/cs46xx.c", i32 30, i32 13}
!64 = !{ptr @.str, !38, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @cs46xx_driver, !66, !"cs46xx_driver", i1 false, i1 false}
!66 = !{!"../sound/pci/cs46xx/cs46xx.c", i32 127, i32 26}
!67 = !{ptr @snd_cs46xx_ids, !68, !"snd_cs46xx_ids", i1 false, i1 false}
!68 = !{!"../sound/pci/cs46xx/cs46xx.c", i32 45, i32 35}
!69 = !{ptr @snd_card_cs46xx_probe.dev, !70, !"dev", i1 false, i1 false}
!70 = !{!"../sound/pci/cs46xx/cs46xx.c", i32 57, i32 13}
!71 = !{ptr @.str.1, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/pci/cs46xx/cs46xx.c", i32 110, i32 23}
!73 = !{ptr @.str.2, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/pci/cs46xx/cs46xx.c", i32 111, i32 26}
!75 = !{ptr @.str.3, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/pci/cs46xx/cs46xx.c", i32 112, i32 26}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"auto-init"}
!87 = !{i8 0, i8 2}
