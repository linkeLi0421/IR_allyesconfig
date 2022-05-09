; ModuleID = '/llk/IR_all_yes/drivers/hwmon/ibmpex.c_pt.bc'
source_filename = "../drivers/hwmon/ibmpex.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ibmpex_driver_data = type { %struct.list_head, %struct.ipmi_smi_watcher, %struct.ipmi_user_hndl }
%struct.list_head = type { ptr, ptr }
%struct.ipmi_smi_watcher = type { %struct.list_head, ptr, ptr, ptr }
%struct.ipmi_user_hndl = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.ibmpex_bmc_data = type { %struct.list_head, ptr, ptr, %struct.mutex, i8, i32, %struct.ipmi_addr, %struct.completion, ptr, i32, %struct.kernel_ipmi_msg, [272 x i8], i32, [272 x i8], i32, i8, i32, i8, i8, i8, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ipmi_addr = type { i32, i16, [32 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kernel_ipmi_msg = type { i8, i8, i16, ptr }
%struct.ibmpex_sensor_data = type { i32, [3 x i16], i32, [3 x %struct.sensor_device_attribute_2] }
%struct.sensor_device_attribute_2 = type { %struct.device_attribute, i8, i8 }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ipmi_recv_msg = type { %struct.list_head, i32, ptr, %struct.ipmi_addr, i32, %struct.kernel_ipmi_msg, ptr, ptr, [272 x i8] }

@driver_data = internal global { %struct.ibmpex_driver_data, [52 x i8] } { %struct.ibmpex_driver_data { %struct.list_head { ptr @driver_data, ptr @driver_data }, %struct.ipmi_smi_watcher { %struct.list_head zeroinitializer, ptr null, ptr @ibmpex_register_bmc, ptr @ibmpex_bmc_gone }, %struct.ipmi_user_hndl { ptr @ibmpex_msg_handler, ptr null, ptr null, ptr null } }, [52 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author223 = internal constant [56 x i8] c"ibmpex.author=Darrick J. Wong <darrick.wong@oracle.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description224 = internal constant [70 x i8] c"ibmpex.description=IBM PowerExecutive power/temperature sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file225 = internal constant [33 x i8] c"ibmpex.file=drivers/hwmon/ibmpex\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [19 x i8] c"ibmpex.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_ibmpex__227_593_ibmpex_init6 = internal global ptr @ibmpex_init, section ".initcall6.init", align 4
@__exitcall_ibmpex_exit = internal global ptr @ibmpex_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias228 = internal constant [45 x i8] c"ibmpex.alias=dmi:bvnIBM:*:pnIBMSystemx3350-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias229 = internal constant [45 x i8] c"ibmpex.alias=dmi:bvnIBM:*:pnIBMSystemx3550-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias230 = internal constant [45 x i8] c"ibmpex.alias=dmi:bvnIBM:*:pnIBMSystemx3650-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias231 = internal constant [45 x i8] c"ibmpex.alias=dmi:bvnIBM:*:pnIBMSystemx3655-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [45 x i8] c"ibmpex.alias=dmi:bvnIBM:*:pnIBMSystemx3755-*\00", section ".modinfo", align 1
@ibmpex_register_bmc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 463, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Unable to register user with IPMI interface %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ibmpex_register_bmc\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/hwmon/ibmpex.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ibmpex_register_bmc._entry_ptr = internal global ptr @ibmpex_register_bmc._entry, section ".printk_index", align 4
@ibmpex_register_bmc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@ibmpex_register_bmc._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 487, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Unable to register hwmon device for IPMI interface %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ibmpex_register_bmc._entry_ptr.8 = internal global ptr @ibmpex_register_bmc._entry.6, section ".printk_index", align 4
@ibmpex_register_bmc._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 498, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error %d finding sensors\0A\00", [38 x i8] zeroinitializer }, align 32
@ibmpex_register_bmc._entry_ptr.11 = internal global ptr @ibmpex_register_bmc._entry.9, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@ibmpex_ver_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 155, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Found BMC with sensor interface v%d.%d %d-%02d-%02d on interface %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ibmpex_ver_check\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ibmpex_ver_check._entry_ptr = internal global ptr @ibmpex_ver_check._entry, section ".printk_index", align 4
@ibmpex_send_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 127, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"request_settime=%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ibmpex_send_message\00", [44 x i8] zeroinitializer }, align 32
@ibmpex_send_message._entry_ptr = internal global ptr @ibmpex_send_message._entry, section ".printk_index", align 4
@ibmpex_send_message._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 130, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"validate_addr=%x\0A\00", [46 x i8] zeroinitializer }, align 32
@ibmpex_send_message._entry_ptr.20 = internal global ptr @ibmpex_send_message._entry.18, section ".printk_index", align 4
@sensor_dev_attr_reset_high_low = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ibmpex_high_low_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_name = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@power_sensor_sig = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pwr", [29 x i8] zeroinitializer }, align 32
@watt_sensor_sig = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"AC", [30 x i8] zeroinitializer }, align 32
@temp_sensor_sig = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tem", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp%d_input%s\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"power%d_average%s\00", [46 x i8] zeroinitializer }, align 32
@create_sensor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"_lowest\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_highest\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ibmpex_query_sensor_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 200, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error reading sensor %d.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ibmpex_query_sensor_data\00", [39 x i8] zeroinitializer }, align 32
@ibmpex_query_sensor_data._entry_ptr = internal global ptr @ibmpex_query_sensor_data._entry, section ".printk_index", align 4
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reset_high_low\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ibmpex\00", [25 x i8] zeroinitializer }, align 32
@ibmpex_msg_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 554, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Mismatch between received msgid (%02x) and transmitted msgid (%02x)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ibmpex_msg_handler\00", [45 x i8] zeroinitializer }, align 32
@ibmpex_msg_handler._entry_ptr = internal global ptr @ibmpex_msg_handler._entry, section ".printk_index", align 4
@___asan_gen_.35 = private unnamed_addr constant [12 x i8] c"driver_data\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 99, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 461, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 467, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 485, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 498, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 87, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 148, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 127, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 130, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_reset_high_low\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_name\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"power_sensor_sig\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 39, i32 17 }
@___asan_gen_.116 = private unnamed_addr constant [16 x i8] c"watt_sensor_sig\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 43, i32 17 }
@___asan_gen_.119 = private unnamed_addr constant [16 x i8] c"temp_sensor_sig\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 40, i32 17 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 338, i32 14 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 341, i32 14 }
@___asan_gen_.128 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 344, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 47, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 48, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 49, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 275, i32 22 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 199, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 290, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 264, i32 8 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 262, i32 22 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 262, i32 30 }
@___asan_gen_.164 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.171 = private constant [26 x i8] c"../drivers/hwmon/ibmpex.c\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 551, i32 3 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_alias228, ptr @__UNIQUE_ID_alias229, ptr @__UNIQUE_ID_alias230, ptr @__UNIQUE_ID_alias231, ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author223, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__exitcall_ibmpex_exit, ptr @__initcall__kmod_ibmpex__227_593_ibmpex_init6, ptr @ibmpex_exit, ptr @ibmpex_msg_handler._entry, ptr @ibmpex_msg_handler._entry_ptr, ptr @ibmpex_query_sensor_data._entry, ptr @ibmpex_query_sensor_data._entry_ptr, ptr @ibmpex_register_bmc._entry, ptr @ibmpex_register_bmc._entry.6, ptr @ibmpex_register_bmc._entry.9, ptr @ibmpex_register_bmc._entry_ptr, ptr @ibmpex_register_bmc._entry_ptr.11, ptr @ibmpex_register_bmc._entry_ptr.8, ptr @ibmpex_send_message._entry, ptr @ibmpex_send_message._entry.18, ptr @ibmpex_send_message._entry_ptr, ptr @ibmpex_send_message._entry_ptr.20, ptr @ibmpex_ver_check._entry, ptr @ibmpex_ver_check._entry_ptr, ptr @driver_data, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ibmpex_register_bmc.__key, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @init_completion.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @sensor_dev_attr_reset_high_low, ptr @sensor_dev_attr_name, ptr @power_sensor_sig, ptr @watt_sensor_sig, ptr @temp_sensor_sig, ptr @.str.21, ptr @.str.22, ptr @create_sensor.__key, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_data to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ibmpex_register_bmc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ibmpex_register_bmc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ibmpex_register_bmc._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ibmpex_register_bmc._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ibmpex_ver_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ibmpex_send_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ibmpex_send_message._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_reset_high_low to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_name to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_sensor_sig to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watt_sensor_sig to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp_sensor_sig to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_sensor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ibmpex_query_sensor_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ibmpex_msg_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ibmpex_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @ipmi_smi_watcher_unregister(ptr noundef getelementptr inbounds (%struct.ibmpex_driver_data, ptr @driver_data, i32 0, i32 1)) #9
  %0 = load ptr, ptr @driver_data, align 4
  %cmp.not14 = icmp eq ptr %0, @driver_data
  br i1 %cmp.not14, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %p.015 = phi ptr [ %next.0, %for.body.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %p.015 to i32
  call void @__asan_load4_noabort(i32 %1)
  %next.0 = load ptr, ptr %p.015, align 4
  tail call fastcc void @ibmpex_bmc_delete(ptr noundef %p.015)
  %cmp.not = icmp eq ptr %next.0, @driver_data
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_smi_watcher_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ibmpex_bmc_delete(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bmc_device = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %bmc_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bmc_device, align 4
  tail call void @device_remove_file(ptr noundef %1, ptr noundef nonnull @sensor_dev_attr_reset_high_low) #9
  %2 = ptrtoint ptr %bmc_device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bmc_device, align 4
  tail call void @device_remove_file(ptr noundef %3, ptr noundef nonnull @sensor_dev_attr_name) #9
  %num_sensors = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %data, i32 0, i32 19
  %4 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_sensors, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp50.not = icmp eq i8 %5, 0
  br i1 %cmp50.not, label %entry.for.end24_crit_edge, label %for.cond3.preheader.lr.ph

entry.for.end24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end24

for.cond3.preheader.lr.ph:                        ; preds = %entry
  %sensors = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %data, i32 0, i32 20
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.inc.2.for.cond3.preheader_crit_edge, %for.cond3.preheader.lr.ph
  %i.051 = phi i32 [ 0, %for.cond3.preheader.lr.ph ], [ %inc23, %for.inc.2.for.cond3.preheader_crit_edge ]
  %6 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sensors, align 4
  %arrayidx7 = getelementptr %struct.ibmpex_sensor_data, ptr %7, i32 %i.051, i32 3, i32 0
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx7, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.cond3.preheader.for.inc_crit_edge, label %if.end

for.cond3.preheader.for.inc_crit_edge:            ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %bmc_device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bmc_device, align 4
  tail call void @device_remove_file(ptr noundef %11, ptr noundef %arrayidx7) #9
  %12 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sensors, align 4
  %arrayidx18 = getelementptr %struct.ibmpex_sensor_data, ptr %13, i32 %i.051, i32 3, i32 0
  %14 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx18, align 4
  tail call void @kfree(ptr noundef %15) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.cond3.preheader.for.inc_crit_edge
  %16 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sensors, align 4
  %arrayidx7.1 = getelementptr %struct.ibmpex_sensor_data, ptr %17, i32 %i.051, i32 3, i32 1
  %18 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx7.1, align 4
  %tobool.not.1 = icmp eq ptr %19, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %bmc_device to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bmc_device, align 4
  tail call void @device_remove_file(ptr noundef %21, ptr noundef %arrayidx7.1) #9
  %22 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sensors, align 4
  %arrayidx18.1 = getelementptr %struct.ibmpex_sensor_data, ptr %23, i32 %i.051, i32 3, i32 1
  %24 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx18.1, align 4
  tail call void @kfree(ptr noundef %25) #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %26 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sensors, align 4
  %arrayidx7.2 = getelementptr %struct.ibmpex_sensor_data, ptr %27, i32 %i.051, i32 3, i32 2
  %28 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx7.2, align 4
  %tobool.not.2 = icmp eq ptr %29, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %bmc_device to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bmc_device, align 4
  tail call void @device_remove_file(ptr noundef %31, ptr noundef %arrayidx7.2) #9
  %32 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sensors, align 4
  %arrayidx18.2 = getelementptr %struct.ibmpex_sensor_data, ptr %33, i32 %i.051, i32 3, i32 2
  %34 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx18.2, align 4
  tail call void @kfree(ptr noundef %35) #9
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %inc23 = add nuw nsw i32 %i.051, 1
  %36 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %num_sensors, align 2
  %conv = zext i8 %37 to i32
  %cmp = icmp ult i32 %inc23, %conv
  br i1 %cmp, label %for.inc.2.for.cond3.preheader_crit_edge, label %for.inc.2.for.end24_crit_edge

for.inc.2.for.end24_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end24

for.inc.2.for.cond3.preheader_crit_edge:          ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond3.preheader

for.end24:                                        ; preds = %for.inc.2.for.end24_crit_edge, %entry.for.end24_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %data) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.end24.list_del.exit_crit_edge

for.end24.list_del.exit_crit_edge:                ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %data, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i, align 4
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.end24.list_del.exit_crit_edge
  %44 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 256 to ptr), ptr %data, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %data, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %46 = ptrtoint ptr %bmc_device to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bmc_device, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %driver_data.i, align 4
  %hwmon_dev = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %data, i32 0, i32 1
  %49 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hwmon_dev, align 4
  tail call void @hwmon_device_unregister(ptr noundef %50) #9
  %user = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %data, i32 0, i32 8
  %51 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %user, align 4
  %call = tail call i32 @ipmi_destroy_user(ptr noundef %52) #9
  %sensors26 = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %data, i32 0, i32 20
  %53 = ptrtoint ptr %sensors26 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sensors26, align 4
  tail call void @kfree(ptr noundef %54) #9
  tail call void @kfree(ptr noundef %data) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ibmpex_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ipmi_smi_watcher_register(ptr noundef getelementptr inbounds (%struct.ibmpex_driver_data, ptr @driver_data, i32 0, i32 1)) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ibmpex_register_bmc(i32 noundef %iface, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 796) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %address = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %call7.i.i, i32 0, i32 6
  %1 = ptrtoint ptr %address to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 12, ptr %address, align 4
  %channel = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %call7.i.i, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 15, ptr %channel, align 8
  %data3 = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %call7.i.i, i32 0, i32 6, i32 2
  %3 = ptrtoint ptr %data3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %data3, align 2
  %interface = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %call7.i.i, i32 0, i32 9
  %4 = ptrtoint ptr %interface to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %iface, ptr %interface, align 8
  %bmc_device = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %bmc_device to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %bmc_device, align 4
  %user = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %call7.i.i, i32 0, i32 8
  %call5 = tail call i32 @ipmi_create_user(i32 noundef %iface, ptr noundef getelementptr inbounds (%struct.ibmpex_driver_data, ptr @driver_data, i32 0, i32 2), ptr noundef nonnull %call7.i.i, ptr noundef %user) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end, label %do.body9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %interface, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %7) #13
  br label %out

