; ModuleID = '/llk/IR_all_yes/drivers/hwtracing/intel_th/gth.c_pt.bc'
source_filename = "../drivers/hwtracing/intel_th/gth.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.intel_th_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.output_parm = type { ptr, ptr, ptr, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.intel_th_device = type { %struct.device, ptr, ptr, i32, i32, i32, i8, %struct.intel_th_output, [0 x i8] }
%struct.intel_th_output = type { i32, i32, i32, i8, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.gth_device = type { ptr, ptr, %struct.attribute_group, %struct.attribute_group, [8 x %struct.gth_output], [257 x i8], %struct.spinlock }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.gth_output = type { ptr, ptr, i32, i32, [9 x i32] }
%struct.output_attribute = type { %struct.device_attribute, ptr, i32, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.master_attribute = type { %struct.device_attribute, ptr, i32 }
%struct.intel_th = type { ptr, [10 x ptr], ptr, ptr, [3 x %struct.resource], ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.work_struct, ptr }

@__initcall__kmod_intel_th_gth__231_845_intel_th_gth_driver_init6 = internal global ptr @intel_th_gth_driver_init, section ".initcall6.init", align 4
@intel_th_gth_driver = internal global { %struct.intel_th_driver, [56 x i8] } { %struct.intel_th_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @intel_th_gth_probe, ptr @intel_th_gth_remove, ptr @intel_th_gth_assign, ptr @intel_th_gth_unassign, ptr @intel_th_gth_prepare, ptr @intel_th_gth_enable, ptr @intel_th_gth_switch, ptr @intel_th_gth_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @intel_th_gth_set_output }, [56 x i8] zeroinitializer }, align 32
@__exitcall_intel_th_gth_driver_exit = internal global ptr @intel_th_gth_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias232 = internal constant [35 x i8] c"intel_th_gth.alias=intel_th_switch\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [58 x i8] c"intel_th_gth.file=drivers/hwtracing/intel_th/intel_th_gth\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [28 x i8] c"intel_th_gth.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description235 = internal constant [68 x i8] c"intel_th_gth.description=Intel(R) Trace Hub Global Trace Hub driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [76 x i8] c"intel_th_gth.author=Alexander Shishkin <alexander.shishkin@linux.intel.com>\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gth\00", [28 x i8] zeroinitializer }, align 32
@intel_th_gth_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&gth->gth_lock\00", [17 x i8] zeroinitializer }, align 32
@intel_th_gth_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 809, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014intel_th_gth: Can't initialize sysfs attributes\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"intel_th_gth_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/hwtracing/intel_th/gth.c\00", [63 x i8] zeroinitializer }, align 32
@intel_th_gth_probe._entry_ptr = internal global ptr @intel_th_gth_probe._entry, section ".printk_index", align 4
@output_parms = internal constant { [6 x %struct.output_parm], [40 x i8] } { [6 x %struct.output_parm] [%struct.output_parm { ptr @.str.5, ptr @gth_output_get, ptr @gth_output_set, i32 7, i8 -128 }, %struct.output_parm { ptr @.str.6, ptr @gth_output_get, ptr @gth_output_set, i32 8, i8 -64 }, %struct.output_parm { ptr @.str.7, ptr @gth_output_get, ptr @gth_output_set, i32 16, i8 -64 }, %struct.output_parm { ptr @.str.8, ptr @gth_output_get, ptr @gth_output_set, i32 32, i8 -128 }, %struct.output_parm { ptr @.str.9, ptr @gth_output_get, ptr @gth_output_set, i32 128, i8 64 }, %struct.output_parm { ptr @.str.10, ptr @gth_smcfreq_get, ptr @gth_smcfreq_set, i32 65535, i8 -64 }], [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"null\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"drop\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flush\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"smcfreq\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%d_%s\00", [26 x i8] zeroinitializer }, align 32
@intel_th_output_attributes.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"outputs\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%x\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%d%s\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"+\00", [30 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@intel_th_master_attributes.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"masters\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disabled\0A\00", [22 x i8] zeroinitializer }, align 32
@to_intel_th.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/hwtracing/intel_th/intel_th.h\00", [58 x i8] zeroinitializer }, align 32
@intel_th_gth_switch.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.4, ptr @.str.22, i8 0, i8 -96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"intel_th_gth\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"intel_th_gth_switch\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"timeout waiting for CTS Trigger\0A\00", [63 x i8] zeroinitializer }, align 32
@intel_th_gth_stop.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.23, ptr @.str.4, ptr @.str.24, i8 0, i8 124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"intel_th_gth_stop\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"timeout waiting for GTH[%d] PLE\0A\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"intel_th_gth_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 827, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 838, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 767, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 809, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [13 x i8] c"output_parms\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 241, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 242, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 243, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 244, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 245, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 246, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 247, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 432, i32 48 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 449, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 458, i32 27 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 335, i32 35 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 386, i32 47 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 387, i32 42 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 387, i32 48 }
@___asan_gen_.92 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 396, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 403, i32 27 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 159, i32 36 }
@___asan_gen_.102 = private unnamed_addr constant [41 x i8] c"../drivers/hwtracing/intel_th/intel_th.h\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 223, i32 6 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 642, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [36 x i8] c"../drivers/hwtracing/intel_th/gth.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 496, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_intel_th_gth_driver_exit, ptr @__initcall__kmod_intel_th_gth__231_845_intel_th_gth_driver_init6, ptr @intel_th_gth_driver_exit, ptr @intel_th_gth_probe._entry, ptr @intel_th_gth_probe._entry_ptr, ptr @intel_th_gth_driver, ptr @.str, ptr @intel_th_gth_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @output_parms, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @intel_th_output_attributes.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @intel_th_master_attributes.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_th_gth_driver to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_th_gth_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_th_gth_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @output_parms to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_th_output_attributes.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_th_master_attributes.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_th_gth_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @intel_th_driver_register(ptr noundef nonnull @intel_th_gth_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @intel_th_gth_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @intel_th_driver_unregister(ptr noundef nonnull @intel_th_gth_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @intel_th_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intel_th_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_th_gth_probe(ptr noundef %thdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %thdev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %num_resources.i = getelementptr inbounds %struct.intel_th_device, ptr %thdev, i32 0, i32 3
  %4 = ptrtoint ptr %num_resources.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_resources.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3.not.i = icmp eq i32 %5, 0
  br i1 %cmp3.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %resource.i = getelementptr inbounds %struct.intel_th_device, ptr %thdev, i32 0, i32 2
  %6 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resource.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.04.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %flags.i.i = getelementptr %struct.resource, ptr %7, i32 %i.04.i, i32 3
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %9, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and.i.i)
  %cmp1.i = icmp eq i32 %and.i.i, 512
  br i1 %cmp1.i, label %intel_th_device_get_resource.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

intel_th_device_get_resource.exit:                ; preds = %for.body.i
  %arrayidx.le.i = getelementptr %struct.resource, ptr %7, i32 %i.04.i
  %tobool.not = icmp eq ptr %arrayidx.le.i, null
  br i1 %tobool.not, label %intel_th_device_get_resource.exit.cleanup_crit_edge, label %if.end

intel_th_device_get_resource.exit.cleanup_crit_edge: ; preds = %intel_th_device_get_resource.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %intel_th_device_get_resource.exit
  %10 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.le.i, align 4
  %end.i = getelementptr %struct.resource, ptr %7, i32 %i.04.i, i32 1
  %12 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %11
  %add.i = add i32 %sub.i, %13
  %call4 = tail call ptr @devm_ioremap(ptr noundef %thdev, i32 noundef %11, i32 noundef %add.i) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %thdev, i32 noundef 768, i32 noundef 3520) #7
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %thdev, ptr %call.i, align 4
  %base13 = getelementptr inbounds %struct.gth_device, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %base13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call4, ptr %base13, align 4
  %gth_lock = getelementptr inbounds %struct.gth_device, ptr %call.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %gth_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @intel_th_gth_probe.__key, i16 noundef signext 3) #7
  %driver_data.i118 = getelementptr inbounds %struct.device, ptr %thdev, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i118 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i118, align 4
  %host_mode = getelementptr inbounds %struct.intel_th_device, ptr %thdev, i32 0, i32 6
  %17 = ptrtoint ptr %host_mode to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %host_mode, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool15.not = icmp eq i8 %18, 0
  br i1 %tobool15.not, label %if.end17, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %19 = ptrtoint ptr %base13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base13, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 224
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !81
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %and.i = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end22

if.end.i:                                         ; preds = %if.end17
  %or.i = or i32 %22, 36864
  %23 = ptrtoint ptr %base13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base13, align 4
  %add.ptr2.i = getelementptr i8, ptr %24, i32 224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %25) #7, !srcloc !84
  br label %for.body.i119

for.body.i119:                                    ; preds = %for.inc.i122.for.body.i119_crit_edge, %if.end.i
  %port.063.i = phi i32 [ 0, %if.end.i ], [ %inc.i120, %for.inc.i122.for.body.i119_crit_edge ]
  %and.i55.i = and i32 %port.063.i, 4
  %and1.i56.i = shl i32 %port.063.i, 3
  %mul.i57.i = and i32 %and1.i56.i, 24
  %26 = ptrtoint ptr %base13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base13, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %27, i32 %and.i55.i
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59.i) #7, !srcloc !81
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %and2.i61.i = shl nuw nsw i32 7, %mul.i57.i
  %30 = and i32 %and2.i61.i, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp4.i = icmp eq i32 %30, 0
  br i1 %cmp4.i, label %for.body.i119.for.inc.i122_crit_edge, label %if.end6.i

