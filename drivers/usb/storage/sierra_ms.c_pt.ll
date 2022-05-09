; ModuleID = '/llk/IR_all_yes/drivers/usb/storage/sierra_ms.c_pt.bc'
source_filename = "../drivers/usb/storage/sierra_ms.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.us_data = type { %struct.mutex, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, i32, [32 x i8], ptr, ptr, %struct.usb_sg_request, ptr, i32, ptr, %struct.completion, %struct.completion, %struct.wait_queue_head, %struct.delayed_work, ptr, ptr, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.usb_sg_request = type { i32, i32, %struct.spinlock, ptr, i32, i32, ptr, i32, %struct.completion }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.swoc_info = type <{ i8, [8 x i8], i16, i16, [47 x i8] }>
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }

@__param_str_swi_tru_install = internal constant [28 x i8] c"usb_storage.swi_tru_install\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@swi_tru_install = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_swi_tru_install = internal constant %struct.kernel_param { ptr @__param_str_swi_tru_install, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @swi_tru_install } }, section "__param", align 4
@__UNIQUE_ID_swi_tru_installtype290 = internal constant [42 x i8] c"usb_storage.parmtype=swi_tru_install:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_swi_tru_install291 = internal constant [102 x i8] c"usb_storage.parm=swi_tru_install:TRU-Install mode (1=Full Logic (def), 2=Force CD-Rom, 3=Force Modem)\00", section ".modinfo", align 1
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SWIMS: Forcing Modem Mode\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"SWIMS: Failed to switch to modem mode\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SWIMS: Forcing Mass Storage Mode\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SWIMS: Normal SWoC Logic\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SWIMS: Failed SWoC query\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"SWIMS: Completely failed SWoC query\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SWIMS: Switching to Modem Mode\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SWIMS: Failed to switch modem\0A\00", [33 x i8] zeroinitializer }, align 32
@dev_attr_truinst = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @truinst_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@sierra_set_ms_mode.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, i8 0, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb_storage\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sierra_set_ms_mode\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/usb/storage/sierra_ms.c\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SWIMS: %s\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DEVICE MODE SWITCH\0A\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sierra_get_swoc_info.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.13, ptr @.str.10, ptr @.str.14, i8 0, i8 17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sierra_get_swoc_info\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"SWIMS: Attempting to get TRU-Install info\0A\00", [53 x i8] zeroinitializer }, align 32
@debug_swoc.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.15, ptr @.str.10, ptr @.str.16, i8 0, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"debug_swoc\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SWIMS: SWoC Rev: %02d\0A\00", [41 x i8] zeroinitializer }, align 32
@debug_swoc.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.15, ptr @.str.10, ptr @.str.17, i8 0, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SWIMS: Linux SKU: %04X\0A\00", [40 x i8] zeroinitializer }, align 32
@debug_swoc.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.15, ptr @.str.10, ptr @.str.18, i8 0, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SWIMS: Linux Version: %04X\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"truinst\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Forced Mass Storage\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Error\0A\00", [25 x i8] zeroinitializer }, align 32
@truinst_show.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.22, ptr @.str.10, ptr @.str.23, i8 0, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"truinst_show\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SWIMS: failed SWoC query\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"REV=%02d SKU=%04X VER=%04X\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.25 = private unnamed_addr constant [16 x i8] c"swi_tru_install\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 26, i32 21 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 137, i32 20 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 140, i32 21 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 145, i32 20 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 150, i32 20 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 162, i32 22 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 168, i32 21 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 180, i32 21 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 184, i32 22 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"dev_attr_truinst\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 51, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 69, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 87, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 88, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 89, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 125, i32 8 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 101, i32 37 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 105, i32 29 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 110, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private constant [35 x i8] c"../drivers/usb/storage/sierra_ms.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 117, i32 4 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_swi_tru_install291, ptr @__UNIQUE_ID_swi_tru_installtype290, ptr @__param_swi_tru_install, ptr @swi_tru_install, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @dev_attr_truinst, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swi_tru_install to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_truinst to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sierra_ms_init(ptr noundef %us) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pusb_dev = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 1
  %0 = ptrtoint ptr %pusb_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pusb_dev, align 4
  %2 = load i32, ptr @swi_tru_install, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %if.else5 [
    i32 3, label %if.then
    i32 2, label %if.then4
  ]

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_set_ms_mode.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_ms_init, %if.then.i)) #5
          to label %sierra_set_ms_mode.exit [label %if.then.i], !srcloc !67

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_set_ms_mode.__UNIQUE_ID_ddebug292, ptr noundef %dev.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #5
  br label %sierra_set_ms_mode.exit

