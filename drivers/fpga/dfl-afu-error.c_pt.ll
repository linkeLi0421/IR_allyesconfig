; ModuleID = '/llk/IR_all_yes/drivers/fpga/dfl-afu-error.c_pt.bc'
source_filename = "../drivers/fpga/dfl-afu-error.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.dfl_feature_id = type { i16 }
%struct.dfl_feature_ops = type { ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.dfl_feature_platform_data = type { %struct.list_head, %struct.mutex, %struct.cdev, ptr, ptr, i32, i32, i8, i32, ptr, i32, [0 x %struct.dfl_feature] }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.dfl_feature = type { ptr, i16, i8, i32, ptr, ptr, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"errors\00", [25 x i8] zeroinitializer }, align 32
@port_err_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_errors, ptr @dev_attr_first_error, ptr @dev_attr_first_malformed_req, ptr null], [16 x i8] zeroinitializer }, align 32
@port_err_group = dso_local constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str, ptr @port_err_attrs_visible, ptr null, ptr @port_err_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@port_err_id_table = dso_local constant { [2 x %struct.dfl_feature_id], [28 x i8] } { [2 x %struct.dfl_feature_id] [%struct.dfl_feature_id { i16 16 }, %struct.dfl_feature_id zeroinitializer], [28 x i8] zeroinitializer }, align 32
@port_err_ops = dso_local constant { %struct.dfl_feature_ops, [20 x i8] } { %struct.dfl_feature_ops { ptr @port_err_init, ptr @port_err_uinit, ptr @port_err_ioctl }, [20 x i8] zeroinitializer }, align 32
@dev_attr_errors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @errors_show, ptr @errors_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_first_error = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @first_error_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_first_malformed_req = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @first_malformed_req_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%llx\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drivers/fpga/dfl.h\00", [45 x i8] zeroinitializer }, align 32
@afu_port_err_clear._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 78, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Could not clear errors, device in AP6 state.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"afu_port_err_clear\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/fpga/dfl-afu-error.c\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@afu_port_err_clear._entry_ptr = internal global ptr @afu_port_err_clear._entry, section ".printk_index", align 4
@afu_port_err_clear._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 100, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: received 0x%llx, expected 0x%llx\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@afu_port_err_clear._entry_ptr.11 = internal global ptr @afu_port_err_clear._entry.8, section ".printk_index", align 4
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"first_error\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"first_malformed_req\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"0x%016llx%016llx\0A\00", [46 x i8] zeroinitializer }, align 32
@port_err_ioctl.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.5, ptr @.str.17, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dfl_afu\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"port_err_ioctl\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%x cmd not handled\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1074312774, i64 2147792453]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 206, i32 16 }
@___asan_gen_.21 = private unnamed_addr constant [15 x i8] c"port_err_attrs\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 183, i32 26 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"port_err_group\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 205, i32 30 }
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"port_err_id_table\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 240, i32 29 }
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"port_err_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 245, i32 30 }
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"dev_attr_errors\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 144, i32 8 }
@___asan_gen_.36 = private unnamed_addr constant [21 x i8] c"dev_attr_first_error\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [29 x i8] c"dev_attr_first_malformed_req\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 128, i32 22 }
@___asan_gen_.46 = private unnamed_addr constant [22 x i8] c"../drivers/fpga/dfl.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 392, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 78, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 99, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 161, i32 8 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 181, i32 8 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 178, i32 22 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [32 x i8] c"../drivers/fpga/dfl-afu-error.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 235, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @afu_port_err_clear._entry, ptr @afu_port_err_clear._entry.8, ptr @afu_port_err_clear._entry_ptr, ptr @afu_port_err_clear._entry_ptr.11, ptr @.str, ptr @port_err_attrs, ptr @port_err_group, ptr @port_err_id_table, ptr @port_err_ops, ptr @dev_attr_errors, ptr @dev_attr_first_error, ptr @dev_attr_first_malformed_req, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_err_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_err_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_err_id_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_err_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_errors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_first_error to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_first_malformed_req to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afu_port_err_clear._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afu_port_err_clear._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @port_err_attrs_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i.i, align 8
  %features.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 11
  %num.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num.i, align 4
  %add.ptr.i = getelementptr %struct.dfl_feature, ptr %features.i, i32 %3
  %cmp13.i = icmp ult ptr %features.i, %add.ptr.i
  br i1 %cmp13.i, label %entry.for.body.i_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %feature.014.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %features.i, %entry.for.body.i_crit_edge ]
  %id3.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i, i32 0, i32 1
  %4 = ptrtoint ptr %id3.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %5)
  %cmp5.i = icmp eq i16 %5, 16
  br i1 %cmp5.i, label %dfl_get_feature_by_id.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.dfl_feature, ptr %feature.014.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