do.body9:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @ibmpex_register_bmc.__key) #9
  %tx_msgid = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %call7.i.i, i32 0, i32 12
  %8 = ptrtoint ptr %tx_msgid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tx_msgid, align 4
  %read_complete = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %call7.i.i, i32 0, i32 7
  %9 = ptrtoint ptr %read_complete to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %read_complete, align 4
  %wait.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %call7.i.i, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #9
  %tx_message = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %call7.i.i, i32 0, i32 10
  %10 = ptrtoint ptr %tx_message to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 58, ptr %tx_message, align 4
  %cmd = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %call7.i.i, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 60, ptr %cmd, align 1
  %tx_msg_data = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %call7.i.i, i32 0, i32 11
  %data14 = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %call7.i.i, i32 0, i32 10, i32 3
  %12 = ptrtoint ptr %data14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %tx_msg_data, ptr %data14, align 8
  %13 = ptrtoint ptr %tx_msg_data to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %tx_msg_data, align 4
  %data_len.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %call7.i.i, i32 0, i32 10, i32 2
  %14 = ptrtoint ptr %data_len.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %data_len.i, align 2
  %call.i.i = tail call i32 @ipmi_validate_addr(ptr noundef %address, i32 noundef 40) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end9.i.i

if.end.i.i:                                       ; preds = %do.body9
  %15 = ptrtoint ptr %tx_msgid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_msgid, align 4
  %inc.i.i = add i32 %16, 1
  store i32 %inc.i.i, ptr %tx_msgid, align 4
  %17 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %user, align 4
  %call3.i.i = tail call i32 @ipmi_request_settime(ptr noundef %18, ptr noundef %address, i32 noundef %inc.i.i, ptr noundef %tx_message, ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.ibmpex_send_message.exit.i_crit_edge, label %do.end.i.i

if.end.i.i.ibmpex_send_message.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ibmpex_send_message.exit.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %bmc_device to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bmc_device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.16, i32 noundef %call3.i.i) #13
  br label %ibmpex_send_message.exit.i

do.end9.i.i:                                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %bmc_device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bmc_device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.19, i32 noundef %call.i.i) #13
  br label %ibmpex_send_message.exit.i

ibmpex_send_message.exit.i:                       ; preds = %do.end9.i.i, %do.end.i.i, %if.end.i.i.ibmpex_send_message.exit.i_crit_edge
  tail call void @wait_for_completion(ptr noundef %read_complete) #9
  %rx_result.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %call7.i.i, i32 0, i32 15
  %23 = ptrtoint ptr %rx_result.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rx_result.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %ibmpex_send_message.exit.i.out_user_crit_edge

ibmpex_send_message.exit.i.out_user_crit_edge:    ; preds = %ibmpex_send_message.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_user

lor.lhs.false.i:                                  ; preds = %ibmpex_send_message.exit.i
  %rx_msg_len.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %call7.i.i, i32 0, i32 14
  %25 = ptrtoint ptr %rx_msg_len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_msg_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %26)
  %cmp.not.i = icmp eq i32 %26, 6
  br i1 %cmp.not.i, label %if.end18, label %lor.lhs.false.i.out_user_crit_edge

lor.lhs.false.i.out_user_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_user