for.body.i119.for.inc.i122_crit_edge:             ; preds = %for.body.i119
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i122

if.end6.i:                                        ; preds = %for.body.i119
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i60.i = shl nuw i32 255, %mul.i57.i
  %31 = ptrtoint ptr %base13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base13, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 %and.i55.i
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !81
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %neg.i.i = xor i32 %shl.i60.i, -1
  %and2.i.i = and i32 %34, %neg.i.i
  %35 = ptrtoint ptr %base13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base13, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %36, i32 %and.i55.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %37 = tail call i32 @llvm.bswap.i32(i32 %and2.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %37) #7, !srcloc !84
  %38 = shl nuw i32 %port.063.i, 1
  %39 = add nuw nsw i32 %38, 156
  %add.i.i = and i32 %39, -4
  %and.i48.i = shl i32 %port.063.i, 4
  %mul1.i.i = and i32 %and.i48.i, 16
  %40 = ptrtoint ptr %base13 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base13, align 4
  %add.ptr.i50.i = getelementptr i8, ptr %41, i32 %add.i.i
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50.i) #7, !srcloc !81
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %shl.i51.i = shl nuw i32 65535, %mul1.i.i
  %neg.i52.i = xor i32 %shl.i51.i, -1
  %and2.i53.i = and i32 %43, %neg.i52.i
  %shl3.i.i = shl nuw nsw i32 16, %mul1.i.i
  %or.i.i = or i32 %and2.i53.i, %shl3.i.i
  %44 = ptrtoint ptr %base13 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base13, align 4
  %add.ptr5.i54.i = getelementptr i8, ptr %45, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %46 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i54.i, i32 %46) #7, !srcloc !84
  br label %for.inc.i122

for.inc.i122:                                     ; preds = %if.end6.i, %for.body.i119.for.inc.i122_crit_edge
  %inc.i120 = add nuw nsw i32 %port.063.i, 1
  %exitcond.not.i121 = icmp eq i32 %inc.i120, 8
  br i1 %exitcond.not.i121, label %for.end.i, label %for.inc.i122.for.body.i119_crit_edge

for.inc.i122.for.body.i119_crit_edge:             ; preds = %for.inc.i122
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i119

for.end.i:                                        ; preds = %for.inc.i122
  %47 = ptrtoint ptr %base13 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base13, align 4
  %add.ptr8.i = getelementptr i8, ptr %48, i32 220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 0) #7, !srcloc !84
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.body11.i.for.body11.i_crit_edge, %for.end.i
  %i.065.i = phi i32 [ 0, %for.end.i ], [ %inc16.i, %for.body11.i.for.body11.i_crit_edge ]
  %49 = ptrtoint ptr %base13 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base13, align 4
  %add.ptr13.i = getelementptr i8, ptr %50, i32 8
  %mul.i = shl i32 %i.065.i, 2
  %add.ptr14.i = getelementptr i8, ptr %add.ptr13.i, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 0) #7, !srcloc !84
  %inc16.i = add nuw nsw i32 %i.065.i, 1
  %exitcond66.not.i = icmp eq i32 %inc16.i, 33
  br i1 %exitcond66.not.i, label %intel_th_gth_reset.exit, label %for.body11.i.for.body11.i_crit_edge

for.body11.i.for.body11.i_crit_edge:              ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body11.i

intel_th_gth_reset.exit:                          ; preds = %for.body11.i
  %51 = ptrtoint ptr %base13 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base13, align 4
  %add.ptr19.i = getelementptr i8, ptr %52, i32 200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 0) #7, !srcloc !84
  %53 = ptrtoint ptr %base13 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base13, align 4
  %add.ptr21.i = getelementptr i8, ptr %54, i32 216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 -67108864) #7, !srcloc !84
  %55 = ptrtoint ptr %base13 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base13, align 4
  %add.ptr23.i = getelementptr i8, ptr %56, i32 12480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 128) #7, !srcloc !84
  %57 = ptrtoint ptr %base13 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base13, align 4
  %add.ptr25.i = getelementptr i8, ptr %58, i32 12672
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 268435584) #7, !srcloc !84
  %uglygep = getelementptr i8, ptr %call.i, i32 464
  %59 = call ptr @memset(ptr %uglygep, i32 255, i32 257)
  br label %for.body28

if.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %host_mode to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %host_mode, align 4
  br label %cleanup

for.body28:                                       ; preds = %for.inc50.for.body28_crit_edge, %intel_th_gth_reset.exit
  %i.1158 = phi i32 [ %inc51, %for.inc50.for.body28_crit_edge ], [ 0, %intel_th_gth_reset.exit ]
  %arrayidx29 = getelementptr %struct.gth_device, ptr %call.i, i32 0, i32 4, i32 %i.1158
  %61 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i, ptr %arrayidx29, align 4
  %index = getelementptr %struct.gth_device, ptr %call.i, i32 0, i32 4, i32 %i.1158, i32 2
  %62 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %i.1158, ptr %index, align 4
  %and.i143 = and i32 %i.1158, 4
  %and1.i = shl i32 %i.1158, 3
  %mul.i144 = and i32 %and1.i, 24
  %63 = ptrtoint ptr %base13 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base13, align 4
  %add.ptr.i146 = getelementptr i8, ptr %64, i32 %and.i143
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i146) #7, !srcloc !81
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %shl.i = shl nuw i32 255, %mul.i144
  %and2.i = and i32 %66, %shl.i
  %shr.i = lshr i32 %and2.i, %mul.i144
  %and.i125 = and i32 %shr.i, 7
  %port_type = getelementptr %struct.gth_device, ptr %call.i, i32 0, i32 4, i32 %i.1158, i32 3
  %67 = ptrtoint ptr %port_type to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %and.i125, ptr %port_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i125)
  %cmp39 = icmp eq i32 %and.i125, 0
  br i1 %cmp39, label %for.body28.for.inc50_crit_edge, label %if.end41

for.body28.for.inc50_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc50

if.end41:                                         ; preds = %for.body28
  %call45 = tail call i32 @intel_th_output_enable(ptr noundef %3, i32 noundef %and.i125) #7
  %68 = zext i32 %call45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call45, label %if.end41.cleanup_crit_edge [
    i32 0, label %if.end41.for.inc50_crit_edge
    i32 -19, label %if.end41.for.inc50_crit_edge172
  ]

if.end41.for.inc50_crit_edge172:                  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc50

if.end41.for.inc50_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc50

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc50:                                        ; preds = %if.end41.for.inc50_crit_edge, %if.end41.for.inc50_crit_edge172, %for.body28.for.inc50_crit_edge
  %inc51 = add nuw nsw i32 %i.1158, 1
  %exitcond.not = icmp eq i32 %inc51, 8
  br i1 %exitcond.not, label %for.end52, label %for.inc50.for.body28_crit_edge

for.inc50.for.body28_crit_edge:                   ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body28

for.end52:                                        ; preds = %for.inc50
  %69 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call.i, align 4
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %70, i32 noundef 196, i32 noundef 3520) #7
  %tobool.not.i126 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i126, label %for.end52.do.end60_crit_edge, label %if.end.i127

for.end52.do.end60_crit_edge:                     ; preds = %for.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60

if.end.i127:                                      ; preds = %for.end52
  %71 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call.i, align 4
  %call5.i.i118.i = tail call noalias ptr @devm_kmalloc(ptr noundef %72, i32 noundef 1960, i32 noundef 3520) #7
  %tobool3.not.i = icmp eq ptr %call5.i.i118.i, null
  br i1 %tobool3.not.i, label %if.end.i127.do.end60_crit_edge, label %if.end.i127.for.cond6.preheader.i_crit_edge

if.end.i127.for.cond6.preheader.i_crit_edge:      ; preds = %if.end.i127
  br label %for.cond6.preheader.i

if.end.i127.do.end60_crit_edge:                   ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60

for.cond6.preheader.i:                            ; preds = %for.inc58.i.for.cond6.preheader.i_crit_edge, %if.end.i127.for.cond6.preheader.i_crit_edge
  %i.0120.i = phi i32 [ %inc59.i, %for.inc58.i.for.cond6.preheader.i_crit_edge ], [ 0, %if.end.i127.for.cond6.preheader.i_crit_edge ]
  %mul9.i = mul nuw nsw i32 %i.0120.i, 6
  br label %for.body8.i

for.body8.i:                                      ; preds = %do.body.i.for.body8.i_crit_edge, %for.cond6.preheader.i
  %j.0119.i = phi i32 [ 0, %for.cond6.preheader.i ], [ %inc.i128, %do.body.i.for.body8.i_crit_edge ]
  %add10.i = add nuw nsw i32 %j.0119.i, %mul9.i
  %73 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %call.i, align 4
  %arrayidx.i = getelementptr [6 x %struct.output_parm], ptr @output_parms, i32 0, i32 %j.0119.i
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i, align 4
  %call13.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %74, i32 noundef 3264, ptr noundef nonnull @.str.11, i32 noundef %i.0120.i, ptr noundef %76) #7
  %tobool14.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool14.not.i, label %for.body8.i.do.end60_crit_edge, label %if.end16.i