dfl_get_feature_by_id.exit:                       ; preds = %for.body.i
  %tobool.not = icmp eq ptr %feature.014.i, null
  br i1 %tobool.not, label %dfl_get_feature_by_id.exit.cleanup_crit_edge, label %if.end

dfl_get_feature_by_id.exit.cleanup_crit_edge:     ; preds = %dfl_get_feature_by_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %dfl_get_feature_by_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dfl_get_feature_by_id.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %7, %if.end ], [ 0, %dfl_get_feature_by_id.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_err_init(ptr nocapture noundef readonly %pdev, ptr nocapture noundef readnone %feature) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call fastcc void @afu_port_err_mask(ptr noundef %dev, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @port_err_uinit(ptr nocapture noundef readonly %pdev, ptr nocapture noundef readnone %feature) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call fastcc void @afu_port_err_mask(ptr noundef %dev, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_err_ioctl(ptr noundef %pdev, ptr noundef %feature, i32 noundef %cmd, i32 noundef %arg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %do.body [
    i32 -2147174843, label %sw.bb
    i32 1074312774, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @dfl_feature_ioctl_get_num_irqs(ptr noundef %pdev, ptr noundef %feature, i32 noundef %arg) #7
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @dfl_feature_ioctl_set_irq(ptr noundef %pdev, ptr noundef %feature, i32 noundef %arg) #7
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @port_err_ioctl.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@port_err_ioctl, %if.then)) #7
          to label %return [label %if.then], !srcloc !51

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @port_err_ioctl.__UNIQUE_ID_ddebug262, ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %cmd) #7
  br label %return

return:                                           ; preds = %if.then, %do.body, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -19, %if.then ], [ -19, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @errors_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %3
  %cmp13.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp13.i.i, label %entry.for.body.i.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %feature.014.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %entry.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %5)
  %cmp5.i.i = icmp eq i16 %5, 16
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.014.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.014.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 9, ptr noundef null) #7
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %7, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 20
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  %10 = zext i32 %9 to i64
  %11 = zext i32 %8 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or i64 %12, %10
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.1, i64 noundef %14)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @errors_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buff, i32 noundef %count) #1 align 64 {
entry:
  %value = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #7
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %value, align 8, !annotation !55
  %call.i = call i32 @kstrtoull(ptr noundef %buff, i32 noundef 0, ptr noundef nonnull %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %value, align 8
  %platform_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %3 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -16
  %features.i.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %4, i32 0, i32 11
  %num.i.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %num.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i.i, i32 %6
  %cmp13.i.i.i = icmp ult ptr %features.i.i.i, %add.ptr.i.i.i
  br i1 %cmp13.i.i.i, label %if.end.for.body.i.i.i_crit_edge, label %if.end.do.end.i.i_crit_edge

if.end.do.end.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

if.end.for.body.i.i.i_crit_edge:                  ; preds = %if.end
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end.for.body.i.i.i_crit_edge
  %feature.014.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %features.i.i.i, %if.end.for.body.i.i.i_crit_edge ]
  %id3.i.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %id3.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %id3.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %8)
  %cmp5.i.i.i = icmp eq i16 %8, 16
  br i1 %cmp5.i.i.i, label %dfl_get_feature_by_id.exit.i.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %incdec.ptr.i.i.i = getelementptr %struct.dfl_feature, ptr %feature.014.i.i.i, i32 1
  %cmp.i.i.i = icmp ult ptr %incdec.ptr.i.i.i, %add.ptr.i.i.i
  br i1 %cmp.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.do.end.i.i_crit_edge

for.inc.i.i.i.do.end.i.i_crit_edge:               ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

dfl_get_feature_by_id.exit.i.i:                   ; preds = %for.body.i.i.i
  %tobool.not.i.i = icmp eq ptr %feature.014.i.i.i, null
  br i1 %tobool.not.i.i, label %dfl_get_feature_by_id.exit.i.i.do.end.i.i_crit_edge, label %land.lhs.true.i.i

