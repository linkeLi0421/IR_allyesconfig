; ModuleID = '/llk/IR_all_yes/drivers/nfc/nfcsim.c_pt.bc'
source_filename = "../drivers/nfc/nfcsim.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfc_digital_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nfcsim = type { ptr, %struct.work_struct, %struct.delayed_work, ptr, ptr, i8, i8, i8, i16, ptr, ptr, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.nfcsim_link = type { %struct.mutex, i8, i8, i8, ptr, %struct.wait_queue_head, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.20 }
%union.anon.20 = type { %struct.raw_spinlock }
%struct.nfc_digital_dev = type { ptr, ptr, i32, i32, i32, i32, ptr, [6 x %struct.digital_poll_tech], i8, i8, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.delayed_work, i8, i8, i8, i8, i16, i8, i8, ptr, ptr, i32, i32, ptr, i16, ptr, ptr }
%struct.digital_poll_tech = type { i8, ptr }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@dev0 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dev1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_nfcsim__272_499_nfcsim_init6 = internal global ptr @nfcsim_init, section ".initcall6.init", align 4
@__exitcall_nfcsim_exit = internal global ptr @nfcsim_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description273 = internal constant [41 x i8] c"nfcsim.description=NFCSim driver ver 0.2\00", section ".modinfo", align 1
@__UNIQUE_ID_version274 = internal constant [19 x i8] c"nfcsim.version=0.2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nfcsim\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.2\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file275 = internal constant [31 x i8] c"nfcsim.file=drivers/nfc/nfcsim\00", section ".modinfo", align 1
@__UNIQUE_ID_license276 = internal constant [19 x i8] c"nfcsim.license=GPL\00", section ".modinfo", align 1
@nfcsim_debugfs_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@nfcsim_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016nfcsim 0.2 initialized\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nfcsim_init\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/nfc/nfcsim.c\00", [43 x i8] zeroinitializer }, align 32
@nfcsim_init._entry_ptr = internal global ptr @nfcsim_init._entry, section ".printk_index", align 4
@nfcsim_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Failed to initialize nfcsim driver (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@nfcsim_init._entry_ptr.8 = internal global ptr @nfcsim_init._entry.6, section ".printk_index", align 4
@nfcsim_link_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&link->lock\00", [20 x i8] zeroinitializer }, align 32
@nfcsim_link_new.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&link->recv_wait\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nfcsim_debugfs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Could not create debugfs entry\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfcsim_debugfs_init\00", [44 x i8] zeroinitializer }, align 32
@nfcsim_debugfs_init._entry_ptr = internal global ptr @nfcsim_debugfs_init._entry, section ".printk_index", align 4
@nfcsim_device_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&(&dev->send_work)->work)\00", [52 x i8] zeroinitializer }, align 32
@nfcsim_device_new.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&dev->send_work)->timer\00", [38 x i8] zeroinitializer }, align 32
@nfcsim_device_new.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&dev->recv_work)\00", [61 x i8] zeroinitializer }, align 32
@nfcsim_digital_ops = internal constant { %struct.nfc_digital_ops, [56 x i8] } { %struct.nfc_digital_ops { ptr @nfcsim_in_configure_hw, ptr @nfcsim_in_send_cmd, ptr @nfcsim_tg_configure_hw, ptr @nfcsim_tg_send_cmd, ptr @nfcsim_tg_listen, ptr null, ptr null, ptr null, ptr @nfcsim_switch_rf, ptr @nfcsim_abort_cmd }, [56 x i8] zeroinitializer }, align 32
@nfcsim_device_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.5, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Could not register digital device (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfcsim_device_new\00", [46 x i8] zeroinitializer }, align 32
@nfcsim_device_new._entry_ptr = internal global ptr @nfcsim_device_new._entry, section ".printk_index", align 4
@nfcsim_recv_wq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.5, i32 191, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"NFC: %s: Device is down\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nfcsim_recv_wq\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfcsim_recv_wq._entry_ptr = internal global ptr @nfcsim_recv_wq._entry, section ".printk_index", align 4
@nfcsim_in_configure_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.5, i32 272, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"NFC: %s: Invalid configuration type: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nfcsim_in_configure_hw\00", [41 x i8] zeroinitializer }, align 32
@nfcsim_in_configure_hw._entry_ptr = internal global ptr @nfcsim_in_configure_hw._entry, section ".printk_index", align 4
@nfcsim_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.27, ptr @.str.5, i32 208, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nfcsim_send\00", [20 x i8] zeroinitializer }, align 32
@nfcsim_send._entry_ptr = internal global ptr @nfcsim_send._entry, section ".printk_index", align 4
@nfcsim_send.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.5, ptr @.str.28, i8 0, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: dropping frame (out of %d)\0A\00", [32 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@nfcsim_tg_configure_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.29, ptr @.str.5, i32 302, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nfcsim_tg_configure_hw\00", [41 x i8] zeroinitializer }, align 32
@nfcsim_tg_configure_hw._entry_ptr = internal global ptr @nfcsim_tg_configure_hw._entry, section ".printk_index", align 4
@nfcsim_debugfs_init_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.5, i32 358, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"NFC: %s: nfcsim debugfs not initialized\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfcsim_debugfs_init_dev\00", [40 x i8] zeroinitializer }, align 32
@nfcsim_debugfs_init_dev._entry_ptr = internal global ptr @nfcsim_debugfs_init_dev._entry, section ".printk_index", align 4
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nfc%d\00", [26 x i8] zeroinitializer }, align 32
@nfcsim_debugfs_init_dev._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.31, ptr @.str.5, i32 365, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"NFC: %s: Could not compute dev name for dev %d\0A\00", [48 x i8] zeroinitializer }, align 32
@nfcsim_debugfs_init_dev._entry_ptr.35 = internal global ptr @nfcsim_debugfs_init_dev._entry.33, section ".printk_index", align 4
@nfcsim_debugfs_init_dev._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.31, ptr @.str.5, i32 372, ptr @.str.23, ptr @.str.24 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"NFC: %s: Could not create debugfs entries for nfc%d\0A\00", [43 x i8] zeroinitializer }, align 32
@nfcsim_debugfs_init_dev._entry_ptr.38 = internal global ptr @nfcsim_debugfs_init_dev._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dropframe\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.41 = private unnamed_addr constant [5 x i8] c"dev0\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 437, i32 23 }
@___asan_gen_.44 = private unnamed_addr constant [5 x i8] c"dev1\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 438, i32 23 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 503, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant [20 x i8] c"nfcsim_debugfs_root\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 334, i32 23 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 468, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 473, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 73, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 74, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 341, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 389, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 390, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [19 x i8] c"nfcsim_digital_ops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 322, i32 37 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 409, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 191, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 272, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 208, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 219, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 302, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 358, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 363, i32 41 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 365, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 371, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.192 = private constant [24 x i8] c"../drivers/nfc/nfcsim.c\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 376, i32 20 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_description273, ptr @__UNIQUE_ID_file275, ptr @__UNIQUE_ID_license276, ptr @__UNIQUE_ID_version274, ptr @__exitcall_nfcsim_exit, ptr @__initcall__kmod_nfcsim__272_499_nfcsim_init6, ptr @__modver_attr, ptr @nfcsim_debugfs_init._entry, ptr @nfcsim_debugfs_init._entry_ptr, ptr @nfcsim_debugfs_init_dev._entry, ptr @nfcsim_debugfs_init_dev._entry.33, ptr @nfcsim_debugfs_init_dev._entry.36, ptr @nfcsim_debugfs_init_dev._entry_ptr, ptr @nfcsim_debugfs_init_dev._entry_ptr.35, ptr @nfcsim_debugfs_init_dev._entry_ptr.38, ptr @nfcsim_device_new._entry, ptr @nfcsim_device_new._entry_ptr, ptr @nfcsim_exit, ptr @nfcsim_in_configure_hw._entry, ptr @nfcsim_in_configure_hw._entry_ptr, ptr @nfcsim_init._entry, ptr @nfcsim_init._entry.6, ptr @nfcsim_init._entry_ptr, ptr @nfcsim_init._entry_ptr.8, ptr @nfcsim_recv_wq._entry, ptr @nfcsim_recv_wq._entry_ptr, ptr @nfcsim_send._entry, ptr @nfcsim_send._entry_ptr, ptr @nfcsim_tg_configure_hw._entry, ptr @nfcsim_tg_configure_hw._entry_ptr, ptr @dev0, ptr @dev1, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @nfcsim_debugfs_root, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @nfcsim_link_new.__key, ptr @.str.9, ptr @nfcsim_link_new.__key.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @nfcsim_device_new.__key, ptr @.str.14, ptr @nfcsim_device_new.__key.15, ptr @.str.16, ptr @nfcsim_device_new.__key.17, ptr @.str.18, ptr @nfcsim_digital_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.39], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcsim_debugfs_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcsim_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcsim_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcsim_link_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcsim_link_new.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcsim_debugfs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcsim_device_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcsim_device_new.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcsim_device_new.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcsim_digital_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcsim_device_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcsim_recv_wq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcsim_in_configure_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcsim_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcsim_tg_configure_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcsim_debugfs_init_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcsim_debugfs_init_dev._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfcsim_debugfs_init_dev._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nfcsim_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @dev0, align 4
  %link_in = getelementptr inbounds %struct.nfcsim, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %link_in to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %link_in, align 4
  %link_out = getelementptr inbounds %struct.nfcsim, ptr %0, i32 0, i32 4
  %3 = ptrtoint ptr %link_out to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %link_out, align 4
  tail call fastcc void @nfcsim_device_free(ptr noundef %0)
  %5 = load ptr, ptr @dev1, align 4
  tail call fastcc void @nfcsim_device_free(ptr noundef %5)
  %skb.i = getelementptr inbounds %struct.nfcsim_link, ptr %2, i32 0, i32 4
  %6 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb.i, align 4
  tail call void @consume_skb(ptr noundef %7) #8
  tail call void @kfree(ptr noundef %2) #8
  %skb.i1 = getelementptr inbounds %struct.nfcsim_link, ptr %4, i32 0, i32 4
  %8 = ptrtoint ptr %skb.i1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skb.i1, align 4
  tail call void @consume_skb(ptr noundef %9) #8
  tail call void @kfree(ptr noundef %4) #8
  %10 = load ptr, ptr @nfcsim_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %10) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfcsim_device_free(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void @nfc_digital_unregister_device(ptr noundef %1) #8
  %up = getelementptr inbounds %struct.nfcsim, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %up to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %up, align 4
  %link_in = getelementptr inbounds %struct.nfcsim, ptr %dev, i32 0, i32 3
  %3 = ptrtoint ptr %link_in to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %link_in, align 4
  tail call void @mutex_lock_nested(ptr noundef %4, i32 noundef 0) #8
  %shutdown.i = getelementptr inbounds %struct.nfcsim_link, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %shutdown.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %shutdown.i, align 2
  %mode.i = getelementptr inbounds %struct.nfcsim_link, ptr %4, i32 0, i32 2
  %6 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %mode.i, align 1
  tail call void @mutex_unlock(ptr noundef %4) #8
  %cond.i.i = getelementptr inbounds %struct.nfcsim_link, ptr %4, i32 0, i32 6
  %7 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %cond.i.i, align 4
  %recv_wait.i.i = getelementptr inbounds %struct.nfcsim_link, ptr %4, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %recv_wait.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  %send_work = getelementptr inbounds %struct.nfcsim, ptr %dev, i32 0, i32 2
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %send_work) #8
  %recv_work = getelementptr inbounds %struct.nfcsim, ptr %dev, i32 0, i32 1
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %recv_work) #8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void @nfc_digital_free_device(ptr noundef %9) #8
  tail call void @kfree(ptr noundef %dev) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nfcsim_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nfcsim_link_new()
  %call1 = tail call fastcc ptr @nfcsim_link_new()
  %tobool.not = icmp eq ptr %call, null
  %tobool2.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.do.end16_crit_edge, label %if.end

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.1, ptr noundef null) #8
  store ptr %call.i, ptr @nfcsim_debugfs_root, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.nfcsim_debugfs_init.exit_crit_edge