if.end18:                                         ; preds = %lor.lhs.false.i
  %rx_msg_data.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %call7.i.i, i32 0, i32 13
  %27 = ptrtoint ptr %rx_msg_data.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %rx_msg_data.i, align 8
  %sensor_major.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %call7.i.i, i32 0, i32 17
  %29 = ptrtoint ptr %sensor_major.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %sensor_major.i, align 4
  %arrayidx4.i = getelementptr %struct.ibmpex_bmc_data, ptr %call7.i.i, i32 0, i32 13, i32 1
  %30 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx4.i, align 1
  %sensor_minor.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %call7.i.i, i32 0, i32 18
  %32 = ptrtoint ptr %sensor_minor.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %sensor_minor.i, align 1
  %33 = ptrtoint ptr %bmc_device to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bmc_device, align 4
  %conv6.i = zext i8 %28 to i32
  %conv8.i = zext i8 %31 to i32
  %arrayidx.i.i = getelementptr %struct.ibmpex_bmc_data, ptr %call7.i.i, i32 0, i32 13, i32 2
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx.i.i, align 2
  %conv11.i = zext i16 %36 to i32
  %arrayidx13.i = getelementptr %struct.ibmpex_bmc_data, ptr %call7.i.i, i32 0, i32 13, i32 4
  %37 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx13.i, align 4
  %conv14.i = zext i8 %38 to i32
  %arrayidx16.i = getelementptr %struct.ibmpex_bmc_data, ptr %call7.i.i, i32 0, i32 13, i32 5
  %39 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %40 to i32
  %41 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %interface, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.13, i32 noundef %conv6.i, i32 noundef %conv8.i, i32 noundef %conv11.i, i32 noundef %conv14.i, i32 noundef %conv17.i, i32 noundef %42) #13
  %43 = ptrtoint ptr %bmc_device to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bmc_device, align 4
  %call20 = tail call ptr @hwmon_device_register(ptr noundef %44) #9
  %hwmon_dev = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %call7.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call20, ptr %hwmon_dev, align 8
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end26, label %if.end29

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %bmc_device to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bmc_device, align 4
  %48 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %interface, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.7, i32 noundef %49) #13
  br label %out_user

if.end29:                                         ; preds = %if.end18
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %50 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  %51 = load ptr, ptr getelementptr inbounds (%struct.ibmpex_driver_data, ptr @driver_data, i32 0, i32 0, i32 1), align 4
  %call.i.i76 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %51, ptr noundef nonnull @driver_data) #9
  br i1 %call.i.i76, label %if.end.i.i77, label %if.end29.list_add_tail.exit_crit_edge

if.end29.list_add_tail.exit_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i77:                                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.ibmpex_driver_data, ptr @driver_data, i32 0, i32 0, i32 1), align 4
  %52 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @driver_data, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %51, ptr %prev3.i.i, align 4
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %call7.i.i, ptr %51, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i77, %if.end29.list_add_tail.exit_crit_edge
  %55 = ptrtoint ptr %tx_msg_data to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 2, ptr %tx_msg_data, align 4
  %56 = ptrtoint ptr %data_len.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 1, ptr %data_len.i, align 2
  %call.i.i.i = tail call i32 @ipmi_validate_addr(ptr noundef %address, i32 noundef 40) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end9.i.i.i

if.end.i.i.i:                                     ; preds = %list_add_tail.exit
  %57 = ptrtoint ptr %tx_msgid to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tx_msgid, align 4
  %inc.i.i.i = add i32 %58, 1
  store i32 %inc.i.i.i, ptr %tx_msgid, align 4
  %59 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %user, align 4
  %call3.i.i.i = tail call i32 @ipmi_request_settime(ptr noundef %60, ptr noundef %address, i32 noundef %inc.i.i.i, ptr noundef %tx_message, ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.ibmpex_send_message.exit.i.i_crit_edge, label %do.end.i.i.i

if.end.i.i.i.ibmpex_send_message.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ibmpex_send_message.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %bmc_device to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bmc_device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.16, i32 noundef %call3.i.i.i) #13
  br label %ibmpex_send_message.exit.i.i

do.end9.i.i.i:                                    ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %bmc_device to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bmc_device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.19, i32 noundef %call.i.i.i) #13
  br label %ibmpex_send_message.exit.i.i

ibmpex_send_message.exit.i.i:                     ; preds = %do.end9.i.i.i, %do.end.i.i.i, %if.end.i.i.i.ibmpex_send_message.exit.i.i_crit_edge
  tail call void @wait_for_completion(ptr noundef %read_complete) #9
  %65 = ptrtoint ptr %rx_result.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %rx_result.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i.i78 = icmp eq i8 %66, 0
  br i1 %tobool.not.i.i78, label %lor.lhs.false.i.i, label %ibmpex_send_message.exit.i.i.do.end35_crit_edge

ibmpex_send_message.exit.i.i.do.end35_crit_edge:  ; preds = %ibmpex_send_message.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

lor.lhs.false.i.i:                                ; preds = %ibmpex_send_message.exit.i.i
  %67 = ptrtoint ptr %rx_msg_len.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rx_msg_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %68)
  %cmp.not.i.i = icmp eq i32 %68, 1
  br i1 %cmp.not.i.i, label %ibmpex_query_sensor_count.exit.i, label %lor.lhs.false.i.i.do.end35_crit_edge

lor.lhs.false.i.i.do.end35_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

ibmpex_query_sensor_count.exit.i:                 ; preds = %lor.lhs.false.i.i
  %69 = ptrtoint ptr %rx_msg_data.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %rx_msg_data.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp.i79 = icmp eq i8 %70, 0
  br i1 %cmp.i79, label %ibmpex_query_sensor_count.exit.i.do.end35_crit_edge, label %if.end.i80

ibmpex_query_sensor_count.exit.i.do.end35_crit_edge: ; preds = %ibmpex_query_sensor_count.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

if.end.i80:                                       ; preds = %ibmpex_query_sensor_count.exit.i
  %num_sensors.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %call7.i.i, i32 0, i32 19
  %71 = ptrtoint ptr %num_sensors.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %num_sensors.i, align 2
  %conv3.i.i = zext i8 %70 to i32
  %72 = mul nuw nsw i32 %conv3.i.i, 112
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %72, i32 noundef 3520) #14
  %sensors.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %call7.i.i, i32 0, i32 20
  %73 = ptrtoint ptr %sensors.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call8.i.i.i, ptr %sensors.i, align 8
  %tobool.not.i81 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i81, label %if.end.i80.do.end35_crit_edge, label %for.cond.preheader.i

if.end.i80.do.end35_crit_edge:                    ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

for.cond.preheader.i:                             ; preds = %if.end.i80
  %74 = ptrtoint ptr %num_sensors.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %num_sensors.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp9222.not.i = icmp eq i8 %75, 0
  br i1 %cmp9222.not.i, label %for.cond.preheader.i.for.end49.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end49.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end49.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %arrayidx2.i.i = getelementptr %struct.ibmpex_bmc_data, ptr %call7.i.i, i32 0, i32 11, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc47.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %num_temp.0226.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %num_temp.2.i, %for.inc47.i.for.body.i_crit_edge ]
  %num_power.0225.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %num_power.2.i, %for.inc47.i.for.body.i_crit_edge ]
  %i.0223.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc48.i, %for.inc47.i.for.body.i_crit_edge ]
  %76 = ptrtoint ptr %tx_msg_data to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 3, ptr %tx_msg_data, align 4
  %conv.i.i = trunc i32 %i.0223.i to i8
  %77 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv.i.i, ptr %arrayidx2.i.i, align 1
  %78 = ptrtoint ptr %data_len.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 2, ptr %data_len.i, align 2
  %call.i.i161.i = tail call i32 @ipmi_validate_addr(ptr noundef %address, i32 noundef 40) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i161.i)
  %tobool.not.i.i162.i = icmp eq i32 %call.i.i161.i, 0
  br i1 %tobool.not.i.i162.i, label %if.end.i.i169.i, label %do.end9.i.i173.i

if.end.i.i169.i:                                  ; preds = %for.body.i
  %79 = ptrtoint ptr %tx_msgid to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tx_msgid, align 4
  %inc.i.i164.i = add i32 %80, 1
  store i32 %inc.i.i164.i, ptr %tx_msgid, align 4
  %81 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %user, align 4
  %call3.i.i167.i = tail call i32 @ipmi_request_settime(ptr noundef %82, ptr noundef %address, i32 noundef %inc.i.i164.i, ptr noundef %tx_message, ptr noundef %call7.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i167.i)
  %tobool4.not.i.i168.i = icmp eq i32 %call3.i.i167.i, 0
  br i1 %tobool4.not.i.i168.i, label %if.end.i.i169.i.ibmpex_send_message.exit.i177.i_crit_edge, label %do.end.i.i171.i

if.end.i.i169.i.ibmpex_send_message.exit.i177.i_crit_edge: ; preds = %if.end.i.i169.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ibmpex_send_message.exit.i177.i

do.end.i.i171.i:                                  ; preds = %if.end.i.i169.i
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %bmc_device to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bmc_device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.16, i32 noundef %call3.i.i167.i) #13
  br label %ibmpex_send_message.exit.i177.i

do.end9.i.i173.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %bmc_device to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bmc_device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.19, i32 noundef %call.i.i161.i) #13
  br label %ibmpex_send_message.exit.i177.i

ibmpex_send_message.exit.i177.i:                  ; preds = %do.end9.i.i173.i, %do.end.i.i171.i, %if.end.i.i169.i.ibmpex_send_message.exit.i177.i_crit_edge
  tail call void @wait_for_completion(ptr noundef %read_complete) #9
  %87 = ptrtoint ptr %rx_result.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %rx_result.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not.i176.i = icmp eq i8 %88, 0
  br i1 %tobool.not.i176.i, label %lor.lhs.false.i179.i, label %ibmpex_send_message.exit.i177.i.for.inc47.i_crit_edge

ibmpex_send_message.exit.i177.i.for.inc47.i_crit_edge: ; preds = %ibmpex_send_message.exit.i177.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc47.i

lor.lhs.false.i179.i:                             ; preds = %ibmpex_send_message.exit.i177.i
  %89 = ptrtoint ptr %rx_msg_len.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rx_msg_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %90)
  %cmp.i181.i = icmp slt i32 %90, 3
  br i1 %cmp.i181.i, label %lor.lhs.false.i179.i.for.inc47.i_crit_edge, label %is_power_sensor.exit.i

lor.lhs.false.i179.i.for.inc47.i_crit_edge:       ; preds = %lor.lhs.false.i179.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc47.i

