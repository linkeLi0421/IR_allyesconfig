; ModuleID = '/llk/IR_all_yes/drivers/char/ipmi/ipmi_ipmb.c_pt.bc'
source_filename = "../drivers/char/ipmi/ipmi_ipmb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.ipmi_ipmb_dev = type { ptr, ptr, %struct.ipmi_smi_handlers, i8, i8, i8, i32, i32, ptr, ptr, ptr, %struct.semaphore, %struct.semaphore, %struct.spinlock, i8, [277 x i8], i32, [277 x i8], i32, i8 }
%struct.ipmi_smi_handlers = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.ipmi_smi_msg = type { %struct.list_head, i32, i32, ptr, i32, [272 x i8], i32, [272 x i8], ptr }

@__param_str_bmcaddr = internal constant [18 x i8] c"ipmi_ipmb.bmcaddr\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@bmcaddr = internal global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@__param_bmcaddr = internal constant %struct.kernel_param { ptr @__param_str_bmcaddr, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @bmcaddr } }, section "__param", align 4
@__UNIQUE_ID_bmcaddrtype288 = internal constant [31 x i8] c"ipmi_ipmb.parmtype=bmcaddr:int\00", section ".modinfo", align 1
@__UNIQUE_ID_bmcaddr289 = internal constant [47 x i8] c"ipmi_ipmb.parm=bmcaddr:Address to use for BMC.\00", section ".modinfo", align 1
@__param_str_retry_time_ms = internal constant [24 x i8] c"ipmi_ipmb.retry_time_ms\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@retry_time_ms = internal global { i32, [28 x i8] } { i32 250, [28 x i8] zeroinitializer }, align 32
@__param_retry_time_ms = internal constant %struct.kernel_param { ptr @__param_str_retry_time_ms, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @retry_time_ms } }, section "__param", align 4
@__UNIQUE_ID_retry_time_mstype290 = internal constant [38 x i8] c"ipmi_ipmb.parmtype=retry_time_ms:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_max_retries291 = internal constant [74 x i8] c"ipmi_ipmb.parm=max_retries:Timeout time between retries, in milliseconds.\00", section ".modinfo", align 1
@__param_str_max_retries = internal constant [22 x i8] c"ipmi_ipmb.max_retries\00", align 1
@max_retries = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_max_retries = internal constant %struct.kernel_param { ptr @__param_str_max_retries, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @max_retries } }, section "__param", align 4
@__UNIQUE_ID_max_retriestype292 = internal constant [36 x i8] c"ipmi_ipmb.parmtype=max_retries:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_max_retries293 = internal constant [71 x i8] c"ipmi_ipmb.parm=max_retries:Max resends of a command before timing out.\00", section ".modinfo", align 1
@__initcall__kmod_ipmi_ipmb__294_535_ipmi_ipmb_driver_init6 = internal global ptr @ipmi_ipmb_driver_init, section ".initcall6.init", align 4
@ipmi_ipmb_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr @ipmi_ipmb_probe, ptr @ipmi_ipmb_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_ipmi_ipmb_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ipmi_ipmb_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ipmi_ipmb_driver_exit = internal global ptr @ipmi_ipmb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [31 x i8] c"ipmi_ipmb.author=Corey Minyard\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [39 x i8] c"ipmi_ipmb.description=IPMI IPMB driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [43 x i8] c"ipmi_ipmb.file=drivers/char/ipmi/ipmi_ipmb\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [25 x i8] c"ipmi_ipmb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ipmi-ipmb\00", [22 x i8] zeroinitializer }, align 32
@of_ipmi_ipmb_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] c"ipmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ipmi-ipmb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ipmi_ipmb_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ipmi-ipmb\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bmcaddr\00", [24 x i8] zeroinitializer }, align 32
@ipmi_ipmb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 455, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid bmc address value %2.2x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ipmi_ipmb_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/char/ipmi/ipmi_ipmb.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ipmi_ipmb_probe._entry_ptr = internal global ptr @ipmi_ipmb_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"retry-time\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max-retries\00", [20 x i8] zeroinitializer }, align 32
@ipmi_ipmb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&iidev->lock\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kipmb%4.4x\00", [21 x i8] zeroinitializer }, align 32
@ipmi_ipmb_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 491, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Could not start kernel thread: error %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ipmi_ipmb_probe._entry_ptr.13 = internal global ptr @ipmi_ipmb_probe._entry.11, section ".printk_index", align 4
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 4]
@___asan_gen_.16 = private unnamed_addr constant [8 x i8] c"bmcaddr\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 24, i32 12 }
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"retry_time_ms\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 28, i32 21 }
@___asan_gen_.22 = private unnamed_addr constant [12 x i8] c"max_retries\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 32, i32 21 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"ipmi_ipmb_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 525, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 528, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"of_ipmi_ipmb_match\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 510, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"ipmi_ipmb_id\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 519, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 450, i32 40 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 454, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 459, i32 41 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 463, i32 41 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 482, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 486, i32 18 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private constant [33 x i8] c"../drivers/char/ipmi/ipmi_ipmb.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 490, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 33, i32 31 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 34, i32 28 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 35, i32 39 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_bmcaddr289, ptr @__UNIQUE_ID_bmcaddrtype288, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__UNIQUE_ID_max_retries291, ptr @__UNIQUE_ID_max_retries293, ptr @__UNIQUE_ID_max_retriestype292, ptr @__UNIQUE_ID_retry_time_mstype290, ptr @__exitcall_ipmi_ipmb_driver_exit, ptr @__initcall__kmod_ipmi_ipmb__294_535_ipmi_ipmb_driver_init6, ptr @__param_bmcaddr, ptr @__param_max_retries, ptr @__param_retry_time_ms, ptr @ipmi_ipmb_driver_exit, ptr @ipmi_ipmb_probe._entry, ptr @ipmi_ipmb_probe._entry.11, ptr @ipmi_ipmb_probe._entry_ptr, ptr @ipmi_ipmb_probe._entry_ptr.13, ptr @bmcaddr, ptr @retry_time_ms, ptr @max_retries, ptr @ipmi_ipmb_driver, ptr @.str, ptr @of_ipmi_ipmb_match, ptr @ipmi_ipmb_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ipmi_ipmb_probe.__key, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @sema_init.__key, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bmcaddr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @retry_time_ms to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_retries to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_ipmb_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_ipmi_ipmb_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_ipmb_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_ipmb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_ipmb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_ipmb_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_ipmb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ipmi_ipmb_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ipmi_ipmb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @ipmi_ipmb_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_ipmb_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 808, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %bmcaddr = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 5
  %call.i.i = tail call i32 @of_property_read_variable_u8_array(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef %bmcaddr, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.not = icmp sgt i32 %call.i.i, -1
  br i1 %cmp.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load i32, ptr @bmcaddr, align 4
  %conv = trunc i32 %2 to i8
  %3 = ptrtoint ptr %bmcaddr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %bmcaddr, align 2
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %4 = ptrtoint ptr %bmcaddr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bmcaddr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp9 = icmp ne i8 %5, 0
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool13.not = icmp eq i8 %6, 0
  %or.cond = and i1 %cmp9, %tobool13.not
  br i1 %or.cond, label %if.end18, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %conv17 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %conv17) #10
  br label %cleanup

