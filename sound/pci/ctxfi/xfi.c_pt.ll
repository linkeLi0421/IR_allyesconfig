; ModuleID = '/llk/IR_all_yes/sound/pci/ctxfi/xfi.c_pt.bc'
source_filename = "../sound/pci/ctxfi/xfi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.71 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.ct_atc = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, ptr, ptr, ptr, [5 x ptr] }

@__UNIQUE_ID_author238 = internal constant [41 x i8] c"snd_ctxfi.author=Creative Technology Ltd\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [47 x i8] c"snd_ctxfi.description=X-Fi driver version 1.03\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [41 x i8] c"snd_ctxfi.file=sound/pci/ctxfi/snd-ctxfi\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [25 x i8] c"snd_ctxfi.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_reference_rate242 = internal constant [61 x i8] c"snd_ctxfi.parm=reference_rate:Reference rate (default=48000)\00", section ".modinfo", align 1
@__param_str_reference_rate = internal constant [25 x i8] c"snd_ctxfi.reference_rate\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@reference_rate = internal global { i32, [28 x i8] } { i32 48000, [28 x i8] zeroinitializer }, align 32
@__param_reference_rate = internal constant %struct.kernel_param { ptr @__param_str_reference_rate, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @reference_rate } }, section "__param", align 4
@__UNIQUE_ID_reference_ratetype243 = internal constant [39 x i8] c"snd_ctxfi.parmtype=reference_rate:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_multiple244 = internal constant [52 x i8] c"snd_ctxfi.parm=multiple:Rate multiplier (default=2)\00", section ".modinfo", align 1
@__param_str_multiple = internal constant [19 x i8] c"snd_ctxfi.multiple\00", align 1
@multiple = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_multiple = internal constant %struct.kernel_param { ptr @__param_str_multiple, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @multiple } }, section "__param", align 4
@__UNIQUE_ID_multipletype245 = internal constant [33 x i8] c"snd_ctxfi.parmtype=multiple:uint\00", section ".modinfo", align 1
@__param_str_index = internal constant [16 x i8] c"snd_ctxfi.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [38 x i8] c"snd_ctxfi.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [58 x i8] c"snd_ctxfi.parm=index:Index value for Creative X-Fi driver\00", section ".modinfo", align 1
@__param_str_id = internal constant [13 x i8] c"snd_ctxfi.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [37 x i8] c"snd_ctxfi.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [53 x i8] c"snd_ctxfi.parm=id:ID string for Creative X-Fi driver\00", section ".modinfo", align 1
@__param_str_enable = internal constant [17 x i8] c"snd_ctxfi.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype250 = internal constant [40 x i8] c"snd_ctxfi.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable251 = internal constant [50 x i8] c"snd_ctxfi.parm=enable:Enable Creative X-Fi driver\00", section ".modinfo", align 1
@__param_str_subsystem = internal constant [20 x i8] c"snd_ctxfi.subsystem\00", align 1
@__param_arr_subsystem = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @subsystem }, align 4
@__param_subsystem = internal constant %struct.kernel_param { ptr @__param_str_subsystem, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_subsystem } }, section "__param", align 4
@__UNIQUE_ID_subsystemtype252 = internal constant [42 x i8] c"snd_ctxfi.parmtype=subsystem:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_subsystem253 = internal constant [72 x i8] c"snd_ctxfi.parm=subsystem:Override subsystem ID for Creative X-Fi driver\00", section ".modinfo", align 1
@__initcall__kmod_snd_ctxfi__254_158_ct_driver_init6 = internal global ptr @ct_driver_init, section ".initcall6.init", align 4
@ct_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @ct_pci_dev_ids, ptr @ct_card_probe, ptr @ct_card_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ct_card_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ct_driver_exit = internal global ptr @ct_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@subsystem = internal global { [32 x i32], [32 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snd_ctxfi\00", [22 x i8] zeroinitializer }, align 32
@ct_pci_dev_ids = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4354, i32 5, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4354, i32 11, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ct_card_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ct_card_suspend, ptr @ct_card_resume, ptr @ct_card_suspend, ptr @ct_card_resume, ptr @ct_card_suspend, ptr @ct_card_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ct_card_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ct_card_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 77, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid reference_rate value %u!!!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ct_card_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sound/pci/ctxfi/xfi.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ct_card_probe._entry_ptr = internal global ptr @ct_card_probe._entry, section ".printk_index", align 4
@ct_card_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 79, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"The valid values for reference_rate are 48000 and 44100, Value 48000 is assumed.\0A\00", [46 x i8] zeroinitializer }, align 32
@ct_card_probe._entry_ptr.8 = internal global ptr @ct_card_probe._entry.6, section ".printk_index", align 4
@ct_card_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 84, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid multiple value %u!!!\0A\00", [34 x i8] zeroinitializer }, align 32
@ct_card_probe._entry_ptr.11 = internal global ptr @ct_card_probe._entry.9, section ".printk_index", align 4
@ct_card_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 86, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"The valid values for multiple are 1, 2 and 4, Value 2 is assumed.\0A\00", [61 x i8] zeroinitializer }, align 32
@ct_card_probe._entry_ptr.14 = internal global ptr @ct_card_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SB-XFi\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Creative X-Fi\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s %s %s\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"reference_rate\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 22, i32 21 }
@___asan_gen_.22 = private unnamed_addr constant [9 x i8] c"multiple\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 23, i32 21 }
@___asan_gen_.25 = private unnamed_addr constant [10 x i8] c"ct_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 148, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 29, i32 12 }
@___asan_gen_.31 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 30, i32 14 }
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 31, i32 13 }
@___asan_gen_.37 = private unnamed_addr constant [10 x i8] c"subsystem\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 32, i32 21 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 158, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"ct_pci_dev_ids\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 43, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant [11 x i8] c"ct_card_pm\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 142, i32 8 }
@___asan_gen_.49 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 58, i32 13 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 75, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 78, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 83, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 85, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 101, i32 23 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 102, i32 26 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private constant [25 x i8] c"../sound/pci/ctxfi/xfi.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 103, i32 51 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_enable251, ptr @__UNIQUE_ID_enabletype250, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_license241, ptr @__UNIQUE_ID_multiple244, ptr @__UNIQUE_ID_multipletype245, ptr @__UNIQUE_ID_reference_rate242, ptr @__UNIQUE_ID_reference_ratetype243, ptr @__UNIQUE_ID_subsystem253, ptr @__UNIQUE_ID_subsystemtype252, ptr @__exitcall_ct_driver_exit, ptr @__initcall__kmod_snd_ctxfi__254_158_ct_driver_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @__param_multiple, ptr @__param_reference_rate, ptr @__param_subsystem, ptr @ct_card_probe._entry, ptr @ct_card_probe._entry.12, ptr @ct_card_probe._entry.6, ptr @ct_card_probe._entry.9, ptr @ct_card_probe._entry_ptr, ptr @ct_card_probe._entry_ptr.11, ptr @ct_card_probe._entry_ptr.14, ptr @ct_card_probe._entry_ptr.8, ptr @ct_driver_exit, ptr @reference_rate, ptr @multiple, ptr @ct_driver, ptr @index, ptr @id, ptr @enable, ptr @subsystem, ptr @.str, ptr @ct_pci_dev_ids, ptr @ct_card_pm, ptr @ct_card_probe.dev, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reference_rate to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multiple to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @subsystem to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_pci_dev_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_card_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_card_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_card_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_card_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_card_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_card_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ct_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @ct_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ct_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @ct_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ct_card_probe(ptr noundef %pci, ptr nocapture noundef readonly %pci_id) #2 align 64 {
entry:
  %card = alloca ptr, align 4
  %atc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #6
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !106
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %atc) #6
  %1 = ptrtoint ptr %atc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %atc, align 4, !annotation !106
  %2 = load i32, ptr @ct_card_probe.dev, align 4
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
  %4 = load i8, ptr %arrayidx, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr @ct_card_probe.dev, align 4
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
  %call = call i32 @snd_card_new(ptr noundef %dev, i32 noundef %6, ptr noundef %8, ptr noundef null, i32 noundef 0, ptr noundef nonnull %card) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %9 = load i32, ptr @reference_rate, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.end [
    i32 48000, label %if.end7.if.end16_crit_edge
    i32 44100, label %if.end7.if.end16_crit_edge65
  ]