for.body8.i.do.end60_crit_edge:                   ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60

if.end16.i:                                       ; preds = %for.body8.i
  %arrayidx17.i = getelementptr %struct.output_attribute, ptr %call5.i.i118.i, i32 %add10.i
  %77 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call13.i, ptr %arrayidx17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %j.0119.i)
  %tobool21.not.i = icmp eq i32 %j.0119.i, 4
  br i1 %tobool21.not.i, label %if.end16.i.if.then35.i_crit_edge, label %if.end29.i

if.end16.i.if.then35.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35.i

if.end29.i:                                       ; preds = %if.end16.i
  %mode.i = getelementptr inbounds %struct.attribute, ptr %arrayidx17.i, i32 0, i32 1
  %78 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %mode.i, align 4
  %80 = or i16 %79, 292
  store i16 %80, ptr %mode.i, align 4
  %show.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx17.i, i32 0, i32 1
  %81 = ptrtoint ptr %show.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @output_attr_show, ptr %show.i, align 4
  %82 = zext i32 %j.0119.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %j.0119.i, label %if.end29.i.if.then35.i_crit_edge [
    i32 3, label %if.end29.i.do.body.i_crit_edge
    i32 0, label %if.end29.i.do.body.i_crit_edge173
  ]

if.end29.i.do.body.i_crit_edge173:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.end29.i.do.body.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.end29.i.if.then35.i_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35.i

if.then35.i:                                      ; preds = %if.end29.i.if.then35.i_crit_edge, %if.end16.i.if.then35.i_crit_edge
  %mode39.i = getelementptr inbounds %struct.attribute, ptr %arrayidx17.i, i32 0, i32 1
  %83 = ptrtoint ptr %mode39.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %mode39.i, align 4
  %85 = or i16 %84, 128
  store i16 %85, ptr %mode39.i, align 4
  %store.i = getelementptr inbounds %struct.device_attribute, ptr %arrayidx17.i, i32 0, i32 2
  %86 = ptrtoint ptr %store.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @output_attr_store, ptr %store.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.then35.i, %if.end29.i.do.body.i_crit_edge, %if.end29.i.do.body.i_crit_edge173
  %key.i = getelementptr inbounds %struct.attribute, ptr %arrayidx17.i, i32 0, i32 3
  %87 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @intel_th_output_attributes.__key, ptr %key.i, align 4
  %arrayidx52.i = getelementptr ptr, ptr %call5.i.i.i, i32 %add10.i
  %88 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %arrayidx17.i, ptr %arrayidx52.i, align 4
  %gth54.i = getelementptr %struct.output_attribute, ptr %call5.i.i118.i, i32 %add10.i, i32 1
  %89 = ptrtoint ptr %gth54.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call.i, ptr %gth54.i, align 4
  %port.i = getelementptr %struct.output_attribute, ptr %call5.i.i118.i, i32 %add10.i, i32 2
  %90 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %i.0120.i, ptr %port.i, align 4
  %parm.i = getelementptr %struct.output_attribute, ptr %call5.i.i118.i, i32 %add10.i, i32 3
  %91 = ptrtoint ptr %parm.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %j.0119.i, ptr %parm.i, align 4
  %inc.i128 = add nuw nsw i32 %j.0119.i, 1
  %exitcond.not.i129 = icmp eq i32 %inc.i128, 6
  br i1 %exitcond.not.i129, label %for.inc58.i, label %do.body.i.for.body8.i_crit_edge

do.body.i.for.body8.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8.i

for.inc58.i:                                      ; preds = %do.body.i
  %inc59.i = add nuw nsw i32 %i.0120.i, 1
  %exitcond121.not.i = icmp eq i32 %inc59.i, 8
  br i1 %exitcond121.not.i, label %intel_th_output_attributes.exit, label %for.inc58.i.for.cond6.preheader.i_crit_edge

for.inc58.i.for.cond6.preheader.i_crit_edge:      ; preds = %for.inc58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond6.preheader.i

intel_th_output_attributes.exit:                  ; preds = %for.inc58.i
  %output_group.i = getelementptr inbounds %struct.gth_device, ptr %call.i, i32 0, i32 2
  %92 = ptrtoint ptr %output_group.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @.str.12, ptr %output_group.i, align 4
  %attrs63.i = getelementptr inbounds %struct.gth_device, ptr %call.i, i32 0, i32 2, i32 3
  %93 = ptrtoint ptr %attrs63.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call5.i.i.i, ptr %attrs63.i, align 4
  %94 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %call.i, align 4
  %call66.i = tail call i32 @sysfs_create_group(ptr noundef %95, ptr noundef %output_group.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %tobool54.not = icmp eq i32 %call66.i, 0
  br i1 %tobool54.not, label %lor.lhs.false, label %intel_th_output_attributes.exit.do.end60_crit_edge

intel_th_output_attributes.exit.do.end60_crit_edge: ; preds = %intel_th_output_attributes.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60

lor.lhs.false:                                    ; preds = %intel_th_output_attributes.exit
  %96 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %call.i, align 4
  %call5.i.i.i130 = tail call noalias ptr @devm_kmalloc(ptr noundef %97, i32 noundef 1032, i32 noundef 3520) #7
  %tobool.not.i131 = icmp eq ptr %call5.i.i.i130, null
  br i1 %tobool.not.i131, label %lor.lhs.false.do.end60_crit_edge, label %if.end.i133

lor.lhs.false.do.end60_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60

if.end.i133:                                      ; preds = %lor.lhs.false
  %98 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %call.i, align 4
  %call5.i.i74.i = tail call noalias ptr @devm_kmalloc(ptr noundef %99, i32 noundef 9288, i32 noundef 3520) #7
  %tobool3.not.i132 = icmp eq ptr %call5.i.i74.i, null
  br i1 %tobool3.not.i132, label %if.end.i133.do.end60_crit_edge, label %if.end.i133.for.body.i134_crit_edge

if.end.i133.for.body.i134_crit_edge:              ; preds = %if.end.i133
  br label %for.body.i134

if.end.i133.do.end60_crit_edge:                   ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60

for.body.i134:                                    ; preds = %if.end11.i.for.body.i134_crit_edge, %if.end.i133.for.body.i134_crit_edge
  %i.075.i = phi i32 [ %inc.i140, %if.end11.i.for.body.i134_crit_edge ], [ 0, %if.end.i133.for.body.i134_crit_edge ]
  %100 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %i.075.i)
  %cmp7.i = icmp eq i32 %i.075.i, 256
  %cond.i = select i1 %cmp7.i, ptr @.str.15, ptr @.str.16
  %call8.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %101, i32 noundef 3264, ptr noundef nonnull @.str.14, i32 noundef %i.075.i, ptr noundef nonnull %cond.i) #7
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %for.body.i134.do.end60_crit_edge, label %if.end11.i

for.body.i134.do.end60_crit_edge:                 ; preds = %for.body.i134
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60

if.end11.i:                                       ; preds = %for.body.i134
  %arrayidx.i135 = getelementptr %struct.master_attribute, ptr %call5.i.i74.i, i32 %i.075.i
  %102 = ptrtoint ptr %arrayidx.i135 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call8.i, ptr %arrayidx.i135, align 4
  %mode.i136 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i135, i32 0, i32 1
  %103 = ptrtoint ptr %mode.i136 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 420, ptr %mode.i136, align 4
  %show.i137 = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i135, i32 0, i32 1
  %104 = ptrtoint ptr %show.i137 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @master_attr_show, ptr %show.i137, align 4
  %store.i138 = getelementptr inbounds %struct.device_attribute, ptr %arrayidx.i135, i32 0, i32 2
  %105 = ptrtoint ptr %store.i138 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @master_attr_store, ptr %store.i138, align 4
  %key.i139 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i135, i32 0, i32 3
  %106 = ptrtoint ptr %key.i139 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @intel_th_master_attributes.__key, ptr %key.i139, align 4
  %arrayidx27.i = getelementptr ptr, ptr %call5.i.i.i130, i32 %i.075.i
  %107 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %arrayidx.i135, ptr %arrayidx27.i, align 4
  %gth29.i = getelementptr %struct.master_attribute, ptr %call5.i.i74.i, i32 %i.075.i, i32 1
  %108 = ptrtoint ptr %gth29.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call.i, ptr %gth29.i, align 4
  %master.i = getelementptr %struct.master_attribute, ptr %call5.i.i74.i, i32 %i.075.i, i32 2
  %109 = ptrtoint ptr %master.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %i.075.i, ptr %master.i, align 4
  %inc.i140 = add nuw nsw i32 %i.075.i, 1
  %exitcond.not.i141 = icmp eq i32 %inc.i140, 257
  br i1 %exitcond.not.i141, label %intel_th_master_attributes.exit, label %if.end11.i.for.body.i134_crit_edge

if.end11.i.for.body.i134_crit_edge:               ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i134