dfl_get_feature_by_id.exit.i.i.do.end.i.i_crit_edge: ; preds = %dfl_get_feature_by_id.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %dfl_get_feature_by_id.exit.i.i
  %ioaddr.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true.i.i.dfl_get_feature_ioaddr_by_id.exit.i_crit_edge

land.lhs.true.i.i.dfl_get_feature_ioaddr_by_id.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfl_get_feature_ioaddr_by_id.exit.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i.do.end.i.i_crit_edge, %dfl_get_feature_by_id.exit.i.i.do.end.i.i_crit_edge, %for.inc.i.i.i.do.end.i.i_crit_edge, %if.end.do.end.i.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 9, ptr noundef null) #7
  br label %dfl_get_feature_ioaddr_by_id.exit.i

dfl_get_feature_ioaddr_by_id.exit.i:              ; preds = %do.end.i.i, %land.lhs.true.i.i.dfl_get_feature_ioaddr_by_id.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ null, %do.end.i.i ], [ %10, %land.lhs.true.i.i.dfl_get_feature_ioaddr_by_id.exit.i_crit_edge ]
  %11 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %platform_data.i.i, align 8
  %features.i.i59.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %12, i32 0, i32 11
  %num.i.i60.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %num.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num.i.i60.i, align 4
  %add.ptr.i.i61.i = getelementptr %struct.dfl_feature, ptr %features.i.i59.i, i32 %14
  %cmp13.i.i62.i = icmp ult ptr %features.i.i59.i, %add.ptr.i.i61.i
  br i1 %cmp13.i.i62.i, label %dfl_get_feature_ioaddr_by_id.exit.i.for.body.i.i66.i_crit_edge, label %dfl_get_feature_ioaddr_by_id.exit.i.do.end.i75.i_crit_edge

dfl_get_feature_ioaddr_by_id.exit.i.do.end.i75.i_crit_edge: ; preds = %dfl_get_feature_ioaddr_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i75.i

dfl_get_feature_ioaddr_by_id.exit.i.for.body.i.i66.i_crit_edge: ; preds = %dfl_get_feature_ioaddr_by_id.exit.i
  br label %for.body.i.i66.i

for.body.i.i66.i:                                 ; preds = %for.inc.i.i69.i.for.body.i.i66.i_crit_edge, %dfl_get_feature_ioaddr_by_id.exit.i.for.body.i.i66.i_crit_edge
  %feature.014.i.i63.i = phi ptr [ %incdec.ptr.i.i67.i, %for.inc.i.i69.i.for.body.i.i66.i_crit_edge ], [ %features.i.i59.i, %dfl_get_feature_ioaddr_by_id.exit.i.for.body.i.i66.i_crit_edge ]
  %id3.i.i64.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i63.i, i32 0, i32 1
  %15 = ptrtoint ptr %id3.i.i64.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %id3.i.i64.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %16)
  %cmp5.i.i65.i = icmp eq i16 %16, 254
  br i1 %cmp5.i.i65.i, label %dfl_get_feature_by_id.exit.i71.i, label %for.inc.i.i69.i

for.inc.i.i69.i:                                  ; preds = %for.body.i.i66.i
  %incdec.ptr.i.i67.i = getelementptr %struct.dfl_feature, ptr %feature.014.i.i63.i, i32 1
  %cmp.i.i68.i = icmp ult ptr %incdec.ptr.i.i67.i, %add.ptr.i.i61.i
  br i1 %cmp.i.i68.i, label %for.inc.i.i69.i.for.body.i.i66.i_crit_edge, label %for.inc.i.i69.i.do.end.i75.i_crit_edge

for.inc.i.i69.i.do.end.i75.i_crit_edge:           ; preds = %for.inc.i.i69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i75.i

for.inc.i.i69.i.for.body.i.i66.i_crit_edge:       ; preds = %for.inc.i.i69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i66.i

dfl_get_feature_by_id.exit.i71.i:                 ; preds = %for.body.i.i66.i
  %tobool.not.i70.i = icmp eq ptr %feature.014.i.i63.i, null
  br i1 %tobool.not.i70.i, label %dfl_get_feature_by_id.exit.i71.i.do.end.i75.i_crit_edge, label %land.lhs.true.i74.i