is_power_sensor.exit.i:                           ; preds = %lor.lhs.false.i179.i
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(3) %rx_msg_data.i, ptr noundef nonnull dereferenceable(3) @power_sensor_sig, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i182.not.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i182.not.i, label %if.then17.i, label %is_temp_sensor.exit.i

if.then17.i:                                      ; preds = %is_power_sensor.exit.i
  %inc.i = add i32 %num_power.0225.i, 1
  %91 = ptrtoint ptr %sensor_major.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %sensor_major.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %92)
  %cmp.i185.i = icmp eq i8 %92, 2
  br i1 %cmp.i185.i, label %if.then17.i.if.end35.i_crit_edge, label %for.cond.preheader.i.i

if.then17.i.if.end35.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

for.cond.preheader.i.i:                           ; preds = %if.then17.i
  %sub.i.i = add nsw i32 %90, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i.i)
  %cmp28.i.i = icmp ugt i32 %sub.i.i, 3
  br i1 %cmp28.i.i, label %for.cond.preheader.i.i.for.body.i.i_crit_edge, label %for.cond.preheader.i.i.if.end35.i_crit_edge

for.cond.preheader.i.i.if.end35.i_crit_edge:      ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i82 = add nuw nsw i32 %i.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i82, %sub.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.if.end35.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.cond.i.i.if.end35.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.09.i.i = phi i32 [ %inc.i.i82, %for.cond.i.i.for.body.i.i_crit_edge ], [ 3, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i83 = getelementptr i8, ptr %rx_msg_data.i, i32 %i.09.i.i
  %bcmp.i186.i = tail call i32 @bcmp(ptr noundef dereferenceable(2) %arrayidx.i.i83, ptr noundef nonnull dereferenceable(2) @watt_sensor_sig, i32 2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i186.i)
  %tobool.not.i187.i = icmp eq i32 %bcmp.i186.i, 0
  br i1 %tobool.not.i187.i, label %for.body.i.i.if.end35.i_crit_edge, label %for.cond.i.i

for.body.i.i.if.end35.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

is_temp_sensor.exit.i:                            ; preds = %is_power_sensor.exit.i
  %bcmp.i190.i = tail call i32 @bcmp(ptr noundef dereferenceable(3) %rx_msg_data.i, ptr noundef nonnull dereferenceable(3) @temp_sensor_sig, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i190.i)
  %tobool.not.i191.not.i = icmp eq i32 %bcmp.i190.i, 0
  br i1 %tobool.not.i191.not.i, label %if.then28.i, label %is_temp_sensor.exit.i.for.inc47.i_crit_edge

is_temp_sensor.exit.i.for.inc47.i_crit_edge:      ; preds = %is_temp_sensor.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc47.i

if.then28.i:                                      ; preds = %is_temp_sensor.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc29.i = add i32 %num_temp.0226.i, 1
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then28.i, %for.body.i.i.if.end35.i_crit_edge, %for.cond.i.i.if.end35.i_crit_edge, %for.cond.preheader.i.i.if.end35.i_crit_edge, %if.then17.i.if.end35.i_crit_edge
  %.sink.i = phi i32 [ 1000, %if.then28.i ], [ 1000000, %if.then17.i.if.end35.i_crit_edge ], [ 100000, %for.cond.preheader.i.i.if.end35.i_crit_edge ], [ 1000000, %for.body.i.i.if.end35.i_crit_edge ], [ 100000, %for.cond.i.i.if.end35.i_crit_edge ]
  %.str.21..str.22.i.i = phi ptr [ @.str.21, %if.then28.i ], [ @.str.22, %if.then17.i.if.end35.i_crit_edge ], [ @.str.22, %for.cond.preheader.i.i.if.end35.i_crit_edge ], [ @.str.22, %for.cond.i.i.if.end35.i_crit_edge ], [ @.str.22, %for.body.i.i.if.end35.i_crit_edge ]
  %sensor_counter.0.i = phi i32 [ %inc29.i, %if.then28.i ], [ %inc.i, %if.then17.i.if.end35.i_crit_edge ], [ %inc.i, %for.cond.preheader.i.i.if.end35.i_crit_edge ], [ %inc.i, %for.cond.i.i.if.end35.i_crit_edge ], [ %inc.i, %for.body.i.i.if.end35.i_crit_edge ]
  %num_power.1.i = phi i32 [ %num_power.0225.i, %if.then28.i ], [ %inc.i, %if.then17.i.if.end35.i_crit_edge ], [ %inc.i, %for.cond.preheader.i.i.if.end35.i_crit_edge ], [ %inc.i, %for.cond.i.i.if.end35.i_crit_edge ], [ %inc.i, %for.body.i.i.if.end35.i_crit_edge ]
  %num_temp.1.i = phi i32 [ %inc29.i, %if.then28.i ], [ %num_temp.0226.i, %if.then17.i.if.end35.i_crit_edge ], [ %num_temp.0226.i, %for.cond.preheader.i.i.if.end35.i_crit_edge ], [ %num_temp.0226.i, %for.cond.i.i.if.end35.i_crit_edge ], [ %num_temp.0226.i, %for.body.i.i.if.end35.i_crit_edge ]
  %93 = ptrtoint ptr %sensors.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sensors.i, align 8
  %multiplier32.i = getelementptr %struct.ibmpex_sensor_data, ptr %94, i32 %i.0223.i, i32 2
  %95 = ptrtoint ptr %multiplier32.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %.sink.i, ptr %multiplier32.i, align 4
  %96 = load ptr, ptr %sensors.i, align 8
  %arrayidx37.i = getelementptr %struct.ibmpex_sensor_data, ptr %96, i32 %i.0223.i
  %97 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1, ptr %arrayidx37.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %98 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %98, i32 noundef 3264, i32 noundef 32) #12
  %tobool.not.i195.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i195.i, label %if.end35.i.exit_remove.i_crit_edge, label %if.end.i199.i

if.end35.i.exit_remove.i_crit_edge:               ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_remove.i

if.end.i199.i:                                    ; preds = %if.end35.i
  %call2.i.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %.str.21..str.22.i.i, i32 noundef %sensor_counter.0.i, ptr noundef nonnull @.str.23) #9
  %99 = ptrtoint ptr %sensors.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %sensors.i, align 8
  %key.i.i = getelementptr %struct.ibmpex_sensor_data, ptr %100, i32 %i.0223.i, i32 3, i32 0, i32 0, i32 0, i32 3
  %101 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @create_sensor.__key, ptr %key.i.i, align 4
  %102 = load ptr, ptr %sensors.i, align 8
  %arrayidx15.i.i = getelementptr %struct.ibmpex_sensor_data, ptr %102, i32 %i.0223.i, i32 3, i32 0
  %103 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call7.i.i.i, ptr %arrayidx15.i.i, align 4
  %104 = load ptr, ptr %sensors.i, align 8
  %mode.i.i = getelementptr %struct.ibmpex_sensor_data, ptr %104, i32 %i.0223.i, i32 3, i32 0, i32 0, i32 0, i32 1
  %105 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 292, ptr %mode.i.i, align 4
  %106 = load ptr, ptr %sensors.i, align 8
  %show.i.i = getelementptr %struct.ibmpex_sensor_data, ptr %106, i32 %i.0223.i, i32 3, i32 0, i32 0, i32 1
  %107 = ptrtoint ptr %show.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @ibmpex_show_sensor, ptr %show.i.i, align 4
  %108 = load ptr, ptr %sensors.i, align 8
  %index.i.i = getelementptr %struct.ibmpex_sensor_data, ptr %108, i32 %i.0223.i, i32 3, i32 0, i32 1
  %109 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv.i.i, ptr %index.i.i, align 4
  %110 = load ptr, ptr %sensors.i, align 8
  %nr.i.i = getelementptr %struct.ibmpex_sensor_data, ptr %110, i32 %i.0223.i, i32 3, i32 0, i32 2
  %111 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %nr.i.i, align 1
  %112 = ptrtoint ptr %bmc_device to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %bmc_device, align 4
  %114 = load ptr, ptr %sensors.i, align 8
  %arrayidx41.i.i = getelementptr %struct.ibmpex_sensor_data, ptr %114, i32 %i.0223.i, i32 3, i32 0
  %call43.i.i = tail call i32 @device_create_file(ptr noundef %113, ptr noundef %arrayidx41.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i.i)
  %tobool44.not.i.i = icmp eq i32 %call43.i.i, 0
  br i1 %tobool44.not.i.i, label %for.inc.i, label %if.end.i199.i.if.then45.i.i_crit_edge

if.end.i199.i.if.then45.i.i_crit_edge:            ; preds = %if.end.i199.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then45.i.i

if.then45.i.i:                                    ; preds = %if.end.i199.2.i.if.then45.i.i_crit_edge, %if.end.i199.1.i.if.then45.i.i_crit_edge, %if.end.i199.i.if.then45.i.i_crit_edge
  %call43.i.lcssa.i = phi i32 [ %call43.i.i, %if.end.i199.i.if.then45.i.i_crit_edge ], [ %call43.i.1.i, %if.end.i199.1.i.if.then45.i.i_crit_edge ], [ %call43.i.2.i, %if.end.i199.2.i.if.then45.i.i_crit_edge ]
  %j.0220.lcssa234.i = phi i32 [ 0, %if.end.i199.i.if.then45.i.i_crit_edge ], [ 1, %if.end.i199.1.i.if.then45.i.i_crit_edge ], [ 2, %if.end.i199.2.i.if.then45.i.i_crit_edge ]
  %call7.i.i.lcssa232.i = phi ptr [ %call7.i.i.i, %if.end.i199.i.if.then45.i.i_crit_edge ], [ %call7.i.i.1.i, %if.end.i199.1.i.if.then45.i.i_crit_edge ], [ %call7.i.i.2.i, %if.end.i199.2.i.if.then45.i.i_crit_edge ]
  %115 = ptrtoint ptr %sensors.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %sensors.i, align 8
  %arrayidx49.i.i = getelementptr %struct.ibmpex_sensor_data, ptr %116, i32 %i.0223.i, i32 3, i32 %j.0220.lcssa234.i
  %117 = ptrtoint ptr %arrayidx49.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %arrayidx49.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.lcssa232.i) #9
  br label %exit_remove.i