if.end7.if.end16_crit_edge65:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card, align 4
  %dev11 = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev11, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.1, i32 noundef %9) #9
  %15 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card, align 4
  %dev15 = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev15, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.7) #9
  store i32 48000, ptr @reference_rate, align 4
  br label %if.end16

if.end16:                                         ; preds = %do.end, %if.end7.if.end16_crit_edge, %if.end7.if.end16_crit_edge65
  %19 = load i32, ptr @multiple, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %19, label %do.end25 [
    i32 1, label %if.end16.if.end31_crit_edge
    i32 2, label %if.end16.if.end31_crit_edge66
    i32 4, label %if.end16.if.end31_crit_edge67
  ]

if.end16.if.end31_crit_edge67:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end16.if.end31_crit_edge66:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end16.if.end31_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

do.end25:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card, align 4
  %dev26 = getelementptr inbounds %struct.snd_card, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev26, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.10, i32 noundef %19) #9
  %25 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card, align 4
  %dev30 = getelementptr inbounds %struct.snd_card, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev30, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.13) #9
  store i32 2, ptr @multiple, align 4
  br label %if.end31

if.end31:                                         ; preds = %do.end25, %if.end16.if.end31_crit_edge, %if.end16.if.end31_crit_edge66, %if.end16.if.end31_crit_edge67
  %29 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %card, align 4
  %31 = load i32, ptr @reference_rate, align 4
  %32 = load i32, ptr @multiple, align 4
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %pci_id, i32 0, i32 6
  %33 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %driver_data, align 4
  %35 = load i32, ptr @ct_card_probe.dev, align 4
  %arrayidx32 = getelementptr [32 x i32], ptr @subsystem, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx32, align 4
  %call33 = call i32 @ct_atc_create(ptr noundef %30, ptr noundef %pci, i32 noundef %31, i32 noundef %32, i32 noundef %34, i32 noundef %37, ptr noundef nonnull %atc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end31.error_crit_edge, label %if.end36

if.end31.error_crit_edge:                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end36:                                         ; preds = %if.end31
  %38 = ptrtoint ptr %atc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %atc, align 4
  %40 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %private_data, align 8
  %call37 = call i32 @ct_atc_create_alsa_devs(ptr noundef %39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end36.error_crit_edge, label %if.end40

if.end36.error_crit_edge:                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end40:                                         ; preds = %if.end36
  %43 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %44, i32 0, i32 2
  %45 = call ptr @memcpy(ptr %driver, ptr @.str.15, i32 7)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %44, i32 0, i32 3
  %46 = call ptr @memcpy(ptr %shortname, ptr @.str.16, i32 14)
  %longname = getelementptr inbounds %struct.snd_card, ptr %44, i32 0, i32 4
  %47 = ptrtoint ptr %atc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %atc, align 4
  %chip_name = getelementptr inbounds %struct.ct_atc, ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %chip_name to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chip_name, align 4
  %model_name = getelementptr inbounds %struct.ct_atc, ptr %48, i32 0, i32 8
  %51 = ptrtoint ptr %model_name to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %model_name, align 4
  %call47 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %longname, i32 noundef 80, ptr noundef nonnull @.str.17, ptr noundef %shortname, ptr noundef %50, ptr noundef %52)
  %53 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %card, align 4
  %call48 = call i32 @snd_card_register(ptr noundef %54) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.end40.error_crit_edge, label %if.end51

if.end40.error_crit_edge:                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end51:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %57 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %driver_data.i.i, align 4
  %58 = load i32, ptr @ct_card_probe.dev, align 4
  %inc52 = add i32 %58, 1
  store i32 %inc52, ptr @ct_card_probe.dev, align 4
  br label %cleanup

error:                                            ; preds = %if.end40.error_crit_edge, %if.end36.error_crit_edge, %if.end31.error_crit_edge
  %err.0 = phi i32 [ %call33, %if.end31.error_crit_edge ], [ %call37, %if.end36.error_crit_edge ], [ %call48, %if.end40.error_crit_edge ]
  %59 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %card, align 4
  %call53 = call i32 @snd_card_free(ptr noundef %60) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end51, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ 0, %if.end51 ], [ -2, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %atc) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ct_card_remove(ptr nocapture noundef readonly %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @snd_card_free(ptr noundef %1) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ct_atc_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ct_atc_create_alsa_devs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ct_card_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %suspend = getelementptr inbounds %struct.ct_atc, ptr %3, i32 0, i32 55
  %4 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %suspend, align 4
  %call1 = tail call i32 %5(ptr noundef %3) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ct_card_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %resume = getelementptr inbounds %struct.ct_atc, ptr %3, i32 0, i32 56
  %4 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resume, align 4
  %call1 = tail call i32 %5(ptr noundef %3) #6
  ret i32 %call1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !40, !41, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !65, !67, !69, !71, !72, !73, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !93, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__UNIQUE_ID_author238, !1, !"__UNIQUE_ID_author238", i1 false, i1 false}