intel_th_master_attributes.exit:                  ; preds = %if.end11.i
  %master_group.i = getelementptr inbounds %struct.gth_device, ptr %call.i, i32 0, i32 3
  %110 = ptrtoint ptr %master_group.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @.str.17, ptr %master_group.i, align 4
  %attrs33.i = getelementptr inbounds %struct.gth_device, ptr %call.i, i32 0, i32 3, i32 3
  %111 = ptrtoint ptr %attrs33.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call5.i.i.i130, ptr %attrs33.i, align 4
  %112 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %call.i, align 4
  %call36.i = tail call i32 @sysfs_create_group(ptr noundef %113, ptr noundef %master_group.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool56.not = icmp eq i32 %call36.i, 0
  br i1 %tobool56.not, label %intel_th_master_attributes.exit.cleanup_crit_edge, label %intel_th_master_attributes.exit.do.end60_crit_edge

intel_th_master_attributes.exit.do.end60_crit_edge: ; preds = %intel_th_master_attributes.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60

intel_th_master_attributes.exit.cleanup_crit_edge: ; preds = %intel_th_master_attributes.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end60:                                         ; preds = %intel_th_master_attributes.exit.do.end60_crit_edge, %for.body.i134.do.end60_crit_edge, %if.end.i133.do.end60_crit_edge, %lor.lhs.false.do.end60_crit_edge, %intel_th_output_attributes.exit.do.end60_crit_edge, %for.body8.i.do.end60_crit_edge, %if.end.i127.do.end60_crit_edge, %for.end52.do.end60_crit_edge
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  %attrs = getelementptr inbounds %struct.gth_device, ptr %call.i, i32 0, i32 2, i32 3
  %114 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %attrs, align 4
  %tobool62.not = icmp eq ptr %115, null
  br i1 %tobool62.not, label %do.end60.cleanup_crit_edge, label %if.then63

do.end60.cleanup_crit_edge:                       ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then63:                                        ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #9
  %output_group = getelementptr inbounds %struct.gth_device, ptr %call.i, i32 0, i32 2
  %116 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %call.i, align 4
  tail call void @sysfs_remove_group(ptr noundef %117, ptr noundef %output_group) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %do.end60.cleanup_crit_edge, %intel_th_master_attributes.exit.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end22, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %intel_th_device_get_resource.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -19, %intel_th_device_get_resource.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ -12, %if.then63 ], [ -12, %do.end60.cleanup_crit_edge ], [ 0, %intel_th_master_attributes.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ %call45, %if.end41.cleanup_crit_edge ], [ -19, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intel_th_gth_remove(ptr nocapture noundef readonly %thdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %thdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %output_group = getelementptr inbounds %struct.gth_device, ptr %1, i32 0, i32 2
  tail call void @sysfs_remove_group(ptr noundef %3, ptr noundef %output_group) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %master_group = getelementptr inbounds %struct.gth_device, ptr %1, i32 0, i32 3
  tail call void @sysfs_remove_group(ptr noundef %5, ptr noundef %master_group) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_th_gth_assign(ptr nocapture noundef readonly %thdev, ptr noundef %othdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %thdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %host_mode = getelementptr inbounds %struct.intel_th_device, ptr %thdev, i32 0, i32 6
  %2 = ptrtoint ptr %host_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %host_mode, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.intel_th_device, ptr %othdev, i32 0, i32 4
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %type5 = getelementptr inbounds %struct.intel_th_device, ptr %othdev, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %type5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type5, align 4
  %id9 = getelementptr inbounds %struct.intel_th_device, ptr %othdev, i32 0, i32 5
  %port_type = getelementptr %struct.gth_device, ptr %1, i32 0, i32 4, i32 0, i32 3
  %8 = ptrtoint ptr %port_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp6.not = icmp eq i32 %9, %7
  br i1 %cmp6.not, label %if.end8, label %for.cond.preheader.for.inc_crit_edge

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end8:                                          ; preds = %for.cond.preheader
  %10 = ptrtoint ptr %id9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id9, align 8
  %12 = add i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %if.end8.found_crit_edge, label %if.end8.for.inc_crit_edge

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end8.found_crit_edge:                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %found

for.inc:                                          ; preds = %if.end8.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %id.1 = phi i32 [ 0, %for.cond.preheader.for.inc_crit_edge ], [ 1, %if.end8.for.inc_crit_edge ]
  %port_type.1 = getelementptr %struct.gth_device, ptr %1, i32 0, i32 4, i32 1, i32 3
  %14 = ptrtoint ptr %port_type.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_type.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %7)
  %cmp6.not.1 = icmp eq i32 %15, %7
  br i1 %cmp6.not.1, label %if.end8.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end8.1:                                        ; preds = %for.inc
  %16 = ptrtoint ptr %id9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp10.1 = icmp eq i32 %17, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %id.1)
  %cmp12.1 = icmp eq i32 %17, %id.1
  %or.cond.1 = or i1 %cmp10.1, %cmp12.1
  br i1 %or.cond.1, label %if.end8.1.found_crit_edge, label %if.end14.1

if.end8.1.found_crit_edge:                        ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %found

if.end14.1:                                       ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #9
  %inc.1 = add nuw nsw i32 %id.1, 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end14.1, %for.inc.for.inc.1_crit_edge
  %id.1.1 = phi i32 [ %id.1, %for.inc.for.inc.1_crit_edge ], [ %inc.1, %if.end14.1 ]
  %port_type.2 = getelementptr %struct.gth_device, ptr %1, i32 0, i32 4, i32 2, i32 3
  %18 = ptrtoint ptr %port_type.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_type.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %7)
  %cmp6.not.2 = icmp eq i32 %19, %7
  br i1 %cmp6.not.2, label %if.end8.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.end8.2:                                        ; preds = %for.inc.1
  %20 = ptrtoint ptr %id9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp10.2 = icmp eq i32 %21, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %id.1.1)
  %cmp12.2 = icmp eq i32 %21, %id.1.1
  %or.cond.2 = or i1 %cmp10.2, %cmp12.2
  br i1 %or.cond.2, label %if.end8.2.found_crit_edge, label %if.end14.2

if.end8.2.found_crit_edge:                        ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %found

if.end14.2:                                       ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #9
  %inc.2 = add nuw nsw i32 %id.1.1, 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end14.2, %for.inc.1.for.inc.2_crit_edge
  %id.1.2 = phi i32 [ %id.1.1, %for.inc.1.for.inc.2_crit_edge ], [ %inc.2, %if.end14.2 ]
  %port_type.3 = getelementptr %struct.gth_device, ptr %1, i32 0, i32 4, i32 3, i32 3
  %22 = ptrtoint ptr %port_type.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port_type.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %7)
  %cmp6.not.3 = icmp eq i32 %23, %7
  br i1 %cmp6.not.3, label %if.end8.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.end8.3:                                        ; preds = %for.inc.2
  %24 = ptrtoint ptr %id9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp10.3 = icmp eq i32 %25, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %id.1.2)
  %cmp12.3 = icmp eq i32 %25, %id.1.2
  %or.cond.3 = or i1 %cmp10.3, %cmp12.3
  br i1 %or.cond.3, label %if.end8.3.found_crit_edge, label %if.end14.3

if.end8.3.found_crit_edge:                        ; preds = %if.end8.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %found

if.end14.3:                                       ; preds = %if.end8.3
  call void @__sanitizer_cov_trace_pc() #9
  %inc.3 = add nuw nsw i32 %id.1.2, 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end14.3, %for.inc.2.for.inc.3_crit_edge
  %id.1.3 = phi i32 [ %id.1.2, %for.inc.2.for.inc.3_crit_edge ], [ %inc.3, %if.end14.3 ]
  %port_type.4 = getelementptr %struct.gth_device, ptr %1, i32 0, i32 4, i32 4, i32 3
  %26 = ptrtoint ptr %port_type.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port_type.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %7)
  %cmp6.not.4 = icmp eq i32 %27, %7
  br i1 %cmp6.not.4, label %if.end8.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.end8.4:                                        ; preds = %for.inc.3
  %28 = ptrtoint ptr %id9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp10.4 = icmp eq i32 %29, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %id.1.3)
  %cmp12.4 = icmp eq i32 %29, %id.1.3
  %or.cond.4 = select i1 %cmp10.4, i1 true, i1 %cmp12.4
  br i1 %or.cond.4, label %if.end8.4.found_crit_edge, label %if.end14.4

if.end8.4.found_crit_edge:                        ; preds = %if.end8.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %found

if.end14.4:                                       ; preds = %if.end8.4
  call void @__sanitizer_cov_trace_pc() #9
  %inc.4 = add nuw nsw i32 %id.1.3, 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end14.4, %for.inc.3.for.inc.4_crit_edge
  %id.1.4 = phi i32 [ %id.1.3, %for.inc.3.for.inc.4_crit_edge ], [ %inc.4, %if.end14.4 ]
  %port_type.5 = getelementptr %struct.gth_device, ptr %1, i32 0, i32 4, i32 5, i32 3
  %30 = ptrtoint ptr %port_type.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port_type.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %7)
  %cmp6.not.5 = icmp eq i32 %31, %7
  br i1 %cmp6.not.5, label %if.end8.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