if.end18:                                         ; preds = %if.end6
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %retry_time_ms = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 6
  %call.i.i119 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.7, ptr noundef %retry_time_ms, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i119)
  %cmp21.not = icmp sgt i32 %call.i.i119, -1
  br i1 %cmp21.not, label %if.end18.if.end25_crit_edge, label %if.then23

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %9 = load i32, ptr @retry_time_ms, align 4
  %10 = ptrtoint ptr %retry_time_ms to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %retry_time_ms, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end18.if.end25_crit_edge
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %max_retries = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 7
  %call.i.i120 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.8, ptr noundef %max_retries, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i120)
  %cmp28.not = icmp sgt i32 %call.i.i120, -1
  br i1 %cmp28.not, label %if.end25.if.end32_crit_edge, label %if.then30

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %13 = load i32, ptr @max_retries, align 4
  %14 = ptrtoint ptr %max_retries to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %max_retries, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end25.if.end32_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %16 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %client, align 8
  %18 = or i16 %17, 32
  store i16 %18, ptr %client, align 8
  %call35 = tail call i32 @i2c_slave_register(ptr noundef %client, ptr noundef nonnull @ipmi_ipmb_slave_cb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end38:                                         ; preds = %if.end32
  %client39 = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %client39 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %client, ptr %client39, align 4
  %flags40 = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %flags40 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %flags40, align 4
  %start_processing = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %start_processing to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ipmi_ipmb_start_processing, ptr %start_processing, align 4
  %shutdown = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %shutdown to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ipmi_ipmb_shutdown, ptr %shutdown, align 4
  %sender = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 2, i32 5
  %23 = ptrtoint ptr %sender to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ipmi_ipmb_sender, ptr %sender, align 4
  %request_events = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 2, i32 6
  %24 = ptrtoint ptr %request_events to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @ipmi_ipmb_request_events, ptr %request_events, align 4
  %lock = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @ipmi_ipmb_probe.__key, i16 noundef signext 3) #7
  %wake_thread = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 11
  %wait_list1.i = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 11, i32 2
  %25 = ptrtoint ptr %wake_thread to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %wake_thread, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 11, i32 0, i32 1
  %26 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 11, i32 0, i32 2
  %27 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 11, i32 0, i32 3
  %28 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 11, i32 0, i32 4
  %29 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 11, i32 0, i32 4, i32 2
  %30 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.14, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 11, i32 0, i32 4, i32 3
  %31 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 11, i32 0, i32 4, i32 4
  %32 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 11, i32 0, i32 4, i32 5
  %33 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i, i32 0, i32 14)
  %34 = ptrtoint ptr %wait_list1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %wait_list1.i, ptr %wait_list1.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 11, i32 2, i32 1
  %35 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %wait_list1.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %got_rsp = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 12
  %wait_list1.i121 = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 12, i32 2
  %36 = ptrtoint ptr %got_rsp to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %got_rsp, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i122 = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 12, i32 0, i32 1
  %37 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i122 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i122, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i123 = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 12, i32 0, i32 2
  %38 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i123 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i123, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i124 = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 12, i32 0, i32 3
  %39 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i124 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i124, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i125 = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 12, i32 0, i32 4
  %40 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i125, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i126 = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 12, i32 0, i32 4, i32 2
  %41 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i126 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.14, ptr %.compoundliteral.sroa.6.0..sroa_idx.i126, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i127 = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 12, i32 0, i32 4, i32 3
  %42 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i127 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i127, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i128 = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 12, i32 0, i32 4, i32 4
  %43 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i128 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i128, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i129 = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 12, i32 0, i32 4, i32 5
  %44 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i129, i32 0, i32 14)
  %45 = ptrtoint ptr %wait_list1.i121 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %wait_list1.i121, ptr %wait_list1.i121, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i130 = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 12, i32 2, i32 1
  %46 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i130 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %wait_list1.i121, ptr %.compoundliteral.sroa.10.0..sroa_idx.i130, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i125, ptr noundef nonnull @.str.15, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %47 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %addr, align 2
  %conv49 = zext i16 %48 to i32
  %call50 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @ipmi_ipmb_thread, ptr noundef nonnull %call.i, i32 noundef -1, ptr noundef nonnull @.str.10, i32 noundef %conv49) #7
  %cmp.i = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then57, label %if.end64

if.then57:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %thread133 = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 10
  %49 = ptrtoint ptr %thread133 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call50, ptr %thread133, align 4
  %50 = ptrtoint ptr %call50 to i32
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %50) #10
  br label %out_err

if.end64:                                         ; preds = %if.end38
  %handlers = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 2
  %call53 = tail call i32 @wake_up_process(ptr noundef %call50) #7
  %thread = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %call.i, i32 0, i32 10
  %51 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call50, ptr %thread, align 4
  %52 = ptrtoint ptr %bmcaddr to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bmcaddr, align 2
  %call68 = tail call i32 @ipmi_add_smi(ptr noundef null, ptr noundef %handlers, ptr noundef nonnull %call.i, ptr noundef %dev1, i8 noundef zeroext %53) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end64.cleanup_crit_edge, label %if.end64.out_err_crit_edge

if.end64.out_err_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

out_err:                                          ; preds = %if.end64.out_err_crit_edge, %if.then57
  %rv.0 = phi i32 [ %50, %if.then57 ], [ %call68, %if.end64.out_err_crit_edge ]
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %driver_data.i.i, align 4
  %client1.i = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %client1.i, align 4
  %tobool.not.i = icmp eq ptr %57, null
  br i1 %tobool.not.i, label %out_err.if.end.i_crit_edge, label %if.then.i