if.end.nfcsim_debugfs_init.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %nfcsim_debugfs_init.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #11
  br label %nfcsim_debugfs_init.exit

nfcsim_debugfs_init.exit:                         ; preds = %do.end.i, %if.end.nfcsim_debugfs_init.exit_crit_edge
  %call3 = tail call fastcc ptr @nfcsim_device_new(ptr noundef nonnull %call, ptr noundef nonnull %call1)
  store ptr %call3, ptr @dev0, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %nfcsim_debugfs_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call3 to i32
  br label %do.end16

if.end7:                                          ; preds = %nfcsim_debugfs_init.exit
  %call8 = tail call fastcc ptr @nfcsim_device_new(ptr noundef nonnull %call1, ptr noundef nonnull %call)
  store ptr %call8, ptr @dev1, align 4
  %cmp.i36 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36, label %if.then10, label %do.end

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load ptr, ptr @dev0, align 4
  tail call fastcc void @nfcsim_device_free(ptr noundef %1)
  %2 = load ptr, ptr @dev1, align 4
  %3 = ptrtoint ptr %2 to i32
  br label %do.end16

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %cleanup

do.end16:                                         ; preds = %if.then10, %if.then5, %entry.do.end16_crit_edge
  %rc.0 = phi i32 [ %0, %if.then5 ], [ %3, %if.then10 ], [ -12, %entry.do.end16_crit_edge ]
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %rc.0) #11
  br i1 %tobool.not, label %do.end16.if.end21_crit_edge, label %if.then20