for.inc.i:                                        ; preds = %if.end.i199.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %118 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.1.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %118, i32 noundef 3264, i32 noundef 32) #12
  %tobool.not.i195.1.i = icmp eq ptr %call7.i.i.1.i, null
  br i1 %tobool.not.i195.1.i, label %for.inc.i.exit_remove.i_crit_edge, label %if.end.i199.1.i

for.inc.i.exit_remove.i_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_remove.i

if.end.i199.1.i:                                  ; preds = %for.inc.i
  %call2.i.1.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %call7.i.i.1.i, ptr noundef nonnull %.str.21..str.22.i.i, i32 noundef %sensor_counter.0.i, ptr noundef nonnull @.str.24) #9
  %119 = ptrtoint ptr %sensors.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %sensors.i, align 8
  %key.i.1.i = getelementptr %struct.ibmpex_sensor_data, ptr %120, i32 %i.0223.i, i32 3, i32 1, i32 0, i32 0, i32 3
  %121 = ptrtoint ptr %key.i.1.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @create_sensor.__key, ptr %key.i.1.i, align 4
  %122 = load ptr, ptr %sensors.i, align 8
  %arrayidx15.i.1.i = getelementptr %struct.ibmpex_sensor_data, ptr %122, i32 %i.0223.i, i32 3, i32 1
  %123 = ptrtoint ptr %arrayidx15.i.1.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call7.i.i.1.i, ptr %arrayidx15.i.1.i, align 4
  %124 = load ptr, ptr %sensors.i, align 8
  %mode.i.1.i = getelementptr %struct.ibmpex_sensor_data, ptr %124, i32 %i.0223.i, i32 3, i32 1, i32 0, i32 0, i32 1
  %125 = ptrtoint ptr %mode.i.1.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 292, ptr %mode.i.1.i, align 4
  %126 = load ptr, ptr %sensors.i, align 8
  %show.i.1.i = getelementptr %struct.ibmpex_sensor_data, ptr %126, i32 %i.0223.i, i32 3, i32 1, i32 0, i32 1
  %127 = ptrtoint ptr %show.i.1.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @ibmpex_show_sensor, ptr %show.i.1.i, align 4
  %128 = load ptr, ptr %sensors.i, align 8
  %index.i.1.i = getelementptr %struct.ibmpex_sensor_data, ptr %128, i32 %i.0223.i, i32 3, i32 1, i32 1
  %129 = ptrtoint ptr %index.i.1.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv.i.i, ptr %index.i.1.i, align 4
  %130 = load ptr, ptr %sensors.i, align 8
  %nr.i.1.i = getelementptr %struct.ibmpex_sensor_data, ptr %130, i32 %i.0223.i, i32 3, i32 1, i32 2
  %131 = ptrtoint ptr %nr.i.1.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 1, ptr %nr.i.1.i, align 1
  %132 = ptrtoint ptr %bmc_device to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %bmc_device, align 4
  %134 = load ptr, ptr %sensors.i, align 8
  %arrayidx41.i.1.i = getelementptr %struct.ibmpex_sensor_data, ptr %134, i32 %i.0223.i, i32 3, i32 1
  %call43.i.1.i = tail call i32 @device_create_file(ptr noundef %133, ptr noundef %arrayidx41.i.1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i.1.i)
  %tobool44.not.i.1.i = icmp eq i32 %call43.i.1.i, 0
  br i1 %tobool44.not.i.1.i, label %for.inc.1.i, label %if.end.i199.1.i.if.then45.i.i_crit_edge

if.end.i199.1.i.if.then45.i.i_crit_edge:          ; preds = %if.end.i199.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then45.i.i

for.inc.1.i:                                      ; preds = %if.end.i199.1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %135 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.2.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %135, i32 noundef 3264, i32 noundef 32) #12
  %tobool.not.i195.2.i = icmp eq ptr %call7.i.i.2.i, null
  br i1 %tobool.not.i195.2.i, label %for.inc.1.i.exit_remove.i_crit_edge, label %if.end.i199.2.i

for.inc.1.i.exit_remove.i_crit_edge:              ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_remove.i

if.end.i199.2.i:                                  ; preds = %for.inc.1.i
  %call2.i.2.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %call7.i.i.2.i, ptr noundef nonnull %.str.21..str.22.i.i, i32 noundef %sensor_counter.0.i, ptr noundef nonnull @.str.25) #9
  %136 = ptrtoint ptr %sensors.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %sensors.i, align 8
  %key.i.2.i = getelementptr %struct.ibmpex_sensor_data, ptr %137, i32 %i.0223.i, i32 3, i32 2, i32 0, i32 0, i32 3
  %138 = ptrtoint ptr %key.i.2.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @create_sensor.__key, ptr %key.i.2.i, align 4
  %139 = load ptr, ptr %sensors.i, align 8
  %arrayidx15.i.2.i = getelementptr %struct.ibmpex_sensor_data, ptr %139, i32 %i.0223.i, i32 3, i32 2
  %140 = ptrtoint ptr %arrayidx15.i.2.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call7.i.i.2.i, ptr %arrayidx15.i.2.i, align 4
  %141 = load ptr, ptr %sensors.i, align 8
  %mode.i.2.i = getelementptr %struct.ibmpex_sensor_data, ptr %141, i32 %i.0223.i, i32 3, i32 2, i32 0, i32 0, i32 1
  %142 = ptrtoint ptr %mode.i.2.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 292, ptr %mode.i.2.i, align 4
  %143 = load ptr, ptr %sensors.i, align 8
  %show.i.2.i = getelementptr %struct.ibmpex_sensor_data, ptr %143, i32 %i.0223.i, i32 3, i32 2, i32 0, i32 1
  %144 = ptrtoint ptr %show.i.2.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @ibmpex_show_sensor, ptr %show.i.2.i, align 4
  %145 = load ptr, ptr %sensors.i, align 8
  %index.i.2.i = getelementptr %struct.ibmpex_sensor_data, ptr %145, i32 %i.0223.i, i32 3, i32 2, i32 1
  %146 = ptrtoint ptr %index.i.2.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv.i.i, ptr %index.i.2.i, align 4
  %147 = load ptr, ptr %sensors.i, align 8
  %nr.i.2.i = getelementptr %struct.ibmpex_sensor_data, ptr %147, i32 %i.0223.i, i32 3, i32 2, i32 2
  %148 = ptrtoint ptr %nr.i.2.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 2, ptr %nr.i.2.i, align 1
  %149 = ptrtoint ptr %bmc_device to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %bmc_device, align 4
  %151 = load ptr, ptr %sensors.i, align 8
  %arrayidx41.i.2.i = getelementptr %struct.ibmpex_sensor_data, ptr %151, i32 %i.0223.i, i32 3, i32 2
  %call43.i.2.i = tail call i32 @device_create_file(ptr noundef %150, ptr noundef %arrayidx41.i.2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i.2.i)
  %tobool44.not.i.2.i = icmp eq i32 %call43.i.2.i, 0
  br i1 %tobool44.not.i.2.i, label %if.end.i199.2.i.for.inc47.i_crit_edge, label %if.end.i199.2.i.if.then45.i.i_crit_edge

if.end.i199.2.i.if.then45.i.i_crit_edge:          ; preds = %if.end.i199.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then45.i.i

if.end.i199.2.i.for.inc47.i_crit_edge:            ; preds = %if.end.i199.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc47.i

for.inc47.i:                                      ; preds = %if.end.i199.2.i.for.inc47.i_crit_edge, %is_temp_sensor.exit.i.for.inc47.i_crit_edge, %lor.lhs.false.i179.i.for.inc47.i_crit_edge, %ibmpex_send_message.exit.i177.i.for.inc47.i_crit_edge
  %num_power.2.i = phi i32 [ %num_power.0225.i, %is_temp_sensor.exit.i.for.inc47.i_crit_edge ], [ %num_power.0225.i, %ibmpex_send_message.exit.i177.i.for.inc47.i_crit_edge ], [ %num_power.0225.i, %lor.lhs.false.i179.i.for.inc47.i_crit_edge ], [ %num_power.1.i, %if.end.i199.2.i.for.inc47.i_crit_edge ]
  %num_temp.2.i = phi i32 [ %num_temp.0226.i, %is_temp_sensor.exit.i.for.inc47.i_crit_edge ], [ %num_temp.0226.i, %ibmpex_send_message.exit.i177.i.for.inc47.i_crit_edge ], [ %num_temp.0226.i, %lor.lhs.false.i179.i.for.inc47.i_crit_edge ], [ %num_temp.1.i, %if.end.i199.2.i.for.inc47.i_crit_edge ]
  %inc48.i = add nuw nsw i32 %i.0223.i, 1
  %152 = ptrtoint ptr %num_sensors.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %num_sensors.i, align 2
  %conv8.i84 = zext i8 %153 to i32
  %cmp9.i = icmp ult i32 %inc48.i, %conv8.i84
  br i1 %cmp9.i, label %for.inc47.i.for.body.i_crit_edge, label %for.inc47.i.for.end49.i_crit_edge

for.inc47.i.for.end49.i_crit_edge:                ; preds = %for.inc47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end49.i

