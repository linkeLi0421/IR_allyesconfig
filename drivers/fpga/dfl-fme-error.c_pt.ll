; ModuleID = '/llk/IR_all_yes/drivers/fpga/dfl-fme-error.c_pt.bc'
source_filename = "../drivers/fpga/dfl-fme-error.c"
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
@fme_global_err_attrs = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @dev_attr_pcie0_errors, ptr @dev_attr_pcie1_errors, ptr @dev_attr_nonfatal_errors, ptr @dev_attr_catfatal_errors, ptr @dev_attr_inject_errors, ptr @dev_attr_fme_errors, ptr @dev_attr_first_error, ptr @dev_attr_next_error, ptr null], [60 x i8] zeroinitializer }, align 32
@fme_global_err_group = dso_local constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str, ptr @fme_global_err_attrs_visible, ptr null, ptr @fme_global_err_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@fme_global_err_id_table = dso_local constant { [2 x %struct.dfl_feature_id], [28 x i8] } { [2 x %struct.dfl_feature_id] [%struct.dfl_feature_id { i16 4 }, %struct.dfl_feature_id zeroinitializer], [28 x i8] zeroinitializer }, align 32
@fme_global_err_ops = dso_local constant { %struct.dfl_feature_ops, [20 x i8] } { %struct.dfl_feature_ops { ptr @fme_global_err_init, ptr @fme_global_err_uinit, ptr @fme_global_error_ioctl }, [20 x i8] zeroinitializer }, align 32
@dev_attr_pcie0_errors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcie0_errors_show, ptr @pcie0_errors_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pcie1_errors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcie1_errors_show, ptr @pcie1_errors_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_nonfatal_errors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nonfatal_errors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_catfatal_errors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @catfatal_errors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_inject_errors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @inject_errors_show, ptr @inject_errors_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fme_errors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fme_errors_show, ptr @fme_errors_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_first_error = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @first_error_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_next_error = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @next_error_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcie0_errors\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%llx\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drivers/fpga/dfl.h\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcie1_errors\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nonfatal_errors\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"catfatal_errors\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"inject_errors\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fme_errors\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"first_error\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"next_error\00", [21 x i8] zeroinitializer }, align 32
@fme_global_error_ioctl.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, i8 0, i8 90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dfl_fme\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fme_global_error_ioctl\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/fpga/dfl-fme-error.c\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%x cmd not handled\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1074312836, i64 2147792515]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 310, i32 16 }
@___asan_gen_.18 = private unnamed_addr constant [21 x i8] c"fme_global_err_attrs\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 282, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant [21 x i8] c"fme_global_err_group\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 309, i32 30 }
@___asan_gen_.24 = private unnamed_addr constant [24 x i8] c"fme_global_err_id_table\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 368, i32 29 }
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c"fme_global_err_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 373, i32 30 }
@___asan_gen_.30 = private unnamed_addr constant [22 x i8] c"dev_attr_pcie0_errors\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [22 x i8] c"dev_attr_pcie1_errors\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [25 x i8] c"dev_attr_nonfatal_errors\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [25 x i8] c"dev_attr_catfatal_errors\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [23 x i8] c"dev_attr_inject_errors\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [20 x i8] c"dev_attr_fme_errors\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"dev_attr_first_error\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [20 x i8] c"dev_attr_next_error\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 85, i32 8 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 55, i32 22 }
@___asan_gen_.61 = private unnamed_addr constant [22 x i8] c"../drivers/fpga/dfl.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 392, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 130, i32 8 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 142, i32 8 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 154, i32 8 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 199, i32 8 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 246, i32 8 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 263, i32 8 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 280, i32 8 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private constant [32 x i8] c"../drivers/fpga/dfl-fme-error.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 363, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @.str, ptr @fme_global_err_attrs, ptr @fme_global_err_group, ptr @fme_global_err_id_table, ptr @fme_global_err_ops, ptr @dev_attr_pcie0_errors, ptr @dev_attr_pcie1_errors, ptr @dev_attr_nonfatal_errors, ptr @dev_attr_catfatal_errors, ptr @dev_attr_inject_errors, ptr @dev_attr_fme_errors, ptr @dev_attr_first_error, ptr @dev_attr_next_error, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_global_err_attrs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_global_err_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_global_err_id_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_global_err_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcie0_errors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcie1_errors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_nonfatal_errors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_catfatal_errors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_inject_errors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fme_errors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_first_error to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_next_error to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @fme_global_err_attrs_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %cmp1.i = icmp ult ptr %features.i, %add.ptr.i
  br i1 %cmp1.i, label %entry.for.body.i_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %feature.02.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %features.i, %entry.for.body.i_crit_edge ]
  %id3.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i, i32 0, i32 1
  %4 = ptrtoint ptr %id3.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %5)
  %cmp5.i = icmp eq i16 %5, 4
  br i1 %cmp5.i, label %dfl_get_feature_by_id.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.dfl_feature, ptr %feature.02.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