out_err.if.end.i_crit_edge:                       ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %client1.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %client1.i, align 4
  %call3.i = tail call i32 @i2c_slave_unregister(ptr noundef %client) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %out_err.if.end.i_crit_edge
  %thread.i.i = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %55, i32 0, i32 10
  %59 = ptrtoint ptr %thread.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %thread.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %60, null
  br i1 %tobool.not.i.i, label %if.end.i.cleanup_crit_edge, label %if.then.i.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %thread.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %thread.i.i, align 4
  %stopping.i.i = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %55, i32 0, i32 14
  %62 = ptrtoint ptr %stopping.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %stopping.i.i, align 4
  %wake_thread.i.i = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %55, i32 0, i32 11
  tail call void @up(ptr noundef %wake_thread.i.i) #7
  %got_rsp.i.i = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %55, i32 0, i32 12
  tail call void @up(ptr noundef %got_rsp.i.i) #7
  %call.i.i132 = tail call i32 @kthread_stop(ptr noundef nonnull %60) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.end.i.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call35, %if.end32.cleanup_crit_edge ], [ 0, %if.end64.cleanup_crit_edge ], [ %rv.0, %if.end.i.cleanup_crit_edge ], [ %rv.0, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_ipmb_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %client1 = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %client1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %client1, align 4
  %call3 = tail call i32 @i2c_slave_unregister(ptr noundef %client) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %thread.i = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %thread.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.ipmi_ipmb_stop_thread.exit_crit_edge, label %if.then.i

if.end.ipmi_ipmb_stop_thread.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ipmi_ipmb_stop_thread.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %thread.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %thread.i, align 4
  %stopping.i = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %stopping.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %stopping.i, align 4
  %wake_thread.i = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %1, i32 0, i32 11
  tail call void @up(ptr noundef %wake_thread.i) #7
  %got_rsp.i = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %1, i32 0, i32 12
  tail call void @up(ptr noundef %got_rsp.i) #7
  %call.i = tail call i32 @kthread_stop(ptr noundef nonnull %6) #7
  br label %ipmi_ipmb_stop_thread.exit

ipmi_ipmb_stop_thread.exit:                       ; preds = %if.then.i, %if.end.ipmi_ipmb_stop_thread.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_slave_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_ipmb_slave_cb(ptr nocapture noundef readonly %client, i32 noundef %event, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb2
    i32 0, label %entry.sw.bb8_crit_edge
    i32 4, label %entry.sw.bb8_crit_edge17
  ]

entry.sw.bb8_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ipmi_ipmb_check_msg_done(ptr noundef %1)
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr, align 2
  %conv = trunc i16 %4 to i8
  %shl = shl i8 %conv, 1
  %rcvmsg = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %rcvmsg to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %shl, ptr %rcvmsg, align 4
  %rcvlen = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %rcvlen to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %rcvlen, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %rcvlen3 = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %rcvlen3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rcvlen3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 276, i32 %8)
  %cmp = icmp ugt i32 %8, 276
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %overrun = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %overrun to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %overrun, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val, align 1
  %inc = add nuw nsw i32 %8, 1
  %12 = ptrtoint ptr %rcvlen3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %inc, ptr %rcvlen3, align 4
  %arrayidx7 = getelementptr %struct.ipmi_ipmb_dev, ptr %1, i32 0, i32 17, i32 %8
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %11, ptr %arrayidx7, align 1
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge17
  tail call fastcc void @ipmi_ipmb_check_msg_done(ptr noundef %1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %if.else, %if.then, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ipmi_ipmb_start_processing(ptr nocapture noundef writeonly %send_info, ptr noundef %new_intf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %send_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %new_intf, ptr %send_info, align 4
  %ready = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %send_info, i32 0, i32 3
  %1 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %ready, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipmi_ipmb_shutdown(ptr noundef %send_info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %thread.i = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %send_info, i32 0, i32 10
  %0 = ptrtoint ptr %thread.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %thread.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.ipmi_ipmb_stop_thread.exit_crit_edge, label %if.then.i

entry.ipmi_ipmb_stop_thread.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ipmi_ipmb_stop_thread.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %thread.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %thread.i, align 4
  %stopping.i = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %send_info, i32 0, i32 14
  %3 = ptrtoint ptr %stopping.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %stopping.i, align 4
  %wake_thread.i = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %send_info, i32 0, i32 11
  tail call void @up(ptr noundef %wake_thread.i) #7
  %got_rsp.i = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %send_info, i32 0, i32 12
  tail call void @up(ptr noundef %got_rsp.i) #7
  %call.i = tail call i32 @kthread_stop(ptr noundef nonnull %1) #7
  br label %ipmi_ipmb_stop_thread.exit

ipmi_ipmb_stop_thread.exit:                       ; preds = %if.then.i, %entry.ipmi_ipmb_stop_thread.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipmi_ipmb_sender(ptr noundef %send_info, ptr noundef %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %send_info, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %next_msg = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %send_info, i32 0, i32 8
  %0 = ptrtoint ptr %next_msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next_msg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end15, label %do.body8, !prof !80

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/char/ipmi/ipmi_ipmb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 413, 0\0A.popsection", ""() #7, !srcloc !81
  unreachable

do.end15:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %next_msg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %msg, ptr %next_msg, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  %wake_thread = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %send_info, i32 0, i32 11
  tail call void @up(ptr noundef %wake_thread) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ipmi_ipmb_request_events(ptr nocapture noundef %send_info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_ipmb_thread(ptr noundef %data) #2 align 64 {
entry:
  %i2c_msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call279 = call zeroext i1 @kthread_should_stop() #7
  br i1 %call279, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %wake_thread = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %data, i32 0, i32 11
  %stopping = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %data, i32 0, i32 14
  %lock = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %data, i32 0, i32 13
  %next_msg = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %data, i32 0, i32 8
  %bmcaddr.i = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %data, i32 0, i32 5
  %xmitmsg11.i = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %data, i32 0, i32 15
  %arrayidx16.i = getelementptr %struct.ipmi_ipmb_dev, ptr %data, i32 0, i32 15, i32 1
  %arrayidx18.i = getelementptr %struct.ipmi_ipmb_dev, ptr %data, i32 0, i32 15, i32 4
  %add.ptr21.i = getelementptr %struct.ipmi_ipmb_dev, ptr %data, i32 0, i32 15, i32 5
  %0 = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %data, i32 0, i32 16
  %client.i = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %data, i32 0, i32 1
  %arrayidx32.i = getelementptr %struct.ipmi_ipmb_dev, ptr %data, i32 0, i32 15, i32 3
  %curr_seq.i = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %data, i32 0, i32 4
  %arrayidx52.i = getelementptr %struct.ipmi_ipmb_dev, ptr %data, i32 0, i32 15, i32 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %i2c_msg, i32 0, i32 2
  %flags28 = getelementptr inbounds %struct.i2c_msg, ptr %i2c_msg, i32 0, i32 1
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %i2c_msg, i32 0, i32 3
  %working_msg = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %data, i32 0, i32 9
  %got_rsp = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %data, i32 0, i32 12
  %retry_time_ms = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %data, i32 0, i32 6
  %max_retries = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %data, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %i2c_msg) #7
  %1 = call ptr @memset(ptr %i2c_msg, i32 255, i32 12)
  %call1 = call i32 @down_interruptible(ptr noundef %wake_thread) #7
  %2 = ptrtoint ptr %stopping to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stopping, align 4, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %cleanup.thread

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2c_msg) #7
  br label %while.end

if.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.body5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body5:                                         ; preds = %if.end
  %call7 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %4 = ptrtoint ptr %next_msg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next_msg, align 4
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %if.end14.thread, label %if.end18

if.end14.thread:                                  ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #7
  br label %cleanup

if.end18:                                         ; preds = %do.body5
  %6 = ptrtoint ptr %next_msg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %next_msg, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #7
  %type.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i156 = icmp eq i32 %8, 1
  br i1 %cmp.i156, label %if.then.i157, label %if.else.i158

if.then.i157:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %data.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %5, i32 0, i32 5
  %arrayidx.i = getelementptr %struct.ipmi_smi_msg, ptr %5, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %11 = ptrtoint ptr %xmitmsg11.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %xmitmsg11.i, align 1
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data.i, align 4
  %14 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx16.i, align 1
  %add.ptr9.i = getelementptr %struct.ipmi_smi_msg, ptr %5, i32 0, i32 5, i32 2
  %data_size.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %5, i32 0, i32 4
  %15 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_size.i, align 4
  %sub.i = add i32 %16, -2
  %17 = call ptr @memcpy(ptr %arrayidx18.i, ptr %add.ptr9.i, i32 %sub.i)
  br label %if.end.i159

if.else.i158:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %bmcaddr.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bmcaddr.i, align 2
  %20 = ptrtoint ptr %xmitmsg11.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %xmitmsg11.i, align 1
  %data13.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %5, i32 0, i32 5
  %21 = ptrtoint ptr %data13.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %data13.i, align 4
  %23 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx16.i, align 1
  %24 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx18.i, align 1
  %add.ptr24.i = getelementptr %struct.ipmi_smi_msg, ptr %5, i32 0, i32 5, i32 1
  %data_size25.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %5, i32 0, i32 4
  %25 = ptrtoint ptr %data_size25.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_size25.i, align 4
  %sub26.i = add i32 %26, -1
  %27 = call ptr @memcpy(ptr %add.ptr21.i, ptr %add.ptr24.i, i32 %sub26.i)
  br label %if.end.i159

if.end.i159:                                      ; preds = %if.else.i158, %if.then.i157
  %data_size25.sink.i = phi ptr [ %data_size25.i, %if.else.i158 ], [ %data_size.i, %if.then.i157 ]
  %.sink94.i = phi i32 [ 4, %if.else.i158 ], [ 2, %if.then.i157 ]
  %28 = ptrtoint ptr %data_size25.sink.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_size25.sink.i, align 4
  %add28.i = add i32 %29, %.sink94.i
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add28.i, ptr %0, align 4
  %31 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %client.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %addr.i, align 2
  %conv.i = trunc i16 %34 to i8
  %shl.i = shl i8 %conv.i, 1
  %35 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %shl.i, ptr %arrayidx32.i, align 1
  %data33.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %5, i32 0, i32 5
  %36 = ptrtoint ptr %data33.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %data33.i, align 4
  %38 = and i8 %37, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp36.i = icmp eq i8 %38, 0
  br i1 %cmp36.i, label %if.then38.i, label %if.end.i159.ipmi_ipmb_format_for_xmit.exit_crit_edge

if.end.i159.ipmi_ipmb_format_for_xmit.exit_crit_edge: ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #9
  br label %ipmi_ipmb_format_for_xmit.exit

if.then38.i:                                      ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx18.i, align 1
  %41 = and i8 %40, 3
  %42 = ptrtoint ptr %curr_seq.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %curr_seq.i, align 1
  %shl44.i = shl i8 %43, 2
  %or.i = or i8 %shl44.i, %41
  store i8 %or.i, ptr %arrayidx18.i, align 1
  br label %ipmi_ipmb_format_for_xmit.exit

ipmi_ipmb_format_for_xmit.exit:                   ; preds = %if.then38.i, %if.end.i159.ipmi_ipmb_format_for_xmit.exit_crit_edge
  %call.i = call zeroext i8 @ipmb_checksum(ptr noundef %xmitmsg11.i, i32 noundef 2) #7
  %44 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %call.i, ptr %arrayidx52.i, align 1
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %0, align 4
  %sub57.i = add i32 %46, -3
  %call58.i = call zeroext i8 @ipmb_checksum(ptr noundef %arrayidx32.i, i32 noundef %sub57.i) #7
  %47 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %0, align 4
  %arrayidx61.i = getelementptr %struct.ipmi_ipmb_dev, ptr %data, i32 0, i32 15, i32 %48
  %49 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %call58.i, ptr %arrayidx61.i, align 1
  %50 = load i32, ptr %0, align 4
  %inc.i = add i32 %50, 1
  store i32 %inc.i, ptr %0, align 4
  %51 = trunc i32 %inc.i to i16
  %conv19275 = add i16 %51, -1
  %52 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv19275, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %conv19275)
  %cmp22276 = icmp ugt i16 %conv19275, 32
  br i1 %cmp22276, label %ipmi_ipmb_format_for_xmit.exit.if.then24_crit_edge, label %ipmi_ipmb_format_for_xmit.exit.if.end25_crit_edge

ipmi_ipmb_format_for_xmit.exit.if.end25_crit_edge: ; preds = %ipmi_ipmb_format_for_xmit.exit
  br label %if.end25

ipmi_ipmb_format_for_xmit.exit.if.then24_crit_edge: ; preds = %ipmi_ipmb_format_for_xmit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

if.then24:                                        ; preds = %do.body76.if.then24_crit_edge, %ipmi_ipmb_format_for_xmit.exit.if.then24_crit_edge
  %msg.1.lcssa = phi ptr [ %5, %ipmi_ipmb_format_for_xmit.exit.if.then24_crit_edge ], [ %159, %do.body76.if.then24_crit_edge ]
  %data.i160 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %msg.1.lcssa, i32 0, i32 5
  %53 = ptrtoint ptr %data.i160 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %data.i160, align 4
  %55 = and i8 %54, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i = icmp eq i8 %55, 0
  br i1 %tobool.not.i, label %if.then24.if.end.i165_crit_edge, label %if.then.i162

if.then24.if.end.i165_crit_edge:                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i165

if.then.i162:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %data.i160 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 28, ptr %data.i160, align 4
  %arrayidx4.i = getelementptr %struct.ipmi_smi_msg, ptr %msg.1.lcssa, i32 0, i32 5, i32 3
  %57 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 52, ptr %arrayidx4.i, align 1
  %arrayidx6.i = getelementptr %struct.ipmi_smi_msg, ptr %msg.1.lcssa, i32 0, i32 5, i32 4
  %58 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -56, ptr %arrayidx6.i, align 4
  %data_size.i161 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %msg.1.lcssa, i32 0, i32 4
  %59 = ptrtoint ptr %data_size.i161 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 5, ptr %data_size.i161, align 4
  br label %if.end.i165

if.end.i165:                                      ; preds = %if.then.i162, %if.then24.if.end.i165_crit_edge
  %60 = ptrtoint ptr %data.i160 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %data.i160, align 4
  %62 = or i8 %61, 4
  %rsp.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %msg.1.lcssa, i32 0, i32 7
  %63 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %rsp.i, align 4
  %type.i163 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %msg.1.lcssa, i32 0, i32 1
  %64 = ptrtoint ptr %type.i163 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %type.i163, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp.i164 = icmp eq i32 %65, 1
  %arrayidx15.i = getelementptr %struct.ipmi_smi_msg, ptr %msg.1.lcssa, i32 0, i32 5, i32 1
  %66 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx15.i, align 1
  br i1 %cmp.i164, label %if.then13.i, label %if.end.i165.ipmi_ipmb_send_response.exit_crit_edge

if.end.i165.ipmi_ipmb_send_response.exit_crit_edge: ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #9
  br label %ipmi_ipmb_send_response.exit

if.then13.i:                                      ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx19.i = getelementptr %struct.ipmi_smi_msg, ptr %msg.1.lcssa, i32 0, i32 5, i32 2
  %68 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx19.i, align 2
  %arrayidx23.i = getelementptr %struct.ipmi_smi_msg, ptr %msg.1.lcssa, i32 0, i32 5, i32 3
  %70 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx23.i, align 1
  %arrayidx25.i = getelementptr %struct.ipmi_smi_msg, ptr %msg.1.lcssa, i32 0, i32 7, i32 3
  %72 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %arrayidx25.i, align 1
  %arrayidx27.i = getelementptr %struct.ipmi_smi_msg, ptr %msg.1.lcssa, i32 0, i32 7, i32 4
  %73 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 -56, ptr %arrayidx27.i, align 4
  br label %ipmi_ipmb_send_response.exit

ipmi_ipmb_send_response.exit:                     ; preds = %if.then13.i, %if.end.i165.ipmi_ipmb_send_response.exit_crit_edge
  %cc.sink.i = phi i8 [ %69, %if.then13.i ], [ -56, %if.end.i165.ipmi_ipmb_send_response.exit_crit_edge ]
  %.sink.i = phi i32 [ 5, %if.then13.i ], [ 3, %if.end.i165.ipmi_ipmb_send_response.exit_crit_edge ]
  %74 = getelementptr %struct.ipmi_smi_msg, ptr %msg.1.lcssa, i32 0, i32 7, i32 1
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %67, ptr %74, align 1
  %76 = getelementptr %struct.ipmi_smi_msg, ptr %msg.1.lcssa, i32 0, i32 7, i32 2
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %cc.sink.i, ptr %76, align 2
  %78 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %msg.1.lcssa, i32 0, i32 6
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %.sink.i, ptr %78, align 4
  %80 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %data, align 4
  call void @ipmi_smi_msg_received(ptr noundef %81, ptr noundef nonnull %msg.1.lcssa) #7
  br label %cleanup

if.end25:                                         ; preds = %do.body76.if.end25_crit_edge, %ipmi_ipmb_format_for_xmit.exit.if.end25_crit_edge
  %msg.1278 = phi ptr [ %159, %do.body76.if.end25_crit_edge ], [ %5, %ipmi_ipmb_format_for_xmit.exit.if.end25_crit_edge ]
  %retries.0277 = phi i32 [ %inc, %do.body76.if.end25_crit_edge ], [ 0, %ipmi_ipmb_format_for_xmit.exit.if.end25_crit_edge ]
  %82 = ptrtoint ptr %xmitmsg11.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %xmitmsg11.i, align 1
  %84 = lshr i8 %83, 1
  %conv27 = zext i8 %84 to i16
  %85 = ptrtoint ptr %i2c_msg to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv27, ptr %i2c_msg, align 4
  %86 = ptrtoint ptr %flags28 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 0, ptr %flags28, align 2
  %87 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %arrayidx16.i, ptr %buf, align 4
  %88 = ptrtoint ptr %working_msg to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %msg.1278, ptr %working_msg, align 4
  %89 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %client.i, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %adapter, align 8
  %call30 = call i32 @i2c_transfer(ptr noundef %92, ptr noundef nonnull %i2c_msg, i32 noundef 1) #7
  %data31 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %msg.1278, i32 0, i32 5
  %93 = ptrtoint ptr %data31 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %data31, align 4
  %95 = and i8 %94, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool35.not = icmp eq i8 %95, 0
  br i1 %tobool35.not, label %if.end41, label %if.then36

if.then36:                                        ; preds = %if.end25
  %96 = ptrtoint ptr %working_msg to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %working_msg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp38 = icmp slt i32 %call30, 0
  %conv40 = select i1 %cmp38, i8 -126, i8 0
  %97 = ptrtoint ptr %data31 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %data31, align 4
  %99 = and i8 %98, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i167 = icmp eq i8 %99, 0
  br i1 %tobool.not.i167, label %if.then36.if.end.i176_crit_edge, label %if.then.i171

if.then36.if.end.i176_crit_edge:                  ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i176

if.then.i171:                                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  %100 = ptrtoint ptr %data31 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 28, ptr %data31, align 4
  %arrayidx4.i168 = getelementptr %struct.ipmi_smi_msg, ptr %msg.1278, i32 0, i32 5, i32 3
  %101 = ptrtoint ptr %arrayidx4.i168 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 52, ptr %arrayidx4.i168, align 1
  %arrayidx6.i169 = getelementptr %struct.ipmi_smi_msg, ptr %msg.1278, i32 0, i32 5, i32 4
  %102 = ptrtoint ptr %arrayidx6.i169 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv40, ptr %arrayidx6.i169, align 4
  %data_size.i170 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %msg.1278, i32 0, i32 4
  %103 = ptrtoint ptr %data_size.i170 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 5, ptr %data_size.i170, align 4
  br label %if.end.i176

if.end.i176:                                      ; preds = %if.then.i171, %if.then36.if.end.i176_crit_edge
  %104 = ptrtoint ptr %data31 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %data31, align 4
  %106 = or i8 %105, 4
  %rsp.i172 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %msg.1278, i32 0, i32 7
  %107 = ptrtoint ptr %rsp.i172 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %rsp.i172, align 4
  %type.i173 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %msg.1278, i32 0, i32 1
  %108 = ptrtoint ptr %type.i173 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %type.i173, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %109)
  %cmp.i174 = icmp eq i32 %109, 1
  %arrayidx15.i175 = getelementptr %struct.ipmi_smi_msg, ptr %msg.1278, i32 0, i32 5, i32 1
  %110 = ptrtoint ptr %arrayidx15.i175 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx15.i175, align 1
  br i1 %cmp.i174, label %if.then13.i181, label %if.end.i176.ipmi_ipmb_send_response.exit184_crit_edge

if.end.i176.ipmi_ipmb_send_response.exit184_crit_edge: ; preds = %if.end.i176
  call void @__sanitizer_cov_trace_pc() #9
  br label %ipmi_ipmb_send_response.exit184

if.then13.i181:                                   ; preds = %if.end.i176
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx19.i177 = getelementptr %struct.ipmi_smi_msg, ptr %msg.1278, i32 0, i32 5, i32 2
  %112 = ptrtoint ptr %arrayidx19.i177 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx19.i177, align 2
  %arrayidx23.i178 = getelementptr %struct.ipmi_smi_msg, ptr %msg.1278, i32 0, i32 5, i32 3
  %114 = ptrtoint ptr %arrayidx23.i178 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx23.i178, align 1
  %arrayidx25.i179 = getelementptr %struct.ipmi_smi_msg, ptr %msg.1278, i32 0, i32 7, i32 3
  %116 = ptrtoint ptr %arrayidx25.i179 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %arrayidx25.i179, align 1
  %arrayidx27.i180 = getelementptr %struct.ipmi_smi_msg, ptr %msg.1278, i32 0, i32 7, i32 4
  %117 = ptrtoint ptr %arrayidx27.i180 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv40, ptr %arrayidx27.i180, align 4
  br label %ipmi_ipmb_send_response.exit184

ipmi_ipmb_send_response.exit184:                  ; preds = %if.then13.i181, %if.end.i176.ipmi_ipmb_send_response.exit184_crit_edge
  %cc.sink.i182 = phi i8 [ %113, %if.then13.i181 ], [ %conv40, %if.end.i176.ipmi_ipmb_send_response.exit184_crit_edge ]
  %.sink.i183 = phi i32 [ 5, %if.then13.i181 ], [ 3, %if.end.i176.ipmi_ipmb_send_response.exit184_crit_edge ]
  %118 = getelementptr %struct.ipmi_smi_msg, ptr %msg.1278, i32 0, i32 7, i32 1
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %111, ptr %118, align 1
  %120 = getelementptr %struct.ipmi_smi_msg, ptr %msg.1278, i32 0, i32 7, i32 2
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %cc.sink.i182, ptr %120, align 2
  %122 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %msg.1278, i32 0, i32 6
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %.sink.i183, ptr %122, align 4
  %124 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %data, align 4
  call void @ipmi_smi_msg_received(ptr noundef %125, ptr noundef nonnull %msg.1278) #7
  br label %cleanup

if.end41:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp42 = icmp slt i32 %call30, 0
  br i1 %cmp42, label %if.then44, label %if.else.i

if.then44:                                        ; preds = %if.end41
  %126 = ptrtoint ptr %working_msg to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr null, ptr %working_msg, align 4
  %127 = ptrtoint ptr %data31 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %data31, align 4
  %129 = and i8 %128, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i186 = icmp eq i8 %129, 0
  br i1 %tobool.not.i186, label %if.then44.if.end.i195_crit_edge, label %if.then.i190

if.then44.if.end.i195_crit_edge:                  ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i195

if.then.i190:                                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  %130 = ptrtoint ptr %data31 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 28, ptr %data31, align 4
  %arrayidx4.i187 = getelementptr %struct.ipmi_smi_msg, ptr %msg.1278, i32 0, i32 5, i32 3
  %131 = ptrtoint ptr %arrayidx4.i187 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 52, ptr %arrayidx4.i187, align 1
  %arrayidx6.i188 = getelementptr %struct.ipmi_smi_msg, ptr %msg.1278, i32 0, i32 5, i32 4
  %132 = ptrtoint ptr %arrayidx6.i188 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 -126, ptr %arrayidx6.i188, align 4
  %data_size.i189 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %msg.1278, i32 0, i32 4
  %133 = ptrtoint ptr %data_size.i189 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 5, ptr %data_size.i189, align 4
  br label %if.end.i195

if.end.i195:                                      ; preds = %if.then.i190, %if.then44.if.end.i195_crit_edge
  %134 = ptrtoint ptr %data31 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %data31, align 4
  %136 = or i8 %135, 4
  %rsp.i191 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %msg.1278, i32 0, i32 7
  %137 = ptrtoint ptr %rsp.i191 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %rsp.i191, align 4
  %type.i192 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %msg.1278, i32 0, i32 1
  %138 = ptrtoint ptr %type.i192 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %type.i192, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %139)
  %cmp.i193 = icmp eq i32 %139, 1
  %arrayidx15.i194 = getelementptr %struct.ipmi_smi_msg, ptr %msg.1278, i32 0, i32 5, i32 1
  %140 = ptrtoint ptr %arrayidx15.i194 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx15.i194, align 1
  br i1 %cmp.i193, label %if.then13.i200, label %if.end.i195.ipmi_ipmb_send_response.exit203_crit_edge