dfl_get_feature_by_id.exit.i71.i.do.end.i75.i_crit_edge: ; preds = %dfl_get_feature_by_id.exit.i71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i75.i

land.lhs.true.i74.i:                              ; preds = %dfl_get_feature_by_id.exit.i71.i
  %ioaddr.i72.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i63.i, i32 0, i32 4
  %17 = ptrtoint ptr %ioaddr.i72.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ioaddr.i72.i, align 4
  %tobool1.not.i73.i = icmp eq ptr %18, null
  br i1 %tobool1.not.i73.i, label %land.lhs.true.i74.i.do.end.i75.i_crit_edge, label %land.lhs.true.i74.i.dfl_get_feature_ioaddr_by_id.exit77.i_crit_edge

land.lhs.true.i74.i.dfl_get_feature_ioaddr_by_id.exit77.i_crit_edge: ; preds = %land.lhs.true.i74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfl_get_feature_ioaddr_by_id.exit77.i

land.lhs.true.i74.i.do.end.i75.i_crit_edge:       ; preds = %land.lhs.true.i74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i75.i

do.end.i75.i:                                     ; preds = %land.lhs.true.i74.i.do.end.i75.i_crit_edge, %dfl_get_feature_by_id.exit.i71.i.do.end.i75.i_crit_edge, %for.inc.i.i69.i.do.end.i75.i_crit_edge, %dfl_get_feature_ioaddr_by_id.exit.i.do.end.i75.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 9, ptr noundef null) #7
  br label %dfl_get_feature_ioaddr_by_id.exit77.i

dfl_get_feature_ioaddr_by_id.exit77.i:            ; preds = %do.end.i75.i, %land.lhs.true.i74.i.dfl_get_feature_ioaddr_by_id.exit77.i_crit_edge
  %retval.0.i76.i = phi ptr [ null, %do.end.i75.i ], [ %18, %land.lhs.true.i74.i.dfl_get_feature_ioaddr_by_id.exit77.i_crit_edge ]
  %lock.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %4, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %add.ptr3.i = getelementptr i8, ptr %retval.0.i76.i, i32 64
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #7, !srcloc !52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  %add.ptr.i.i = getelementptr i8, ptr %retval.0.i76.i, i32 68
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  %21 = and i32 %19, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 393216, i32 %21)
  %cmp.i = icmp eq i32 %21, 393216
  br i1 %cmp.i, label %do.end20.i, label %if.end.i

do.end20.i:                                       ; preds = %dfl_get_feature_ioaddr_by_id.exit77.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #10
  br label %done.thread.i

if.end.i:                                         ; preds = %dfl_get_feature_ioaddr_by_id.exit77.i
  %call21.i = call i32 @__afu_port_disable(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool.not.i, label %if.end23.i, label %if.end.i.done.thread.i_crit_edge

if.end.i.done.thread.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.thread.i

if.end23.i:                                       ; preds = %if.end.i
  %22 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %platform_data.i.i, align 8
  %features.i.i.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %23, i32 0, i32 11
  %num.i.i.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %num.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i.i.i, i32 %25
  %cmp13.i.i.i.i = icmp ult ptr %features.i.i.i.i, %add.ptr.i.i.i.i
  br i1 %cmp13.i.i.i.i, label %if.end23.i.for.body.i.i.i.i_crit_edge, label %if.end23.i.do.end.i.i.i_crit_edge

if.end23.i.do.end.i.i.i_crit_edge:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i.i

if.end23.i.for.body.i.i.i.i_crit_edge:            ; preds = %if.end23.i
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.end23.i.for.body.i.i.i.i_crit_edge
  %feature.014.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %features.i.i.i.i, %if.end23.i.for.body.i.i.i.i_crit_edge ]
  %id3.i.i.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %id3.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %id3.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %27)
  %cmp5.i.i.i.i = icmp eq i16 %27, 16
  br i1 %cmp5.i.i.i.i, label %dfl_get_feature_by_id.exit.i.i.i, label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  %incdec.ptr.i.i.i.i = getelementptr %struct.dfl_feature, ptr %feature.014.i.i.i.i, i32 1
  %cmp.i.i.i.i = icmp ult ptr %incdec.ptr.i.i.i.i, %add.ptr.i.i.i.i
  br i1 %cmp.i.i.i.i, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, label %for.inc.i.i.i.i.do.end.i.i.i_crit_edge