dfl_get_feature_by_id.exit:                       ; preds = %for.body.i
  %tobool.not = icmp eq ptr %feature.02.i, null
  br i1 %tobool.not, label %dfl_get_feature_by_id.exit.cleanup_crit_edge, label %if.end

dfl_get_feature_by_id.exit.cleanup_crit_edge:     ; preds = %dfl_get_feature_by_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %dfl_get_feature_by_id.exit
  call void @__sanitizer_cov_trace_pc() #8
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
define internal i32 @fme_global_err_init(ptr nocapture noundef readonly %pdev, ptr nocapture noundef readnone %feature) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call fastcc void @fme_err_mask(ptr noundef %dev, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fme_global_err_uinit(ptr nocapture noundef readonly %pdev, ptr nocapture noundef readnone %feature) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call fastcc void @fme_err_mask(ptr noundef %dev, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fme_global_error_ioctl(ptr noundef %pdev, ptr noundef %feature, i32 noundef %cmd, i32 noundef %arg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %do.body [
    i32 -2147174781, label %sw.bb
    i32 1074312836, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @dfl_feature_ioctl_get_num_irqs(ptr noundef %pdev, ptr noundef %feature, i32 noundef %arg) #6
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @dfl_feature_ioctl_set_irq(ptr noundef %pdev, ptr noundef %feature, i32 noundef %arg) #6
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fme_global_error_ioctl.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fme_global_error_ioctl, %if.then)) #6
          to label %return [label %if.then], !srcloc !53

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fme_global_error_ioctl.__UNIQUE_ID_ddebug262, ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %cmd) #6
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
define internal i32 @pcie0_errors_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %cmp1.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp1.i.i, label %entry.for.body.i.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %feature.02.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %entry.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %5)
  %cmp5.i.i = icmp eq i16 %5, 4
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.02.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.02.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 392, i32 noundef 9, ptr noundef null) #6
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %7, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 36
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %10 = zext i32 %9 to i64
  %11 = zext i32 %8 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or i64 %12, %10
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #6
  tail call void @mutex_unlock(ptr noundef %lock) #6
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i64 noundef %14)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcie0_errors_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  %val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %val, align 8, !annotation !57
  %call.i = call i32 @kstrtoull(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %4, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %6
  %cmp1.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp1.i.i, label %if.end.for.body.i.i_crit_edge, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %feature.02.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %if.end.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %8)
  %cmp5.i.i = icmp eq i16 %8, 4
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.02.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.02.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 392, i32 noundef 9, ptr noundef null) #6
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %10, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #6, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  call void @arm_heavy_mb() #6
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #6, !srcloc !59
  %add.ptr3 = getelementptr i8, ptr %retval.0.i, i32 32
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #6, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  %add.ptr.i22 = getelementptr i8, ptr %retval.0.i, i32 36
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #6, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %13 = zext i32 %12 to i64
  %14 = zext i32 %11 to i64
  %15 = shl nuw i64 %14, 32
  %16 = or i64 %15, %13
  %17 = call i64 @llvm.bswap.i64(i64 %16) #6
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %val, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %17)
  %cmp = icmp eq i64 %19, %17
  br i1 %cmp, label %if.then5, label %dfl_get_feature_ioaddr_by_id.exit.if.end7_crit_edge