sierra_set_ms_mode.exit:                          ; preds = %if.then.i, %if.then
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %5, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i, i8 noundef zeroext 11, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp1 = icmp slt i32 %call4.i, 0
  br i1 %cmp1, label %if.then2, label %sierra_set_ms_mode.exit.cleanup_crit_edge

sierra_set_ms_mode.exit.cleanup_crit_edge:        ; preds = %sierra_set_ms_mode.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %sierra_set_ms_mode.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.1) #5
  br label %cleanup

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.2) #5
  br label %complete

if.else5:                                         ; preds = %entry
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.3) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 60) #8
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.else5.cleanup_crit_edge, label %do.body.preheader

if.else5.cleanup_crit_edge:                       ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.preheader:                                ; preds = %if.else5
  %dev.i57 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %LinuxSKU.i = getelementptr inbounds %struct.swoc_info, ptr %call7.i, i32 0, i32 2
  %LinuxVer.i = getelementptr inbounds %struct.swoc_info, ptr %call7.i, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  %retries.0 = phi i32 [ %dec, %do.cond.do.body_crit_edge ], [ 3, %do.body.preheader ]
  %dec = add nsw i32 %retries.0, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_get_swoc_info.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_ms_init, %if.then.i58)) #5
          to label %sierra_get_swoc_info.exit [label %if.then.i58], !srcloc !67

if.then.i58:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_get_swoc_info.__UNIQUE_ID_ddebug293, ptr noundef %dev.i57, ptr noundef nonnull @.str.14) #5
  br label %sierra_get_swoc_info.exit

sierra_get_swoc_info.exit:                        ; preds = %if.then.i58, %do.body
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 8
  %shl.i.i59 = shl i32 %8, 8
  %or4.i = or i32 %shl.i.i59, -2147483520
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or4.i, i8 noundef zeroext 10, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 60, i32 noundef 5000) #5
  %9 = ptrtoint ptr %LinuxSKU.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %LinuxSKU.i, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #5
  %12 = ptrtoint ptr %LinuxSKU.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %LinuxSKU.i, align 1
  %13 = ptrtoint ptr %LinuxVer.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %LinuxVer.i, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #5
  %16 = ptrtoint ptr %LinuxVer.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %15, ptr %LinuxVer.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp10 = icmp slt i32 %call5.i, 0
  br i1 %cmp10, label %do.cond, label %if.end18

do.cond:                                          ; preds = %sierra_get_swoc_info.exit
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.4) #5
  %call12 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 200) #5
  %tobool14.not = icmp eq i32 %dec, 0
  br i1 %tobool14.not, label %if.then17, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then17:                                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.5) #5
  tail call void @kfree(ptr noundef nonnull %call7.i) #5
  br label %cleanup

if.end18:                                         ; preds = %sierra_get_swoc_info.exit
  %17 = ptrtoint ptr %pusb_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pusb_dev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @debug_swoc.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_ms_init, %if.then.i60)) #5
          to label %do.body3.i [label %if.then.i60], !srcloc !67

if.then.i60:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %call7.i, align 8
  %conv.i = zext i8 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @debug_swoc.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %conv.i) #5
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i60, %if.end18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @debug_swoc.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_ms_init, %if.then15.i)) #5
          to label %do.body19.i [label %if.then15.i], !srcloc !67

if.then15.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %LinuxSKU.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %LinuxSKU.i, align 1
  %conv16.i = zext i16 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @debug_swoc.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %conv16.i) #5
  br label %do.body19.i

do.body19.i:                                      ; preds = %if.then15.i, %do.body3.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @debug_swoc.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_ms_init, %if.then31.i)) #5
          to label %debug_swoc.exit [label %if.then31.i], !srcloc !67

if.then31.i:                                      ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %LinuxVer.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %LinuxVer.i, align 1
  %conv32.i = zext i16 %24 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @debug_swoc.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %conv32.i) #5
  br label %debug_swoc.exit

debug_swoc.exit:                                  ; preds = %if.then31.i, %do.body19.i
  %25 = ptrtoint ptr %LinuxSKU.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %LinuxSKU.i, align 1
  %27 = add i16 %26, -8448
  call void @__sanitizer_cov_trace_const_cmp2(i16 3840, i16 %27)
  %28 = icmp ult i16 %27, 3840
  call void @__sanitizer_cov_trace_const_cmp2(i16 28927, i16 %26)
  %29 = icmp sgt i16 %26, 28927
  %spec.select.i = or i1 %29, %28
  br i1 %spec.select.i, label %if.end26, label %if.then21