do.end16.if.end21_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then20:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #10
  %skb.i = getelementptr inbounds %struct.nfcsim_link, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb.i, align 4
  tail call void @consume_skb(ptr noundef %5) #8
  tail call void @kfree(ptr noundef nonnull %call) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %do.end16.if.end21_crit_edge
  br i1 %tobool2.not, label %if.end21.cleanup_crit_edge, label %if.then23

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %skb.i37 = getelementptr inbounds %struct.nfcsim_link, ptr %call1, i32 0, i32 4
  %6 = ptrtoint ptr %skb.i37 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb.i37, align 4
  tail call void @consume_skb(ptr noundef %7) #8
  tail call void @kfree(ptr noundef nonnull %call1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end21.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %rc.0, %if.then23 ], [ %rc.0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_digital_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_digital_free_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nfcsim_link_new() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 156) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @nfcsim_link_new.__key) #8
  %recv_wait = getelementptr inbounds %struct.nfcsim_link, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %recv_wait, ptr noundef nonnull @.str.11, ptr noundef nonnull @nfcsim_link_new.__key.10) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nfcsim_device_new(ptr noundef %link_in, ptr noundef %link_out) unnamed_addr #2 align 64 {
entry:
  %devname.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 176) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body2:                                         ; preds = %entry
  %send_work = getelementptr inbounds %struct.nfcsim, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %send_work, i32 noundef 0) #8
  %1 = ptrtoint ptr %send_work to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %send_work, align 8
  %lockdep_map = getelementptr inbounds %struct.nfcsim, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.14, ptr noundef nonnull @nfcsim_device_new.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry9 = getelementptr inbounds %struct.nfcsim, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.nfcsim, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry9, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.nfcsim, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @nfcsim_send_wq, ptr %func, align 4
  %timer = getelementptr inbounds %struct.nfcsim, ptr %call7.i.i, i32 0, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.16, ptr noundef nonnull @nfcsim_device_new.__key.15) #8
  %recv_work = getelementptr inbounds %struct.nfcsim, ptr %call7.i.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %recv_work, i32 noundef 0) #8
  %5 = ptrtoint ptr %recv_work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %recv_work, align 4
  %lockdep_map24 = getelementptr inbounds %struct.nfcsim, ptr %call7.i.i, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map24, ptr noundef nonnull @.str.18, ptr noundef nonnull @nfcsim_device_new.__key.17, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry26 = getelementptr inbounds %struct.nfcsim, ptr %call7.i.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %entry26 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry26, ptr %entry26, align 8
  %prev.i77 = getelementptr inbounds %struct.nfcsim, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i77 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry26, ptr %prev.i77, align 4
  %func28 = getelementptr inbounds %struct.nfcsim, ptr %call7.i.i, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %func28 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nfcsim_recv_wq, ptr %func28, align 8
  %call31 = tail call ptr @nfc_digital_allocate_device(ptr noundef nonnull @nfcsim_digital_ops, i32 noundef 32, i32 noundef 3, i32 noundef 0, i32 noundef 0) #8
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call31, ptr %call7.i.i, align 8
  %tobool33.not = icmp eq ptr %call31, null
  br i1 %tobool33.not, label %if.then34, label %if.end36