dfl_get_feature_ioaddr_by_id.exit.if.end7_crit_edge: ; preds = %dfl_get_feature_ioaddr_by_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %dfl_get_feature_ioaddr_by_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %11) #6, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  call void @arm_heavy_mb() #6
  %shr.i = lshr i64 %17, 32
  %conv3.i = trunc i64 %shr.i to i32
  %20 = call i32 @llvm.bswap.i32(i32 %conv3.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %20) #6, !srcloc !59
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %dfl_get_feature_ioaddr_by_id.exit.if.end7_crit_edge
  %count.ret.0 = phi i32 [ -22, %dfl_get_feature_ioaddr_by_id.exit.if.end7_crit_edge ], [ %count, %if.then5 ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !59
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.ret.0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #6
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcie1_errors_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %cmp1.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp1.i.i, label %entry.for.body.i.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %feature.02.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %entry.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %5)
  %cmp5.i.i = icmp eq i16 %5, 4
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.02.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.02.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 392, i32 noundef 9, ptr noundef null) #6
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %7, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 52
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %10 = zext i32 %9 to i64
  %11 = zext i32 %8 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or i64 %12, %10
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #6
  tail call void @mutex_unlock(ptr noundef %lock) #6
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i64 noundef %14)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcie1_errors_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  %val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %val, align 8, !annotation !57
  %call.i = call i32 @kstrtoull(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %4, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %6
  %cmp1.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp1.i.i, label %if.end.for.body.i.i_crit_edge, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %feature.02.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %if.end.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %8)
  %cmp5.i.i = icmp eq i16 %8, 4
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.02.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.02.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 392, i32 noundef 9, ptr noundef null) #6
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %10, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #6, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  call void @arm_heavy_mb() #6
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #6, !srcloc !59
  %add.ptr3 = getelementptr i8, ptr %retval.0.i, i32 48
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #6, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  %add.ptr.i22 = getelementptr i8, ptr %retval.0.i, i32 52
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #6, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %13 = zext i32 %12 to i64
  %14 = zext i32 %11 to i64
  %15 = shl nuw i64 %14, 32
  %16 = or i64 %15, %13
  %17 = call i64 @llvm.bswap.i64(i64 %16) #6
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %val, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %17)
  %cmp = icmp eq i64 %19, %17
  br i1 %cmp, label %if.then5, label %dfl_get_feature_ioaddr_by_id.exit.if.end7_crit_edge

dfl_get_feature_ioaddr_by_id.exit.if.end7_crit_edge: ; preds = %dfl_get_feature_ioaddr_by_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %dfl_get_feature_ioaddr_by_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %11) #6, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  call void @arm_heavy_mb() #6
  %shr.i = lshr i64 %17, 32
  %conv3.i = trunc i64 %shr.i to i32
  %20 = call i32 @llvm.bswap.i32(i32 %conv3.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %20) #6, !srcloc !59
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %dfl_get_feature_ioaddr_by_id.exit.if.end7_crit_edge
  %count.ret.0 = phi i32 [ -22, %dfl_get_feature_ioaddr_by_id.exit.if.end7_crit_edge ], [ %count, %if.then5 ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !59
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.ret.0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nonfatal_errors_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i.i.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %3
  %cmp1.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp1.i.i, label %entry.for.body.i.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %feature.02.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %entry.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %5)
  %cmp5.i.i = icmp eq i16 %5, 4
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.02.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.02.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 392, i32 noundef 9, ptr noundef null) #6
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %7, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 80
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 84
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %10 = zext i32 %9 to i64
  %11 = zext i32 %8 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or i64 %12, %10
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #6
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i64 noundef %14)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @catfatal_errors_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i.i.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %3
  %cmp1.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp1.i.i, label %entry.for.body.i.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %feature.02.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %entry.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %5)
  %cmp5.i.i = icmp eq i16 %5, 4
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.02.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.02.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 392, i32 noundef 9, ptr noundef null) #6
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %7, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 96
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 100
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %10 = zext i32 %9 to i64
  %11 = zext i32 %8 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or i64 %12, %10
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #6
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i64 noundef %14)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inject_errors_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %cmp1.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp1.i.i, label %entry.for.body.i.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %feature.02.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %entry.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %5)
  %cmp5.i.i = icmp eq i16 %5, 4
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.02.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.02.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 392, i32 noundef 9, ptr noundef null) #6
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %7, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 104
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 108
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %10 = lshr i32 %8, 24
  tail call void @mutex_unlock(ptr noundef %lock) #6
  %11 = and i32 %10, 7
  %and = zext i32 %11 to i64
  %call16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i64 noundef %and)
  ret i32 %call16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inject_errors_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  %inject_error = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %inject_error) #6
  %2 = ptrtoint ptr %inject_error to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %inject_error, align 1, !annotation !57
  %call1 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %inject_error) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %inject_error to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %inject_error, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %4)
  %tobool2.not = icmp ult i8 %4, 8
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %platform_data.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %6, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %8
  %cmp1.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp1.i.i, label %if.end4.for.body.i.i_crit_edge, label %if.end4.do.end.i_crit_edge