for.inc47.i.for.body.i_crit_edge:                 ; preds = %for.inc47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end49.i:                                      ; preds = %for.inc47.i.for.end49.i_crit_edge, %for.cond.preheader.i.for.end49.i_crit_edge
  %154 = ptrtoint ptr %bmc_device to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %bmc_device, align 4
  %call50.i = tail call i32 @device_create_file(ptr noundef %155, ptr noundef nonnull @sensor_dev_attr_reset_high_low) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.end53.i, label %for.end49.i.exit_remove.i_crit_edge

for.end49.i.exit_remove.i_crit_edge:              ; preds = %for.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_remove.i

if.end53.i:                                       ; preds = %for.end49.i
  %156 = ptrtoint ptr %bmc_device to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %bmc_device, align 4
  %call55.i = tail call i32 @device_create_file(ptr noundef %157, ptr noundef nonnull @sensor_dev_attr_name) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %if.end53.i.cleanup_crit_edge, label %if.end53.i.exit_remove.i_crit_edge

if.end53.i.exit_remove.i_crit_edge:               ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_remove.i

if.end53.i.cleanup_crit_edge:                     ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

exit_remove.i:                                    ; preds = %if.end53.i.exit_remove.i_crit_edge, %for.end49.i.exit_remove.i_crit_edge, %for.inc.1.i.exit_remove.i_crit_edge, %for.inc.i.exit_remove.i_crit_edge, %if.then45.i.i, %if.end35.i.exit_remove.i_crit_edge
  %err.0.i = phi i32 [ %call50.i, %for.end49.i.exit_remove.i_crit_edge ], [ %call55.i, %if.end53.i.exit_remove.i_crit_edge ], [ %call43.i.lcssa.i, %if.then45.i.i ], [ -12, %if.end35.i.exit_remove.i_crit_edge ], [ -12, %for.inc.i.exit_remove.i_crit_edge ], [ -12, %for.inc.1.i.exit_remove.i_crit_edge ]
  %158 = ptrtoint ptr %bmc_device to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %bmc_device, align 4
  tail call void @device_remove_file(ptr noundef %159, ptr noundef nonnull @sensor_dev_attr_reset_high_low) #9
  %160 = ptrtoint ptr %bmc_device to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %bmc_device, align 4
  tail call void @device_remove_file(ptr noundef %161, ptr noundef nonnull @sensor_dev_attr_name) #9
  %162 = ptrtoint ptr %num_sensors.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %num_sensors.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %cmp64230.not.i = icmp eq i8 %163, 0
  br i1 %cmp64230.not.i, label %ibmpex_find_sensors.exit.thread95, label %exit_remove.i.for.cond67.preheader.i_crit_edge

exit_remove.i.for.cond67.preheader.i_crit_edge:   ; preds = %exit_remove.i
  br label %for.cond67.preheader.i

ibmpex_find_sensors.exit.thread95:                ; preds = %exit_remove.i
  call void @__sanitizer_cov_trace_pc() #11
  %164 = ptrtoint ptr %sensors.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %sensors.i, align 8
  tail call void @kfree(ptr noundef %165) #9
  br label %do.end35

for.cond67.preheader.i:                           ; preds = %for.inc91.2.i.for.cond67.preheader.i_crit_edge, %exit_remove.i.for.cond67.preheader.i_crit_edge
  %i.1231.i = phi i32 [ %inc95.i, %for.inc91.2.i.for.cond67.preheader.i_crit_edge ], [ 0, %exit_remove.i.for.cond67.preheader.i_crit_edge ]
  %166 = ptrtoint ptr %sensors.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %sensors.i, align 8
  %arrayidx73.i = getelementptr %struct.ibmpex_sensor_data, ptr %167, i32 %i.1231.i, i32 3, i32 0
  %168 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx73.i, align 4
  %tobool75.not.i = icmp eq ptr %169, null
  br i1 %tobool75.not.i, label %for.cond67.preheader.i.for.inc91.i_crit_edge, label %if.end77.i

for.cond67.preheader.i.for.inc91.i_crit_edge:     ; preds = %for.cond67.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc91.i

if.end77.i:                                       ; preds = %for.cond67.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  %170 = ptrtoint ptr %bmc_device to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %bmc_device, align 4
  tail call void @device_remove_file(ptr noundef %171, ptr noundef %arrayidx73.i) #9
  %172 = ptrtoint ptr %sensors.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %sensors.i, align 8
  %arrayidx87.i = getelementptr %struct.ibmpex_sensor_data, ptr %173, i32 %i.1231.i, i32 3, i32 0
  %174 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx87.i, align 4
  tail call void @kfree(ptr noundef %175) #9
  br label %for.inc91.i

for.inc91.i:                                      ; preds = %if.end77.i, %for.cond67.preheader.i.for.inc91.i_crit_edge
  %176 = ptrtoint ptr %sensors.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %sensors.i, align 8
  %arrayidx73.1.i = getelementptr %struct.ibmpex_sensor_data, ptr %177, i32 %i.1231.i, i32 3, i32 1
  %178 = ptrtoint ptr %arrayidx73.1.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx73.1.i, align 4
  %tobool75.not.1.i = icmp eq ptr %179, null
  br i1 %tobool75.not.1.i, label %for.inc91.i.for.inc91.1.i_crit_edge, label %if.end77.1.i

for.inc91.i.for.inc91.1.i_crit_edge:              ; preds = %for.inc91.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc91.1.i

if.end77.1.i:                                     ; preds = %for.inc91.i
  call void @__sanitizer_cov_trace_pc() #11
  %180 = ptrtoint ptr %bmc_device to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %bmc_device, align 4
  tail call void @device_remove_file(ptr noundef %181, ptr noundef %arrayidx73.1.i) #9
  %182 = ptrtoint ptr %sensors.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %sensors.i, align 8
  %arrayidx87.1.i = getelementptr %struct.ibmpex_sensor_data, ptr %183, i32 %i.1231.i, i32 3, i32 1
  %184 = ptrtoint ptr %arrayidx87.1.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx87.1.i, align 4
  tail call void @kfree(ptr noundef %185) #9
  br label %for.inc91.1.i

for.inc91.1.i:                                    ; preds = %if.end77.1.i, %for.inc91.i.for.inc91.1.i_crit_edge
  %186 = ptrtoint ptr %sensors.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %sensors.i, align 8
  %arrayidx73.2.i = getelementptr %struct.ibmpex_sensor_data, ptr %187, i32 %i.1231.i, i32 3, i32 2
  %188 = ptrtoint ptr %arrayidx73.2.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %arrayidx73.2.i, align 4
  %tobool75.not.2.i = icmp eq ptr %189, null
  br i1 %tobool75.not.2.i, label %for.inc91.1.i.for.inc91.2.i_crit_edge, label %if.end77.2.i

for.inc91.1.i.for.inc91.2.i_crit_edge:            ; preds = %for.inc91.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc91.2.i

if.end77.2.i:                                     ; preds = %for.inc91.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %190 = ptrtoint ptr %bmc_device to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %bmc_device, align 4
  tail call void @device_remove_file(ptr noundef %191, ptr noundef %arrayidx73.2.i) #9
  %192 = ptrtoint ptr %sensors.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %sensors.i, align 8
  %arrayidx87.2.i = getelementptr %struct.ibmpex_sensor_data, ptr %193, i32 %i.1231.i, i32 3, i32 2
  %194 = ptrtoint ptr %arrayidx87.2.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %arrayidx87.2.i, align 4
  tail call void @kfree(ptr noundef %195) #9
  br label %for.inc91.2.i

for.inc91.2.i:                                    ; preds = %if.end77.2.i, %for.inc91.1.i.for.inc91.2.i_crit_edge
  %inc95.i = add nuw nsw i32 %i.1231.i, 1
  %196 = ptrtoint ptr %num_sensors.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %num_sensors.i, align 2
  %conv63.i = zext i8 %197 to i32
  %cmp64.i = icmp ult i32 %inc95.i, %conv63.i
  br i1 %cmp64.i, label %for.inc91.2.i.for.cond67.preheader.i_crit_edge, label %ibmpex_find_sensors.exit

for.inc91.2.i.for.cond67.preheader.i_crit_edge:   ; preds = %for.inc91.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond67.preheader.i

ibmpex_find_sensors.exit:                         ; preds = %for.inc91.2.i
  %198 = ptrtoint ptr %sensors.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %sensors.i, align 8
  tail call void @kfree(ptr noundef %199) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool31.not = icmp eq i32 %err.0.i, 0
  br i1 %tobool31.not, label %ibmpex_find_sensors.exit.cleanup_crit_edge, label %ibmpex_find_sensors.exit.do.end35_crit_edge

ibmpex_find_sensors.exit.do.end35_crit_edge:      ; preds = %ibmpex_find_sensors.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

ibmpex_find_sensors.exit.cleanup_crit_edge:       ; preds = %ibmpex_find_sensors.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end35:                                         ; preds = %ibmpex_find_sensors.exit.do.end35_crit_edge, %ibmpex_find_sensors.exit.thread95, %if.end.i80.do.end35_crit_edge, %ibmpex_query_sensor_count.exit.i.do.end35_crit_edge, %lor.lhs.false.i.i.do.end35_crit_edge, %ibmpex_send_message.exit.i.i.do.end35_crit_edge
  %retval.0.i8691 = phi i32 [ %err.0.i, %ibmpex_find_sensors.exit.do.end35_crit_edge ], [ %err.0.i, %ibmpex_find_sensors.exit.thread95 ], [ -2, %ibmpex_send_message.exit.i.i.do.end35_crit_edge ], [ -2, %lor.lhs.false.i.i.do.end35_crit_edge ], [ -12, %if.end.i80.do.end35_crit_edge ], [ -2, %ibmpex_query_sensor_count.exit.i.do.end35_crit_edge ]
  %200 = ptrtoint ptr %bmc_device to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %bmc_device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %201, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i8691) #13
  %202 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %hwmon_dev, align 8
  tail call void @hwmon_device_unregister(ptr noundef %203) #9
  br label %out_user