if.then34:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end36:                                         ; preds = %do.body2
  %driver_data.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %call31, i32 0, i32 6
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  %link_in38 = getelementptr inbounds %struct.nfcsim, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %link_in38 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %link_in, ptr %link_in38, align 4
  %link_out39 = getelementptr inbounds %struct.nfcsim, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %link_out39 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %link_out, ptr %link_out39, align 8
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call7.i.i, align 8
  %call41 = tail call i32 @nfc_digital_register_device(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end50, label %do.end46

do.end46:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call41) #11
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call7.i.i, align 8
  tail call void @nfc_digital_free_device(ptr noundef %16) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %17 = inttoptr i32 %call41 to ptr
  br label %cleanup

if.end50:                                         ; preds = %if.end36
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %devname.i) #8
  %18 = call ptr @memset(ptr %devname.i, i32 255, i32 5)
  %19 = load ptr, ptr @nfcsim_debugfs_root, align 4
  %tobool.not.i = icmp eq ptr %19, null
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call7.i.i, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %dev1.i = getelementptr inbounds %struct.nfc_dev, ptr %23, i32 0, i32 5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #11
  br label %nfcsim_debugfs_init_dev.exit

if.end.i:                                         ; preds = %if.end50
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %devname.i, i32 noundef 5, ptr noundef nonnull @.str.32, i32 noundef %25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp.i = icmp ugt i32 %call.i, 4
  br i1 %cmp.i, label %do.end8.i, label %if.end12.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call7.i.i, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %dev11.i = getelementptr inbounds %struct.nfc_dev, ptr %29, i32 0, i32 5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.31, i32 noundef %25) #11
  br label %nfcsim_debugfs_init_dev.exit

if.end12.i:                                       ; preds = %if.end.i
  %30 = load ptr, ptr @nfcsim_debugfs_root, align 4
  %call14.i = call ptr @debugfs_create_dir(ptr noundef nonnull %devname.i, ptr noundef %30) #8
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %do.end19.i, label %if.end23.i

do.end19.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call7.i.i, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %dev22.i = getelementptr inbounds %struct.nfc_dev, ptr %34, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.31, i32 noundef %25) #11
  br label %nfcsim_debugfs_init_dev.exit

if.end23.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %dropframe.i = getelementptr inbounds %struct.nfcsim, ptr %call7.i.i, i32 0, i32 11
  call void @debugfs_create_u8(ptr noundef nonnull @.str.39, i16 noundef zeroext 436, ptr noundef nonnull %call14.i, ptr noundef %dropframe.i) #8
  br label %nfcsim_debugfs_init_dev.exit

nfcsim_debugfs_init_dev.exit:                     ; preds = %if.end23.i, %do.end19.i, %do.end8.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %devname.i) #8
  br label %cleanup

cleanup:                                          ; preds = %nfcsim_debugfs_init_dev.exit, %do.end46, %if.then34, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %17, %do.end46 ], [ %call7.i.i, %nfcsim_debugfs_init_dev.exit ], [ inttoptr (i32 -12 to ptr), %if.then34 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfcsim_send_wq(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %link_out = getelementptr i8, ptr %work, i32 104
  %0 = ptrtoint ptr %link_out to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link_out, align 4
  %cond.i = getelementptr inbounds %struct.nfcsim_link, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %cond.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %cond.i, align 4
  %recv_wait.i = getelementptr inbounds %struct.nfcsim_link, ptr %1, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %recv_wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfcsim_recv_wq(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %link_in = getelementptr i8, ptr %work, i32 144
  %0 = ptrtoint ptr %link_in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link_in, align 4
  %recv_timeout = getelementptr i8, ptr %work, i32 156
  %2 = ptrtoint ptr %recv_timeout to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %recv_timeout, align 4
  %conv = zext i16 %3 to i32
  %rf_tech = getelementptr i8, ptr %work, i32 154
  %4 = ptrtoint ptr %rf_tech to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rf_tech, align 2
  %mode = getelementptr i8, ptr %work, i32 153
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mode, align 1
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 135) #8
  %cond.i = getelementptr inbounds %struct.nfcsim_link, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %cond.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cond.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool5.not.i = icmp eq i32 %call2.i.i, 0
  %spec.store.select.i = select i1 %tobool5.not.i, i32 1, i32 %call2.i.i
  %__ret.0.i = select i1 %tobool.not.i, i32 %call2.i.i, i32 %spec.store.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0.i)
  %tobool7.not.i = icmp eq i32 %__ret.0.i, 0
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %10 = select i1 %not.tobool.not.i, i1 true, i1 %tobool7.not.i
  br i1 %10, label %entry.if.end38.i_crit_edge, label %if.then9.i

entry.if.end38.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

if.then9.i:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  %11 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  %call2.i97.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv) #8
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #8
  %recv_wait.i = getelementptr inbounds %struct.nfcsim_link, ptr %1, i32 0, i32 5
  %call12114.i = call i32 @prepare_to_wait_event(ptr noundef %recv_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #8
  %12 = ptrtoint ptr %cond.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cond.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool15.not115.i = icmp eq i8 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i97.i)
  %tobool19.not116.i = icmp eq i32 %call2.i97.i, 0
  %spec.store.select69117.i = select i1 %tobool19.not116.i, i32 1, i32 %call2.i97.i
  %__ret10.1118.i = select i1 %tobool15.not115.i, i32 %call2.i97.i, i32 %spec.store.select69117.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.1118.i)
  %tobool25.not119.i = icmp eq i32 %__ret10.1118.i, 0
  %not.tobool15.not120.i = xor i1 %tobool15.not115.i, true
  %14 = select i1 %not.tobool15.not120.i, i1 true, i1 %tobool25.not119.i
  br i1 %14, label %if.then9.i.for.end.i_crit_edge, label %if.then9.i.if.end31.i_crit_edge