if.end4.do.end.i_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end4.for.body.i.i_crit_edge:                   ; preds = %if.end4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end4.for.body.i.i_crit_edge
  %feature.02.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %if.end4.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %10)
  %cmp5.i.i = icmp eq i16 %10, 4
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.02.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.02.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %if.end4.do.end.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 392, i32 noundef 9, ptr noundef null) #6
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %12, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 104
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 108
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %15 = ptrtoint ptr %inject_error to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %inject_error, align 1
  %17 = zext i32 %14 to i64
  %18 = zext i32 %13 to i64
  %19 = shl nuw i64 %18, 32
  %.masked = and i64 %19, -504403162560462848
  %20 = or i64 %.masked, %17
  %21 = call i64 @llvm.bswap.i64(i64 %20)
  %22 = and i8 %16, 7
  %and26 = zext i8 %22 to i64
  %or = or i64 %21, %and26
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  %conv.i = trunc i64 %or to i32
  %23 = call i32 @llvm.bswap.i32(i32 %conv.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %23) #6, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  call void @arm_heavy_mb() #6
  %shr.i = lshr i64 %21, 32
  %conv3.i = trunc i64 %shr.i to i32
  %24 = call i32 @llvm.bswap.i32(i32 %conv3.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %24) #6, !srcloc !59
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %dfl_get_feature_ioaddr_by_id.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %dfl_get_feature_ioaddr_by_id.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %inject_error) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fme_errors_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %cmp1.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp1.i.i, label %entry.for.body.i.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %feature.02.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %entry.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %5)
  %cmp5.i.i = icmp eq i16 %5, 4
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.02.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.02.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 392, i32 noundef 9, ptr noundef null) #6
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %7, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 20
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %10 = zext i32 %9 to i64
  %11 = zext i32 %8 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or i64 %12, %10
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #6
  tail call void @mutex_unlock(ptr noundef %lock) #6
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i64 noundef %14)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fme_errors_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  %val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %val, align 8, !annotation !57
  %call.i = call i32 @kstrtoull(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %4, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %6
  %cmp1.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp1.i.i, label %if.end.for.body.i.i_crit_edge, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %feature.02.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %if.end.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %8)
  %cmp5.i.i = icmp eq i16 %8, 4
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.02.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.02.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 392, i32 noundef 9, ptr noundef null) #6
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %10, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #6, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  call void @arm_heavy_mb() #6
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #6, !srcloc !59
  %add.ptr3 = getelementptr i8, ptr %retval.0.i, i32 16
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #6, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  %add.ptr.i26 = getelementptr i8, ptr %retval.0.i, i32 20
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #6, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %13 = zext i32 %12 to i64
  %14 = zext i32 %11 to i64
  %15 = shl nuw i64 %14, 32
  %16 = or i64 %15, %13
  %17 = call i64 @llvm.bswap.i64(i64 %16) #6
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %val, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %17)
  %cmp = icmp eq i64 %19, %17
  br i1 %cmp, label %if.then5, label %dfl_get_feature_ioaddr_by_id.exit.if.end7_crit_edge