if.then21:                                        ; preds = %debug_swoc.exit
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.6) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_set_ms_mode.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_ms_init, %if.then.i65)) #5
          to label %sierra_set_ms_mode.exit69 [label %if.then.i65], !srcloc !67

if.then.i65:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_set_ms_mode.__UNIQUE_ID_ddebug292, ptr noundef %dev.i57, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #5
  br label %sierra_set_ms_mode.exit69

sierra_set_ms_mode.exit69:                        ; preds = %if.then.i65, %if.then21
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %1, align 8
  %shl.i.i66 = shl i32 %31, 8
  %or.i67 = or i32 %shl.i.i66, -2147483648
  %call4.i68 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i67, i8 noundef zeroext 11, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i68)
  %cmp23 = icmp slt i32 %call4.i68, 0
  br i1 %cmp23, label %if.then24, label %sierra_set_ms_mode.exit69.if.end25_crit_edge

sierra_set_ms_mode.exit69.if.end25_crit_edge:     ; preds = %sierra_set_ms_mode.exit69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then24:                                        ; preds = %sierra_set_ms_mode.exit69
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @usb_stor_dbg(ptr noundef %us, ptr noundef nonnull @.str.7) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %sierra_set_ms_mode.exit69.if.end25_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #5
  br label %cleanup

if.end26:                                         ; preds = %debug_swoc.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i) #5
  br label %complete

complete:                                         ; preds = %if.end26, %if.then4
  %pusb_intf = getelementptr inbounds %struct.us_data, ptr %us, i32 0, i32 2
  %32 = ptrtoint ptr %pusb_intf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pusb_intf, align 4
  %dev29 = getelementptr inbounds %struct.usb_interface, ptr %33, i32 0, i32 7
  %call30 = tail call i32 @device_create_file(ptr noundef %dev29, ptr noundef nonnull @dev_attr_truinst) #5
  br label %cleanup

cleanup:                                          ; preds = %complete, %if.end25, %if.then17, %if.else5.cleanup_crit_edge, %if.then2, %sierra_set_ms_mode.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %complete ], [ -5, %if.then17 ], [ -5, %if.end25 ], [ -5, %if.then2 ], [ -5, %sierra_set_ms_mode.exit.cleanup_crit_edge ], [ -12, %if.else5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @truinst_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr i8, ptr %dev, i32 136
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %2 = load i32, ptr @swi_tru_install, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = call ptr @memcpy(ptr %buf, ptr @.str.20, i32 21)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 60) #8
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %5 = call ptr @memcpy(ptr %buf, ptr @.str.21, i32 7)
  br label %cleanup

if.end:                                           ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_get_swoc_info.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@truinst_show, %if.then.i)) #5
          to label %sierra_get_swoc_info.exit [label %if.then.i], !srcloc !67

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_get_swoc_info.__UNIQUE_ID_ddebug293, ptr noundef %1, ptr noundef nonnull @.str.14) #5
  br label %sierra_get_swoc_info.exit

sierra_get_swoc_info.exit:                        ; preds = %if.then.i, %if.end
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i = shl i32 %7, 8
  %or4.i = or i32 %shl.i.i, -2147483520
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or4.i, i8 noundef zeroext 10, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 60, i32 noundef 5000) #5
  %LinuxSKU.i = getelementptr inbounds %struct.swoc_info, ptr %call7.i, i32 0, i32 2
  %8 = ptrtoint ptr %LinuxSKU.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %LinuxSKU.i, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #5
  %11 = ptrtoint ptr %LinuxSKU.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %LinuxSKU.i, align 1
  %LinuxVer.i = getelementptr inbounds %struct.swoc_info, ptr %call7.i, i32 0, i32 3
  %12 = ptrtoint ptr %LinuxVer.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %LinuxVer.i, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #5
  %15 = ptrtoint ptr %LinuxVer.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %LinuxVer.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6 = icmp slt i32 %call5.i, 0
  br i1 %cmp6, label %do.body, label %if.end16

do.body:                                          ; preds = %sierra_get_swoc_info.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @truinst_show.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@truinst_show, %if.then13)) #5
          to label %do.end [label %if.then13], !srcloc !67

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @truinst_show.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.23) #5
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  tail call void @kfree(ptr noundef nonnull %call7.i) #5
  %16 = call ptr @memcpy(ptr %buf, ptr @.str.21, i32 7)
  br label %cleanup

if.end16:                                         ; preds = %sierra_get_swoc_info.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @debug_swoc.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@truinst_show, %if.then.i37)) #5
          to label %do.body3.i [label %if.then.i37], !srcloc !67