for.inc.i.i.i.i.do.end.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i.i

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i.i

dfl_get_feature_by_id.exit.i.i.i:                 ; preds = %for.body.i.i.i.i
  %tobool.not.i.i.i = icmp eq ptr %feature.014.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %dfl_get_feature_by_id.exit.i.i.i.do.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

dfl_get_feature_by_id.exit.i.i.i.do.end.i.i.i_crit_edge: ; preds = %dfl_get_feature_by_id.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %dfl_get_feature_by_id.exit.i.i.i
  %ioaddr.i.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %ioaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ioaddr.i.i.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %29, null
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i.do.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i.__afu_port_err_mask.exit.i_crit_edge

land.lhs.true.i.i.i.__afu_port_err_mask.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__afu_port_err_mask.exit.i

land.lhs.true.i.i.i.do.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i.do.end.i.i.i_crit_edge, %dfl_get_feature_by_id.exit.i.i.i.do.end.i.i.i_crit_edge, %for.inc.i.i.i.i.do.end.i.i.i_crit_edge, %if.end23.i.do.end.i.i.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 9, ptr noundef null) #7
  br label %__afu_port_err_mask.exit.i

__afu_port_err_mask.exit.i:                       ; preds = %do.end.i.i.i, %land.lhs.true.i.i.i.__afu_port_err_mask.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ null, %do.end.i.i.i ], [ %29, %land.lhs.true.i.i.i.__afu_port_err_mask.exit.i_crit_edge ]
  %add.ptr.i78.i = getelementptr i8, ptr %retval.0.i.i.i, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78.i, i32 -1) #7, !srcloc !57
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  call void @arm_heavy_mb() #7
  %add.ptr.i.i79.i = getelementptr i8, ptr %retval.0.i.i.i, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i79.i, i32 -1) #7, !srcloc !57
  %add.ptr24.i = getelementptr i8, ptr %retval.0.i.i, i32 16
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #7, !srcloc !52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  %add.ptr.i80.i = getelementptr i8, ptr %retval.0.i.i, i32 20
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80.i) #7, !srcloc !52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  %32 = zext i32 %31 to i64
  %33 = zext i32 %30 to i64
  %34 = shl nuw i64 %33, 32
  %35 = or i64 %34, %32
  %36 = call i64 @llvm.bswap.i64(i64 %35) #7
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %2)
  %cmp26.i = icmp eq i64 %36, %2
  br i1 %cmp26.i, label %if.then27.i, label %do.end34.i

if.then27.i:                                      ; preds = %__afu_port_err_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %30) #7, !srcloc !57
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  call void @arm_heavy_mb() #7
  %shr.i.i = lshr i64 %2, 32
  %conv3.i.i = trunc i64 %shr.i.i to i32
  %37 = call i32 @llvm.bswap.i32(i32 %conv3.i.i) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80.i, i32 %37) #7, !srcloc !57
  %add.ptr29.i = getelementptr i8, ptr %retval.0.i.i, i32 24
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29.i) #7, !srcloc !52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  %add.ptr.i82.i = getelementptr i8, ptr %retval.0.i.i, i32 28
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82.i) #7, !srcloc !52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 %38) #7, !srcloc !57
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82.i, i32 %39) #7, !srcloc !57
  br label %if.end35.i

do.end34.i:                                       ; preds = %__afu_port_err_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4, i64 noundef %36, i64 noundef %2) #10
  br label %if.end35.i

if.end35.i:                                       ; preds = %do.end34.i, %if.then27.i
  %ret.0.i = phi i32 [ 0, %if.then27.i ], [ -22, %do.end34.i ]
  %40 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %platform_data.i.i, align 8
  %features.i.i.i88.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %41, i32 0, i32 11
  %num.i.i.i89.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %41, i32 0, i32 10
  %42 = ptrtoint ptr %num.i.i.i89.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num.i.i.i89.i, align 4
  %add.ptr.i.i.i90.i = getelementptr %struct.dfl_feature, ptr %features.i.i.i88.i, i32 %43
  %cmp13.i.i.i91.i = icmp ult ptr %features.i.i.i88.i, %add.ptr.i.i.i90.i
  br i1 %cmp13.i.i.i91.i, label %if.end35.i.for.body.i.i.i95.i_crit_edge, label %if.end35.i.do.end.i.i104.i_crit_edge

