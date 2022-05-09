; ModuleID = '/llk/IR_all_yes/drivers/scsi/pcmcia/aha152x_stub.c_pt.bc'
source_filename = "../drivers/scsi/pcmcia/aha152x_stub.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pcmcia_device_id = type { i16, i16, i16, i8, i8, i8, [4 x i32], [4 x ptr], i32, ptr }
%struct.pcmcia_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pcmcia_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcmcia_dynids = type { %struct.mutex, %struct.list_head }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pcmcia_device = type { ptr, ptr, i8, i8, ptr, %struct.list_head, i32, [6 x ptr], i32, i32, i32, i32, i32, i32, i32, i16, i8, i16, i16, [4 x ptr], i64, %struct.device, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.scsi_info_t = type { ptr, ptr }
%struct.aha152x_setup = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__this_module = external dso_local global %struct.module, align 128
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@host_id = internal global { i32, [28 x i8] } { i32 7, [28 x i8] zeroinitializer }, align 32
@__param_host_id = internal constant %struct.kernel_param { ptr @___asan_gen_.19, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @host_id } }, section "__param", align 4
@__UNIQUE_ID_host_idtype287 = internal constant [21 x i8] c"parmtype=host_id:int\00", section ".modinfo", align 1
@reconnect = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_reconnect = internal constant %struct.kernel_param { ptr @___asan_gen_.22, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @reconnect } }, section "__param", align 4
@__UNIQUE_ID_reconnecttype288 = internal constant [23 x i8] c"parmtype=reconnect:int\00", section ".modinfo", align 1
@parity = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_parity = internal constant %struct.kernel_param { ptr @___asan_gen_.25, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @parity } }, section "__param", align 4
@__UNIQUE_ID_paritytype289 = internal constant [20 x i8] c"parmtype=parity:int\00", section ".modinfo", align 1
@synchronous = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_synchronous = internal constant %struct.kernel_param { ptr @___asan_gen_.28, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @synchronous } }, section "__param", align 4
@__UNIQUE_ID_synchronoustype290 = internal constant [25 x i8] c"parmtype=synchronous:int\00", section ".modinfo", align 1
@reset_delay = internal global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@__param_reset_delay = internal constant %struct.kernel_param { ptr @___asan_gen_.31, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @reset_delay } }, section "__param", align 4
@__UNIQUE_ID_reset_delaytype291 = internal constant [25 x i8] c"parmtype=reset_delay:int\00", section ".modinfo", align 1
@ext_trans = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ext_trans = internal constant %struct.kernel_param { ptr @___asan_gen_.34, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @ext_trans } }, section "__param", align 4
@__UNIQUE_ID_ext_transtype292 = internal constant [23 x i8] c"parmtype=ext_trans:int\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [21 x i8] c"license=Dual MPL/GPL\00", section ".modinfo", align 1
@aha152x_ids = internal constant [6 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 112, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -839392052, i32 905077878, i32 -1467671186, i32 0], [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 112, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1383479576, i32 905077878, i32 -1467671186, i32 0], [4 x ptr] [ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 616208184, i32 977026336, i32 0, i32 0], [4 x ptr] [ptr @.str.4, ptr @.str.5, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 140150027, i32 -2136583332, i32 0, i32 0], [4 x ptr] [ptr @.str.6, ptr @.str.7, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1383479576, i32 1603952987, i32 0, i32 0], [4 x ptr] [ptr @.str.3, ptr @.str.8, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id zeroinitializer], align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"New Media\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SCSI\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Bus Toaster\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"NOTEWORTHY\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Adaptec, Inc.\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"APA-1460 SCSI Host Adapter\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"New Media Corporation\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Multimedia Sound/SCSI\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"NWCOMB02 SCSI/AUDIO COMBO CARD\00", [33 x i8] zeroinitializer }, align 32
@aha152x_cs_driver = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str.9, ptr @aha152x_probe, ptr @aha152x_detach, ptr null, ptr @aha152x_resume, ptr @__this_module, ptr @aha152x_ids, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aha152x_cs\00", [21 x i8] zeroinitializer }, align 32
@aha152x_probe.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, i8 0, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aha152x_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/scsi/pcmcia/aha152x_stub.c\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aha152x_attach()\0A\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@aha152x_config_cs.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.13, ptr @.str.11, ptr @.str.14, i8 0, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aha152x_config_cs\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aha152x_config\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PCMCIA setup\00", [19 x i8] zeroinitializer }, align 32
@aha152x_config_cs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.11, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016aha152x_cs: no SCSI devices found\0A\00", [59 x i8] zeroinitializer }, align 32
@aha152x_config_cs._entry_ptr = internal global ptr @aha152x_config_cs._entry, section ".printk_index", align 4
@aha152x_detach.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.17, ptr @.str.11, ptr @.str.18, i8 0, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aha152x_detach\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aha152x_detach\0A\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private constant [8 x i8] c"host_id\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 61, i32 12 }
@___asan_gen_.22 = private constant [10 x i8] c"reconnect\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 62, i32 12 }
@___asan_gen_.25 = private constant [7 x i8] c"parity\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 63, i32 12 }
@___asan_gen_.28 = private constant [12 x i8] c"synchronous\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 64, i32 12 }
@___asan_gen_.31 = private constant [12 x i8] c"reset_delay\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 65, i32 12 }
@___asan_gen_.34 = private constant [10 x i8] c"ext_trans\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 66, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 206, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 207, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 208, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 209, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 210, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"aha152x_cs_driver\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 215, i32 29 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 217, i32 11 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 92, i32 5 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 147, i32 5 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 162, i32 21 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 175, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [38 x i8] c"../drivers/scsi/pcmcia/aha152x_stub.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 110, i32 5 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_ext_transtype292, ptr @__UNIQUE_ID_host_idtype287, ptr @__UNIQUE_ID_license293, ptr @__UNIQUE_ID_paritytype289, ptr @__UNIQUE_ID_reconnecttype288, ptr @__UNIQUE_ID_reset_delaytype291, ptr @__UNIQUE_ID_synchronoustype290, ptr @__param_ext_trans, ptr @__param_host_id, ptr @__param_parity, ptr @__param_reconnect, ptr @__param_reset_delay, ptr @__param_synchronous, ptr @aha152x_config_cs._entry, ptr @aha152x_config_cs._entry_ptr, ptr @host_id, ptr @reconnect, ptr @parity, ptr @synchronous, ptr @reset_delay, ptr @ext_trans, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @aha152x_cs_driver, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reconnect to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parity to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synchronous to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_delay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext_trans to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aha152x_cs_driver to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aha152x_config_cs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@__mod_pcmcia__aha152x_ids_device_table = dso_local alias [6 x %struct.pcmcia_device_id], ptr @aha152x_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcmcia_register_driver(ptr noundef nonnull @aha152x_cs_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pcmcia_unregister_driver(ptr noundef nonnull @aha152x_cs_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aha152x_probe(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aha152x_probe.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aha152x_probe, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !86

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aha152x_probe.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.12) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #9
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %link, ptr %call7.i.i, align 8
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %priv, align 8
  %config_flags = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 10
  %3 = ptrtoint ptr %config_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %config_flags, align 4
  %or = or i32 %4, 2049
  store i32 %or, ptr %config_flags, align 4
  %config_regs = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 13
  %5 = ptrtoint ptr %config_regs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %config_regs, align 8
  %call7 = tail call fastcc i32 @aha152x_config_cs(ptr noundef %link)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aha152x_detach(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aha152x_detach.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aha152x_detach, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !86

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aha152x_detach.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.18) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %priv.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %host.i = getelementptr inbounds %struct.scsi_info_t, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i, align 4
  tail call void @aha152x_release(ptr noundef %3) #6
  tail call void @pcmcia_disable_device(ptr noundef %link) #6
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  tail call void @kfree(ptr noundef %5) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aha152x_resume(ptr nocapture noundef readonly %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %host = getelementptr inbounds %struct.scsi_info_t, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %call = tail call i32 @aha152x_host_reset_host(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aha152x_config_cs(ptr noundef %link) unnamed_addr #2 align 64 {
entry:
  %s = alloca %struct.aha152x_setup, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %s) #6
  %2 = call ptr @memset(ptr %s, i32 255, i32 40)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aha152x_config_cs.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aha152x_config_cs, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !86

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aha152x_config_cs.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.14) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call i32 @pcmcia_loop_config(ptr noundef %link, ptr noundef nonnull @aha152x_config_check, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.failed_crit_edge

do.end.failed_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed

if.end6:                                          ; preds = %do.end
  %irq = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 6
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool7.not = icmp eq i32 %4, 0
  br i1 %tobool7.not, label %if.end6.failed_crit_edge, label %if.end9

if.end6.failed_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed

if.end9:                                          ; preds = %if.end6
  %call10 = tail call i32 @pcmcia_enable_device(ptr noundef %link) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.failed_crit_edge

if.end9.failed_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed

if.end13:                                         ; preds = %if.end9
  %5 = getelementptr inbounds i8, ptr %s, i32 28
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %5, align 4
  %conf = getelementptr inbounds %struct.aha152x_setup, ptr %s, i32 0, i32 9
  %7 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.15, ptr %conf, align 4
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %8 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resource, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %s, align 4
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 8
  %irq15 = getelementptr inbounds %struct.aha152x_setup, ptr %s, i32 0, i32 1
  %15 = ptrtoint ptr %irq15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %irq15, align 4
  %16 = load i32, ptr @host_id, align 4
  %scsiid = getelementptr inbounds %struct.aha152x_setup, ptr %s, i32 0, i32 2
  %17 = ptrtoint ptr %scsiid to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %scsiid, align 4
  %18 = load i32, ptr @reconnect, align 4
  %reconnect = getelementptr inbounds %struct.aha152x_setup, ptr %s, i32 0, i32 3
  %19 = ptrtoint ptr %reconnect to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %reconnect, align 4
  %20 = load i32, ptr @parity, align 4
  %parity = getelementptr inbounds %struct.aha152x_setup, ptr %s, i32 0, i32 4
  %21 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %parity, align 4
  %22 = load i32, ptr @synchronous, align 4
  %synchronous = getelementptr inbounds %struct.aha152x_setup, ptr %s, i32 0, i32 5
  %23 = ptrtoint ptr %synchronous to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %synchronous, align 4
  %24 = load i32, ptr @reset_delay, align 4
  %delay = getelementptr inbounds %struct.aha152x_setup, ptr %s, i32 0, i32 6
  %25 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %delay, align 4
  %26 = load i32, ptr @ext_trans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool16.not = icmp eq i32 %26, 0
  br i1 %tobool16.not, label %if.end13.if.end18_crit_edge, label %if.then17

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %ext_trans = getelementptr inbounds %struct.aha152x_setup, ptr %s, i32 0, i32 7
  %27 = ptrtoint ptr %ext_trans to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %ext_trans, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end13.if.end18_crit_edge
  %call19 = call ptr @aha152x_probe_one(ptr noundef nonnull %s) #6
  %cmp = icmp eq ptr %call19, null
  br i1 %cmp, label %do.end23, label %if.end26

do.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #10
  br label %failed

if.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %host27 = getelementptr inbounds %struct.scsi_info_t, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %host27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call19, ptr %host27, align 4
  br label %cleanup

failed:                                           ; preds = %do.end23, %if.end9.failed_crit_edge, %if.end6.failed_crit_edge, %do.end.failed_crit_edge
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv, align 8
  %host.i = getelementptr inbounds %struct.scsi_info_t, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %host.i, align 4
  call void @aha152x_release(ptr noundef %32) #6
  call void @pcmcia_disable_device(ptr noundef %link) #6
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.end26
  %retval.0 = phi i32 [ -19, %failed ], [ 0, %if.end26 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %s) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_loop_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aha152x_config_check(ptr noundef %p_dev, ptr nocapture noundef readnone %priv_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io_lines = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 14
  %0 = ptrtoint ptr %io_lines to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 10, ptr %io_lines, align 4
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7
  %1 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %resource, align 4
  %end = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %4)
  %cmp = icmp ult i32 %4, 32
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx2 = getelementptr %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx2, align 4
  %end3 = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %end3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %8)
  %cmp4 = icmp ugt i32 %8, 31
  br i1 %cmp4, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resource, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65534, i32 %15)
  %cmp13 = icmp ugt i32 %15, 65534
  br i1 %cmp13, label %if.end.return_crit_edge, label %if.end15

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx17 = getelementptr %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx17, align 4
  %end18 = getelementptr inbounds %struct.resource, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %end18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %end18, align 4
  %19 = load ptr, ptr %arrayidx17, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %19, align 4
  %21 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %resource, align 4
  %end24 = getelementptr inbounds %struct.resource, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %end24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 32, ptr %end24, align 4
  %24 = load ptr, ptr %resource, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %and = and i32 %26, -25
  store i32 %and, ptr %flags, align 4
  %27 = load ptr, ptr %resource, align 4
  %flags29 = getelementptr inbounds %struct.resource, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %flags29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags29, align 4
  %or = or i32 %29, 16
  store i32 %or, ptr %flags29, align 4
  %call = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #6
  br label %return