if.end.i195.ipmi_ipmb_send_response.exit203_crit_edge: ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #9
  br label %ipmi_ipmb_send_response.exit203

if.then13.i200:                                   ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx19.i196 = getelementptr %struct.ipmi_smi_msg, ptr %msg.1278, i32 0, i32 5, i32 2
  %142 = ptrtoint ptr %arrayidx19.i196 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx19.i196, align 2
  %arrayidx23.i197 = getelementptr %struct.ipmi_smi_msg, ptr %msg.1278, i32 0, i32 5, i32 3
  %144 = ptrtoint ptr %arrayidx23.i197 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx23.i197, align 1
  %arrayidx25.i198 = getelementptr %struct.ipmi_smi_msg, ptr %msg.1278, i32 0, i32 7, i32 3
  %146 = ptrtoint ptr %arrayidx25.i198 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %arrayidx25.i198, align 1
  %arrayidx27.i199 = getelementptr %struct.ipmi_smi_msg, ptr %msg.1278, i32 0, i32 7, i32 4
  %147 = ptrtoint ptr %arrayidx27.i199 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 -126, ptr %arrayidx27.i199, align 4
  br label %ipmi_ipmb_send_response.exit203

ipmi_ipmb_send_response.exit203:                  ; preds = %if.then13.i200, %if.end.i195.ipmi_ipmb_send_response.exit203_crit_edge
  %cc.sink.i201 = phi i8 [ %143, %if.then13.i200 ], [ -126, %if.end.i195.ipmi_ipmb_send_response.exit203_crit_edge ]
  %.sink.i202 = phi i32 [ 5, %if.then13.i200 ], [ 3, %if.end.i195.ipmi_ipmb_send_response.exit203_crit_edge ]
  %148 = getelementptr %struct.ipmi_smi_msg, ptr %msg.1278, i32 0, i32 7, i32 1
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %141, ptr %148, align 1
  %150 = getelementptr %struct.ipmi_smi_msg, ptr %msg.1278, i32 0, i32 7, i32 2
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %cc.sink.i201, ptr %150, align 2
  %152 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %msg.1278, i32 0, i32 6
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %.sink.i202, ptr %152, align 4
  %154 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %data, align 4
  call void @ipmi_smi_msg_received(ptr noundef %155, ptr noundef nonnull %msg.1278) #7
  br label %cleanup