if.end35.i.do.end.i.i104.i_crit_edge:             ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i104.i

if.end35.i.for.body.i.i.i95.i_crit_edge:          ; preds = %if.end35.i
  br label %for.body.i.i.i95.i

for.body.i.i.i95.i:                               ; preds = %for.inc.i.i.i98.i.for.body.i.i.i95.i_crit_edge, %if.end35.i.for.body.i.i.i95.i_crit_edge
  %feature.014.i.i.i92.i = phi ptr [ %incdec.ptr.i.i.i96.i, %for.inc.i.i.i98.i.for.body.i.i.i95.i_crit_edge ], [ %features.i.i.i88.i, %if.end35.i.for.body.i.i.i95.i_crit_edge ]
  %id3.i.i.i93.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i.i92.i, i32 0, i32 1
  %44 = ptrtoint ptr %id3.i.i.i93.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %id3.i.i.i93.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %45)
  %cmp5.i.i.i94.i = icmp eq i16 %45, 16
  br i1 %cmp5.i.i.i94.i, label %dfl_get_feature_by_id.exit.i.i100.i, label %for.inc.i.i.i98.i

for.inc.i.i.i98.i:                                ; preds = %for.body.i.i.i95.i
  %incdec.ptr.i.i.i96.i = getelementptr %struct.dfl_feature, ptr %feature.014.i.i.i92.i, i32 1
  %cmp.i.i.i97.i = icmp ult ptr %incdec.ptr.i.i.i96.i, %add.ptr.i.i.i90.i
  br i1 %cmp.i.i.i97.i, label %for.inc.i.i.i98.i.for.body.i.i.i95.i_crit_edge, label %for.inc.i.i.i98.i.do.end.i.i104.i_crit_edge

for.inc.i.i.i98.i.do.end.i.i104.i_crit_edge:      ; preds = %for.inc.i.i.i98.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i104.i

for.inc.i.i.i98.i.for.body.i.i.i95.i_crit_edge:   ; preds = %for.inc.i.i.i98.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i95.i

dfl_get_feature_by_id.exit.i.i100.i:              ; preds = %for.body.i.i.i95.i
  %tobool.not.i.i99.i = icmp eq ptr %feature.014.i.i.i92.i, null
  br i1 %tobool.not.i.i99.i, label %dfl_get_feature_by_id.exit.i.i100.i.do.end.i.i104.i_crit_edge, label %land.lhs.true.i.i103.i

dfl_get_feature_by_id.exit.i.i100.i.do.end.i.i104.i_crit_edge: ; preds = %dfl_get_feature_by_id.exit.i.i100.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i104.i

land.lhs.true.i.i103.i:                           ; preds = %dfl_get_feature_by_id.exit.i.i100.i
  %ioaddr.i.i101.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i.i92.i, i32 0, i32 4
  %46 = ptrtoint ptr %ioaddr.i.i101.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ioaddr.i.i101.i, align 4
  %tobool1.not.i.i102.i = icmp eq ptr %47, null
  br i1 %tobool1.not.i.i102.i, label %land.lhs.true.i.i103.i.do.end.i.i104.i_crit_edge, label %land.lhs.true.i.i103.i.done.i_crit_edge

land.lhs.true.i.i103.i.done.i_crit_edge:          ; preds = %land.lhs.true.i.i103.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i

land.lhs.true.i.i103.i.do.end.i.i104.i_crit_edge: ; preds = %land.lhs.true.i.i103.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i104.i

do.end.i.i104.i:                                  ; preds = %land.lhs.true.i.i103.i.do.end.i.i104.i_crit_edge, %dfl_get_feature_by_id.exit.i.i100.i.do.end.i.i104.i_crit_edge, %for.inc.i.i.i98.i.do.end.i.i104.i_crit_edge, %if.end35.i.do.end.i.i104.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 9, ptr noundef null) #7
  br label %done.i

done.thread.i:                                    ; preds = %if.end.i.done.thread.i_crit_edge, %do.end20.i
  %ret.1.ph.i = phi i32 [ %call21.i, %if.end.i.done.thread.i_crit_edge ], [ -16, %do.end20.i ]
  call void @mutex_unlock(ptr noundef %lock.i) #7
  br label %48