if.end8.5:                                        ; preds = %for.inc.4
  %32 = ptrtoint ptr %id9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp10.5 = icmp eq i32 %33, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %id.1.4)
  %cmp12.5 = icmp eq i32 %33, %id.1.4
  %or.cond.5 = select i1 %cmp10.5, i1 true, i1 %cmp12.5
  br i1 %or.cond.5, label %if.end8.5.found_crit_edge, label %if.end14.5

if.end8.5.found_crit_edge:                        ; preds = %if.end8.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %found

if.end14.5:                                       ; preds = %if.end8.5
  call void @__sanitizer_cov_trace_pc() #9
  %inc.5 = add nuw nsw i32 %id.1.4, 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end14.5, %for.inc.4.for.inc.5_crit_edge
  %id.1.5 = phi i32 [ %id.1.4, %for.inc.4.for.inc.5_crit_edge ], [ %inc.5, %if.end14.5 ]
  %port_type.6 = getelementptr %struct.gth_device, ptr %1, i32 0, i32 4, i32 6, i32 3
  %34 = ptrtoint ptr %port_type.6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port_type.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %7)
  %cmp6.not.6 = icmp eq i32 %35, %7
  br i1 %cmp6.not.6, label %if.end8.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

if.end8.6:                                        ; preds = %for.inc.5
  %36 = ptrtoint ptr %id9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %id9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp10.6 = icmp eq i32 %37, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %id.1.5)
  %cmp12.6 = icmp eq i32 %37, %id.1.5
  %or.cond.6 = select i1 %cmp10.6, i1 true, i1 %cmp12.6
  br i1 %or.cond.6, label %if.end8.6.found_crit_edge, label %if.end14.6

if.end8.6.found_crit_edge:                        ; preds = %if.end8.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %found

if.end14.6:                                       ; preds = %if.end8.6
  call void @__sanitizer_cov_trace_pc() #9
  %inc.6 = add nuw nsw i32 %id.1.5, 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end14.6, %for.inc.5.for.inc.6_crit_edge
  %id.1.6 = phi i32 [ %id.1.5, %for.inc.5.for.inc.6_crit_edge ], [ %inc.6, %if.end14.6 ]
  %port_type.7 = getelementptr %struct.gth_device, ptr %1, i32 0, i32 4, i32 7, i32 3
  %38 = ptrtoint ptr %port_type.7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port_type.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %7)
  %cmp6.not.7 = icmp eq i32 %39, %7
  br i1 %cmp6.not.7, label %if.end8.7, label %for.inc.6.cleanup_crit_edge

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.7:                                        ; preds = %for.inc.6
  %40 = ptrtoint ptr %id9 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %id9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %cmp10.7 = icmp eq i32 %41, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %id.1.6)
  %cmp12.7 = icmp eq i32 %41, %id.1.6
  %or.cond.7 = select i1 %cmp10.7, i1 true, i1 %cmp12.7
  br i1 %or.cond.7, label %if.end8.7.found_crit_edge, label %if.end8.7.cleanup_crit_edge

if.end8.7.cleanup_crit_edge:                      ; preds = %if.end8.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.7.found_crit_edge:                        ; preds = %if.end8.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %found

found:                                            ; preds = %if.end8.7.found_crit_edge, %if.end8.6.found_crit_edge, %if.end8.5.found_crit_edge, %if.end8.4.found_crit_edge, %if.end8.3.found_crit_edge, %if.end8.2.found_crit_edge, %if.end8.1.found_crit_edge, %if.end8.found_crit_edge
  %i.041.lcssa = phi i32 [ 0, %if.end8.found_crit_edge ], [ 1, %if.end8.1.found_crit_edge ], [ 2, %if.end8.2.found_crit_edge ], [ 3, %if.end8.3.found_crit_edge ], [ 4, %if.end8.4.found_crit_edge ], [ 5, %if.end8.5.found_crit_edge ], [ 6, %if.end8.6.found_crit_edge ], [ 7, %if.end8.7.found_crit_edge ]
  %output4.le = getelementptr inbounds %struct.intel_th_device, ptr %othdev, i32 0, i32 7
  %gth_lock = getelementptr inbounds %struct.gth_device, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %gth_lock) #7
  %42 = ptrtoint ptr %output4.le to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %i.041.lcssa, ptr %output4.le, align 8
  %active = getelementptr inbounds %struct.intel_th_device, ptr %othdev, i32 0, i32 7, i32 4
  %43 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %active, align 1
  %output21 = getelementptr %struct.gth_device, ptr %1, i32 0, i32 4, i32 %i.041.lcssa, i32 1
  %44 = ptrtoint ptr %output21 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %output4.le, ptr %output21, align 4
  tail call void @_raw_spin_unlock(ptr noundef %gth_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %found, %if.end8.7.cleanup_crit_edge, %for.inc.6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %found ], [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -2, %if.end8.7.cleanup_crit_edge ], [ -2, %for.inc.6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intel_th_gth_unassign(ptr nocapture noundef readonly %thdev, ptr nocapture noundef %othdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %thdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %output = getelementptr inbounds %struct.intel_th_device, ptr %othdev, i32 0, i32 7
  %2 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %output, align 8
  %host_mode = getelementptr inbounds %struct.intel_th_device, ptr %thdev, i32 0, i32 6
  %4 = ptrtoint ptr %host_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %host_mode, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %gth_lock = getelementptr inbounds %struct.gth_device, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %gth_lock) #7
  %6 = ptrtoint ptr %output to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %output, align 8
  %active = getelementptr inbounds %struct.intel_th_device, ptr %othdev, i32 0, i32 7, i32 4
  %7 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %active, align 1
  %output6 = getelementptr %struct.gth_device, ptr %1, i32 0, i32 4, i32 %3, i32 1
  %8 = ptrtoint ptr %output6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %output6, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %master.029 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx8 = getelementptr %struct.gth_device, ptr %1, i32 0, i32 5, i32 %master.029
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx8, align 1
  %conv = sext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp9 = icmp eq i32 %3, %conv
  br i1 %cmp9, label %if.then11, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %arrayidx8, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %master.029, 1
  %exitcond.not = icmp eq i32 %inc, 257
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef %gth_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intel_th_gth_prepare(ptr nocapture noundef readonly %thdev, ptr nocapture noundef readonly %output) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %thdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base.i = getelementptr inbounds %struct.gth_device, ptr %1, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %do.end.land.rhs_crit_edge, %entry
  %count.010 = phi i32 [ 10000, %entry ], [ %dec, %do.end.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %output, align 4
  %and.i = and i32 %3, 4
  %and1.i = shl i32 %3, 3
  %mul.i = and i32 %and1.i, 24
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %and.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !81
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %shl.i = shl nuw i32 255, %mul.i
  %and2.i = and i32 %7, %shl.i
  %8 = shl nuw nsw i32 32, %mul.i
  %9 = and i32 %and2.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %do.end, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.end:                                           ; preds = %land.rhs
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !86
  %dec = add nsw i32 %count.010, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.end.for.end_crit_edge, label %do.end.land.rhs_crit_edge

do.end.land.rhs_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %do.end.for.end_crit_edge, %land.rhs.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intel_th_gth_enable(ptr noundef readonly %thdev, ptr nocapture noundef %output) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %thdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %type.i = getelementptr inbounds %struct.intel_th_device, ptr %thdev, i32 0, i32 4
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %parent1.i.i = getelementptr inbounds %struct.device, ptr %thdev, i32 0, i32 1
  %4 = ptrtoint ptr %parent1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent1.i.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %thdev.addr.0.i = phi ptr [ %5, %if.then.i ], [ %thdev, %entry.if.end.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %thdev.addr.0.i, null
  br i1 %tobool.not.i, label %if.end.i.land.rhs.i_crit_edge, label %lor.rhs.i

if.end.i.land.rhs.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

lor.rhs.i:                                        ; preds = %if.end.i
  %type1.i = getelementptr inbounds %struct.intel_th_device, ptr %thdev.addr.0.i, i32 0, i32 4
  %6 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp2.i = icmp eq i32 %7, 1
  br i1 %cmp2.i, label %lor.rhs.i.land.rhs.i_crit_edge, label %if.end42.i

lor.rhs.i.land.rhs.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %lor.rhs.i.land.rhs.i_crit_edge, %if.end.i.land.rhs.i_crit_edge
  %.b50.i = load i1, ptr @to_intel_th.__already_done, align 1
  br i1 %.b50.i, label %land.rhs.i.to_intel_th.exit_crit_edge, label %if.then10.i, !prof !87

land.rhs.i.to_intel_th.exit_crit_edge:            ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_intel_th.exit

if.then10.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @to_intel_th.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 223, i32 noundef 9, ptr noundef null) #7
  br label %to_intel_th.exit

if.end42.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  %parent.i = getelementptr inbounds %struct.device, ptr %thdev.addr.0.i, i32 0, i32 1
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  br label %to_intel_th.exit

to_intel_th.exit:                                 ; preds = %if.end42.i, %if.then10.i, %land.rhs.i.to_intel_th.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end42.i ], [ null, %if.then10.i ], [ null, %land.rhs.i.to_intel_th.exit_crit_edge ]
  %gth_lock = getelementptr inbounds %struct.gth_device, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %gth_lock) #7
  %12 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %output, align 4
  %master3 = getelementptr %struct.gth_device, ptr %1, i32 0, i32 4, i32 %13, i32 4
  %call4 = tail call i32 @_find_next_bit_be(ptr noundef %master3, i32 noundef 257, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %call4)
  %cmp44 = icmp slt i32 %call4, 257
  br i1 %cmp44, label %for.body.lr.ph, label %to_intel_th.exit.for.end_crit_edge