if.else.i:                                        ; preds = %if.end41
  %156 = ptrtoint ptr %retry_time_ms to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %retry_time_ms, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %157) #7
  %call48 = call i32 @down_timeout(ptr noundef %got_rsp, i32 noundef %call2.i) #7
  %call58 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %158 = ptrtoint ptr %working_msg to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %working_msg, align 4
  store ptr null, ptr %working_msg, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call58) #7
  %tobool66.not = icmp eq ptr %159, null
  %tobool66.not.not = xor i1 %tobool66.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool67.not = icmp eq i32 %call48, 0
  %or.cond = select i1 %tobool66.not.not, i1 true, i1 %tobool67.not
  br i1 %or.cond, label %if.else, label %if.then68

if.then68:                                        ; preds = %if.else.i
  call void @down(ptr noundef %got_rsp) #7
  br i1 %tobool66.not, label %if.then68.cleanup_crit_edge, label %if.then68.if.then94_crit_edge

if.then68.if.then94_crit_edge:                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then94

if.then68.cleanup_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.else.i
  br i1 %tobool66.not, label %if.else.cleanup_crit_edge, label %land.lhs.true71

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true71:                                  ; preds = %if.else
  %inc = add i32 %retries.0277, 1
  %160 = ptrtoint ptr %max_retries to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %max_retries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %161)
  %cmp72.not = icmp ugt i32 %inc, %161
  br i1 %cmp72.not, label %land.lhs.true71.if.then94_crit_edge, label %do.body76