if.then.i37:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %call7.i, align 8
  %conv.i = zext i8 %18 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @debug_swoc.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %conv.i) #5
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i37, %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @debug_swoc.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@truinst_show, %if.then15.i)) #5
          to label %do.body19.i [label %if.then15.i], !srcloc !67

if.then15.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %LinuxSKU.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %LinuxSKU.i, align 1
  %conv16.i = zext i16 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @debug_swoc.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %conv16.i) #5
  br label %do.body19.i

do.body19.i:                                      ; preds = %if.then15.i, %do.body3.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @debug_swoc.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@truinst_show, %if.then31.i)) #5
          to label %debug_swoc.exit [label %if.then31.i], !srcloc !67

if.then31.i:                                      ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %LinuxVer.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %LinuxVer.i, align 1
  %conv32.i = zext i16 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @debug_swoc.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %conv32.i) #5
  br label %debug_swoc.exit

debug_swoc.exit:                                  ; preds = %if.then31.i, %do.body19.i
  %23 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %call7.i, align 8
  %conv = zext i8 %24 to i32
  %25 = ptrtoint ptr %LinuxSKU.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %LinuxSKU.i, align 1
  %conv17 = zext i16 %26 to i32
  %27 = ptrtoint ptr %LinuxVer.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %LinuxVer.i, align 1
  %conv18 = zext i16 %28 to i32
  %call19 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.24, i32 noundef %conv, i32 noundef %conv17, i32 noundef %conv18)
  tail call void @kfree(ptr noundef nonnull %call7.i) #5
  br label %cleanup

cleanup:                                          ; preds = %debug_swoc.exit, %do.end, %if.then3, %if.then
  %retval.0 = phi i32 [ -5, %do.end ], [ -12, %if.then3 ], [ 20, %if.then ], [ %call19, %debug_swoc.exit ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !22, !24, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !44, !45, !47, !48, !50, !52, !54, !55, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__param_swi_tru_install, !1, !"__param_swi_tru_install", i1 false, i1 false}
!1 = !{!"../drivers/usb/storage/sierra_ms.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_swi_tru_installtype290, !1, !"__UNIQUE_ID_swi_tru_installtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_swi_tru_install291, !4, !"__UNIQUE_ID_swi_tru_install291", i1 false, i1 false}
!4 = !{!"../drivers/usb/storage/sierra_ms.c", i32 28, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/usb/storage/sierra_ms.c", i32 137, i32 20}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/usb/storage/sierra_ms.c", i32 140, i32 21}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/usb/storage/sierra_ms.c", i32 145, i32 20}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/usb/storage/sierra_ms.c", i32 150, i32 20}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/storage/sierra_ms.c", i32 162, i32 22}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/storage/sierra_ms.c", i32 168, i32 21}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/storage/sierra_ms.c", i32 180, i32 21}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/storage/sierra_ms.c", i32 184, i32 22}
!21 = !{ptr @__param_str_swi_tru_install, !1, !"__param_str_swi_tru_install", i1 false, i1 false}
!22 = !{ptr @swi_tru_install, !23, !"swi_tru_install", i1 false, i1 false}
!23 = !{!"../drivers/usb/storage/sierra_ms.c", i32 26, i32 21}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/storage/sierra_ms.c", i32 51, i32 2}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @sierra_set_ms_mode.__UNIQUE_ID_ddebug292, !25, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!30 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/storage/sierra_ms.c", i32 69, i32 2}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @sierra_get_swoc_info.__UNIQUE_ID_ddebug293, !32, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/storage/sierra_ms.c", i32 87, i32 2}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @debug_swoc.__UNIQUE_ID_ddebug294, !36, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/storage/sierra_ms.c", i32 88, i32 2}
!41 = !{ptr @debug_swoc.__UNIQUE_ID_ddebug295, !40, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/storage/sierra_ms.c", i32 89, i32 2}
!44 = !{ptr @debug_swoc.__UNIQUE_ID_ddebug296, !43, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/storage/sierra_ms.c", i32 125, i32 8}
!47 = !{ptr @dev_attr_truinst, !46, !"dev_attr_truinst", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/storage/sierra_ms.c", i32 101, i32 37}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/storage/sierra_ms.c", i32 105, i32 29}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/storage/sierra_ms.c", i32 110, i32 4}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @truinst_show.__UNIQUE_ID_ddebug297, !53, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/storage/sierra_ms.c", i32 117, i32 4}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i64 2148197129, i64 2148197134, i64 2148197147, i64 2148197191, i64 2148197225, i64 2148197246}