out_user:                                         ; preds = %do.end35, %do.end26, %lor.lhs.false.i.out_user_crit_edge, %ibmpex_send_message.exit.i.out_user_crit_edge
  %204 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %user, align 4
  %call40 = tail call i32 @ipmi_destroy_user(ptr noundef %205) #9
  br label %out

out:                                              ; preds = %out_user, %do.end
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %ibmpex_find_sensors.exit.cleanup_crit_edge, %if.end53.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ibmpex_bmc_gone(i32 noundef %iface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %p.0.in.i = phi ptr [ @driver_data, %entry ], [ %p.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %p.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %p.0.i = load ptr, ptr %p.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %p.0.i, @driver_data
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %interface.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %p.0.i, i32 0, i32 9
  %1 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %interface.i, align 4
  %cmp6.i = icmp eq i32 %2, %iface
  br i1 %cmp6.i, label %get_bmc_data.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

get_bmc_data.exit:                                ; preds = %for.body.i
  %tobool.not = icmp eq ptr %p.0.i, null
  br i1 %tobool.not, label %get_bmc_data.exit.cleanup_crit_edge, label %if.end

get_bmc_data.exit.cleanup_crit_edge:              ; preds = %get_bmc_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %get_bmc_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ibmpex_bmc_delete(ptr noundef nonnull %p.0.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %get_bmc_data.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ibmpex_msg_handler(ptr noundef %msg, ptr noundef %user_msg_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msgid = getelementptr inbounds %struct.ipmi_recv_msg, ptr %msg, i32 0, i32 4
  %0 = ptrtoint ptr %msgid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msgid, align 4
  %tx_msgid = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %user_msg_data, i32 0, i32 12
  %2 = ptrtoint ptr %tx_msgid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_msgid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bmc_device = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %user_msg_data, i32 0, i32 2
  %4 = ptrtoint ptr %bmc_device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bmc_device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.33, i32 noundef %1, i32 noundef %3) #13
  tail call void @ipmi_free_recv_msg(ptr noundef %msg) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %recv_type = getelementptr inbounds %struct.ipmi_recv_msg, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %recv_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %recv_type, align 4
  %rx_recv_type = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %user_msg_data, i32 0, i32 16
  %8 = ptrtoint ptr %rx_recv_type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rx_recv_type, align 4
  %data_len = getelementptr inbounds %struct.ipmi_recv_msg, ptr %msg, i32 0, i32 5, i32 2
  %9 = ptrtoint ptr %data_len to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %data_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp4.not = icmp eq i16 %10, 0
  br i1 %cmp4.not, label %if.end.if.end10_crit_edge, label %if.then6

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %data8 = getelementptr inbounds %struct.ipmi_recv_msg, ptr %msg, i32 0, i32 5, i32 3
  %11 = ptrtoint ptr %data8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data8, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end.if.end10_crit_edge
  %.sink = phi i8 [ %14, %if.then6 ], [ -1, %if.end.if.end10_crit_edge ]
  %15 = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %user_msg_data, i32 0, i32 15
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.sink, ptr %15, align 4
  %17 = ptrtoint ptr %data_len to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %data_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %18)
  %cmp14 = icmp ugt i16 %18, 1
  br i1 %cmp14, label %if.then16, label %if.else23

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %conv13 = zext i16 %18 to i32
  %sub = add nsw i32 %conv13, -1
  %rx_msg_len = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %user_msg_data, i32 0, i32 14
  %19 = ptrtoint ptr %rx_msg_len to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub, ptr %rx_msg_len, align 4
  %rx_msg_data = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %user_msg_data, i32 0, i32 13
  %data21 = getelementptr inbounds %struct.ipmi_recv_msg, ptr %msg, i32 0, i32 5, i32 3
  %20 = ptrtoint ptr %data21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data21, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 1
  %22 = call ptr @memcpy(ptr %rx_msg_data, ptr %add.ptr, i32 %sub)
  br label %if.end25

if.else23:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %rx_msg_len24 = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %user_msg_data, i32 0, i32 14
  %23 = ptrtoint ptr %rx_msg_len24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %rx_msg_len24, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else23, %if.then16
  tail call void @ipmi_free_recv_msg(ptr noundef %msg) #9
  %read_complete = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %user_msg_data, i32 0, i32 7
  tail call void @complete(ptr noundef %read_complete) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_create_user(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_destroy_user(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_validate_addr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_request_settime(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ibmpex_show_sensor(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sensors = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sensors, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4
  %idxprom = zext i8 %5 to i32
  %multiplier = getelementptr %struct.ibmpex_sensor_data, ptr %3, i32 %idxprom, i32 2
  %6 = ptrtoint ptr %multiplier to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %multiplier, align 4
  %lock.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %last_updated.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %last_updated.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %last_updated.i, align 4
  %add.neg.i = add i32 %8, -200
  %sub.i = sub i32 %add.neg.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %valid.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %valid.i, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.ibmpex_update_device.exit_crit_edge

land.lhs.true.i.ibmpex_update_device.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ibmpex_update_device.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %num_sensors.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %num_sensors.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_sensors.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp155.not.i = icmp eq i8 %14, 0
  br i1 %cmp155.not.i, label %if.end.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %tx_msg_data.i.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %1, i32 0, i32 11
  %arrayidx2.i.i = getelementptr %struct.ibmpex_bmc_data, ptr %1, i32 0, i32 11, i32 1
  %data_len.i.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %1, i32 0, i32 10, i32 2
  %address.i.i.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %1, i32 0, i32 6
  %bmc_device10.i.i.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %1, i32 0, i32 2
  %tx_msgid.i.i.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %1, i32 0, i32 12
  %user.i.i.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %1, i32 0, i32 8
  %tx_message.i.i.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %1, i32 0, i32 10
  %read_complete.i.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %1, i32 0, i32 7
  %rx_result.i.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %1, i32 0, i32 15
  %rx_msg_len.i.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %1, i32 0, i32 14
  %arrayidx.i.i = getelementptr %struct.ibmpex_bmc_data, ptr %1, i32 0, i32 13, i32 16
  %arrayidx.i50.i = getelementptr %struct.ibmpex_bmc_data, ptr %1, i32 0, i32 13, i32 18
  %arrayidx.i51.i = getelementptr %struct.ibmpex_bmc_data, ptr %1, i32 0, i32 13, i32 20
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.056.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sensors, align 4
  %arrayidx.i = getelementptr %struct.ibmpex_sensor_data, ptr %16, i32 %i.056.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool3.not.i = icmp eq i32 %18, 0
  br i1 %tobool3.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end5.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end5.i:                                        ; preds = %for.body.i
  %19 = ptrtoint ptr %tx_msg_data.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 6, ptr %tx_msg_data.i.i, align 4
  %conv.i.i = trunc i32 %i.056.i to i8
  %20 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i.i, ptr %arrayidx2.i.i, align 1
  %21 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 2, ptr %data_len.i.i, align 2
  %call.i.i.i = tail call i32 @ipmi_validate_addr(ptr noundef %address.i.i.i, i32 noundef 40) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end9.i.i.i

if.end.i.i.i:                                     ; preds = %if.end5.i
  %22 = ptrtoint ptr %tx_msgid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_msgid.i.i.i, align 4
  %inc.i.i.i = add i32 %23, 1
  store i32 %inc.i.i.i, ptr %tx_msgid.i.i.i, align 4
  %24 = ptrtoint ptr %user.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %user.i.i.i, align 4
  %call3.i.i.i = tail call i32 @ipmi_request_settime(ptr noundef %25, ptr noundef %address.i.i.i, i32 noundef %inc.i.i.i, ptr noundef %tx_message.i.i.i, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.ibmpex_send_message.exit.i.i_crit_edge, label %do.end.i.i.i

if.end.i.i.i.ibmpex_send_message.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ibmpex_send_message.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %bmc_device10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bmc_device10.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.16, i32 noundef %call3.i.i.i) #13
  br label %ibmpex_send_message.exit.i.i

do.end9.i.i.i:                                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %bmc_device10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bmc_device10.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.19, i32 noundef %call.i.i.i) #13
  br label %ibmpex_send_message.exit.i.i

ibmpex_send_message.exit.i.i:                     ; preds = %do.end9.i.i.i, %do.end.i.i.i, %if.end.i.i.i.ibmpex_send_message.exit.i.i_crit_edge
  tail call void @wait_for_completion(ptr noundef %read_complete.i.i) #9
  %30 = ptrtoint ptr %rx_result.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rx_result.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %ibmpex_send_message.exit.i.i.ibmpex_query_sensor_data.exit.i_crit_edge

ibmpex_send_message.exit.i.i.ibmpex_query_sensor_data.exit.i_crit_edge: ; preds = %ibmpex_send_message.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ibmpex_query_sensor_data.exit.i

lor.lhs.false.i.i:                                ; preds = %ibmpex_send_message.exit.i.i
  %32 = ptrtoint ptr %rx_msg_len.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_msg_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %33)
  %cmp.i.i = icmp ult i32 %33, 26
  br i1 %cmp.i.i, label %lor.lhs.false.i.i.ibmpex_query_sensor_data.exit.i_crit_edge, label %if.end8.i

lor.lhs.false.i.i.ibmpex_query_sensor_data.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ibmpex_query_sensor_data.exit.i

ibmpex_query_sensor_data.exit.i:                  ; preds = %lor.lhs.false.i.i.ibmpex_query_sensor_data.exit.i_crit_edge, %ibmpex_send_message.exit.i.i.ibmpex_query_sensor_data.exit.i_crit_edge
  %34 = ptrtoint ptr %bmc_device10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bmc_device10.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.27, i32 noundef %i.056.i) #13
  br label %for.inc.i

if.end8.i:                                        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.i.i, align 2
  %38 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sensors, align 4
  %values.i = getelementptr %struct.ibmpex_sensor_data, ptr %39, i32 %i.056.i, i32 1
  %40 = ptrtoint ptr %values.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %37, ptr %values.i, align 4
  %41 = ptrtoint ptr %arrayidx.i50.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx.i50.i, align 2
  %43 = load ptr, ptr %sensors, align 4
  %arrayidx19.i = getelementptr %struct.ibmpex_sensor_data, ptr %43, i32 %i.056.i, i32 1, i32 1
  %44 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %42, ptr %arrayidx19.i, align 2
  %45 = ptrtoint ptr %arrayidx.i51.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx.i51.i, align 2
  %47 = load ptr, ptr %sensors, align 4
  %arrayidx26.i = getelementptr %struct.ibmpex_sensor_data, ptr %47, i32 %i.056.i, i32 1, i32 2
  %48 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %46, ptr %arrayidx26.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end8.i, %ibmpex_query_sensor_data.exit.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.056.i, 1
  %49 = ptrtoint ptr %num_sensors.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %num_sensors.i, align 2
  %conv.i = zext i8 %50 to i32
  %cmp1.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp1.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %52 = ptrtoint ptr %last_updated.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %last_updated.i, align 4
  %valid28.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %1, i32 0, i32 4
  %53 = ptrtoint ptr %valid28.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %valid28.i, align 4
  br label %ibmpex_update_device.exit

ibmpex_update_device.exit:                        ; preds = %for.end.i, %land.lhs.true.i.ibmpex_update_device.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  %54 = ptrtoint ptr %sensors to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sensors, align 4
  %56 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %index, align 4
  %idxprom3 = zext i8 %57 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 2
  %58 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %nr, align 1
  %idxprom5 = zext i8 %59 to i32
  %arrayidx6 = getelementptr %struct.ibmpex_sensor_data, ptr %55, i32 %idxprom3, i32 1, i32 %idxprom5
  %60 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx6, align 2
  %conv = sext i16 %61 to i32
  %mul = mul i32 %7, %conv
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %mul)
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ibmpex_high_low_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef readnone %buf, i32 noundef returned %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tx_msg_data.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %tx_msg_data.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 4, ptr %tx_msg_data.i, align 4
  %data_len.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %1, i32 0, i32 10, i32 2
  %3 = ptrtoint ptr %data_len.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1, ptr %data_len.i, align 2
  %address.i.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %1, i32 0, i32 6
  %call.i.i = tail call i32 @ipmi_validate_addr(ptr noundef %address.i.i, i32 noundef 40) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end9.i.i

if.end.i.i:                                       ; preds = %entry
  %tx_msgid.i.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %tx_msgid.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_msgid.i.i, align 4
  %inc.i.i = add i32 %5, 1
  store i32 %inc.i.i, ptr %tx_msgid.i.i, align 4
  %user.i.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %user.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user.i.i, align 4
  %tx_message.i.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %1, i32 0, i32 10
  %call3.i.i = tail call i32 @ipmi_request_settime(ptr noundef %7, ptr noundef %address.i.i, i32 noundef %inc.i.i, ptr noundef %tx_message.i.i, ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.ibmpex_reset_high_low_data.exit_crit_edge, label %do.end.i.i

if.end.i.i.ibmpex_reset_high_low_data.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ibmpex_reset_high_low_data.exit

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %bmc_device.i.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %bmc_device.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bmc_device.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.16, i32 noundef %call3.i.i) #13
  br label %ibmpex_reset_high_low_data.exit

do.end9.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bmc_device10.i.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %bmc_device10.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bmc_device10.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.19, i32 noundef %call.i.i) #13
  br label %ibmpex_reset_high_low_data.exit

ibmpex_reset_high_low_data.exit:                  ; preds = %do.end9.i.i, %do.end.i.i, %if.end.i.i.ibmpex_reset_high_low_data.exit_crit_edge
  %read_complete.i = getelementptr inbounds %struct.ibmpex_bmc_data, ptr %1, i32 0, i32 7
  tail call void @wait_for_completion(ptr noundef %read_complete.i) #9
  ret i32 %count
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipmi_free_recv_msg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_smi_watcher_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !47, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !85, !86, !87, !89, !90, !92, !93, !95, !97, !99, !100, !101}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @__UNIQUE_ID_author223, !1, !"__UNIQUE_ID_author223", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/ibmpex.c", i32 589, i32 1}
!2 = !{ptr @__UNIQUE_ID_description224, !3, !"__UNIQUE_ID_description224", i1 false, i1 false}
!3 = !{!"../drivers/hwmon/ibmpex.c", i32 590, i32 1}
!4 = !{ptr @__UNIQUE_ID_file225, !5, !"__UNIQUE_ID_file225", i1 false, i1 false}
!5 = !{!"../drivers/hwmon/ibmpex.c", i32 591, i32 1}
!6 = !{ptr @__UNIQUE_ID_license226, !5, !"__UNIQUE_ID_license226", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_ibmpex__227_593_ibmpex_init6, !8, !"__initcall__kmod_ibmpex__227_593_ibmpex_init6", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/ibmpex.c", i32 593, i32 1}
!9 = !{ptr @__exitcall_ibmpex_exit, !10, !"__exitcall_ibmpex_exit", i1 false, i1 false}
!10 = !{!"../drivers/hwmon/ibmpex.c", i32 594, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias228, !12, !"__UNIQUE_ID_alias228", i1 false, i1 false}
!12 = !{!"../drivers/hwmon/ibmpex.c", i32 596, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias229, !14, !"__UNIQUE_ID_alias229", i1 false, i1 false}
!14 = !{!"../drivers/hwmon/ibmpex.c", i32 597, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias230, !16, !"__UNIQUE_ID_alias230", i1 false, i1 false}
!16 = !{!"../drivers/hwmon/ibmpex.c", i32 598, i32 1}
!17 = !{ptr @__UNIQUE_ID_alias231, !18, !"__UNIQUE_ID_alias231", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/ibmpex.c", i32 599, i32 1}
!19 = !{ptr @__UNIQUE_ID_alias232, !20, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/ibmpex.c", i32 600, i32 1}
!21 = !{ptr @driver_data, !22, !"driver_data", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/ibmpex.c", i32 99, i32 34}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/ibmpex.c", i32 461, i32 3}
!25 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ibmpex_register_bmc._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @ibmpex_register_bmc._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @ibmpex_register_bmc.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/ibmpex.c", i32 467, i32 2}
!33 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/ibmpex.c", i32 485, i32 3}
!36 = !{ptr @ibmpex_register_bmc._entry.6, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ibmpex_register_bmc._entry_ptr.8, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/ibmpex.c", i32 498, i32 3}
!40 = !{ptr @ibmpex_register_bmc._entry.9, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ibmpex_register_bmc._entry_ptr.11, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @init_completion.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../include/linux/completion.h", i32 87, i32 2}
!44 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/ibmpex.c", i32 148, i32 2}
!47 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ibmpex_ver_check._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @ibmpex_ver_check._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/ibmpex.c", i32 127, i32 2}
!53 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ibmpex_send_message._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @ibmpex_send_message._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/ibmpex.c", i32 130, i32 2}
!58 = !{ptr @ibmpex_send_message._entry.18, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ibmpex_send_message._entry_ptr.20, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @power_sensor_sig, !61, !"power_sensor_sig", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/ibmpex.c", i32 39, i32 17}
!62 = !{ptr @watt_sensor_sig, !63, !"watt_sensor_sig", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/ibmpex.c", i32 43, i32 17}
!64 = !{ptr @temp_sensor_sig, !65, !"temp_sensor_sig", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/ibmpex.c", i32 40, i32 17}
!66 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/ibmpex.c", i32 338, i32 14}
!68 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/ibmpex.c", i32 341, i32 14}
!70 = !{ptr @create_sensor.__key, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/ibmpex.c", i32 344, i32 2}
!72 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/ibmpex.c", i32 47, i32 2}
!74 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/ibmpex.c", i32 48, i32 2}
!76 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/ibmpex.c", i32 49, i32 2}
!78 = distinct !{null, !79, !"sensor_name_suffixes", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/ibmpex.c", i32 46, i32 27}
!80 = !{ptr @.str.26, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/ibmpex.c", i32 275, i32 22}
!82 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/ibmpex.c", i32 199, i32 3}
!84 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @ibmpex_query_sensor_data._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @ibmpex_query_sensor_data._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/hwmon/ibmpex.c", i32 290, i32 8}
!89 = !{ptr @sensor_dev_attr_reset_high_low, !88, !"sensor_dev_attr_reset_high_low", i1 false, i1 false}
!90 = !{ptr @.str.30, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hwmon/ibmpex.c", i32 264, i32 8}
!92 = !{ptr @sensor_dev_attr_name, !91, !"sensor_dev_attr_name", i1 false, i1 false}
!93 = !{ptr @.str.31, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hwmon/ibmpex.c", i32 262, i32 22}
!95 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hwmon/ibmpex.c", i32 262, i32 30}
!97 = !{ptr @.str.33, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hwmon/ibmpex.c", i32 551, i32 3}
!99 = !{ptr @.str.34, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @ibmpex_msg_handler._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @ibmpex_msg_handler._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{i8 0, i8 2}
