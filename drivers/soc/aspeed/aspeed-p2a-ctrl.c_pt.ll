; ModuleID = '/llk/IR_all_yes/drivers/soc/aspeed/aspeed-p2a-ctrl.c_pt.bc'
source_filename = "../drivers/soc/aspeed/aspeed-p2a-ctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.aspeed_p2a_model_data = type { [6 x %struct.region] }
%struct.region = type { i64, i64, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.aspeed_p2a_ctrl = type { %struct.miscdevice, ptr, ptr, %struct.mutex, i32, [6 x i32], i32, i32 }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.aspeed_p2a_ctrl_mapping = type { i64, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.aspeed_p2a_user = type { ptr, ptr, i32, [6 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@__initcall__kmod_aspeed_p2a_ctrl__228_439_aspeed_p2a_ctrl_driver_init6 = internal global ptr @aspeed_p2a_ctrl_driver_init, section ".initcall6.init", align 4
@aspeed_p2a_ctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @aspeed_p2a_ctrl_probe, ptr @aspeed_p2a_ctrl_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @aspeed_p2a_ctrl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_aspeed_p2a_ctrl_driver_exit = internal global ptr @aspeed_p2a_ctrl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file229 = internal constant [56 x i8] c"aspeed_p2a_ctrl.file=drivers/soc/aspeed/aspeed-p2a-ctrl\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [28 x i8] c"aspeed_p2a_ctrl.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [60 x i8] c"aspeed_p2a_ctrl.author=Patrick Venture <venture@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [86 x i8] c"aspeed_p2a_ctrl.description=Control for aspeed 2400/2500 P2A VGA HOST to BMC mappings\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aspeed-p2a-ctrl\00", [16 x i8] zeroinitializer }, align 32
@aspeed_p2a_ctrl_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-p2a-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2400_model_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-p2a-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ast2500_model_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@aspeed_p2a_ctrl_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&misc_ctrl->tracking\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"memory-region\00", [18 x i8] zeroinitializer }, align 32
@aspeed_p2a_ctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 354, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Couldn't address to resource for reserved memory\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aspeed_p2a_ctrl_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/soc/aspeed/aspeed-p2a-ctrl.c\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aspeed_p2a_ctrl_probe._entry_ptr = internal global ptr @aspeed_p2a_ctrl_probe._entry, section ".printk_index", align 4
@aspeed_p2a_ctrl_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 364, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Couldn't get regmap\0A\00", [43 x i8] zeroinitializer }, align 32
@aspeed_p2a_ctrl_probe._entry_ptr.10 = internal global ptr @aspeed_p2a_ctrl_probe._entry.8, section ".printk_index", align 4
@aspeed_p2a_ctrl_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aspeed_p2a_ioctl, ptr null, ptr @aspeed_p2a_mmap, i32 0, ptr @aspeed_p2a_open, ptr null, ptr @aspeed_p2a_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@aspeed_p2a_ctrl_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 381, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to register device\0A\00", [37 x i8] zeroinitializer }, align 32
@aspeed_p2a_ctrl_probe._entry_ptr.13 = internal global ptr @aspeed_p2a_ctrl_probe._entry.11, section ".printk_index", align 4
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ast2400_model_data = internal constant { %struct.aspeed_p2a_model_data, [48 x i8] } { %struct.aspeed_p2a_model_data { [6 x %struct.region] [%struct.region { i64 0, i64 402653183, i32 4194304 }, %struct.region { i64 402653184, i64 536870911, i32 8388608 }, %struct.region { i64 536870912, i64 805306367, i32 4194304 }, %struct.region { i64 805306368, i64 1073741823, i32 16777216 }, %struct.region { i64 1073741824, i64 1610612735, i32 33554432 }, %struct.region { i64 1610612736, i64 4294967295, i32 8388608 }] }, [48 x i8] zeroinitializer }, align 32
@ast2500_model_data = internal constant { %struct.aspeed_p2a_model_data, [48 x i8] } { %struct.aspeed_p2a_model_data { [6 x %struct.region] [%struct.region { i64 0, i64 268435455, i32 4194304 }, %struct.region { i64 268435456, i64 536870911, i32 8388608 }, %struct.region { i64 536870912, i64 1073741823, i32 4194304 }, %struct.region { i64 1073741824, i64 1610612735, i32 8388608 }, %struct.region { i64 1610612736, i64 2147483647, i32 16777216 }, %struct.region { i64 2147483648, i64 4294967295, i32 33554432 }] }, [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1074836224, i64 3222319873]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.18 = private unnamed_addr constant [23 x i8] c"aspeed_p2a_ctrl_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 430, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 432, i32 12 }
@___asan_gen_.24 = private unnamed_addr constant [22 x i8] c"aspeed_p2a_ctrl_match\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 422, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 346, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 349, i32 40 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 354, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 364, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [21 x i8] c"aspeed_p2a_ctrl_fops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 309, i32 37 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 381, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 156, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [19 x i8] c"ast2400_model_data\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 400, i32 43 }
@___asan_gen_.75 = private unnamed_addr constant [19 x i8] c"ast2500_model_data\00", align 1
@___asan_gen_.76 = private constant [40 x i8] c"../drivers/soc/aspeed/aspeed-p2a-ctrl.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 411, i32 43 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_aspeed_p2a_ctrl_driver_exit, ptr @__initcall__kmod_aspeed_p2a_ctrl__228_439_aspeed_p2a_ctrl_driver_init6, ptr @aspeed_p2a_ctrl_driver_exit, ptr @aspeed_p2a_ctrl_probe._entry, ptr @aspeed_p2a_ctrl_probe._entry.11, ptr @aspeed_p2a_ctrl_probe._entry.8, ptr @aspeed_p2a_ctrl_probe._entry_ptr, ptr @aspeed_p2a_ctrl_probe._entry_ptr.10, ptr @aspeed_p2a_ctrl_probe._entry_ptr.13, ptr @aspeed_p2a_ctrl_driver, ptr @.str, ptr @aspeed_p2a_ctrl_match, ptr @aspeed_p2a_ctrl_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @aspeed_p2a_ctrl_fops, ptr @.str.12, ptr @.str.16, ptr @ast2400_model_data, ptr @ast2500_model_data], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_p2a_ctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_p2a_ctrl_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_p2a_ctrl_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_p2a_ctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_p2a_ctrl_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_p2a_ctrl_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_p2a_ctrl_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2400_model_data to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast2500_model_data to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_p2a_ctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @aspeed_p2a_ctrl_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_p2a_ctrl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @aspeed_p2a_ctrl_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_p2a_ctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %resm = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %resm) #7
  %0 = getelementptr inbounds %struct.resource, ptr %resm, i32 0, i32 1
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %1 = call ptr @memset(ptr %resm, i32 255, i32 32)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 176, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %tracking = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %tracking, ptr noundef nonnull @.str.1, ptr noundef nonnull @aspeed_p2a_ctrl_probe.__key) #7
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %4 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i67 = call i32 @__of_parse_phandle_with_args(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool.not.i = icmp eq i32 %call.i67, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  br label %if.end13

of_parse_phandle.exit:                            ; preds = %do.body
  %5 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %of_parse_phandle.exit.if.end13_crit_edge, label %if.then4

of_parse_phandle.exit.if.end13_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then4:                                         ; preds = %of_parse_phandle.exit
  %call5 = call i32 @of_address_to_resource(ptr noundef nonnull %6, i32 noundef 0, ptr noundef nonnull %resm) #7
  call void @of_node_put(ptr noundef nonnull %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end11, label %if.then4.cleanup.sink.split_crit_edge

if.then4.cleanup.sink.split_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %0, align 4
  %9 = ptrtoint ptr %resm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %resm, align 4
  %sub.i = add i32 %8, 1
  %add.i = sub i32 %sub.i, %10
  %mem_size = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %call.i, i32 0, i32 7
  %11 = ptrtoint ptr %mem_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add.i, ptr %mem_size, align 4
  %mem_base = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %mem_base to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %10, ptr %mem_base, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %of_parse_phandle.exit.if.end13_crit_edge, %of_parse_phandle.exit.thread
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent, align 8
  %of_node15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %of_node15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node15, align 8
  %call16 = call ptr @syscon_node_to_regmap(ptr noundef %16) #7
  %regmap = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call16, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end13.cleanup.sink.split_crit_edge, label %if.end23

if.end13.cleanup.sink.split_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end23:                                         ; preds = %if.end13
  %call24 = call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %config = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call24, ptr %config, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i, align 4
  %bit.i = getelementptr [6 x %struct.region], ptr %call24, i32 0, i32 0, i32 2
  %20 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bit.i, align 8
  %bit.1.i = getelementptr [6 x %struct.region], ptr %call24, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %bit.1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bit.1.i, align 8
  %or.1.i = or i32 %23, %21
  %bit.2.i = getelementptr [6 x %struct.region], ptr %call24, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %bit.2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bit.2.i, align 8
  %or.2.i = or i32 %or.1.i, %25
  %bit.3.i = getelementptr [6 x %struct.region], ptr %call24, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %bit.3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bit.3.i, align 8
  %or.3.i = or i32 %or.2.i, %27
  %bit.4.i = getelementptr [6 x %struct.region], ptr %call24, i32 0, i32 4, i32 2
  %28 = ptrtoint ptr %bit.4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bit.4.i, align 8
  %or.4.i = or i32 %or.3.i, %29
  %bit.5.i = getelementptr [6 x %struct.region], ptr %call24, i32 0, i32 5, i32 2
  %30 = ptrtoint ptr %bit.5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bit.5.i, align 8
  %or.5.i = or i32 %or.4.i, %31
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 44, i32 noundef %or.5.i, i32 noundef %or.5.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 384, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 255, ptr %call.i, align 4
  %name = getelementptr inbounds %struct.miscdevice, ptr %call.i, i32 0, i32 1
  %37 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str, ptr %name, align 4
  %fops = getelementptr inbounds %struct.miscdevice, ptr %call.i, i32 0, i32 2
  %38 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @aspeed_p2a_ctrl_fops, ptr %fops, align 4
  %parent29 = getelementptr inbounds %struct.miscdevice, ptr %call.i, i32 0, i32 4
  %39 = ptrtoint ptr %parent29 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %dev1, ptr %parent29, align 4
  %call31 = call i32 @misc_register(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end23.cleanup_crit_edge, label %if.end23.cleanup.sink.split_crit_edge

if.end23.cleanup.sink.split_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end23.cleanup.sink.split_crit_edge, %if.end13.cleanup.sink.split_crit_edge, %if.then4.cleanup.sink.split_crit_edge
  %.str.12.sink = phi ptr [ @.str.3, %if.then4.cleanup.sink.split_crit_edge ], [ @.str.9, %if.end13.cleanup.sink.split_crit_edge ], [ @.str.12, %if.end23.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -19, %if.then4.cleanup.sink.split_crit_edge ], [ -19, %if.end13.cleanup.sink.split_crit_edge ], [ %call31, %if.end23.cleanup.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.12.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end23.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %resm) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_p2a_ctrl_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @misc_deregister(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_p2a_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %data) #2 align 64 {
entry:
  %map = alloca %struct.aspeed_p2a_ctrl_mapping, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %parent = getelementptr inbounds %struct.aspeed_p2a_user, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %4 = inttoptr i32 %data to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map) #7
  %5 = getelementptr inbounds %struct.aspeed_p2a_ctrl_mapping, ptr %map, i32 0, i32 1
  %6 = getelementptr inbounds %struct.aspeed_p2a_ctrl_mapping, ptr %map, i32 0, i32 2
  %7 = call ptr @memset(ptr %map, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 16, i32 -1226833920) #11
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !60

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %map, i32 noundef 16) #7
  %9 = call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !61
  %and.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !62
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %map, ptr noundef %4, i32 noundef 16) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #7, !srcloc !62
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !60

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %entry.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %map, i32 %sub.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %13 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 1074836224, label %sw.bb
    i32 -1072647423, label %if.then.i32
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %6, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %15, label %sw.bb.cleanup_crit_edge [
    i32 0, label %if.then1
    i32 1, label %if.then6
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then1:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %tracking = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %3, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %tracking, i32 noundef 0) #7
  %readers = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %3, i32 0, i32 4
  %17 = ptrtoint ptr %readers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %readers, align 4
  %add = add i32 %18, 1
  store i32 %add, ptr %readers, align 4
  call void @mutex_unlock(ptr noundef %tracking) #7
  %read = getelementptr inbounds %struct.aspeed_p2a_user, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %read, align 4
  %add3 = add i32 %20, 1
  store i32 %add3, ptr %read, align 4
  br label %if.end12

if.then6:                                         ; preds = %sw.bb
  %21 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %map, align 8
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %5, align 8
  %sub.i = add i32 %24, -1
  %conv.i = zext i32 %sub.i to i64
  %add.i = add i64 %22, %conv.i
  %config.i = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %3, i32 0, i32 2
  %tracking.i = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %3, i32 0, i32 3
  %regmap.i = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %3, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then6
  %matched.0.off041.i = phi i1 [ false, %if.then6 ], [ %matched.1.off0.ph.i, %for.inc.i.for.body.i_crit_edge ]
  %i.039.i = phi i32 [ 0, %if.then6 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %config.i, align 4
  %max.i = getelementptr [6 x %struct.region], ptr %26, i32 0, i32 %i.039.i, i32 1
  %27 = ptrtoint ptr %max.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %max.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %22)
  %cmp3.i = icmp ult i64 %28, %22
  br i1 %cmp3.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %arrayidx.i = getelementptr [6 x %struct.region], ptr %26, i32 0, i32 %i.039.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %add.i)
  %cmp5.i = icmp ugt i64 %30, %add.i
  br i1 %cmp5.i, label %if.end.i.aspeed_p2a_region_acquire.exit_crit_edge, label %if.end8.i

if.end.i.aspeed_p2a_region_acquire.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aspeed_p2a_region_acquire.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_lock_nested(ptr noundef %tracking.i, i32 noundef 0) #7
  %arrayidx9.i = getelementptr %struct.aspeed_p2a_ctrl, ptr %3, i32 0, i32 5, i32 %i.039.i
  %31 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx9.i, align 4
  %add10.i = add i32 %32, 1
  store i32 %add10.i, ptr %arrayidx9.i, align 4
  call void @mutex_unlock(ptr noundef %tracking.i) #7
  %arrayidx12.i = getelementptr %struct.aspeed_p2a_user, ptr %1, i32 0, i32 3, i32 %i.039.i
  %33 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx12.i, align 4
  %add13.i = add i32 %34, 1
  store i32 %add13.i, ptr %arrayidx12.i, align 4
  %35 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i, align 4
  %bit.i = getelementptr [6 x %struct.region], ptr %26, i32 0, i32 %i.039.i, i32 2
  %37 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bit.i, align 8
  %call.i.i38 = call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 44, i32 noundef %38, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end8.i, %for.body.i.for.inc.i_crit_edge
  %matched.1.off0.ph.i = phi i1 [ %matched.0.off041.i, %for.body.i.for.inc.i_crit_edge ], [ true, %if.end8.i ]
  %inc.i = add nuw nsw i32 %i.039.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 6
  br i1 %exitcond.not.i, label %for.inc.i.aspeed_p2a_region_acquire.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.aspeed_p2a_region_acquire.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aspeed_p2a_region_acquire.exit

aspeed_p2a_region_acquire.exit:                   ; preds = %for.inc.i.aspeed_p2a_region_acquire.exit_crit_edge, %if.end.i.aspeed_p2a_region_acquire.exit_crit_edge
  %matched.0.off0.lcssa.i = phi i1 [ %matched.0.off041.i, %if.end.i.aspeed_p2a_region_acquire.exit_crit_edge ], [ %matched.1.off0.ph.i, %for.inc.i.aspeed_p2a_region_acquire.exit_crit_edge ]
  br i1 %matched.0.off0.lcssa.i, label %aspeed_p2a_region_acquire.exit.if.end12_crit_edge, label %aspeed_p2a_region_acquire.exit.cleanup_crit_edge

aspeed_p2a_region_acquire.exit.cleanup_crit_edge: ; preds = %aspeed_p2a_region_acquire.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

aspeed_p2a_region_acquire.exit.if.end12_crit_edge: ; preds = %aspeed_p2a_region_acquire.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end12:                                         ; preds = %aspeed_p2a_region_acquire.exit.if.end12_crit_edge, %if.then1
  %regmap.i39 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %3, i32 0, i32 1
  %39 = ptrtoint ptr %regmap.i39 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap.i39, align 4
  %call.i.i40 = call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 384, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

if.then.i32:                                      ; preds = %if.end
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %6, align 4
  %mem_base = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %3, i32 0, i32 6
  %42 = ptrtoint ptr %mem_base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mem_base, align 4
  %conv = zext i32 %43 to i64
  %44 = ptrtoint ptr %map to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv, ptr %map, align 8
  %mem_size = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %3, i32 0, i32 7
  %45 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mem_size, align 4
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %5, align 8
  call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 174) #7
  %call.i.i31 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i31, label %if.then.i32.cleanup_crit_edge, label %copy_to_user.exit

if.then.i32.cleanup_crit_edge:                    ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i36 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %map, i32 noundef 16) #7
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %map, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool16.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool16.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.then.i32.cleanup_crit_edge, %if.end12, %aspeed_p2a_region_acquire.exit.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %aspeed_p2a_region_acquire.exit.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then.i32.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_p2a_mmap(ptr nocapture noundef readonly %file, ptr noundef %vma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %parent = getelementptr inbounds %struct.aspeed_p2a_user, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %mem_base = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %mem_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mem_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %mem_size = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mem_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1 = icmp eq i32 %7, 0
  br i1 %cmp1, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %8 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_end, align 4
  %10 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vma, align 4
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %12 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vm_pgoff, align 4
  %sub.i = sub i32 %9, %11
  %shr.i = lshr i32 %sub.i, 12
  %add = add i32 %shr.i, %13
  %mem_size2 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %mem_size2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mem_size2, align 4
  %shr = lshr i32 %15, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %shr)
  %cmp3 = icmp ugt i32 %add, %shr
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %16 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vm_page_prot, align 4
  %and = and i32 %17, -61
  %shr8 = lshr i32 %5, 12
  %add10 = add i32 %13, %shr8
  %call11 = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %11, i32 noundef %add10, i32 noundef %sub.i, i32 noundef %and) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  %. = select i1 %tobool.not, i32 0, i32 -11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %., %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_p2a_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 36) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %file, ptr %call7.i, align 8
  %read = getelementptr inbounds %struct.aspeed_p2a_user, ptr %call7.i, i32 0, i32 2
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = call ptr @memset(ptr %read, i32 0, i32 28)
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  %parent = getelementptr inbounds %struct.aspeed_p2a_user, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %parent, align 4
  store ptr %call7.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_p2a_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %parent = getelementptr inbounds %struct.aspeed_p2a_user, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %tracking = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %tracking, i32 noundef 0) #7
  %read = getelementptr inbounds %struct.aspeed_p2a_user, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %read, align 4
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 4
  %readers = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %readers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %readers, align 4
  %sub = sub i32 %9, %5
  store i32 %sub, ptr %readers, align 4
  %arrayidx = getelementptr %struct.aspeed_p2a_user, ptr %1, i32 0, i32 3, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = load ptr, ptr %parent, align 4
  %arrayidx3 = getelementptr %struct.aspeed_p2a_ctrl, ptr %12, i32 0, i32 5, i32 0
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx3, align 4
  %sub4 = sub i32 %14, %11
  store i32 %sub4, ptr %arrayidx3, align 4
  %15 = load ptr, ptr %parent, align 4
  %arrayidx7 = getelementptr %struct.aspeed_p2a_ctrl, ptr %15, i32 0, i32 5, i32 0
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp8.not = icmp eq i32 %17, 0
  br i1 %cmp8.not, label %if.else, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %config = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %config, align 4
  %bit = getelementptr [6 x %struct.region], ptr %19, i32 0, i32 0, i32 2
  %20 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bit, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.else, %entry.for.inc_crit_edge
  %bits.1 = phi i32 [ %21, %if.else ], [ 0, %entry.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr %struct.aspeed_p2a_user, ptr %1, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.1, align 4
  %24 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent, align 4
  %arrayidx3.1 = getelementptr %struct.aspeed_p2a_ctrl, ptr %25, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx3.1, align 4
  %sub4.1 = sub i32 %27, %23
  store i32 %sub4.1, ptr %arrayidx3.1, align 4
  %28 = load ptr, ptr %parent, align 4
  %arrayidx7.1 = getelementptr %struct.aspeed_p2a_ctrl, ptr %28, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx7.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp8.not.1 = icmp eq i32 %30, 0
  br i1 %cmp8.not.1, label %if.else.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.else.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %31 = xor i1 %cmp8.not, true
  %config.1 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %28, i32 0, i32 2
  %32 = ptrtoint ptr %config.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %config.1, align 4
  %bit.1 = getelementptr [6 x %struct.region], ptr %33, i32 0, i32 1, i32 2
  %34 = ptrtoint ptr %bit.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bit.1, align 8
  %or.1 = or i32 %35, %bits.1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.else.1, %for.inc.for.inc.1_crit_edge
  %bits.1.1 = phi i32 [ %or.1, %if.else.1 ], [ %bits.1, %for.inc.for.inc.1_crit_edge ]
  %open_regions.1.off0.1 = phi i1 [ %31, %if.else.1 ], [ true, %for.inc.for.inc.1_crit_edge ]
  %arrayidx.2 = getelementptr %struct.aspeed_p2a_user, ptr %1, i32 0, i32 3, i32 2
  %36 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.2, align 4
  %38 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %parent, align 4
  %arrayidx3.2 = getelementptr %struct.aspeed_p2a_ctrl, ptr %39, i32 0, i32 5, i32 2
  %40 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx3.2, align 4
  %sub4.2 = sub i32 %41, %37
  store i32 %sub4.2, ptr %arrayidx3.2, align 4
  %42 = load ptr, ptr %parent, align 4
  %arrayidx7.2 = getelementptr %struct.aspeed_p2a_ctrl, ptr %42, i32 0, i32 5, i32 2
  %43 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx7.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp8.not.2 = icmp eq i32 %44, 0
  br i1 %cmp8.not.2, label %if.else.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.else.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %config.2 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %42, i32 0, i32 2
  %45 = ptrtoint ptr %config.2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %config.2, align 4
  %bit.2 = getelementptr [6 x %struct.region], ptr %46, i32 0, i32 2, i32 2
  %47 = ptrtoint ptr %bit.2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bit.2, align 8
  %or.2 = or i32 %48, %bits.1.1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.else.2, %for.inc.1.for.inc.2_crit_edge
  %bits.1.2 = phi i32 [ %or.2, %if.else.2 ], [ %bits.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %open_regions.1.off0.2 = phi i1 [ %open_regions.1.off0.1, %if.else.2 ], [ true, %for.inc.1.for.inc.2_crit_edge ]
  %arrayidx.3 = getelementptr %struct.aspeed_p2a_user, ptr %1, i32 0, i32 3, i32 3
  %49 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.3, align 4
  %51 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %parent, align 4
  %arrayidx3.3 = getelementptr %struct.aspeed_p2a_ctrl, ptr %52, i32 0, i32 5, i32 3
  %53 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx3.3, align 4
  %sub4.3 = sub i32 %54, %50
  store i32 %sub4.3, ptr %arrayidx3.3, align 4
  %55 = load ptr, ptr %parent, align 4
  %arrayidx7.3 = getelementptr %struct.aspeed_p2a_ctrl, ptr %55, i32 0, i32 5, i32 3
  %56 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx7.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp8.not.3 = icmp eq i32 %57, 0
  br i1 %cmp8.not.3, label %if.else.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.else.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %config.3 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %55, i32 0, i32 2
  %58 = ptrtoint ptr %config.3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %config.3, align 4
  %bit.3 = getelementptr [6 x %struct.region], ptr %59, i32 0, i32 3, i32 2
  %60 = ptrtoint ptr %bit.3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bit.3, align 8
  %or.3 = or i32 %61, %bits.1.2
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.else.3, %for.inc.2.for.inc.3_crit_edge
  %bits.1.3 = phi i32 [ %or.3, %if.else.3 ], [ %bits.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %open_regions.1.off0.3 = phi i1 [ %open_regions.1.off0.2, %if.else.3 ], [ true, %for.inc.2.for.inc.3_crit_edge ]
  %arrayidx.4 = getelementptr %struct.aspeed_p2a_user, ptr %1, i32 0, i32 3, i32 4
  %62 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.4, align 4
  %64 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %parent, align 4
  %arrayidx3.4 = getelementptr %struct.aspeed_p2a_ctrl, ptr %65, i32 0, i32 5, i32 4
  %66 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx3.4, align 4
  %sub4.4 = sub i32 %67, %63
  store i32 %sub4.4, ptr %arrayidx3.4, align 4
  %68 = load ptr, ptr %parent, align 4
  %arrayidx7.4 = getelementptr %struct.aspeed_p2a_ctrl, ptr %68, i32 0, i32 5, i32 4
  %69 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx7.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp8.not.4 = icmp eq i32 %70, 0
  br i1 %cmp8.not.4, label %if.else.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.else.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  %config.4 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %68, i32 0, i32 2
  %71 = ptrtoint ptr %config.4 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %config.4, align 4
  %bit.4 = getelementptr [6 x %struct.region], ptr %72, i32 0, i32 4, i32 2
  %73 = ptrtoint ptr %bit.4 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bit.4, align 8
  %or.4 = or i32 %74, %bits.1.3
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.else.4, %for.inc.3.for.inc.4_crit_edge
  %bits.1.4 = phi i32 [ %or.4, %if.else.4 ], [ %bits.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %open_regions.1.off0.4 = phi i1 [ %open_regions.1.off0.3, %if.else.4 ], [ true, %for.inc.3.for.inc.4_crit_edge ]
  %arrayidx.5 = getelementptr %struct.aspeed_p2a_user, ptr %1, i32 0, i32 3, i32 5
  %75 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.5, align 4
  %77 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %parent, align 4
  %arrayidx3.5 = getelementptr %struct.aspeed_p2a_ctrl, ptr %78, i32 0, i32 5, i32 5
  %79 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx3.5, align 4
  %sub4.5 = sub i32 %80, %76
  store i32 %sub4.5, ptr %arrayidx3.5, align 4
  %81 = load ptr, ptr %parent, align 4
  %arrayidx7.5 = getelementptr %struct.aspeed_p2a_ctrl, ptr %81, i32 0, i32 5, i32 5
  %82 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx7.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp8.not.5 = icmp eq i32 %83, 0
  br i1 %cmp8.not.5, label %for.inc.5, label %for.inc.5.thread

for.inc.5.thread:                                 ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %parent, align 4
  %regmap45 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %regmap45 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regmap45, align 4
  %call.i46 = tail call i32 @regmap_update_bits_base(ptr noundef %87, i32 noundef 44, i32 noundef %bits.1.4, i32 noundef %bits.1.4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end17

for.inc.5:                                        ; preds = %for.inc.4
  %config.5 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %81, i32 0, i32 2
  %88 = ptrtoint ptr %config.5 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %config.5, align 4
  %bit.5 = getelementptr [6 x %struct.region], ptr %89, i32 0, i32 5, i32 2
  %90 = ptrtoint ptr %bit.5 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %bit.5, align 8
  %or.5 = or i32 %91, %bits.1.4
  %92 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %parent, align 4
  %regmap = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %95, i32 noundef 44, i32 noundef %or.5, i32 noundef %or.5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br i1 %open_regions.1.off0.4, label %for.inc.5.if.end17_crit_edge, label %land.lhs.true

for.inc.5.if.end17_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

land.lhs.true:                                    ; preds = %for.inc.5
  %96 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %parent, align 4
  %readers13 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %97, i32 0, i32 4
  %98 = ptrtoint ptr %readers13 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %readers13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp14 = icmp eq i32 %99, 0
  br i1 %cmp14, label %if.then15, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %regmap.i = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %97, i32 0, i32 1
  %100 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %101, i32 noundef 384, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %land.lhs.true.if.end17_crit_edge, %for.inc.5.if.end17_crit_edge, %for.inc.5.thread
  %102 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %parent, align 4
  %tracking19 = getelementptr inbounds %struct.aspeed_p2a_ctrl, ptr %103, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %tracking19) #7
  tail call void @kfree(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !40, !42, !44, !46, !48}
!llvm.named.register.sp = !{!50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__initcall__kmod_aspeed_p2a_ctrl__228_439_aspeed_p2a_ctrl_driver_init6, !1, !"__initcall__kmod_aspeed_p2a_ctrl__228_439_aspeed_p2a_ctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/aspeed/aspeed-p2a-ctrl.c", i32 439, i32 1}
!2 = !{ptr @__exitcall_aspeed_p2a_ctrl_driver_exit, !1, !"__exitcall_aspeed_p2a_ctrl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file229, !4, !"__UNIQUE_ID_file229", i1 false, i1 false}
!4 = !{!"../drivers/soc/aspeed/aspeed-p2a-ctrl.c", i32 442, i32 1}
!5 = !{ptr @__UNIQUE_ID_license230, !4, !"__UNIQUE_ID_license230", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author231, !7, !"__UNIQUE_ID_author231", i1 false, i1 false}
!7 = !{!"../drivers/soc/aspeed/aspeed-p2a-ctrl.c", i32 443, i32 1}
!8 = !{ptr @__UNIQUE_ID_description232, !9, !"__UNIQUE_ID_description232", i1 false, i1 false}
!9 = !{!"../drivers/soc/aspeed/aspeed-p2a-ctrl.c", i32 444, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/aspeed/aspeed-p2a-ctrl.c", i32 432, i32 12}
!12 = !{ptr @aspeed_p2a_ctrl_driver, !13, !"aspeed_p2a_ctrl_driver", i1 false, i1 false}
!13 = !{!"../drivers/soc/aspeed/aspeed-p2a-ctrl.c", i32 430, i32 31}
!14 = !{ptr @aspeed_p2a_ctrl_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/soc/aspeed/aspeed-p2a-ctrl.c", i32 346, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/soc/aspeed/aspeed-p2a-ctrl.c", i32 349, i32 40}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/soc/aspeed/aspeed-p2a-ctrl.c", i32 354, i32 4}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @aspeed_p2a_ctrl_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @aspeed_p2a_ctrl_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/soc/aspeed/aspeed-p2a-ctrl.c", i32 364, i32 3}
!29 = !{ptr @aspeed_p2a_ctrl_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @aspeed_p2a_ctrl_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/soc/aspeed/aspeed-p2a-ctrl.c", i32 381, i32 3}
!33 = !{ptr @aspeed_p2a_ctrl_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @aspeed_p2a_ctrl_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @aspeed_p2a_ctrl_fops, !36, !"aspeed_p2a_ctrl_fops", i1 false, i1 false}
!36 = !{!"../drivers/soc/aspeed/aspeed-p2a-ctrl.c", i32 309, i32 37}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!39 = distinct !{null, !38, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!44 = !{ptr @aspeed_p2a_ctrl_match, !45, !"aspeed_p2a_ctrl_match", i1 false, i1 false}
!45 = !{!"../drivers/soc/aspeed/aspeed-p2a-ctrl.c", i32 422, i32 34}
!46 = !{ptr @ast2400_model_data, !47, !"ast2400_model_data", i1 false, i1 false}
!47 = !{!"../drivers/soc/aspeed/aspeed-p2a-ctrl.c", i32 400, i32 43}
!48 = !{ptr @ast2500_model_data, !49, !"ast2500_model_data", i1 false, i1 false}
!49 = !{!"../drivers/soc/aspeed/aspeed-p2a-ctrl.c", i32 411, i32 43}
!50 = !{!"sp"}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"branch_weights", i32 2000, i32 1}
!61 = !{i64 4669983}
!62 = !{i64 4670180}
!63 = !{i64 2152155413}