!1 = !{!"../sound/pci/ctxfi/xfi.c", i32 18, i32 1}
!2 = !{ptr @__UNIQUE_ID_description239, !3, !"__UNIQUE_ID_description239", i1 false, i1 false}
!3 = !{!"../sound/pci/ctxfi/xfi.c", i32 19, i32 1}
!4 = !{ptr @__UNIQUE_ID_file240, !5, !"__UNIQUE_ID_file240", i1 false, i1 false}
!5 = !{!"../sound/pci/ctxfi/xfi.c", i32 20, i32 1}
!6 = !{ptr @__UNIQUE_ID_license241, !5, !"__UNIQUE_ID_license241", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_reference_rate242, !8, !"__UNIQUE_ID_reference_rate242", i1 false, i1 false}
!8 = !{!"../sound/pci/ctxfi/xfi.c", i32 24, i32 1}
!9 = !{ptr @__param_reference_rate, !10, !"__param_reference_rate", i1 false, i1 false}
!10 = !{!"../sound/pci/ctxfi/xfi.c", i32 25, i32 1}
!11 = !{ptr @__UNIQUE_ID_reference_ratetype243, !10, !"__UNIQUE_ID_reference_ratetype243", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_multiple244, !13, !"__UNIQUE_ID_multiple244", i1 false, i1 false}
!13 = !{!"../sound/pci/ctxfi/xfi.c", i32 26, i32 1}
!14 = !{ptr @__param_multiple, !15, !"__param_multiple", i1 false, i1 false}
!15 = !{!"../sound/pci/ctxfi/xfi.c", i32 27, i32 1}
!16 = !{ptr @__UNIQUE_ID_multipletype245, !15, !"__UNIQUE_ID_multipletype245", i1 false, i1 false}
!17 = !{ptr @__param_index, !18, !"__param_index", i1 false, i1 false}
!18 = !{!"../sound/pci/ctxfi/xfi.c", i32 34, i32 1}
!19 = !{ptr @__UNIQUE_ID_indextype246, !18, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_index247, !21, !"__UNIQUE_ID_index247", i1 false, i1 false}
!21 = !{!"../sound/pci/ctxfi/xfi.c", i32 35, i32 1}
!22 = !{ptr @__param_id, !23, !"__param_id", i1 false, i1 false}
!23 = !{!"../sound/pci/ctxfi/xfi.c", i32 36, i32 1}
!24 = !{ptr @__UNIQUE_ID_idtype248, !23, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_id249, !26, !"__UNIQUE_ID_id249", i1 false, i1 false}
!26 = !{!"../sound/pci/ctxfi/xfi.c", i32 37, i32 1}
!27 = !{ptr @__param_enable, !28, !"__param_enable", i1 false, i1 false}
!28 = !{!"../sound/pci/ctxfi/xfi.c", i32 38, i32 1}
!29 = !{ptr @__UNIQUE_ID_enabletype250, !28, !"__UNIQUE_ID_enabletype250", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_enable251, !31, !"__UNIQUE_ID_enable251", i1 false, i1 false}
!31 = !{!"../sound/pci/ctxfi/xfi.c", i32 39, i32 1}
!32 = !{ptr @__param_subsystem, !33, !"__param_subsystem", i1 false, i1 false}
!33 = !{!"../sound/pci/ctxfi/xfi.c", i32 40, i32 1}
!34 = !{ptr @__UNIQUE_ID_subsystemtype252, !33, !"__UNIQUE_ID_subsystemtype252", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_subsystem253, !36, !"__UNIQUE_ID_subsystem253", i1 false, i1 false}
!36 = !{!"../sound/pci/ctxfi/xfi.c", i32 41, i32 1}
!37 = !{ptr @__initcall__kmod_snd_ctxfi__254_158_ct_driver_init6, !38, !"__initcall__kmod_snd_ctxfi__254_158_ct_driver_init6", i1 false, i1 false}
!38 = !{!"../sound/pci/ctxfi/xfi.c", i32 158, i32 1}
!39 = !{ptr @__exitcall_ct_driver_exit, !38, !"__exitcall_ct_driver_exit", i1 false, i1 false}
!40 = !{ptr @__param_str_reference_rate, !10, !"__param_str_reference_rate", i1 false, i1 false}
!41 = !{ptr @reference_rate, !42, !"reference_rate", i1 false, i1 false}
!42 = !{!"../sound/pci/ctxfi/xfi.c", i32 22, i32 21}
!43 = !{ptr @__param_str_multiple, !15, !"__param_str_multiple", i1 false, i1 false}
!44 = !{ptr @multiple, !45, !"multiple", i1 false, i1 false}
!45 = !{!"../sound/pci/ctxfi/xfi.c", i32 23, i32 21}
!46 = !{ptr @__param_str_index, !18, !"__param_str_index", i1 false, i1 false}
!47 = !{ptr @__param_arr_index, !18, !"__param_arr_index", i1 false, i1 false}
!48 = !{ptr @index, !49, !"index", i1 false, i1 false}
!49 = !{!"../sound/pci/ctxfi/xfi.c", i32 29, i32 12}
!50 = !{ptr @__param_str_id, !23, !"__param_str_id", i1 false, i1 false}
!51 = !{ptr @__param_arr_id, !23, !"__param_arr_id", i1 false, i1 false}
!52 = !{ptr @id, !53, !"id", i1 false, i1 false}
!53 = !{!"../sound/pci/ctxfi/xfi.c", i32 30, i32 14}
!54 = !{ptr @__param_str_enable, !28, !"__param_str_enable", i1 false, i1 false}
!55 = !{ptr @__param_arr_enable, !28, !"__param_arr_enable", i1 false, i1 false}
!56 = !{ptr @enable, !57, !"enable", i1 false, i1 false}
!57 = !{!"../sound/pci/ctxfi/xfi.c", i32 31, i32 13}
!58 = !{ptr @__param_str_subsystem, !33, !"__param_str_subsystem", i1 false, i1 false}
!59 = !{ptr @__param_arr_subsystem, !33, !"__param_arr_subsystem", i1 false, i1 false}
!60 = !{ptr @subsystem, !61, !"subsystem", i1 false, i1 false}
!61 = !{!"../sound/pci/ctxfi/xfi.c", i32 32, i32 21}
!62 = !{ptr @.str, !38, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @ct_driver, !64, !"ct_driver", i1 false, i1 false}
!64 = !{!"../sound/pci/ctxfi/xfi.c", i32 148, i32 26}
!65 = !{ptr @ct_pci_dev_ids, !66, !"ct_pci_dev_ids", i1 false, i1 false}
!66 = !{!"../sound/pci/ctxfi/xfi.c", i32 43, i32 35}
!67 = !{ptr @ct_card_probe.dev, !68, !"dev", i1 false, i1 false}
!68 = !{!"../sound/pci/ctxfi/xfi.c", i32 58, i32 13}
!69 = !{ptr @.str.1, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/pci/ctxfi/xfi.c", i32 75, i32 3}
!71 = !{ptr @.str.2, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.3, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.4, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.5, !70, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @ct_card_probe._entry, !70, !"_entry", i1 false, i1 false}
!76 = !{ptr @ct_card_probe._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.7, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/pci/ctxfi/xfi.c", i32 78, i32 3}
!79 = !{ptr @ct_card_probe._entry.6, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @ct_card_probe._entry_ptr.8, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.10, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/pci/ctxfi/xfi.c", i32 83, i32 3}
!83 = !{ptr @ct_card_probe._entry.9, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @ct_card_probe._entry_ptr.11, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.13, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/pci/ctxfi/xfi.c", i32 85, i32 3}
!87 = !{ptr @ct_card_probe._entry.12, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @ct_card_probe._entry_ptr.14, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.15, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/pci/ctxfi/xfi.c", i32 101, i32 23}
!91 = !{ptr @.str.16, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/pci/ctxfi/xfi.c", i32 102, i32 26}
!93 = !{ptr @.str.17, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/pci/ctxfi/xfi.c", i32 103, i32 51}
!95 = !{ptr @ct_card_pm, !96, !"ct_card_pm", i1 false, i1 false}
!96 = !{!"../sound/pci/ctxfi/xfi.c", i32 142, i32 8}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{!"auto-init"}
!107 = !{i8 0, i8 2}