dfl_get_feature_ioaddr_by_id.exit.if.end7_crit_edge: ; preds = %dfl_get_feature_ioaddr_by_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %dfl_get_feature_ioaddr_by_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %11) #6, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  call void @arm_heavy_mb() #6
  %shr.i = lshr i64 %17, 32
  %conv3.i = trunc i64 %shr.i to i32
  %20 = call i32 @llvm.bswap.i32(i32 %conv3.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %20) #6, !srcloc !59
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %dfl_get_feature_ioaddr_by_id.exit.if.end7_crit_edge
  %count.ret.0 = phi i32 [ -22, %dfl_get_feature_ioaddr_by_id.exit.if.end7_crit_edge ], [ %count, %if.then5 ]
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %retval.0.i) #6, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  %add.ptr.i.i28 = getelementptr i32, ptr %retval.0.i, i32 1
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i28) #6, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %23 = and i32 %21, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool9.not = icmp eq i32 %23, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  call void @arm_heavy_mb() #6
  %conv.i30 = select i1 %tobool9.not, i32 1073741824, i32 0
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %conv.i30) #6, !srcloc !59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !59
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.ret.0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @first_error_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %cmp1.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp1.i.i, label %entry.for.body.i.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %feature.02.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %entry.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %5)
  %cmp5.i.i = icmp eq i16 %5, 4
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.02.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.02.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 392, i32 noundef 9, ptr noundef null) #6
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %7, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 56
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 60
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %10 = zext i32 %9 to i64
  %11 = zext i32 %8 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or i64 %12, %10
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #6
  tail call void @mutex_unlock(ptr noundef %lock) #6
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i64 noundef %14)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @next_error_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %cmp1.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp1.i.i, label %entry.for.body.i.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %feature.02.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %entry.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %5)
  %cmp5.i.i = icmp eq i16 %5, 4
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.02.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.02.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 392, i32 noundef 9, ptr noundef null) #6
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %7, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 64
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 68
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %10 = zext i32 %9 to i64
  %11 = zext i32 %8 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or i64 %12, %10
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #6
  tail call void @mutex_unlock(ptr noundef %lock) #6
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i64 noundef %14)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fme_err_mask(ptr nocapture noundef readonly %dev, i1 noundef zeroext %mask) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %cmp1.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp1.i.i, label %entry.for.body.i.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %feature.02.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %entry.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %5)
  %cmp5.i.i = icmp eq i16 %5, 4
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.02.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.02.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.02.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 392, i32 noundef 9, ptr noundef null) #6
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %7, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %retval.0.i) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  %add.ptr.i.i33 = getelementptr i32, ptr %retval.0.i, i32 1
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i33) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %10 = and i32 %8, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %dfl_get_feature_ioaddr_by_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %conv.i34 = sext i1 %mask to i32
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv.i34) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #6, !srcloc !59
  br label %if.end