to_intel_th.exit.for.end_crit_edge:               ; preds = %to_intel_th.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %to_intel_th.exit
  %base.i = getelementptr inbounds %struct.gth_device, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %master.045 = phi i32 [ %call4, %for.body.lr.ph ], [ %call11, %for.body.for.body_crit_edge ]
  %14 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %output, align 4
  %shr.i = lshr i32 %master.045, 1
  %and.i = and i32 %shr.i, 2147483644
  %add.i = add nuw i32 %and.i, 8
  %and1.i = shl i32 %master.045, 2
  %mul.i = and i32 %and1.i, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %master.045)
  %cmp.i36 = icmp ugt i32 %master.045, 255
  %spec.select.i = select i1 %cmp.i36, i32 136, i32 %add.i
  %spec.select18.i = select i1 %cmp.i36, i32 0, i32 %mul.i
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %spec.select.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !81
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %shl.i = shl nuw i32 15, %spec.select18.i
  %neg.i = xor i32 %shl.i, -1
  %and2.i = and i32 %19, %neg.i
  %or.i = or i32 %15, 8
  %shl5.i = shl i32 %or.i, %spec.select18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp319.i = icmp slt i32 %15, 0
  %or6.i = select i1 %cmp319.i, i32 0, i32 %shl5.i
  %val.0.i = or i32 %and2.i, %or6.i
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %21, i32 %spec.select.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %22) #7, !srcloc !84
  %23 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %output, align 4
  %master9 = getelementptr %struct.gth_device, ptr %1, i32 0, i32 4, i32 %24, i32 4
  %add = add nsw i32 %master.045, 1
  %call11 = tail call i32 @_find_next_bit_be(ptr noundef %master9, i32 noundef 257, i32 noundef %add) #7
  %cmp = icmp slt i32 %call11, 257
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %to_intel_th.exit.for.end_crit_edge
  %active = getelementptr inbounds %struct.intel_th_output, ptr %output, i32 0, i32 4
  %25 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %active, align 1
  tail call void @_raw_spin_unlock(ptr noundef %gth_lock) #7
  %drvdata = getelementptr inbounds %struct.intel_th, ptr %retval.0.i, i32 0, i32 3
  %26 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %drvdata, align 4
  %tobool.not = icmp eq ptr %27, null
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %cond.true

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cond.true:                                        ; preds = %for.end
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load = load i8, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool14.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool14.not, label %cond.true.if.end_crit_edge, label %if.then

cond.true.if.end_crit_edge:                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  %base.i37 = getelementptr inbounds %struct.gth_device, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %base.i37 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i37, align 4
  %add.ptr.i38 = getelementptr i8, ptr %30, i32 8192
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #7, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %32 = and i32 %31, -16777217
  %33 = ptrtoint ptr %base.i37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i37, align 4
  %add.ptr2.i = getelementptr i8, ptr %34, i32 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %32) #7, !srcloc !84
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.true.if.end_crit_edge, %for.end.if.end_crit_edge
  %base = getelementptr inbounds %struct.gth_device, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %36, i32 224
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !81
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %scratchpad = getelementptr inbounds %struct.intel_th_output, ptr %output, i32 0, i32 2
  %39 = ptrtoint ptr %scratchpad to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %scratchpad, align 4
  %or = or i32 %40, %38
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %add.ptr17 = getelementptr i8, ptr %42, i32 224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %43 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %43) #7, !srcloc !84
  %multiblock.i = getelementptr inbounds %struct.intel_th_output, ptr %output, i32 0, i32 3
  %44 = ptrtoint ptr %multiblock.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %multiblock.i, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i39 = icmp eq i8 %45, 0
  %spec.select.i40 = select i1 %tobool.not.i39, i32 16515072, i32 16515327
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %add.ptr.i42 = getelementptr i8, ptr %47, i32 200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %48 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i40) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %48) #7, !srcloc !84
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 4
  %add.ptr2.i43 = getelementptr i8, ptr %50, i32 216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i43, i32 0) #7, !srcloc !84
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intel_th_gth_switch(ptr noundef %thdev, ptr noundef %output) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %thdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base = getelementptr inbounds %struct.gth_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 12964
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !84
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 12964
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 16777216) #7, !srcloc !84
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %count.037 = phi i32 [ 10000, %entry ], [ %dec, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 12960
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #7, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !89
  %dec = add i32 %count.037, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  %tobool.not.not = xor i1 %tobool.not, true
  %9 = and i32 %8, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  %or.cond = select i1 %tobool.not.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  br i1 %tobool.not, label %do.body14, label %for.end.if.end24_crit_edge

for.end.if.end24_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

do.body14:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intel_th_gth_switch.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intel_th_gth_switch, %if.then20)) #7
          to label %if.end24 [label %if.then20], !srcloc !90