if.then9.i.if.end31.i_crit_edge:                  ; preds = %if.then9.i
  br label %if.end31.i

if.then9.i.for.end.i_crit_edge:                   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end31.i:                                       ; preds = %cleanup.i.if.end31.i_crit_edge, %if.then9.i.if.end31.i_crit_edge
  %__ret10.1122.i = phi i32 [ %__ret10.1.i, %cleanup.i.if.end31.i_crit_edge ], [ %__ret10.1118.i, %if.then9.i.if.end31.i_crit_edge ]
  %call12121.i = phi i32 [ %call12.i, %cleanup.i.if.end31.i_crit_edge ], [ %call12114.i, %if.then9.i.if.end31.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12121.i)
  %tobool32.not.i = icmp eq i32 %call12121.i, 0
  br i1 %tobool32.not.i, label %cleanup.i, label %if.end31.i.__out.i_crit_edge

if.end31.i.__out.i_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__out.i

cleanup.i:                                        ; preds = %if.end31.i
  %call35.i = call i32 @schedule_timeout(i32 noundef %__ret10.1122.i) #8
  %call12.i = call i32 @prepare_to_wait_event(ptr noundef %recv_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #8
  %15 = ptrtoint ptr %cond.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cond.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool15.not.i = icmp eq i8 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool19.not.i = icmp eq i32 %call35.i, 0
  %spec.store.select69.i = select i1 %tobool19.not.i, i32 1, i32 %call35.i
  %__ret10.1.i = select i1 %tobool15.not.i, i32 %call35.i, i32 %spec.store.select69.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.1.i)
  %tobool25.not.i = icmp eq i32 %__ret10.1.i, 0
  %not.tobool15.not.i = xor i1 %tobool15.not.i, true
  %17 = select i1 %not.tobool15.not.i, i1 true, i1 %tobool25.not.i
  br i1 %17, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.if.end31.i_crit_edge

cleanup.i.if.end31.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then9.i.for.end.i_crit_edge
  %__ret10.1.lcssa.i = phi i32 [ %__ret10.1118.i, %if.then9.i.for.end.i_crit_edge ], [ %__ret10.1.i, %cleanup.i.for.end.i_crit_edge ]
  call void @finish_wait(ptr noundef %recv_wait.i, ptr noundef nonnull %__wq_entry.i) #8
  br label %__out.i

__out.i:                                          ; preds = %for.end.i, %if.end31.i.__out.i_crit_edge
  %__ret10.2103.i = phi i32 [ %__ret10.1.lcssa.i, %for.end.i ], [ %call12121.i, %if.end31.i.__out.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #8
  br label %if.end38.i

if.end38.i:                                       ; preds = %__out.i, %entry.if.end38.i_crit_edge
  %__ret.1.i = phi i32 [ %__ret.0.i, %entry.if.end38.i_crit_edge ], [ %__ret10.2103.i, %__out.i ]
  call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #8
  %skb40.i = getelementptr inbounds %struct.nfcsim_link, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %skb40.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %skb40.i, align 4
  store ptr null, ptr %skb40.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1.i)
  %tobool42.not.i = icmp eq i32 %__ret.1.i, 0
  br i1 %tobool42.not.i, label %if.end38.i.done.thread.i_crit_edge, label %if.end44.i

if.end38.i.done.thread.i_crit_edge:               ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.thread.i

if.end44.i:                                       ; preds = %if.end38.i
  %tobool45.not.i = icmp eq ptr %19, null
  br i1 %tobool45.not.i, label %if.end44.i.done.thread.i_crit_edge, label %lor.lhs.false.i

if.end44.i.done.thread.i_crit_edge:               ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.thread.i

lor.lhs.false.i:                                  ; preds = %if.end44.i
  %rf_tech46.i = getelementptr inbounds %struct.nfcsim_link, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %rf_tech46.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rf_tech46.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %5)
  %cmp.not.i = icmp eq i8 %21, %5
  br i1 %cmp.not.i, label %lor.lhs.false49.i, label %lor.lhs.false.i.done.thread.i_crit_edge