land.lhs.true71.if.then94_crit_edge:              ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then94

do.body76:                                        ; preds = %land.lhs.true71
  %call84 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %162 = ptrtoint ptr %working_msg to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %159, ptr %working_msg, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call84) #7
  %163 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %0, align 4
  %165 = trunc i32 %164 to i16
  %conv19 = add i16 %165, -1
  %166 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %conv19, ptr %len, align 4
  %cmp22 = icmp ugt i16 %conv19, 32
  br i1 %cmp22, label %do.body76.if.then24_crit_edge, label %do.body76.if.end25_crit_edge

do.body76.if.end25_crit_edge:                     ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

do.body76.if.then24_crit_edge:                    ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

if.then94:                                        ; preds = %land.lhs.true71.if.then94_crit_edge, %if.then68.if.then94_crit_edge
  %data.i204 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %159, i32 0, i32 5
  %167 = ptrtoint ptr %data.i204 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %data.i204, align 4
  %169 = and i8 %168, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool.not.i205 = icmp eq i8 %169, 0
  br i1 %tobool.not.i205, label %if.then94.if.end.i214_crit_edge, label %if.then.i209

if.then94.if.end.i214_crit_edge:                  ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i214

if.then.i209:                                     ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #9
  %170 = ptrtoint ptr %data.i204 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 28, ptr %data.i204, align 4
  %arrayidx4.i206 = getelementptr %struct.ipmi_smi_msg, ptr %159, i32 0, i32 5, i32 3
  %171 = ptrtoint ptr %arrayidx4.i206 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 52, ptr %arrayidx4.i206, align 1
  %arrayidx6.i207 = getelementptr %struct.ipmi_smi_msg, ptr %159, i32 0, i32 5, i32 4
  %172 = ptrtoint ptr %arrayidx6.i207 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 -61, ptr %arrayidx6.i207, align 4
  %data_size.i208 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %159, i32 0, i32 4
  %173 = ptrtoint ptr %data_size.i208 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 5, ptr %data_size.i208, align 4
  br label %if.end.i214

if.end.i214:                                      ; preds = %if.then.i209, %if.then94.if.end.i214_crit_edge
  %174 = ptrtoint ptr %data.i204 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %data.i204, align 4
  %176 = or i8 %175, 4
  %rsp.i210 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %159, i32 0, i32 7
  %177 = ptrtoint ptr %rsp.i210 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %176, ptr %rsp.i210, align 4
  %type.i211 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %159, i32 0, i32 1
  %178 = ptrtoint ptr %type.i211 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %type.i211, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %179)
  %cmp.i212 = icmp eq i32 %179, 1
  %arrayidx15.i213 = getelementptr %struct.ipmi_smi_msg, ptr %159, i32 0, i32 5, i32 1
  %180 = ptrtoint ptr %arrayidx15.i213 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx15.i213, align 1
  br i1 %cmp.i212, label %if.then13.i219, label %if.end.i214.ipmi_ipmb_send_response.exit222_crit_edge

if.end.i214.ipmi_ipmb_send_response.exit222_crit_edge: ; preds = %if.end.i214
  call void @__sanitizer_cov_trace_pc() #9
  br label %ipmi_ipmb_send_response.exit222

if.then13.i219:                                   ; preds = %if.end.i214
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx19.i215 = getelementptr %struct.ipmi_smi_msg, ptr %159, i32 0, i32 5, i32 2
  %182 = ptrtoint ptr %arrayidx19.i215 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx19.i215, align 2
  %arrayidx23.i216 = getelementptr %struct.ipmi_smi_msg, ptr %159, i32 0, i32 5, i32 3
  %184 = ptrtoint ptr %arrayidx23.i216 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx23.i216, align 1
  %arrayidx25.i217 = getelementptr %struct.ipmi_smi_msg, ptr %159, i32 0, i32 7, i32 3
  %186 = ptrtoint ptr %arrayidx25.i217 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %185, ptr %arrayidx25.i217, align 1
  %arrayidx27.i218 = getelementptr %struct.ipmi_smi_msg, ptr %159, i32 0, i32 7, i32 4
  %187 = ptrtoint ptr %arrayidx27.i218 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 -61, ptr %arrayidx27.i218, align 4
  br label %ipmi_ipmb_send_response.exit222

ipmi_ipmb_send_response.exit222:                  ; preds = %if.then13.i219, %if.end.i214.ipmi_ipmb_send_response.exit222_crit_edge
  %cc.sink.i220 = phi i8 [ %183, %if.then13.i219 ], [ -61, %if.end.i214.ipmi_ipmb_send_response.exit222_crit_edge ]
  %.sink.i221 = phi i32 [ 5, %if.then13.i219 ], [ 3, %if.end.i214.ipmi_ipmb_send_response.exit222_crit_edge ]
  %188 = getelementptr %struct.ipmi_smi_msg, ptr %159, i32 0, i32 7, i32 1
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %181, ptr %188, align 1
  %190 = getelementptr %struct.ipmi_smi_msg, ptr %159, i32 0, i32 7, i32 2
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %cc.sink.i220, ptr %190, align 2
  %192 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %159, i32 0, i32 6
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %.sink.i221, ptr %192, align 4
  %194 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %data, align 4
  call void @ipmi_smi_msg_received(ptr noundef %195, ptr noundef nonnull %159) #7
  br label %cleanup

cleanup:                                          ; preds = %ipmi_ipmb_send_response.exit222, %if.else.cleanup_crit_edge, %if.then68.cleanup_crit_edge, %ipmi_ipmb_send_response.exit203, %ipmi_ipmb_send_response.exit184, %ipmi_ipmb_send_response.exit, %if.end14.thread, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %i2c_msg) #7
  %call = call zeroext i1 @kthread_should_stop() #7
  br i1 %call, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread, %entry.while.end_crit_edge
  %next_msg100 = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %data, i32 0, i32 8
  %196 = ptrtoint ptr %next_msg100 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %next_msg100, align 4
  %tobool101.not = icmp eq ptr %197, null
  br i1 %tobool101.not, label %while.end.if.end104_crit_edge, label %if.then102

while.end.if.end104_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.then102:                                       ; preds = %while.end
  %data.i223 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %197, i32 0, i32 5
  %198 = ptrtoint ptr %data.i223 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %data.i223, align 4
  %200 = and i8 %199, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool.not.i224 = icmp eq i8 %200, 0
  br i1 %tobool.not.i224, label %if.then102.if.end.i233_crit_edge, label %if.then.i228

if.then102.if.end.i233_crit_edge:                 ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i233

if.then.i228:                                     ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #9
  %201 = ptrtoint ptr %data.i223 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 28, ptr %data.i223, align 4
  %arrayidx4.i225 = getelementptr %struct.ipmi_smi_msg, ptr %197, i32 0, i32 5, i32 3
  %202 = ptrtoint ptr %arrayidx4.i225 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 52, ptr %arrayidx4.i225, align 1
  %arrayidx6.i226 = getelementptr %struct.ipmi_smi_msg, ptr %197, i32 0, i32 5, i32 4
  %203 = ptrtoint ptr %arrayidx6.i226 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 -1, ptr %arrayidx6.i226, align 4
  %data_size.i227 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %197, i32 0, i32 4
  %204 = ptrtoint ptr %data_size.i227 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 5, ptr %data_size.i227, align 4
  br label %if.end.i233

if.end.i233:                                      ; preds = %if.then.i228, %if.then102.if.end.i233_crit_edge
  %205 = ptrtoint ptr %data.i223 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %data.i223, align 4
  %207 = or i8 %206, 4
  %rsp.i229 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %197, i32 0, i32 7
  %208 = ptrtoint ptr %rsp.i229 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %207, ptr %rsp.i229, align 4
  %type.i230 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %197, i32 0, i32 1
  %209 = ptrtoint ptr %type.i230 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %type.i230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %210)
  %cmp.i231 = icmp eq i32 %210, 1
  %arrayidx15.i232 = getelementptr %struct.ipmi_smi_msg, ptr %197, i32 0, i32 5, i32 1
  %211 = ptrtoint ptr %arrayidx15.i232 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %arrayidx15.i232, align 1
  br i1 %cmp.i231, label %if.then13.i238, label %if.end.i233.ipmi_ipmb_send_response.exit241_crit_edge