if.else:                                          ; preds = %dfl_get_feature_ioaddr_by_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  %cond5 = select i1 %mask, i64 -1, i64 64
  %add.ptr6 = getelementptr i8, ptr %retval.0.i, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %conv.i35 = trunc i64 %cond5 to i32
  %12 = tail call i32 @llvm.bswap.i32(i32 %conv.i35) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %12) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %shr.i36 = lshr i64 %cond5, 32
  %conv3.i37 = trunc i64 %shr.i36 to i32
  %13 = tail call i32 @llvm.bswap.i32(i32 %conv3.i37) #6
  %add.ptr.i38 = getelementptr i8, ptr %retval.0.i, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %13) #6, !srcloc !59
  %.pre = sext i1 %mask to i32
  %.pre58 = tail call i32 @llvm.bswap.i32(i32 %.pre) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.pre-phi = phi i32 [ %.pre58, %if.else ], [ %11, %if.then ]
  %add.ptr9 = getelementptr i8, ptr %retval.0.i, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %.pre-phi) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %add.ptr.i42 = getelementptr i8, ptr %retval.0.i, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %.pre-phi) #6, !srcloc !59
  %add.ptr12 = getelementptr i8, ptr %retval.0.i, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %.pre-phi) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %add.ptr.i46 = getelementptr i8, ptr %retval.0.i, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %.pre-phi) #6, !srcloc !59
  %add.ptr15 = getelementptr i8, ptr %retval.0.i, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %.pre-phi) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %add.ptr.i50 = getelementptr i8, ptr %retval.0.i, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %.pre-phi) #6, !srcloc !59
  %add.ptr18 = getelementptr i8, ptr %retval.0.i, i32 88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %.pre-phi) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %add.ptr.i54 = getelementptr i8, ptr %retval.0.i, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 %.pre-phi) #6, !srcloc !59
  tail call void @mutex_unlock(ptr noundef %lock) #6
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
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store8_noabort(i32)

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

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !42, !43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/fpga/dfl-fme-error.c", i32 310, i32 16}
!2 = !{ptr @fme_global_err_group, !3, !"fme_global_err_group", i1 false, i1 false}
!3 = !{!"../drivers/fpga/dfl-fme-error.c", i32 309, i32 30}
!4 = !{ptr @fme_global_err_id_table, !5, !"fme_global_err_id_table", i1 false, i1 false}
!5 = !{!"../drivers/fpga/dfl-fme-error.c", i32 368, i32 29}
!6 = !{ptr @fme_global_err_ops, !7, !"fme_global_err_ops", i1 false, i1 false}
!7 = !{!"../drivers/fpga/dfl-fme-error.c", i32 373, i32 30}
!8 = !{ptr @fme_global_err_attrs, !9, !"fme_global_err_attrs", i1 false, i1 false}
!9 = !{!"../drivers/fpga/dfl-fme-error.c", i32 282, i32 26}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/fpga/dfl-fme-error.c", i32 85, i32 8}
!12 = !{ptr @dev_attr_pcie0_errors, !11, !"dev_attr_pcie0_errors", i1 false, i1 false}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/fpga/dfl-fme-error.c", i32 55, i32 22}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/fpga/dfl.h", i32 392, i32 2}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/fpga/dfl-fme-error.c", i32 130, i32 8}
!19 = !{ptr @dev_attr_pcie1_errors, !18, !"dev_attr_pcie1_errors", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/fpga/dfl-fme-error.c", i32 142, i32 8}
!22 = !{ptr @dev_attr_nonfatal_errors, !21, !"dev_attr_nonfatal_errors", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/fpga/dfl-fme-error.c", i32 154, i32 8}
!25 = !{ptr @dev_attr_catfatal_errors, !24, !"dev_attr_catfatal_errors", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/fpga/dfl-fme-error.c", i32 199, i32 8}
!28 = !{ptr @dev_attr_inject_errors, !27, !"dev_attr_inject_errors", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/fpga/dfl-fme-error.c", i32 246, i32 8}
!31 = !{ptr @dev_attr_fme_errors, !30, !"dev_attr_fme_errors", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/fpga/dfl-fme-error.c", i32 263, i32 8}
!34 = !{ptr @dev_attr_first_error, !33, !"dev_attr_first_error", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/fpga/dfl-fme-error.c", i32 280, i32 8}
!37 = !{ptr @dev_attr_next_error, !36, !"dev_attr_next_error", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/fpga/dfl-fme-error.c", i32 363, i32 3}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @fme_global_error_ioctl.__UNIQUE_ID_ddebug262, !39, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i64 2148277509, i64 2148277514, i64 2148277527, i64 2148277571, i64 2148277605, i64 2148277626}
!54 = !{i64 5664656}
!55 = !{i64 2153772472}
!56 = !{i64 2153772910}
!57 = !{!"auto-init"}
!58 = !{i64 2153773280}
!59 = !{i64 5664238}
!60 = !{i64 2153773653}