lor.lhs.false.i.done.thread.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.thread.i

lor.lhs.false49.i:                                ; preds = %lor.lhs.false.i
  %mode50.i = getelementptr inbounds %struct.nfcsim_link, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %mode50.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mode50.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %7)
  %cmp53.i = icmp eq i8 %23, %7
  br i1 %cmp53.i, label %lor.lhs.false49.i.done.thread.i_crit_edge, label %if.end56.i

lor.lhs.false49.i.done.thread.i_crit_edge:        ; preds = %lor.lhs.false49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.thread.i

if.end56.i:                                       ; preds = %lor.lhs.false49.i
  %shutdown.i = getelementptr inbounds %struct.nfcsim_link, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %shutdown.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %shutdown.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool57.not.i = icmp eq i8 %25, 0
  br i1 %tobool57.not.i, label %done.i, label %if.end56.i.done.thread.i_crit_edge

if.end56.i.done.thread.i_crit_edge:               ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.thread.i

done.thread.i:                                    ; preds = %if.end56.i.done.thread.i_crit_edge, %lor.lhs.false49.i.done.thread.i_crit_edge, %lor.lhs.false.i.done.thread.i_crit_edge, %if.end44.i.done.thread.i_crit_edge, %if.end38.i.done.thread.i_crit_edge
  %rc.0.ph.i = phi i32 [ -19, %if.end56.i.done.thread.i_crit_edge ], [ -22, %if.end44.i.done.thread.i_crit_edge ], [ -22, %lor.lhs.false.i.done.thread.i_crit_edge ], [ -22, %lor.lhs.false49.i.done.thread.i_crit_edge ], [ -110, %if.end38.i.done.thread.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %1) #8
  br label %if.then63.i

done.i:                                           ; preds = %if.end56.i
  call void @mutex_unlock(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1.i)
  %cmp61.i = icmp slt i32 %__ret.1.i, 0
  br i1 %cmp61.i, label %done.i.if.then63.i_crit_edge, label %done.i.nfcsim_link_recv_skb.exit_crit_edge

done.i.nfcsim_link_recv_skb.exit_crit_edge:       ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nfcsim_link_recv_skb.exit

done.i.if.then63.i_crit_edge:                     ; preds = %done.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then63.i

if.then63.i:                                      ; preds = %done.i.if.then63.i_crit_edge, %done.thread.i
  %rc.0110.i = phi i32 [ %rc.0.ph.i, %done.thread.i ], [ %__ret.1.i, %done.i.if.then63.i_crit_edge ]
  call void @consume_skb(ptr noundef %19) #8
  %26 = inttoptr i32 %rc.0110.i to ptr
  br label %nfcsim_link_recv_skb.exit

nfcsim_link_recv_skb.exit:                        ; preds = %if.then63.i, %done.i.nfcsim_link_recv_skb.exit_crit_edge
  %skb.0.i = phi ptr [ %26, %if.then63.i ], [ %19, %done.i.nfcsim_link_recv_skb.exit_crit_edge ]
  %27 = ptrtoint ptr %cond.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %cond.i, align 4
  %up = getelementptr i8, ptr %work, i32 152
  %28 = ptrtoint ptr %up to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %up, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not = icmp eq i8 %29, 0
  br i1 %tobool.not, label %do.end, label %if.end4

do.end:                                           ; preds = %nfcsim_link_recv_skb.exit
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %dev1 = getelementptr inbounds %struct.nfc_dev, ptr %33, i32 0, i32 5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #11
  %cmp.i = icmp ugt ptr %skb.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end.cleanup_crit_edge, label %if.then3

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @consume_skb(ptr noundef %skb.0.i) #8
  br label %cleanup