if.then20:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @intel_th_gth_switch.__UNIQUE_ID_ddebug230, ptr noundef %thdev, ptr noundef nonnull @.str.22) #7
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %do.body14, %for.end.if.end24_crit_edge
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr26 = getelementptr i8, ptr %11, i32 12964
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 0) #7, !srcloc !84
  tail call fastcc void @intel_th_gth_stop(ptr noundef %1, ptr noundef %output, i1 noundef zeroext false)
  %multiblock.i = getelementptr inbounds %struct.intel_th_output, ptr %output, i32 0, i32 3
  %12 = ptrtoint ptr %multiblock.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %multiblock.i, align 4, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  %spec.select.i = select i1 %tobool.not.i, i32 16515072, i32 16515327
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #7, !srcloc !84
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr2.i = getelementptr i8, ptr %18, i32 216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #7, !srcloc !84
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intel_th_gth_disable(ptr nocapture noundef readonly %thdev, ptr noundef %output) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %thdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %gth_lock = getelementptr inbounds %struct.gth_device, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %gth_lock) #7
  %active = getelementptr inbounds %struct.intel_th_output, ptr %output, i32 0, i32 4
  %2 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %active, align 1
  %3 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %output, align 4
  %master2 = getelementptr %struct.gth_device, ptr %1, i32 0, i32 4, i32 %4, i32 4
  %call3 = tail call i32 @_find_next_bit_be(ptr noundef %master2, i32 noundef 257, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %call3)
  %cmp28 = icmp slt i32 %call3, 257
  br i1 %cmp28, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %base.i = getelementptr inbounds %struct.gth_device, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %master.029 = phi i32 [ %call3, %for.body.lr.ph ], [ %call9, %for.body.for.body_crit_edge ]
  %shr.i = lshr i32 %master.029, 1
  %and.i = and i32 %shr.i, 2147483644
  %add.i = add nuw i32 %and.i, 8
  %and1.i = shl i32 %master.029, 2
  %mul.i = and i32 %and1.i, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %master.029)
  %cmp.i = icmp ugt i32 %master.029, 255
  %spec.select.i = select i1 %cmp.i, i32 136, i32 %add.i
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %spec.select.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !81
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %mul.i.op = shl nuw i32 15, %mul.i
  %mul.i.op.op = xor i32 %mul.i.op, -1
  %neg.i = select i1 %cmp.i, i32 -16, i32 %mul.i.op.op
  %and2.i = and i32 %8, %neg.i
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %10, i32 %spec.select.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %and2.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %11) #7, !srcloc !84
  %12 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %output, align 4
  %master7 = getelementptr %struct.gth_device, ptr %1, i32 0, i32 4, i32 %13, i32 4
  %add = add nsw i32 %master.029, 1
  %call9 = tail call i32 @_find_next_bit_be(ptr noundef %master7, i32 noundef 257, i32 noundef %add) #7
  %cmp = icmp slt i32 %call9, 257
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %gth_lock) #7
  tail call fastcc void @intel_th_gth_stop(ptr noundef %1, ptr noundef %output, i1 noundef zeroext true)
  %base = getelementptr inbounds %struct.gth_device, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 224
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !81
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %scratchpad = getelementptr inbounds %struct.intel_th_output, ptr %output, i32 0, i32 2
  %18 = ptrtoint ptr %scratchpad to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scratchpad, align 4
  %neg = xor i32 %19, -1
  %and = and i32 %17, %neg
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %21, i32 224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %22) #7, !srcloc !84
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_th_gth_set_output(ptr nocapture noundef readonly %thdev, i32 noundef %master) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %thdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %master, i32 256)
  %gth_lock = getelementptr inbounds %struct.gth_device, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %gth_lock) #7
  %arrayidx = getelementptr %struct.gth_device, ptr %1, i32 0, i32 5, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %cmp2 = icmp eq i8 %4, -1
  br i1 %cmp2, label %if.then4, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %master6 = getelementptr inbounds %struct.gth_device, ptr %1, i32 0, i32 4, i32 0, i32 4
  tail call void @_set_bit(i32 noundef %2, ptr noundef %master6) #7
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then4, %entry.if.end10_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %gth_lock) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intel_th_output_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gth_output_set(ptr nocapture noundef readonly %gth, i32 noundef %port, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %port, 4
  %and1 = shl i32 %port, 3
  %mul = and i32 %and1, 24
  %base = getelementptr inbounds %struct.gth_device, ptr %gth, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !81
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %shl = shl nuw i32 255, %mul
  %neg = xor i32 %shl, -1
  %and2 = and i32 %3, %neg
  %shl3 = shl i32 %config, %mul
  %or = or i32 %and2, %shl3
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %6) #7, !srcloc !84
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gth_smcfreq_set(ptr nocapture noundef readonly %gth, i32 noundef %port, i32 noundef %freq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %port, 2
  %mul = shl i32 %div, 2
  %add = add i32 %mul, 156
  %and = shl i32 %port, 4
  %mul1 = and i32 %and, 16
  %base = getelementptr inbounds %struct.gth_device, ptr %gth, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !81
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %shl = shl nuw i32 65535, %mul1
  %neg = xor i32 %shl, -1
  %and2 = and i32 %3, %neg
  %shl3 = shl i32 %freq, %mul1
  %or = or i32 %and2, %shl3
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %6) #7, !srcloc !84
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gth_output_get(ptr nocapture noundef readonly %gth, i32 noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %port, 4
  %and1 = shl i32 %port, 3
  %mul = and i32 %and1, 24
  %base = getelementptr inbounds %struct.gth_device, ptr %gth, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !81
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %shl = shl nuw i32 255, %mul
  %and2 = and i32 %3, %shl
  %shr = lshr i32 %and2, %mul
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gth_smcfreq_get(ptr nocapture noundef readonly %gth, i32 noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %port, 2
  %mul = shl i32 %div, 2
  %add = add i32 %mul, 156
  %and = shl i32 %port, 4
  %mul1 = and i32 %and, 16
  %base = getelementptr inbounds %struct.gth_device, ptr %gth, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !81
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %shl = shl nuw i32 65535, %mul1
  %and2 = and i32 %3, %shl
  %shr = lshr i32 %and2, %mul1
  ret i32 %shr
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @output_attr_show(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %gth1 = getelementptr inbounds %struct.output_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %gth1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gth1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  %gth_lock = getelementptr inbounds %struct.gth_device, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %gth_lock) #7
  %port = getelementptr inbounds %struct.output_attribute, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %parm = getelementptr inbounds %struct.output_attribute, ptr %attr, i32 0, i32 3
  %4 = ptrtoint ptr %parm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %parm, align 4
  %get.i = getelementptr [6 x %struct.output_parm], ptr @output_parms, i32 0, i32 %5, i32 1
  %6 = ptrtoint ptr %get.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get.i, align 4
  %call.i11 = tail call i32 %7(ptr noundef %1, i32 noundef %3) #7
  %mask2.i = getelementptr [6 x %struct.output_parm], ptr @output_parms, i32 0, i32 %5, i32 3
  %8 = ptrtoint ptr %mask2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask2.i, align 4
  %10 = tail call i32 @llvm.cttz.i32(i32 %9, i1 false) #7, !range !91
  %and.i = and i32 %9, %call.i11
  %shr.i = lshr i32 %and.i, %10
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.13, i32 noundef %shr.i)
  tail call void @_raw_spin_unlock(ptr noundef %gth_lock) #7
  %call.i12 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @output_attr_store(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %config = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %gth1 = getelementptr inbounds %struct.output_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %gth1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gth1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config) #7
  %2 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %config, align 4, !annotation !92
  %call = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %config) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  %gth_lock = getelementptr inbounds %struct.gth_device, ptr %1, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %gth_lock) #7
  %port = getelementptr inbounds %struct.output_attribute, ptr %attr, i32 0, i32 2
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %parm = getelementptr inbounds %struct.output_attribute, ptr %attr, i32 0, i32 3
  %5 = ptrtoint ptr %parm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %parm, align 4
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %config, align 4
  %get.i = getelementptr [6 x %struct.output_parm], ptr @output_parms, i32 0, i32 %6, i32 1
  %9 = ptrtoint ptr %get.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get.i, align 4
  %call.i12 = call i32 %10(ptr noundef %1, i32 noundef %4) #7
  %mask2.i = getelementptr [6 x %struct.output_parm], ptr @output_parms, i32 0, i32 %6, i32 3
  %11 = ptrtoint ptr %mask2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask2.i, align 4
  %13 = call i32 @llvm.cttz.i32(i32 %12, i1 false) #7, !range !91
  %neg.i = xor i32 %12, -1
  %and.i = and i32 %call.i12, %neg.i
  %shl.i = shl i32 %8, %13
  %and4.i = and i32 %shl.i, %12
  %or.i = or i32 %and4.i, %and.i
  %set.i = getelementptr [6 x %struct.output_parm], ptr @output_parms, i32 0, i32 %6, i32 2
  %14 = ptrtoint ptr %set.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set.i, align 4
  call void %15(ptr noundef %1, i32 noundef %4, i32 noundef %or.i) #7
  call void @_raw_spin_unlock(ptr noundef %gth_lock) #7
  %call.i13 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @master_attr_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %gth1 = getelementptr inbounds %struct.master_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %gth1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gth1, align 4
  %gth_lock = getelementptr inbounds %struct.gth_device, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %gth_lock) #7
  %master2 = getelementptr inbounds %struct.master_attribute, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %master2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master2, align 4
  %arrayidx = getelementptr %struct.gth_device, ptr %1, i32 0, i32 5, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  tail call void @_raw_spin_unlock(ptr noundef %gth_lock) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp = icmp sgt i8 %5, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv11 = zext i8 %5 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.13, i32 noundef %conv11)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = call ptr @memcpy(ptr %buf, ptr @.str.18, i32 10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %count.0 = phi i32 [ %call, %if.then ], [ 9, %if.else ]
  ret i32 %count.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @master_attr_store(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %port = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %gth1 = getelementptr inbounds %struct.master_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %gth1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gth1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port) #7
  %2 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %port, align 4, !annotation !92
  %call = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %port) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %5 = add i32 %4, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %5)
  %6 = icmp ult i32 %5, -9
  br i1 %6, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %gth_lock = getelementptr inbounds %struct.gth_device, ptr %1, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %gth_lock) #7
  %master6 = getelementptr inbounds %struct.master_attribute, ptr %attr, i32 0, i32 2
  %7 = ptrtoint ptr %master6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %master6, align 4
  %arrayidx = getelementptr %struct.gth_device, ptr %1, i32 0, i32 5, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %cmp7 = icmp sgt i8 %10, -1
  br i1 %cmp7, label %if.then9, label %if.end5.if.end22_crit_edge

if.end5.if.end22_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then9:                                         ; preds = %if.end5
  %conv90 = zext i8 %10 to i32
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %arrayidx, align 1
  %12 = ptrtoint ptr %master6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %master6, align 4
  %master15 = getelementptr %struct.gth_device, ptr %1, i32 0, i32 4, i32 %conv90, i32 4
  call void @_clear_bit(i32 noundef %13, ptr noundef %master15) #7
  %output18 = getelementptr %struct.gth_device, ptr %1, i32 0, i32 4, i32 %conv90, i32 1
  %14 = ptrtoint ptr %output18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %output18, align 4
  %active = getelementptr inbounds %struct.intel_th_output, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %active, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %if.then9.if.end22_crit_edge, label %if.then19

if.then9.if.end22_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then19:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %master6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %master6, align 4
  %shr.i = lshr i32 %19, 1
  %and.i = and i32 %shr.i, 2147483644
  %add.i = add nuw i32 %and.i, 8
  %and1.i = shl i32 %19, 2
  %mul.i = and i32 %and1.i, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %19)
  %cmp.i = icmp ugt i32 %19, 255
  %spec.select.i = select i1 %cmp.i, i32 136, i32 %add.i
  %base.i = getelementptr inbounds %struct.gth_device, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 %spec.select.i
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !81
  %23 = call i32 @llvm.bswap.i32(i32 %22) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %mul.i.op = shl nuw i32 15, %mul.i
  %mul.i.op.op = xor i32 %mul.i.op, -1
  %neg.i = select i1 %cmp.i, i32 -16, i32 %mul.i.op.op
  %and2.i = and i32 %neg.i, %23
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %25, i32 %spec.select.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  call void @arm_heavy_mb() #7
  %26 = call i32 @llvm.bswap.i32(i32 %and2.i) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %26) #7, !srcloc !84
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.then9.if.end22_crit_edge, %if.end5.if.end22_crit_edge
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp23 = icmp sgt i32 %28, -1
  br i1 %cmp23, label %if.then25, label %if.end22.if.end45_crit_edge

if.end22.if.end45_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then25:                                        ; preds = %if.end22
  %output28 = getelementptr %struct.gth_device, ptr %1, i32 0, i32 4, i32 %28, i32 1
  %29 = ptrtoint ptr %output28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %output28, align 4
  %tobool29.not = icmp eq ptr %30, null
  br i1 %tobool29.not, label %if.then25.unlock_crit_edge, label %if.end31