if.end.i233.ipmi_ipmb_send_response.exit241_crit_edge: ; preds = %if.end.i233
  call void @__sanitizer_cov_trace_pc() #9
  br label %ipmi_ipmb_send_response.exit241

if.then13.i238:                                   ; preds = %if.end.i233
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx19.i234 = getelementptr %struct.ipmi_smi_msg, ptr %197, i32 0, i32 5, i32 2
  %213 = ptrtoint ptr %arrayidx19.i234 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %arrayidx19.i234, align 2
  %arrayidx23.i235 = getelementptr %struct.ipmi_smi_msg, ptr %197, i32 0, i32 5, i32 3
  %215 = ptrtoint ptr %arrayidx23.i235 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %arrayidx23.i235, align 1
  %arrayidx25.i236 = getelementptr %struct.ipmi_smi_msg, ptr %197, i32 0, i32 7, i32 3
  %217 = ptrtoint ptr %arrayidx25.i236 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %216, ptr %arrayidx25.i236, align 1
  %arrayidx27.i237 = getelementptr %struct.ipmi_smi_msg, ptr %197, i32 0, i32 7, i32 4
  %218 = ptrtoint ptr %arrayidx27.i237 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 -1, ptr %arrayidx27.i237, align 4
  br label %ipmi_ipmb_send_response.exit241

ipmi_ipmb_send_response.exit241:                  ; preds = %if.then13.i238, %if.end.i233.ipmi_ipmb_send_response.exit241_crit_edge
  %cc.sink.i239 = phi i8 [ %214, %if.then13.i238 ], [ -1, %if.end.i233.ipmi_ipmb_send_response.exit241_crit_edge ]
  %.sink.i240 = phi i32 [ 5, %if.then13.i238 ], [ 3, %if.end.i233.ipmi_ipmb_send_response.exit241_crit_edge ]
  %219 = getelementptr %struct.ipmi_smi_msg, ptr %197, i32 0, i32 7, i32 1
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %212, ptr %219, align 1
  %221 = getelementptr %struct.ipmi_smi_msg, ptr %197, i32 0, i32 7, i32 2
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %cc.sink.i239, ptr %221, align 2
  %223 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %197, i32 0, i32 6
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %.sink.i240, ptr %223, align 4
  %225 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %data, align 4
  call void @ipmi_smi_msg_received(ptr noundef %226, ptr noundef nonnull %197) #7
  br label %if.end104

if.end104:                                        ; preds = %ipmi_ipmb_send_response.exit241, %while.end.if.end104_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_add_smi(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipmi_ipmb_check_msg_done(ptr noundef %iidev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rcvlen = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %iidev, i32 0, i32 18
  %0 = ptrtoint ptr %rcvlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rcvlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rcvmsg.i = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %iidev, i32 0, i32 17
  %overrun.i = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %iidev, i32 0, i32 19
  %2 = ptrtoint ptr %overrun.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %overrun.i, align 4, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp ne i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp.i = icmp ult i32 %1, 7
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %cmp.i
  br i1 %or.cond, label %if.end.done_crit_edge, label %if.end2.i

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end2.i:                                        ; preds = %if.end
  %arrayidx.i = getelementptr %struct.ipmi_ipmb_dev, ptr %iidev, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %6 = and i8 %5, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not.i = icmp ne i8 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp8.i = icmp eq i32 %1, 7
  %or.cond.i = select i1 %tobool5.not.i, i1 %cmp8.i, i1 false
  br i1 %or.cond.i, label %if.end2.i.done_crit_edge, label %if.end12.i

if.end2.i.done_crit_edge:                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end12.i:                                       ; preds = %if.end2.i
  %call.i = tail call zeroext i8 @ipmb_checksum(ptr noundef %rcvmsg.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %cmp14.not.i = icmp eq i8 %call.i, 0
  br i1 %cmp14.not.i, label %valid_ipmb.exit, label %if.end12.i.done_crit_edge

if.end12.i.done_crit_edge:                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

valid_ipmb.exit:                                  ; preds = %if.end12.i
  %add.ptr.i = getelementptr %struct.ipmi_ipmb_dev, ptr %iidev, i32 0, i32 17, i32 3
  %7 = ptrtoint ptr %rcvlen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rcvlen, align 4
  %sub.i = add i32 %8, -3
  %call19.i = tail call zeroext i8 @ipmb_checksum(ptr noundef %add.ptr.i, i32 noundef %sub.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call19.i)
  %cmp21.not.i = icmp eq i8 %call19.i, 0
  br i1 %cmp21.not.i, label %if.end2, label %valid_ipmb.exit.done_crit_edge

valid_ipmb.exit.done_crit_edge:                   ; preds = %valid_ipmb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end2:                                          ; preds = %valid_ipmb.exit
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %11 = and i8 %10, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp3 = icmp eq i8 %11, 0
  br i1 %cmp3, label %if.then5, label %do.body13

if.then5:                                         ; preds = %if.end2
  %ready = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %iidev, i32 0, i32 3
  %12 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ready, align 4, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not = icmp eq i8 %13, 0
  br i1 %tobool6.not, label %if.then5.done_crit_edge, label %if.end8

if.then5.done_crit_edge:                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end8:                                          ; preds = %if.then5
  %call9 = tail call ptr @ipmi_alloc_smi_msg() #7
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.done_crit_edge, label %if.end49.thread

if.end8.done_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end49.thread:                                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %type = getelementptr inbounds %struct.ipmi_smi_msg, ptr %call9, i32 0, i32 1
  %14 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %type, align 4
  %data_size = getelementptr inbounds %struct.ipmi_smi_msg, ptr %call9, i32 0, i32 4
  %15 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %data_size, align 4
  br label %if.end52

do.body13:                                        ; preds = %if.end2
  %lock = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %iidev, i32 0, i32 13
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %working_msg = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %iidev, i32 0, i32 9
  %16 = ptrtoint ptr %working_msg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %working_msg, align 4
  %tobool20.not = icmp eq ptr %17, null
  br i1 %tobool20.not, label %do.body13.if.end49.thread128_crit_edge, label %if.then21

do.body13.if.end49.thread128_crit_edge:           ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.thread128

if.then21:                                        ; preds = %do.body13
  %data = getelementptr inbounds %struct.ipmi_smi_msg, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data, align 4
  %20 = and i8 %19, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool31.not = icmp eq i8 %20, 0
  br i1 %tobool31.not, label %land.lhs.true, label %if.then21.if.end49.thread128_crit_edge

if.then21.if.end49.thread128_crit_edge:           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.thread128

land.lhs.true:                                    ; preds = %if.then21
  %arrayidx22 = getelementptr %struct.ipmi_ipmb_dev, ptr %iidev, i32 0, i32 17, i32 4
  %21 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx22, align 1
  %23 = lshr i8 %22, 2
  %curr_seq = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %iidev, i32 0, i32 4
  %24 = ptrtoint ptr %curr_seq to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %curr_seq, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %25)
  %cmp36 = icmp eq i8 %23, %25
  br i1 %cmp36, label %if.end49, label %land.lhs.true.if.end49.thread128_crit_edge

land.lhs.true.if.end49.thread128_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.thread128

if.end49.thread128:                               ; preds = %land.lhs.true.if.end49.thread128_crit_edge, %if.then21.if.end49.thread128_crit_edge, %do.body13.if.end49.thread128_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call17) #7
  br label %done

if.end49:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %26 = add nuw nsw i8 %23, 1
  %27 = and i8 %26, 63
  %28 = ptrtoint ptr %curr_seq to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %curr_seq, align 1
  %29 = ptrtoint ptr %working_msg to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %working_msg, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call17) #7
  br label %if.end52