if.end4:                                          ; preds = %nfcsim_link_recv_skb.exit
  call void @__sanitizer_cov_trace_pc() #10
  %cb = getelementptr i8, ptr %work, i32 160
  %34 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cb, align 4
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr, align 4
  %arg = getelementptr i8, ptr %work, i32 164
  %38 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arg, align 4
  call void %35(ptr noundef %37, ptr noundef %39, ptr noundef %skb.0.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_digital_allocate_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_digital_register_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfcsim_in_configure_hw(ptr nocapture noundef readonly %ddev, i32 noundef %type, i32 noundef %param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %up = getelementptr inbounds %struct.nfcsim, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %up to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %up, align 4
  %mode = getelementptr inbounds %struct.nfcsim, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %mode, align 1
  %conv = trunc i32 %param to i8
  %rf_tech = getelementptr inbounds %struct.nfcsim, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %rf_tech to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %rf_tech, align 2
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %dev1 = getelementptr inbounds %struct.nfc_dev, ptr %9, i32 0, i32 5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef %type) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfcsim_in_send_cmd(ptr nocapture noundef readonly %ddev, ptr noundef %skb, i16 noundef zeroext %timeout, ptr noundef %cb, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @nfcsim_send(ptr noundef %ddev, ptr noundef %skb, i16 noundef zeroext %timeout, ptr noundef %cb, ptr noundef %arg)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfcsim_tg_configure_hw(ptr nocapture noundef readonly %ddev, i32 noundef %type, i32 noundef %param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %type, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %up = getelementptr inbounds %struct.nfcsim, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %up to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %up, align 4
  %mode = getelementptr inbounds %struct.nfcsim, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %mode, align 1
  %conv = trunc i32 %param to i8
  %rf_tech = getelementptr inbounds %struct.nfcsim, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %rf_tech to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %rf_tech, align 2
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %dev1 = getelementptr inbounds %struct.nfc_dev, ptr %9, i32 0, i32 5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.29, i32 noundef %type) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfcsim_tg_send_cmd(ptr nocapture noundef readonly %ddev, ptr noundef %skb, i16 noundef zeroext %timeout, ptr noundef %cb, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @nfcsim_send(ptr noundef %ddev, ptr noundef %skb, i16 noundef zeroext %timeout, ptr noundef %cb, ptr noundef %arg)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfcsim_tg_listen(ptr nocapture noundef readonly %ddev, i16 noundef zeroext %timeout, ptr noundef %cb, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @nfcsim_send(ptr noundef %ddev, ptr noundef null, i16 noundef zeroext %timeout, ptr noundef %cb, ptr noundef %arg)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nfcsim_switch_rf(ptr nocapture noundef readonly %ddev, i1 noundef zeroext %on) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %on to i8
  %driver_data.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %up = getelementptr inbounds %struct.nfcsim, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %up to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %up, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfcsim_abort_cmd(ptr nocapture noundef readonly %ddev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %link_in = getelementptr inbounds %struct.nfcsim, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %link_in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link_in, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #8
  %mode.i = getelementptr inbounds %struct.nfcsim_link, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %mode.i, align 1
  tail call void @mutex_unlock(ptr noundef %3) #8
  %cond.i.i = getelementptr inbounds %struct.nfcsim_link, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %cond.i.i, align 4
  %recv_wait.i.i = getelementptr inbounds %struct.nfcsim_link, ptr %3, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %recv_wait.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfcsim_send(ptr nocapture noundef readonly %ddev, ptr noundef %skb, i16 noundef zeroext %timeout, ptr noundef %cb, ptr noundef %arg) unnamed_addr #2 align 64 {
entry:
  %delay = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %delay) #8
  %2 = ptrtoint ptr %delay to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %delay, align 1, !annotation !107
  %up = getelementptr inbounds %struct.nfcsim, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %up to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %up, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %dev1 = getelementptr inbounds %struct.nfc_dev, ptr %8, i32 0, i32 5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.27) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %recv_timeout = getelementptr inbounds %struct.nfcsim, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %recv_timeout to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %timeout, ptr %recv_timeout, align 4
  %cb2 = getelementptr inbounds %struct.nfcsim, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %cb2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cb, ptr %cb2, align 4
  %arg3 = getelementptr inbounds %struct.nfcsim, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %arg3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arg, ptr %arg3, align 4
  %recv_work = getelementptr inbounds %struct.nfcsim, ptr %1, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %recv_work) #8
  %dropframe = getelementptr inbounds %struct.nfcsim, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %dropframe to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dropframe, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool5.not = icmp eq i8 %14, 0
  br i1 %tobool5.not, label %if.end21, label %do.body7

do.body7:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfcsim_send.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfcsim_send, %if.then12)) #8
          to label %do.end19 [label %if.then12], !srcloc !108

if.then12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %dev15 = getelementptr inbounds %struct.nfc_dev, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %dropframe to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dropframe, align 4
  %conv = zext i8 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nfcsim_send.__UNIQUE_ID_ddebug271, ptr noundef %dev15, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef %conv) #8
  br label %do.end19

do.end19:                                         ; preds = %if.then12, %do.body7
  tail call void @consume_skb(ptr noundef %skb) #8
  %21 = ptrtoint ptr %dropframe to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dropframe, align 4
  %dec = add i8 %22, -1
  store i8 %dec, ptr %dropframe, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %tobool22.not = icmp eq ptr %skb, null
  br i1 %tobool22.not, label %if.end21.cleanup_crit_edge, label %if.then23

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %link_out = getelementptr inbounds %struct.nfcsim, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %link_out to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %link_out, align 4
  %rf_tech = getelementptr inbounds %struct.nfcsim, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %rf_tech to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rf_tech, align 2
  %mode = getelementptr inbounds %struct.nfcsim, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %mode, align 1
  tail call void @mutex_lock_nested(ptr noundef %24, i32 noundef 0) #8
  %skb1.i = getelementptr inbounds %struct.nfcsim_link, ptr %24, i32 0, i32 4
  %29 = ptrtoint ptr %skb1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %skb1.i, align 4
  tail call void @consume_skb(ptr noundef %30) #8
  %31 = ptrtoint ptr %skb1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %skb, ptr %skb1.i, align 4
  %rf_tech3.i = getelementptr inbounds %struct.nfcsim_link, ptr %24, i32 0, i32 1
  %32 = ptrtoint ptr %rf_tech3.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %26, ptr %rf_tech3.i, align 4
  %mode4.i = getelementptr inbounds %struct.nfcsim_link, ptr %24, i32 0, i32 2
  %33 = ptrtoint ptr %mode4.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %28, ptr %mode4.i, align 1
  tail call void @mutex_unlock(ptr noundef %24) #8
  call void @get_random_bytes(ptr noundef nonnull %delay, i32 noundef 1) #8
  %34 = ptrtoint ptr %delay to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %delay, align 1
  %36 = and i8 %35, 7
  %narrow = add nuw nsw i8 %36, 3
  store i8 %narrow, ptr %delay, align 1
  %send_work = getelementptr inbounds %struct.nfcsim, ptr %1, i32 0, i32 2
  %conv26 = zext i8 %narrow to i32
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %conv26) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %37 = load ptr, ptr @system_wq, align 4
  %call.i.i47 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %37, ptr noundef %send_work, i32 noundef %call2.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end21.cleanup_crit_edge, %do.end19, %do.end
  %retval.0 = phi i32 [ 0, %do.end19 ], [ -19, %do.end ], [ 0, %if.then23 ], [ 0, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %delay) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u8(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !17, !19, !21, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !61, !62, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !89, !90, !91, !93, !94, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__initcall__kmod_nfcsim__272_499_nfcsim_init6, !1, !"__initcall__kmod_nfcsim__272_499_nfcsim_init6", i1 false, i1 false}