if.then25.unlock_crit_edge:                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end31:                                         ; preds = %if.then25
  %31 = ptrtoint ptr %master6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %master6, align 4
  %master35 = getelementptr %struct.gth_device, ptr %1, i32 0, i32 4, i32 %28, i32 4
  call void @_set_bit(i32 noundef %32, ptr noundef %master35) #7
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port, align 4
  %output39 = getelementptr %struct.gth_device, ptr %1, i32 0, i32 4, i32 %34, i32 1
  %35 = ptrtoint ptr %output39 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %output39, align 4
  %active40 = getelementptr inbounds %struct.intel_th_output, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %active40 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %active40, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool41.not = icmp eq i8 %38, 0
  br i1 %tobool41.not, label %if.end31.if.end45_crit_edge, label %if.then42

if.end31.if.end45_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then42:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %master6 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %master6, align 4
  %shr.i75 = lshr i32 %40, 1
  %and.i76 = and i32 %shr.i75, 2147483644
  %add.i77 = add nuw i32 %and.i76, 8
  %and1.i78 = shl i32 %40, 2
  %mul.i79 = and i32 %and1.i78, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %40)
  %cmp.i80 = icmp ugt i32 %40, 255
  %spec.select.i81 = select i1 %cmp.i80, i32 136, i32 %add.i77
  %spec.select18.i82 = select i1 %cmp.i80, i32 0, i32 %mul.i79
  %base.i83 = getelementptr inbounds %struct.gth_device, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %base.i83 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i83, align 4
  %add.ptr.i84 = getelementptr i8, ptr %42, i32 %spec.select.i81
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84) #7, !srcloc !81
  %44 = call i32 @llvm.bswap.i32(i32 %43) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %shl.i85 = shl nuw i32 15, %spec.select18.i82
  %neg.i86 = xor i32 %shl.i85, -1
  %and2.i87 = and i32 %44, %neg.i86
  %or.i = or i32 %34, 8
  %shl5.i88 = shl i32 %or.i, %spec.select18.i82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp319.i = icmp slt i32 %34, 0
  %or6.i = select i1 %cmp319.i, i32 0, i32 %shl5.i88
  %val.0.i = or i32 %and2.i87, %or6.i
  %45 = ptrtoint ptr %base.i83 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i83, align 4
  %add.ptr9.i89 = getelementptr i8, ptr %46, i32 %spec.select.i81
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  call void @arm_heavy_mb() #7
  %47 = call i32 @llvm.bswap.i32(i32 %val.0.i) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i89, i32 %47) #7, !srcloc !84
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end31.if.end45_crit_edge, %if.end22.if.end45_crit_edge
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port, align 4
  %conv46 = trunc i32 %49 to i8
  %50 = ptrtoint ptr %master6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %master6, align 4
  %arrayidx49 = getelementptr %struct.gth_device, ptr %1, i32 0, i32 5, i32 %51
  %52 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv46, ptr %arrayidx49, align 1
  br label %unlock

unlock:                                           ; preds = %if.end45, %if.then25.unlock_crit_edge
  %count.addr.0 = phi i32 [ %count, %if.end45 ], [ -19, %if.then25.unlock_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %gth_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %unlock ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @intel_th_gth_stop(ptr nocapture noundef readonly %gth, ptr noundef %output, i1 noundef zeroext %capture_done) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %output, i32 -952
  %driver = getelementptr i8, ptr %output, i32 -796
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %base = getelementptr inbounds %struct.gth_device, ptr %gth, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #7, !srcloc !84
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %6 = select i1 %capture_done, i32 -50331648, i32 -67108864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %6) #7, !srcloc !84
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %entry
  %count.050 = phi i32 [ 10000, %entry ], [ %dec, %for.body.land.rhs_crit_edge ]
  %reg.049 = phi i32 [ 0, %entry ], [ %12, %for.body.land.rhs_crit_edge ]
  %7 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %output, align 4
  %shl = shl nuw i32 1, %8
  %and = and i32 %shl, %reg.049
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %for.body, label %land.rhs.if.end31_crit_edge

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

for.body:                                         ; preds = %land.rhs
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %10, i32 212
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #7, !srcloc !81
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !94
  %dec = add nsw i32 %count.050, -1
  %tobool7.not = icmp eq i32 %dec, 0
  br i1 %tobool7.not, label %do.body18.critedge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

do.body18.critedge:                               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intel_th_gth_stop.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intel_th_gth_stop, %if.then26)) #7
          to label %if.end31 [label %if.then26], !srcloc !90

if.then26:                                        ; preds = %do.body18.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %gth to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gth, align 4
  %15 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %output, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @intel_th_gth_stop.__UNIQUE_ID_ddebug229, ptr noundef %14, ptr noundef nonnull @.str.24, i32 noundef %16) #7
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %do.body18.critedge, %land.rhs.if.end31_crit_edge
  %wait_empty = getelementptr inbounds %struct.intel_th_driver, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %wait_empty to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wait_empty, align 4
  %tobool32.not = icmp eq ptr %18, null
  br i1 %tobool32.not, label %if.end31.if.end35_crit_edge, label %if.then33

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %18(ptr noundef %add.ptr) #7
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end31.if.end35_crit_edge
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr37 = getelementptr i8, ptr %20, i32 216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 -67108864) #7, !srcloc !84
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !62, !64, !65, !66, !67, !69, !70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__initcall__kmod_intel_th_gth__231_845_intel_th_gth_driver_init6, !1, !"__initcall__kmod_intel_th_gth__231_845_intel_th_gth_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwtracing/intel_th/gth.c", i32 843, i32 1}
!2 = !{ptr @__exitcall_intel_th_gth_driver_exit, !1, !"__exitcall_intel_th_gth_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias232, !4, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!4 = !{!"../drivers/hwtracing/intel_th/gth.c", i32 847, i32 1}
!5 = !{ptr @__UNIQUE_ID_file233, !6, !"__UNIQUE_ID_file233", i1 false, i1 false}
!6 = !{!"../drivers/hwtracing/intel_th/gth.c", i32 848, i32 1}
!7 = !{ptr @__UNIQUE_ID_license234, !6, !"__UNIQUE_ID_license234", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description235, !9, !"__UNIQUE_ID_description235", i1 false, i1 false}
!9 = !{!"../drivers/hwtracing/intel_th/gth.c", i32 849, i32 1}
!10 = !{ptr @__UNIQUE_ID_author236, !11, !"__UNIQUE_ID_author236", i1 false, i1 false}
!11 = !{!"../drivers/hwtracing/intel_th/gth.c", i32 850, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwtracing/intel_th/gth.c", i32 838, i32 11}
!14 = !{ptr @intel_th_gth_driver, !15, !"intel_th_gth_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwtracing/intel_th/gth.c", i32 827, i32 31}
!16 = !{ptr @intel_th_gth_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/hwtracing/intel_th/gth.c", i32 767, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hwtracing/intel_th/gth.c", i32 809, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @intel_th_gth_probe._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @intel_th_gth_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hwtracing/intel_th/gth.c", i32 242, i32 2}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hwtracing/intel_th/gth.c", i32 243, i32 2}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwtracing/intel_th/gth.c", i32 244, i32 2}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hwtracing/intel_th/gth.c", i32 245, i32 2}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hwtracing/intel_th/gth.c", i32 246, i32 2}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwtracing/intel_th/gth.c", i32 247, i32 2}
!37 = !{ptr @output_parms, !38, !"output_parms", i1 false, i1 false}
!38 = !{!"../drivers/hwtracing/intel_th/gth.c", i32 241, i32 3}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hwtracing/intel_th/gth.c", i32 432, i32 48}
!41 = !{ptr @intel_th_output_attributes.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/hwtracing/intel_th/gth.c", i32 449, i32 4}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwtracing/intel_th/gth.c", i32 458, i32 27}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hwtracing/intel_th/gth.c", i32 335, i32 35}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwtracing/intel_th/gth.c", i32 386, i32 47}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hwtracing/intel_th/gth.c", i32 387, i32 42}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hwtracing/intel_th/gth.c", i32 387, i32 48}
!53 = !{ptr @intel_th_master_attributes.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/hwtracing/intel_th/gth.c", i32 396, i32 3}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwtracing/intel_th/gth.c", i32 403, i32 27}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwtracing/intel_th/gth.c", i32 159, i32 36}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../drivers/hwtracing/intel_th/intel_th.h", i32 223, i32 6}
!61 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hwtracing/intel_th/gth.c", i32 642, i32 3}
!64 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @intel_th_gth_switch.__UNIQUE_ID_ddebug230, !63, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hwtracing/intel_th/gth.c", i32 496, i32 3}
!69 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @intel_th_gth_stop.__UNIQUE_ID_ddebug229, !68, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i8 0, i8 2}
!81 = !{i64 4790554}
!82 = !{i64 2152330903}
!83 = !{i64 2152332258}
!84 = !{i64 4790136}
!85 = !{i64 2153869754}
!86 = !{i64 2153869596}
!87 = !{!"branch_weights", i32 2000, i32 1}
!88 = !{i64 2153870729}
!89 = !{i64 2153870571}
!90 = !{i64 2148972685, i64 2148972690, i64 2148972703, i64 2148972747, i64 2148972781, i64 2148972802}
!91 = !{i32 0, i32 33}
!92 = !{!"auto-init"}
!93 = !{i64 2153866428}
!94 = !{i64 2153866270}