if.end52:                                         ; preds = %if.end49, %if.end49.thread
  %imsg.2126 = phi ptr [ %call9, %if.end49.thread ], [ %17, %if.end49 ]
  %type53 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %imsg.2126, i32 0, i32 1
  %30 = ptrtoint ptr %type53 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp54 = icmp eq i32 %31, 1
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i, align 1
  %rsp = getelementptr inbounds %struct.ipmi_smi_msg, ptr %imsg.2126, i32 0, i32 7
  %34 = ptrtoint ptr %rsp to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %rsp, align 4
  %add.ptr = getelementptr %struct.ipmi_smi_msg, ptr %imsg.2126, i32 0, i32 7, i32 1
  %add.ptr72 = getelementptr %struct.ipmi_ipmb_dev, ptr %iidev, i32 0, i32 17, i32 5
  %.sink132 = select i1 %cmp54, i32 -4, i32 -6
  %add.ptr72.sink = select i1 %cmp54, ptr %add.ptr.i, ptr %add.ptr72
  %.sink131 = select i1 %cmp54, i32 -3, i32 -5
  %35 = ptrtoint ptr %rcvlen to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rcvlen, align 4
  %sub74 = add i32 %36, %.sink132
  %37 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr72.sink, i32 %sub74)
  %38 = load i32, ptr %rcvlen, align 4
  %sub76 = add i32 %38, %.sink131
  %39 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %imsg.2126, i32 0, i32 6
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub76, ptr %39, align 4
  %41 = ptrtoint ptr %iidev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %iidev, align 4
  tail call void @ipmi_smi_msg_received(ptr noundef %42, ptr noundef nonnull %imsg.2126) #7
  br i1 %cmp3, label %if.end52.done_crit_edge, label %if.then80

if.end52.done_crit_edge:                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.then80:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %got_rsp = getelementptr inbounds %struct.ipmi_ipmb_dev, ptr %iidev, i32 0, i32 12
  tail call void @up(ptr noundef %got_rsp) #7
  br label %done

done:                                             ; preds = %if.then80, %if.end52.done_crit_edge, %if.end49.thread128, %if.end8.done_crit_edge, %if.then5.done_crit_edge, %valid_ipmb.exit.done_crit_edge, %if.end12.i.done_crit_edge, %if.end2.i.done_crit_edge, %if.end.done_crit_edge
  %43 = ptrtoint ptr %overrun.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %overrun.i, align 4
  %44 = ptrtoint ptr %rcvlen to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %rcvlen, align 4
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipmi_alloc_smi_msg() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipmi_smi_msg_received(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ipmb_checksum(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_slave_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !25, !26, !28, !29, !31, !32, !34, !36, !38, !40, !42, !43, !44, !45, !46, !47, !48, !50, !52, !54, !55, !57, !59, !60, !61, !63, !65, !67, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__param_bmcaddr, !1, !"__param_bmcaddr", i1 false, i1 false}
!1 = !{!"../drivers/char/ipmi/ipmi_ipmb.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_bmcaddrtype288, !1, !"__UNIQUE_ID_bmcaddrtype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_bmcaddr289, !4, !"__UNIQUE_ID_bmcaddr289", i1 false, i1 false}
!4 = !{!"../drivers/char/ipmi/ipmi_ipmb.c", i32 26, i32 1}
!5 = !{ptr @__param_retry_time_ms, !6, !"__param_retry_time_ms", i1 false, i1 false}
!6 = !{!"../drivers/char/ipmi/ipmi_ipmb.c", i32 29, i32 1}
!7 = !{ptr @__UNIQUE_ID_retry_time_mstype290, !6, !"__UNIQUE_ID_retry_time_mstype290", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_max_retries291, !9, !"__UNIQUE_ID_max_retries291", i1 false, i1 false}
!9 = !{!"../drivers/char/ipmi/ipmi_ipmb.c", i32 30, i32 1}
!10 = !{ptr @__param_max_retries, !11, !"__param_max_retries", i1 false, i1 false}
!11 = !{!"../drivers/char/ipmi/ipmi_ipmb.c", i32 33, i32 1}
!12 = !{ptr @__UNIQUE_ID_max_retriestype292, !11, !"__UNIQUE_ID_max_retriestype292", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_max_retries293, !14, !"__UNIQUE_ID_max_retries293", i1 false, i1 false}
!14 = !{!"../drivers/char/ipmi/ipmi_ipmb.c", i32 34, i32 1}
!15 = !{ptr @__initcall__kmod_ipmi_ipmb__294_535_ipmi_ipmb_driver_init6, !16, !"__initcall__kmod_ipmi_ipmb__294_535_ipmi_ipmb_driver_init6", i1 false, i1 false}
!16 = !{!"../drivers/char/ipmi/ipmi_ipmb.c", i32 535, i32 1}
!17 = !{ptr @__exitcall_ipmi_ipmb_driver_exit, !16, !"__exitcall_ipmi_ipmb_driver_exit", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_author295, !19, !"__UNIQUE_ID_author295", i1 false, i1 false}
!19 = !{!"../drivers/char/ipmi/ipmi_ipmb.c", i32 537, i32 1}
!20 = !{ptr @__UNIQUE_ID_description296, !21, !"__UNIQUE_ID_description296", i1 false, i1 false}
!21 = !{!"../drivers/char/ipmi/ipmi_ipmb.c", i32 538, i32 1}
!22 = !{ptr @__UNIQUE_ID_file297, !23, !"__UNIQUE_ID_file297", i1 false, i1 false}
!23 = !{!"../drivers/char/ipmi/ipmi_ipmb.c", i32 539, i32 1}
!24 = !{ptr @__UNIQUE_ID_license298, !23, !"__UNIQUE_ID_license298", i1 false, i1 false}
!25 = !{ptr @__param_str_bmcaddr, !1, !"__param_str_bmcaddr", i1 false, i1 false}
!26 = !{ptr @bmcaddr, !27, !"bmcaddr", i1 false, i1 false}
!27 = !{!"../drivers/char/ipmi/ipmi_ipmb.c", i32 24, i32 12}
!28 = !{ptr @__param_str_retry_time_ms, !6, !"__param_str_retry_time_ms", i1 false, i1 false}
!29 = !{ptr @retry_time_ms, !30, !"retry_time_ms", i1 false, i1 false}
!30 = !{!"../drivers/char/ipmi/ipmi_ipmb.c", i32 28, i32 21}
!31 = !{ptr @__param_str_max_retries, !11, !"__param_str_max_retries", i1 false, i1 false}
!32 = !{ptr @max_retries, !33, !"max_retries", i1 false, i1 false}
!33 = !{!"../drivers/char/ipmi/ipmi_ipmb.c", i32 32, i32 21}
!34 = !{ptr @.str, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/char/ipmi/ipmi_ipmb.c", i32 528, i32 11}
!36 = !{ptr @ipmi_ipmb_driver, !37, !"ipmi_ipmb_driver", i1 false, i1 false}
!37 = !{!"../drivers/char/ipmi/ipmi_ipmb.c", i32 525, i32 26}
!38 = !{ptr @.str.1, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/char/ipmi/ipmi_ipmb.c", i32 450, i32 40}
!40 = !{ptr @.str.2, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/char/ipmi/ipmi_ipmb.c", i32 454, i32 3}
!42 = !{ptr @.str.3, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.4, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ipmi_ipmb_probe._entry, !41, !"_entry", i1 false, i1 false}
!47 = !{ptr @ipmi_ipmb_probe._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.7, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/char/ipmi/ipmi_ipmb.c", i32 459, i32 41}
!50 = !{ptr @.str.8, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/char/ipmi/ipmi_ipmb.c", i32 463, i32 41}
!52 = !{ptr @ipmi_ipmb_probe.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/char/ipmi/ipmi_ipmb.c", i32 482, i32 2}
!54 = !{ptr @.str.9, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.10, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/char/ipmi/ipmi_ipmb.c", i32 486, i32 18}
!57 = !{ptr @.str.12, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/char/ipmi/ipmi_ipmb.c", i32 490, i32 3}
!59 = !{ptr @ipmi_ipmb_probe._entry.11, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @ipmi_ipmb_probe._entry_ptr.13, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @sema_init.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!63 = !{ptr @.str.14, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!65 = !{ptr @.str.15, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!67 = !{ptr @of_ipmi_ipmb_match, !68, !"of_ipmi_ipmb_match", i1 false, i1 false}
!68 = !{!"../drivers/char/ipmi/ipmi_ipmb.c", i32 510, i32 34}
!69 = !{ptr @ipmi_ipmb_id, !70, !"ipmi_ipmb_id", i1 false, i1 false}
!70 = !{!"../drivers/char/ipmi/ipmi_ipmb.c", i32 519, i32 35}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{!"branch_weights", i32 2000, i32 1}
!81 = !{i64 2155623981, i64 2155624475, i64 2155624018, i64 2155624074, i64 2155624108, i64 2155624132, i64 2155624173, i64 2155624194, i64 2155624222, i64 2155624256}
!82 = !{i8 0, i8 2}