done.i:                                           ; preds = %do.end.i.i104.i, %land.lhs.true.i.i103.i.done.i_crit_edge
  %retval.0.i.i105.i = phi ptr [ null, %do.end.i.i104.i ], [ %47, %land.lhs.true.i.i103.i.done.i_crit_edge ]
  %add.ptr.i106.i = getelementptr i8, ptr %retval.0.i.i105.i, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106.i, i32 0) #7, !srcloc !57
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  call void @arm_heavy_mb() #7
  %add.ptr.i.i107.i = getelementptr i8, ptr %retval.0.i.i105.i, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i107.i, i32 0) #7, !srcloc !57
  %call36.i = call i32 @__afu_port_enable(ptr noundef %add.ptr.i) #7
  call void @mutex_unlock(ptr noundef %lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool38.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool38.not.i, label %done.i._crit_edge, label %done.i.afu_port_err_clear.exit_crit_edge

done.i.afu_port_err_clear.exit_crit_edge:         ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %afu_port_err_clear.exit

done.i._crit_edge:                                ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %48

48:                                               ; preds = %done.i._crit_edge, %done.thread.i
  %ret.1112.i = phi i32 [ %ret.1.ph.i, %done.thread.i ], [ %ret.0.i, %done.i._crit_edge ]
  br label %afu_port_err_clear.exit

afu_port_err_clear.exit:                          ; preds = %48, %done.i.afu_port_err_clear.exit_crit_edge
  %49 = phi i32 [ %ret.1112.i, %48 ], [ %call36.i, %done.i.afu_port_err_clear.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool2.not = icmp eq i32 %49, 0
  %count.call1 = select i1 %tobool2.not, i32 %count, i32 %49
  br label %cleanup

cleanup:                                          ; preds = %afu_port_err_clear.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.call1, %afu_port_err_clear.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__afu_port_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__afu_port_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @first_error_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %3
  %cmp13.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp13.i.i, label %entry.for.body.i.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %feature.014.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %entry.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %5)
  %cmp5.i.i = icmp eq i16 %5, 16
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.014.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.014.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 9, ptr noundef null) #7
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %7, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 28
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  %10 = zext i32 %9 to i64
  %11 = zext i32 %8 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or i64 %12, %10
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.1, i64 noundef %14)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @first_malformed_req_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %3
  %cmp13.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp13.i.i, label %entry.for.body.i.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %feature.014.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %entry.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %5)
  %cmp5.i.i = icmp eq i16 %5, 16
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.014.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.014.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 9, ptr noundef null) #7
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %7, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 36
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  %10 = zext i32 %9 to i64
  %11 = zext i32 %8 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or i64 %12, %10
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #7
  %add.ptr3 = getelementptr i8, ptr %retval.0.i, i32 40
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  %add.ptr.i10 = getelementptr i8, ptr %retval.0.i, i32 44
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  %17 = zext i32 %16 to i64
  %18 = zext i32 %15 to i64
  %19 = shl nuw i64 %18, 32
  %20 = or i64 %19, %17
  %21 = tail call i64 @llvm.bswap.i64(i64 %20) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i64 noundef %21, i64 noundef %14)
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @afu_port_err_mask(ptr nocapture noundef readonly %dev, i1 noundef zeroext %mask) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %features.i.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %3, i32 0, i32 11
  %num.i.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %num.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i.i, i32 %5
  %cmp13.i.i.i = icmp ult ptr %features.i.i.i, %add.ptr.i.i.i
  br i1 %cmp13.i.i.i, label %entry.for.body.i.i.i_crit_edge, label %entry.do.end.i.i_crit_edge

entry.do.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

entry.for.body.i.i.i_crit_edge:                   ; preds = %entry
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %entry.for.body.i.i.i_crit_edge
  %feature.014.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %features.i.i.i, %entry.for.body.i.i.i_crit_edge ]
  %id3.i.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %id3.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %id3.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %7)
  %cmp5.i.i.i = icmp eq i16 %7, 16
  br i1 %cmp5.i.i.i, label %dfl_get_feature_by_id.exit.i.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %incdec.ptr.i.i.i = getelementptr %struct.dfl_feature, ptr %feature.014.i.i.i, i32 1
  %cmp.i.i.i = icmp ult ptr %incdec.ptr.i.i.i, %add.ptr.i.i.i
  br i1 %cmp.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.do.end.i.i_crit_edge