return:                                           ; preds = %if.end15, %if.end.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end15 ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aha152x_probe_one(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @aha152x_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aha152x_host_reset_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !40, !41, !42, !44, !46, !47, !49, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73, !75, !76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__param_host_id, !1, !"__param_host_id", i1 false, i1 false}
!1 = !{!"../drivers/scsi/pcmcia/aha152x_stub.c", i32 68, i32 1}
!2 = !{ptr @__UNIQUE_ID_host_idtype287, !1, !"__UNIQUE_ID_host_idtype287", i1 false, i1 false}
!3 = !{ptr @__param_reconnect, !4, !"__param_reconnect", i1 false, i1 false}
!4 = !{!"../drivers/scsi/pcmcia/aha152x_stub.c", i32 69, i32 1}
!5 = !{ptr @__UNIQUE_ID_reconnecttype288, !4, !"__UNIQUE_ID_reconnecttype288", i1 false, i1 false}
!6 = !{ptr @__param_parity, !7, !"__param_parity", i1 false, i1 false}
!7 = !{!"../drivers/scsi/pcmcia/aha152x_stub.c", i32 70, i32 1}
!8 = !{ptr @__UNIQUE_ID_paritytype289, !7, !"__UNIQUE_ID_paritytype289", i1 false, i1 false}
!9 = !{ptr @__param_synchronous, !10, !"__param_synchronous", i1 false, i1 false}
!10 = !{!"../drivers/scsi/pcmcia/aha152x_stub.c", i32 71, i32 1}
!11 = !{ptr @__UNIQUE_ID_synchronoustype290, !10, !"__UNIQUE_ID_synchronoustype290", i1 false, i1 false}
!12 = !{ptr @__param_reset_delay, !13, !"__param_reset_delay", i1 false, i1 false}
!13 = !{!"../drivers/scsi/pcmcia/aha152x_stub.c", i32 72, i32 1}
!14 = !{ptr @__UNIQUE_ID_reset_delaytype291, !13, !"__UNIQUE_ID_reset_delaytype291", i1 false, i1 false}
!15 = !{ptr @__param_ext_trans, !16, !"__param_ext_trans", i1 false, i1 false}
!16 = !{!"../drivers/scsi/pcmcia/aha152x_stub.c", i32 73, i32 1}
!17 = !{ptr @__UNIQUE_ID_ext_transtype292, !16, !"__UNIQUE_ID_ext_transtype292", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_license293, !19, !"__UNIQUE_ID_license293", i1 false, i1 false}
!19 = !{!"../drivers/scsi/pcmcia/aha152x_stub.c", i32 75, i32 1}
!20 = !{ptr @___asan_gen_.19, !1, !"__param_str_host_id", i1 false, i1 false}
!21 = !{ptr @host_id, !22, !"host_id", i1 false, i1 false}
!22 = !{!"../drivers/scsi/pcmcia/aha152x_stub.c", i32 61, i32 12}
!23 = !{ptr @___asan_gen_.22, !4, !"__param_str_reconnect", i1 false, i1 false}
!24 = !{ptr @reconnect, !25, !"reconnect", i1 false, i1 false}
!25 = !{!"../drivers/scsi/pcmcia/aha152x_stub.c", i32 62, i32 12}
!26 = !{ptr @___asan_gen_.25, !7, !"__param_str_parity", i1 false, i1 false}
!27 = !{ptr @parity, !28, !"parity", i1 false, i1 false}
!28 = !{!"../drivers/scsi/pcmcia/aha152x_stub.c", i32 63, i32 12}
!29 = !{ptr @___asan_gen_.28, !10, !"__param_str_synchronous", i1 false, i1 false}
!30 = !{ptr @synchronous, !31, !"synchronous", i1 false, i1 false}
!31 = !{!"../drivers/scsi/pcmcia/aha152x_stub.c", i32 64, i32 12}
!32 = !{ptr @___asan_gen_.31, !13, !"__param_str_reset_delay", i1 false, i1 false}
!33 = !{ptr @reset_delay, !34, !"reset_delay", i1 false, i1 false}
!34 = !{!"../drivers/scsi/pcmcia/aha152x_stub.c", i32 65, i32 12}
!35 = !{ptr @___asan_gen_.34, !16, !"__param_str_ext_trans", i1 false, i1 false}
!36 = !{ptr @ext_trans, !37, !"ext_trans", i1 false, i1 false}
!37 = !{!"../drivers/scsi/pcmcia/aha152x_stub.c", i32 66, i32 12}
!38 = !{ptr @.str, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/pcmcia/aha152x_stub.c", i32 206, i32 2}
!40 = !{ptr @.str.1, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.2, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.3, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/pcmcia/aha152x_stub.c", i32 207, i32 2}
!44 = !{ptr @.str.4, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/pcmcia/aha152x_stub.c", i32 208, i32 2}
!46 = !{ptr @.str.5, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.6, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/pcmcia/aha152x_stub.c", i32 209, i32 2}
!49 = !{ptr @.str.7, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.8, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/pcmcia/aha152x_stub.c", i32 210, i32 2}
!52 = !{ptr @aha152x_ids, !53, !"aha152x_ids", i1 false, i1 false}
!53 = !{!"../drivers/scsi/pcmcia/aha152x_stub.c", i32 205, i32 38}
!54 = !{ptr @.str.9, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/pcmcia/aha152x_stub.c", i32 217, i32 11}
!56 = !{ptr @aha152x_cs_driver, !57, !"aha152x_cs_driver", i1 false, i1 false}
!57 = !{!"../drivers/scsi/pcmcia/aha152x_stub.c", i32 215, i32 29}
!58 = !{ptr @.str.10, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/pcmcia/aha152x_stub.c", i32 92, i32 5}
!60 = !{ptr @.str.11, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.12, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @aha152x_probe.__UNIQUE_ID_ddebug294, !59, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!63 = !{ptr @.str.13, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/pcmcia/aha152x_stub.c", i32 147, i32 5}
!65 = !{ptr @.str.14, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @aha152x_config_cs.__UNIQUE_ID_ddebug296, !64, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!67 = !{ptr @.str.15, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/pcmcia/aha152x_stub.c", i32 162, i32 21}
!69 = !{ptr @.str.16, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/pcmcia/aha152x_stub.c", i32 175, i32 2}
!71 = !{ptr @aha152x_config_cs._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @aha152x_config_cs._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.17, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/pcmcia/aha152x_stub.c", i32 110, i32 5}
!75 = !{ptr @.str.18, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @aha152x_detach.__UNIQUE_ID_ddebug295, !74, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i64 2148957699, i64 2148957704, i64 2148957717, i64 2148957761, i64 2148957795, i64 2148957816}