!1 = !{!"../drivers/nfc/nfcsim.c", i32 499, i32 1}
!2 = !{ptr @__exitcall_nfcsim_exit, !3, !"__exitcall_nfcsim_exit", i1 false, i1 false}
!3 = !{!"../drivers/nfc/nfcsim.c", i32 500, i32 1}
!4 = !{ptr @__UNIQUE_ID_description273, !5, !"__UNIQUE_ID_description273", i1 false, i1 false}
!5 = !{!"../drivers/nfc/nfcsim.c", i32 502, i32 1}
!6 = !{ptr @__UNIQUE_ID_version274, !7, !"__UNIQUE_ID_version274", i1 false, i1 false}
!7 = !{!"../drivers/nfc/nfcsim.c", i32 503, i32 1}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__modver_attr, !7, !"__modver_attr", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_file275, !13, !"__UNIQUE_ID_file275", i1 false, i1 false}
!13 = !{!"../drivers/nfc/nfcsim.c", i32 504, i32 1}
!14 = !{ptr @__UNIQUE_ID_license276, !13, !"__UNIQUE_ID_license276", i1 false, i1 false}
!15 = !{ptr @dev0, !16, !"dev0", i1 false, i1 false}
!16 = !{!"../drivers/nfc/nfcsim.c", i32 437, i32 23}
!17 = !{ptr @dev1, !18, !"dev1", i1 false, i1 false}
!18 = !{!"../drivers/nfc/nfcsim.c", i32 438, i32 23}
!19 = !{ptr @nfcsim_debugfs_root, !20, !"nfcsim_debugfs_root", i1 false, i1 false}
!20 = !{!"../drivers/nfc/nfcsim.c", i32 334, i32 23}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/nfc/nfcsim.c", i32 468, i32 2}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @nfcsim_init._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @nfcsim_init._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/nfc/nfcsim.c", i32 473, i32 2}
!29 = !{ptr @nfcsim_init._entry.6, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @nfcsim_init._entry_ptr.8, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @nfcsim_link_new.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/nfc/nfcsim.c", i32 73, i32 2}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @nfcsim_link_new.__key.10, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/nfc/nfcsim.c", i32 74, i32 2}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/nfc/nfcsim.c", i32 341, i32 3}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @nfcsim_debugfs_init._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @nfcsim_debugfs_init._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @nfcsim_device_new.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/nfc/nfcsim.c", i32 389, i32 2}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @nfcsim_device_new.__key.15, !43, !"__key", i1 false, i1 false}
!46 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @nfcsim_device_new.__key.17, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/nfc/nfcsim.c", i32 390, i32 2}
!49 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/nfc/nfcsim.c", i32 409, i32 3}
!52 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @nfcsim_device_new._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @nfcsim_device_new._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/nfc/nfcsim.c", i32 191, i32 3}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @nfcsim_recv_wq._entry, !56, !"_entry", i1 false, i1 false}
!61 = !{ptr @nfcsim_recv_wq._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @nfcsim_digital_ops, !63, !"nfcsim_digital_ops", i1 false, i1 false}
!63 = !{!"../drivers/nfc/nfcsim.c", i32 322, i32 37}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/nfc/nfcsim.c", i32 272, i32 3}
!66 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @nfcsim_in_configure_hw._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @nfcsim_in_configure_hw._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/nfc/nfcsim.c", i32 208, i32 3}
!71 = !{ptr @nfcsim_send._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @nfcsim_send._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/nfc/nfcsim.c", i32 219, i32 3}
!75 = !{ptr @nfcsim_send.__UNIQUE_ID_ddebug271, !74, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/nfc/nfcsim.c", i32 302, i32 3}
!78 = !{ptr @nfcsim_tg_configure_hw._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @nfcsim_tg_configure_hw._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/nfc/nfcsim.c", i32 358, i32 3}
!82 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @nfcsim_debugfs_init_dev._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @nfcsim_debugfs_init_dev._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/nfc/nfcsim.c", i32 363, i32 41}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/nfc/nfcsim.c", i32 365, i32 3}
!89 = !{ptr @nfcsim_debugfs_init_dev._entry.33, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @nfcsim_debugfs_init_dev._entry_ptr.35, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/nfc/nfcsim.c", i32 371, i32 3}
!93 = !{ptr @nfcsim_debugfs_init_dev._entry.36, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @nfcsim_debugfs_init_dev._entry_ptr.38, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/nfc/nfcsim.c", i32 376, i32 20}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i8 0, i8 2}
!107 = !{!"auto-init"}
!108 = !{i64 2148285667, i64 2148285672, i64 2148285685, i64 2148285729, i64 2148285763, i64 2148285784}