for.inc.i.i.i.do.end.i.i_crit_edge:               ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

dfl_get_feature_by_id.exit.i.i:                   ; preds = %for.body.i.i.i
  %tobool.not.i.i = icmp eq ptr %feature.014.i.i.i, null
  br i1 %tobool.not.i.i, label %dfl_get_feature_by_id.exit.i.i.do.end.i.i_crit_edge, label %land.lhs.true.i.i

dfl_get_feature_by_id.exit.i.i.do.end.i.i_crit_edge: ; preds = %dfl_get_feature_by_id.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %dfl_get_feature_by_id.exit.i.i
  %ioaddr.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true.i.i.__afu_port_err_mask.exit_crit_edge

land.lhs.true.i.i.__afu_port_err_mask.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__afu_port_err_mask.exit

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i.do.end.i.i_crit_edge, %dfl_get_feature_by_id.exit.i.i.do.end.i.i_crit_edge, %for.inc.i.i.i.do.end.i.i_crit_edge, %entry.do.end.i.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 392, i32 noundef 9, ptr noundef null) #7
  br label %__afu_port_err_mask.exit

__afu_port_err_mask.exit:                         ; preds = %do.end.i.i, %land.lhs.true.i.i.__afu_port_err_mask.exit_crit_edge
  %retval.0.i.i = phi ptr [ null, %do.end.i.i ], [ %9, %land.lhs.true.i.i.__afu_port_err_mask.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  tail call void @arm_heavy_mb() #7
  %conv.i.i = sext i1 %mask to i32
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #7, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i = getelementptr i8, ptr %retval.0.i.i, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %10) #7, !srcloc !57
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dfl_feature_ioctl_get_num_irqs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dfl_feature_ioctl_set_irq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !34, !35, !37, !39, !40, !41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/fpga/dfl-afu-error.c", i32 206, i32 16}
!2 = !{ptr @port_err_group, !3, !"port_err_group", i1 false, i1 false}
!3 = !{!"../drivers/fpga/dfl-afu-error.c", i32 205, i32 30}
!4 = !{ptr @port_err_id_table, !5, !"port_err_id_table", i1 false, i1 false}
!5 = !{!"../drivers/fpga/dfl-afu-error.c", i32 240, i32 29}
!6 = !{ptr @port_err_ops, !7, !"port_err_ops", i1 false, i1 false}
!7 = !{!"../drivers/fpga/dfl-afu-error.c", i32 245, i32 30}
!8 = !{ptr @port_err_attrs, !9, !"port_err_attrs", i1 false, i1 false}
!9 = !{!"../drivers/fpga/dfl-afu-error.c", i32 183, i32 26}
!10 = !{ptr @dev_attr_errors, !11, !"dev_attr_errors", i1 false, i1 false}
!11 = !{!"../drivers/fpga/dfl-afu-error.c", i32 144, i32 8}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/fpga/dfl-afu-error.c", i32 128, i32 22}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/fpga/dfl.h", i32 392, i32 2}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/fpga/dfl-afu-error.c", i32 78, i32 3}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @afu_port_err_clear._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @afu_port_err_clear._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/fpga/dfl-afu-error.c", i32 99, i32 3}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @afu_port_err_clear._entry.8, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @afu_port_err_clear._entry_ptr.11, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/fpga/dfl-afu-error.c", i32 161, i32 8}
!31 = !{ptr @dev_attr_first_error, !30, !"dev_attr_first_error", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/fpga/dfl-afu-error.c", i32 181, i32 8}
!34 = !{ptr @dev_attr_first_malformed_req, !33, !"dev_attr_first_malformed_req", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/fpga/dfl-afu-error.c", i32 178, i32 22}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/fpga/dfl-afu-error.c", i32 235, i32 3}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @port_err_ioctl.__UNIQUE_ID_ddebug262, !38, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 2148273968, i64 2148273973, i64 2148273986, i64 2148274030, i64 2148274064, i64 2148274085}
!52 = !{i64 6341933}
!53 = !{i64 2154099031}
!54 = !{i64 2154099469}
!55 = !{!"auto-init"}
!56 = !{i64 2154099839}
!57 = !{i64 6341515}
!58 = !{i64 2154100212}
