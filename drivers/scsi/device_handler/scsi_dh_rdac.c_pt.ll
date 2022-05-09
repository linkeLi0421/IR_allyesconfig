; ModuleID = '/llk/IR_all_yes/drivers/scsi/device_handler/scsi_dh_rdac.c_pt.bc'
source_filename = "../drivers/scsi/device_handler/scsi_dh_rdac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.scsi_device_handler = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.execute_work = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rdac_dh_data = type { %struct.list_head, ptr, ptr, i32, i8, i8, i8, i8, %union.anon.84 }
%union.anon.84 = type { %struct.c2_inquiry }
%struct.c2_inquiry = type { i8, i8, i8, i8, [4 x i8], [3 x i8], [3 x i8], i8, i8, [239 x i8] }
%struct.rdac_controller = type { [16 x i8], i32, %struct.kref, %struct.list_head, %union.anon.83, i8, [31 x i8], ptr, %struct.spinlock, i32, %struct.work_struct, ptr, %struct.list_head, %struct.list_head }
%union.anon.83 = type { %struct.rdac_pg_expanded }
%struct.rdac_pg_expanded = type { %struct.rdac_mode_10_hdr, i8, i8, [2 x i8], %struct.rdac_mode_common, [256 x i8], i8, i8 }
%struct.rdac_mode_10_hdr = type { i16, i8, i8, i16, i16 }
%struct.rdac_mode_common = type { [16 x i8], [16 x i8], [2 x i8], [2 x i8], i8, i8 }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.rdac_queue_data = type { %struct.list_head, ptr, ptr, ptr }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.38, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.39, %union.anon.40, %union.anon.41, %union.anon.46, ptr, ptr }
%union.anon.38 = type { %struct.list_head }
%union.anon.39 = type { %struct.hlist_node }
%union.anon.40 = type { %struct.rb_node }
%union.anon.41 = type { %struct.anon.45 }
%struct.anon.45 = type { i32, %struct.list_head, ptr }
%union.anon.46 = type { i64, [8 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__param_str_rdac_logging = internal constant [26 x i8] c"scsi_dh_rdac.rdac_logging\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@rdac_logging = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_rdac_logging = internal constant %struct.kernel_param { ptr @__param_str_rdac_logging, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @rdac_logging } }, section "__param", align 4
@__UNIQUE_ID_rdac_loggingtype281 = internal constant [39 x i8] c"scsi_dh_rdac.parmtype=rdac_logging:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rdac_logging282 = internal constant [144 x i8] c"scsi_dh_rdac.parm=rdac_logging:A bit mask of rdac logging levels, Default is 1 - failover logging enabled, set it to 0xF to enable all the logs\00", section ".modinfo", align 1
@kmpath_rdacd = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rdac_dh = internal global { %struct.scsi_device_handler, [52 x i8] } { %struct.scsi_device_handler { %struct.list_head zeroinitializer, ptr null, ptr @.str.3, ptr @rdac_check_sense, ptr @rdac_bus_attach, ptr @rdac_bus_detach, ptr @rdac_activate, ptr @rdac_prep_fn, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_scsi_dh_rdac__286_829_rdac_init6 = internal global ptr @rdac_init, section ".initcall6.init", align 4
@__exitcall_rdac_exit = internal global ptr @rdac_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description287 = internal constant [75 x i8] c"scsi_dh_rdac.description=Multipath LSI/Engenio/NetApp E-Series RDAC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author288 = internal constant [55 x i8] c"scsi_dh_rdac.author=Mike Christie, Chandra Seetharaman\00", section ".modinfo", align 1
@__UNIQUE_ID_version289 = internal constant [37 x i8] c"scsi_dh_rdac.version=01.00.0000.0000\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scsi_dh_rdac\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"01.00.0000.0000\00", [16 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file290 = internal constant [59 x i8] c"scsi_dh_rdac.file=drivers/scsi/device_handler/scsi_dh_rdac\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [25 x i8] c"scsi_dh_rdac.license=GPL\00", section ".modinfo", align 1
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rdac\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"rdac: array %s, ctlr %d, I/O returned with sense %02x/%02x/%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: LUN %d (%s) (%s)\0A\00", [42 x i8] zeroinitializer }, align 32
@mode = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23], [20 x i8] zeroinitializer }, align 32
@lun_state = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.24, ptr @.str.25], [24 x i8] zeroinitializer }, align 32
@list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ctlr_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ctlr_list, ptr @ctlr_list }, [24 x i8] zeroinitializer }, align 32
@get_controller.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ctlr->ms_lock\00", [17 x i8] zeroinitializer }, align 32
@get_controller.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&ctlr->ms_work)\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"rdac: array %s, ctlr %d, %s MODE_SELECT command\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"queueing\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"retrying\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"rdac: array %s, ctlr %d, MODE_SELECT completed\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"rdac: array %s, ctlr %d, MODE_SELECT returned with sense %02x/%02x/%02x\0A\00", [55 x i8] zeroinitializer }, align 32
@check_ownership.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/scsi/device_handler/scsi_dh_rdac.c\00", [53 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RDAC\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AVT\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IOSHIP\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unowned\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"owned\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"list_lock\00", [22 x i8] zeroinitializer }, align 32
@rdac_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.16, i32 805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Failed to register scsi device handler.\00", [54 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rdac_init\00", [22 x i8] zeroinitializer }, align 32
@rdac_init._entry_ptr = internal global ptr @rdac_init._entry, section ".printk_index", align 4
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kmpath_rdacd\00", [19 x i8] zeroinitializer }, align 32
@rdac_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.28, ptr @.str.16, i32 815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013kmpath_rdacd creation failed.\0A\00", [63 x i8] zeroinitializer }, align 32
@rdac_init._entry_ptr.33 = internal global ptr @rdac_init._entry.31, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 161]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 8, i64 41, i64 139]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.37 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 2, i64 5, i64 6, i64 11]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 11]
@___asan_gen_.39 = private unnamed_addr constant [13 x i8] c"rdac_logging\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 244, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant [13 x i8] c"kmpath_rdacd\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 236, i32 33 }
@___asan_gen_.45 = private unnamed_addr constant [8 x i8] c"rdac_dh\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 789, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 834, i32 1 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 790, i32 10 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 664, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 753, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 216, i32 20 }
@___asan_gen_.75 = private unnamed_addr constant [10 x i8] c"lun_state\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 221, i32 20 }
@___asan_gen_.78 = private unnamed_addr constant [10 x i8] c"list_lock\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [10 x i8] c"ctlr_list\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 234, i32 8 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 353, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 354, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 553, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 569, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 518, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 425, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 695, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 723, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 217, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 218, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 219, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 223, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 224, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 235, i32 8 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 805, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 812, i32 17 }
@___asan_gen_.159 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private constant [46 x i8] c"../drivers/scsi/device_handler/scsi_dh_rdac.c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 815, i32 3 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author288, ptr @__UNIQUE_ID_description287, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__UNIQUE_ID_rdac_logging282, ptr @__UNIQUE_ID_rdac_loggingtype281, ptr @__UNIQUE_ID_version289, ptr @__exitcall_rdac_exit, ptr @__initcall__kmod_scsi_dh_rdac__286_829_rdac_init6, ptr @__modver_attr, ptr @__param_rdac_logging, ptr @rdac_exit, ptr @rdac_init._entry, ptr @rdac_init._entry.31, ptr @rdac_init._entry_ptr, ptr @rdac_init._entry_ptr.33, ptr @rdac_logging, ptr @kmpath_rdacd, ptr @rdac_dh, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @mode, ptr @lun_state, ptr @list_lock, ptr @ctlr_list, ptr @get_controller.__key, ptr @.str.8, ptr @get_controller.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdac_logging to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kmpath_rdacd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdac_dh to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lun_state to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctlr_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_controller.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_controller.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdac_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdac_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rdac_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load ptr, ptr @kmpath_rdacd, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #11
  %call = tail call i32 @scsi_unregister_device_handler(ptr noundef nonnull @rdac_dh) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_unregister_device_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rdac_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @scsi_register_device_handler(ptr noundef nonnull @rdac_dh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.done.sink.split_crit_edge

entry.done.sink.split_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %done.sink.split

if.end:                                           ; preds = %entry
  %call2 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.29, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.30) #11
  store ptr %call2, ptr @kmpath_rdacd, align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then3, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 @scsi_unregister_device_handler(ptr noundef nonnull @rdac_dh) #11
  br label %done.sink.split

done.sink.split:                                  ; preds = %if.then3, %entry.done.sink.split_crit_edge
  %.str.32.sink = phi ptr [ @.str.32, %if.then3 ], [ @.str.27, %entry.done.sink.split_crit_edge ]
  %r.0.ph = phi i32 [ -22, %if.then3 ], [ %call, %entry.done.sink.split_crit_edge ]
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.32.sink) #14
  br label %done

done:                                             ; preds = %done.sink.split, %if.end.done_crit_edge
  %r.0 = phi i32 [ 0, %if.end.done_crit_edge ], [ %r.0.ph, %done.sink.split ]
  ret i32 %r.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdac_check_sense(ptr noundef %sdev, ptr nocapture noundef readonly %sense_hdr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 60
  %0 = ptrtoint ptr %handler_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data, align 4
  %2 = load i32, ptr @rdac_logging, align 4
  %3 = and i32 %2, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then, !prof !103

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ctlr = getelementptr inbounds %struct.rdac_dh_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctlr, align 4
  %array_name = getelementptr inbounds %struct.rdac_controller, ptr %5, i32 0, i32 6
  %index = getelementptr inbounds %struct.rdac_controller, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %index, align 4
  %conv = zext i8 %7 to i32
  %sense_key = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr, i32 0, i32 1
  %8 = ptrtoint ptr %sense_key to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sense_key, align 1
  %conv4 = zext i8 %9 to i32
  %asc = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr, i32 0, i32 2
  %10 = ptrtoint ptr %asc to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %asc, align 1
  %conv5 = zext i8 %11 to i32
  %ascq = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr, i32 0, i32 3
  %12 = ptrtoint ptr %ascq to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ascq, align 1
  %conv6 = zext i8 %13 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.4, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef %array_name, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %conv6) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %sense_key7 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr, i32 0, i32 1
  %14 = ptrtoint ptr %sense_key7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sense_key7, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i8 %15, label %do.end.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 5, label %sw.bb51
    i8 6, label %sw.bb63
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  %asc9 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr, i32 0, i32 2
  %17 = ptrtoint ptr %asc9 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %asc9, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %18, label %sw.bb.sw.epilog_crit_edge [
    i8 4, label %land.lhs.true
    i8 -95, label %land.lhs.true44
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %ascq12 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr, i32 0, i32 3
  %20 = ptrtoint ptr %ascq12 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ascq12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp14 = icmp eq i8 %21, 1
  br i1 %cmp14, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true22

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true22:                                  ; preds = %land.lhs.true
  %22 = ptrtoint ptr %ascq12 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ascq12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %23)
  %cmp25 = icmp eq i8 %23, -127
  br i1 %cmp25, label %land.lhs.true22.cleanup_crit_edge, label %land.lhs.true33

land.lhs.true22.cleanup_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true33:                                  ; preds = %land.lhs.true22
  %24 = ptrtoint ptr %ascq12 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ascq12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %25)
  %cmp36 = icmp eq i8 %25, -95
  br i1 %cmp36, label %land.lhs.true33.cleanup_crit_edge, label %land.lhs.true33.sw.epilog_crit_edge

land.lhs.true33.sw.epilog_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true33.cleanup_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true44:                                  ; preds = %sw.bb
  %ascq45 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr, i32 0, i32 3
  %26 = ptrtoint ptr %ascq45 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ascq45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp47 = icmp eq i8 %27, 2
  br i1 %cmp47, label %land.lhs.true44.cleanup_crit_edge, label %land.lhs.true44.sw.epilog_crit_edge

land.lhs.true44.sw.epilog_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true44.cleanup_crit_edge:                ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb51:                                          ; preds = %do.end
  %asc52 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr, i32 0, i32 2
  %28 = ptrtoint ptr %asc52 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %asc52, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -108, i8 %29)
  %cmp54 = icmp eq i8 %29, -108
  br i1 %cmp54, label %land.lhs.true56, label %sw.bb51.sw.epilog_crit_edge

sw.bb51.sw.epilog_crit_edge:                      ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true56:                                  ; preds = %sw.bb51
  %ascq57 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr, i32 0, i32 3
  %30 = ptrtoint ptr %ascq57 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ascq57, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp59 = icmp eq i8 %31, 1
  br i1 %cmp59, label %if.then61, label %land.lhs.true56.sw.epilog_crit_edge

land.lhs.true56.sw.epilog_crit_edge:              ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then61:                                        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #13
  %state = getelementptr inbounds %struct.rdac_dh_data, ptr %1, i32 0, i32 5
  %32 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %state, align 1
  br label %cleanup

sw.bb63:                                          ; preds = %do.end
  %asc64 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr, i32 0, i32 2
  %33 = ptrtoint ptr %asc64 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %asc64, align 1
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %34, label %sw.bb63.sw.epilog_crit_edge [
    i8 41, label %land.lhs.true68
    i8 -117, label %land.lhs.true79
  ]

sw.bb63.sw.epilog_crit_edge:                      ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true68:                                  ; preds = %sw.bb63
  %ascq69 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr, i32 0, i32 3
  %36 = ptrtoint ptr %ascq69 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ascq69, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp71 = icmp eq i8 %37, 0
  br i1 %cmp71, label %land.lhs.true68.cleanup_crit_edge, label %land.lhs.true68.sw.epilog_crit_edge

land.lhs.true68.sw.epilog_crit_edge:              ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true68.cleanup_crit_edge:                ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true79:                                  ; preds = %sw.bb63
  %ascq80 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr, i32 0, i32 3
  %38 = ptrtoint ptr %ascq80 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ascq80, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %39)
  %cmp82 = icmp eq i8 %39, 2
  br i1 %cmp82, label %land.lhs.true79.cleanup_crit_edge, label %land.lhs.true79.sw.epilog_crit_edge

land.lhs.true79.sw.epilog_crit_edge:              ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

land.lhs.true79.cleanup_crit_edge:                ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.epilog:                                        ; preds = %land.lhs.true79.sw.epilog_crit_edge, %land.lhs.true68.sw.epilog_crit_edge, %sw.bb63.sw.epilog_crit_edge, %land.lhs.true56.sw.epilog_crit_edge, %sw.bb51.sw.epilog_crit_edge, %land.lhs.true44.sw.epilog_crit_edge, %land.lhs.true33.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %land.lhs.true79.cleanup_crit_edge, %land.lhs.true68.cleanup_crit_edge, %if.then61, %land.lhs.true44.cleanup_crit_edge, %land.lhs.true33.cleanup_crit_edge, %land.lhs.true22.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 8200, %sw.epilog ], [ 8194, %if.then61 ], [ 8198, %land.lhs.true.cleanup_crit_edge ], [ 8194, %land.lhs.true22.cleanup_crit_edge ], [ 8198, %land.lhs.true33.cleanup_crit_edge ], [ 8198, %land.lhs.true44.cleanup_crit_edge ], [ 8198, %land.lhs.true68.cleanup_crit_edge ], [ 8198, %land.lhs.true79.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdac_bus_attach(ptr noundef %sdev) #2 align 64 {
entry:
  %array_id = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %array_id) #11
  %0 = call ptr @memset(ptr %array_id, i32 255, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 280) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %lun = getelementptr inbounds %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %lun to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 256, ptr %lun, align 8
  %state = getelementptr inbounds %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %state, align 1
  %inq.i = getelementptr inbounds %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8
  %call.i = tail call i32 @scsi_get_vpd_page(ptr noundef %sdev, i8 noundef zeroext -56, ptr noundef %inq.i, i32 noundef 175) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.failed_crit_edge

if.end.failed_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed

if.then.i:                                        ; preds = %if.end
  %page_code.i = getelementptr inbounds %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 1
  %4 = ptrtoint ptr %page_code.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %page_code.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -56, i8 %5)
  %cmp.not.i = icmp eq i8 %5, -56
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i.failed_crit_edge

if.then.i.failed_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed

if.end.i:                                         ; preds = %if.then.i
  %page_id.i = getelementptr inbounds %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 4
  %6 = ptrtoint ptr %page_id.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %page_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 101, i8 %7)
  %cmp4.not.i = icmp eq i8 %7, 101
  br i1 %cmp4.not.i, label %lor.lhs.false.i, label %if.end.i.failed_crit_edge

if.end.i.failed_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed

lor.lhs.false.i:                                  ; preds = %if.end.i
  %arrayidx7.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %9)
  %cmp9.not.i = icmp eq i8 %9, 100
  br i1 %cmp9.not.i, label %lor.lhs.false11.i, label %lor.lhs.false.i.failed_crit_edge

lor.lhs.false.i.failed_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed

lor.lhs.false11.i:                                ; preds = %lor.lhs.false.i
  %arrayidx13.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx13.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 105, i8 %11)
  %cmp15.not.i = icmp eq i8 %11, 105
  br i1 %cmp15.not.i, label %lor.lhs.false17.i, label %lor.lhs.false11.i.failed_crit_edge

lor.lhs.false11.i.failed_crit_edge:               ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed

lor.lhs.false17.i:                                ; preds = %lor.lhs.false11.i
  %arrayidx19.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx19.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %13)
  %cmp21.not.i = icmp eq i8 %13, 100
  br i1 %cmp21.not.i, label %if.end4, label %lor.lhs.false17.i.failed_crit_edge

lor.lhs.false17.i.failed_crit_edge:               ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed

if.end4:                                          ; preds = %lor.lhs.false17.i
  %arrayidx25.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 158
  %14 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx25.i, align 2
  %conv26.i = zext i8 %15 to i32
  %16 = ptrtoint ptr %lun to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv26.i, ptr %lun, align 8
  %arrayidx30.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 92
  %17 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx30.i, align 4
  %arrayidx30.1.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 94
  %19 = ptrtoint ptr %arrayidx30.1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx30.1.i, align 2
  %arrayidx30.2.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 96
  %21 = ptrtoint ptr %arrayidx30.2.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx30.2.i, align 8
  %arrayidx30.3.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 98
  %23 = ptrtoint ptr %arrayidx30.3.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx30.3.i, align 2
  %arrayidx30.4.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 100
  %25 = ptrtoint ptr %arrayidx30.4.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx30.4.i, align 4
  %arrayidx30.5.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 102
  %27 = ptrtoint ptr %arrayidx30.5.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx30.5.i, align 2
  %arrayidx30.6.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 104
  %29 = ptrtoint ptr %arrayidx30.6.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx30.6.i, align 8
  %arrayidx30.7.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 106
  %31 = ptrtoint ptr %arrayidx30.7.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx30.7.i, align 2
  %arrayidx30.8.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 108
  %33 = ptrtoint ptr %arrayidx30.8.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx30.8.i, align 4
  %arrayidx30.9.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 110
  %35 = ptrtoint ptr %arrayidx30.9.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx30.9.i, align 2
  %arrayidx30.10.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 112
  %37 = ptrtoint ptr %arrayidx30.10.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx30.10.i, align 8
  %arrayidx30.11.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 114
  %39 = ptrtoint ptr %arrayidx30.11.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx30.11.i, align 2
  %arrayidx30.12.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 116
  %41 = ptrtoint ptr %arrayidx30.12.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx30.12.i, align 4
  %arrayidx30.13.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 118
  %43 = ptrtoint ptr %arrayidx30.13.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx30.13.i, align 2
  %arrayidx30.14.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 120
  %45 = ptrtoint ptr %arrayidx30.14.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx30.14.i, align 8
  %arrayidx30.15.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 122
  %47 = ptrtoint ptr %arrayidx30.15.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx30.15.i, align 2
  %arrayidx30.16.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 124
  %49 = ptrtoint ptr %arrayidx30.16.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx30.16.i, align 4
  %arrayidx30.17.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 126
  %51 = ptrtoint ptr %arrayidx30.17.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx30.17.i, align 2
  %arrayidx30.18.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 128
  %53 = ptrtoint ptr %arrayidx30.18.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx30.18.i, align 8
  %arrayidx30.19.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 130
  %55 = ptrtoint ptr %arrayidx30.19.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx30.19.i, align 2
  %arrayidx30.20.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 132
  %57 = ptrtoint ptr %arrayidx30.20.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx30.20.i, align 4
  %arrayidx30.21.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 134
  %59 = ptrtoint ptr %arrayidx30.21.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx30.21.i, align 2
  %arrayidx30.22.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 136
  %61 = ptrtoint ptr %arrayidx30.22.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx30.22.i, align 8
  %arrayidx30.23.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 138
  %63 = ptrtoint ptr %arrayidx30.23.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx30.23.i, align 2
  %arrayidx30.24.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 140
  %65 = ptrtoint ptr %arrayidx30.24.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx30.24.i, align 4
  %arrayidx30.25.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 142
  %67 = ptrtoint ptr %arrayidx30.25.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx30.25.i, align 2
  %arrayidx30.26.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 144
  %69 = ptrtoint ptr %arrayidx30.26.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx30.26.i, align 8
  %arrayidx30.27.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 146
  %71 = ptrtoint ptr %arrayidx30.27.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx30.27.i, align 2
  %arrayidx30.28.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 148
  %73 = ptrtoint ptr %arrayidx30.28.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx30.28.i, align 4
  %arrayidx30.29.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 150
  %75 = ptrtoint ptr %arrayidx30.29.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx30.29.i, align 2
  %array_unique_id.i = getelementptr inbounds %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 74
  %array_uniq_id_len.i = getelementptr inbounds %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 73
  %77 = ptrtoint ptr %array_uniq_id_len.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %array_uniq_id_len.i, align 1
  %conv33.i = zext i8 %78 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %78)
  %79 = icmp ugt i8 %78, 15
  %80 = sub nsw i32 16, %conv33.i
  %81 = select i1 %79, i32 0, i32 %80
  %82 = getelementptr i8, ptr %array_id, i32 %conv33.i
  %83 = call ptr @memset(ptr %82, i32 0, i32 %81)
  %84 = call ptr @memcpy(ptr %array_id, ptr %array_unique_id.i, i32 %conv33.i)
  %call.i48 = tail call i32 @scsi_get_vpd_page(ptr noundef %sdev, i8 noundef zeroext -60, ptr noundef %inq.i, i32 noundef 32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool.not.i49 = icmp eq i32 %call.i48, 0
  br i1 %tobool.not.i49, label %if.then.i50, label %if.end4.failed_crit_edge

if.end4.failed_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed

if.then.i50:                                      ; preds = %if.end4
  %arrayidx.i = getelementptr %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 9, i32 13
  %85 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %86)
  %cmp.i = icmp ne i8 %86, 49
  tail call void @_raw_spin_lock(ptr noundef nonnull @list_lock) #11
  %.pn69.i.i = load ptr, ptr @ctlr_list, align 4
  %cmp.not71.i.i = icmp eq ptr %.pn69.i.i, @ctlr_list
  br i1 %cmp.not71.i.i, label %if.then.i50.for.end.i.i_crit_edge, label %for.body.i.preheader.i

if.then.i50.for.end.i.i_crit_edge:                ; preds = %if.then.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.i.preheader.i:                           ; preds = %if.then.i50
  %87 = zext i1 %cmp.i to i8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %.pn72.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn69.i.i, %for.body.i.preheader.i ]
  %tmp.073.i.i = getelementptr i8, ptr %.pn72.i.i, i32 -24
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %tmp.073.i.i, ptr noundef nonnull dereferenceable(16) %array_id, i32 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp3.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index4.i.i = getelementptr i8, ptr %.pn72.i.i, i32 316
  %88 = ptrtoint ptr %index4.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %index4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %89, i8 %87)
  %cmp5.i.i = icmp eq i8 %89, %87
  br i1 %cmp5.i.i, label %land.lhs.true7.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %host.i.i = getelementptr i8, ptr %.pn72.i.i, i32 348
  %90 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %host.i.i, align 4
  %92 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sdev, align 8
  %cmp9.i.i = icmp eq ptr %91, %93
  br i1 %cmp9.i.i, label %if.then.i.i, label %land.lhs.true7.i.i.for.inc.i.i_crit_edge

land.lhs.true7.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %land.lhs.true7.i.i
  %kref.i.i = getelementptr i8, ptr %.pn72.i.i, i32 -4
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #11
  %94 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #11, !srcloc !104
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %94, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !105

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %95 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %95)
  %.not.i.i.i.i.i.i = icmp sgt i32 %95, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.get_controller.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !103

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.get_controller.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_controller.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #11
  br label %get_controller.exit.i

for.inc.i.i:                                      ; preds = %land.lhs.true7.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %96 = ptrtoint ptr %.pn72.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %.pn.i.i = load ptr, ptr %.pn72.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, @ctlr_list
  br i1 %cmp.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.then.i50.for.end.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %97 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %97, i32 noundef 2592, i32 noundef 488) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %get_controller.exit.thread.i, label %if.end17.i.i

get_controller.exit.thread.i:                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %ctlr21.i = getelementptr inbounds %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 1
  %98 = ptrtoint ptr %ctlr21.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %ctlr21.i, align 8
  br label %if.end10

if.end17.i.i:                                     ; preds = %for.end.i.i
  %99 = call ptr @memcpy(ptr %call7.i.i.i, ptr %array_id, i32 16)
  %conv20.i.i = zext i1 %cmp.i to i8
  %index21.i.i = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 5
  %100 = ptrtoint ptr %index21.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv20.i.i, ptr %index21.i.i, align 4
  %101 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sdev, align 8
  %host23.i.i = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 7
  %103 = ptrtoint ptr %host23.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %102, ptr %host23.i.i, align 4
  %array_name24.i.i = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 6
  %104 = ptrtoint ptr %array_name24.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %18, ptr %array_name24.i.i, align 1
  %array_name.sroa.5.0.array_name24.i.i.sroa_idx = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %105 = ptrtoint ptr %array_name.sroa.5.0.array_name24.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %20, ptr %array_name.sroa.5.0.array_name24.i.i.sroa_idx, align 2
  %array_name.sroa.7.0.array_name24.i.i.sroa_idx = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 6, i32 2
  %106 = ptrtoint ptr %array_name.sroa.7.0.array_name24.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %22, ptr %array_name.sroa.7.0.array_name24.i.i.sroa_idx, align 1
  %array_name.sroa.9.0.array_name24.i.i.sroa_idx = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 6, i32 3
  %107 = ptrtoint ptr %array_name.sroa.9.0.array_name24.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %24, ptr %array_name.sroa.9.0.array_name24.i.i.sroa_idx, align 8
  %array_name.sroa.11.0.array_name24.i.i.sroa_idx = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 6, i32 4
  %108 = ptrtoint ptr %array_name.sroa.11.0.array_name24.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %26, ptr %array_name.sroa.11.0.array_name24.i.i.sroa_idx, align 1
  %array_name.sroa.13.0.array_name24.i.i.sroa_idx = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 6, i32 5
  %109 = ptrtoint ptr %array_name.sroa.13.0.array_name24.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %28, ptr %array_name.sroa.13.0.array_name24.i.i.sroa_idx, align 2
  %array_name.sroa.15.0.array_name24.i.i.sroa_idx = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 6, i32 6
  %110 = ptrtoint ptr %array_name.sroa.15.0.array_name24.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %30, ptr %array_name.sroa.15.0.array_name24.i.i.sroa_idx, align 1
  %array_name.sroa.17.0.array_name24.i.i.sroa_idx = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 6, i32 7
  %111 = ptrtoint ptr %array_name.sroa.17.0.array_name24.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %32, ptr %array_name.sroa.17.0.array_name24.i.i.sroa_idx, align 4
  %array_name.sroa.19.0.array_name24.i.i.sroa_idx = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 6, i32 8
  %112 = ptrtoint ptr %array_name.sroa.19.0.array_name24.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %34, ptr %array_name.sroa.19.0.array_name24.i.i.sroa_idx, align 1
  %array_name.sroa.21.0.array_name24.i.i.sroa_idx = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 6, i32 9
  %113 = ptrtoint ptr %array_name.sroa.21.0.array_name24.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %36, ptr %array_name.sroa.21.0.array_name24.i.i.sroa_idx, align 2
  %array_name.sroa.23.0.array_name24.i.i.sroa_idx = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 6, i32 10
  %114 = ptrtoint ptr %array_name.sroa.23.0.array_name24.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %38, ptr %array_name.sroa.23.0.array_name24.i.i.sroa_idx, align 1
  %array_name.sroa.25.0.array_name24.i.i.sroa_idx = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 6, i32 11
  %115 = ptrtoint ptr %array_name.sroa.25.0.array_name24.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %40, ptr %array_name.sroa.25.0.array_name24.i.i.sroa_idx, align 8
  %array_name.sroa.27.0.array_name24.i.i.sroa_idx = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 6, i32 12
  %116 = ptrtoint ptr %array_name.sroa.27.0.array_name24.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %42, ptr %array_name.sroa.27.0.array_name24.i.i.sroa_idx, align 1
  %array_name.sroa.29.0.array_name24.i.i.sroa_idx = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 6, i32 13
  %117 = ptrtoint ptr %array_name.sroa.29.0.array_name24.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %44, ptr %array_name.sroa.29.0.array_name24.i.i.sroa_idx, align 2
  %array_name.sroa.31.0.array_name24.i.i.sroa_idx = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 6, i32 14
  %118 = ptrtoint ptr %array_name.sroa.31.0.array_name24.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %46, ptr %array_name.sroa.31.0.array_name24.i.i.sroa_idx, align 1
  %array_name.sroa.33.0.array_name24.i.i.sroa_idx = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 6, i32 15
  %119 = ptrtoint ptr %array_name.sroa.33.0.array_name24.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %48, ptr %array_name.sroa.33.0.array_name24.i.i.sroa_idx, align 4
  %array_name.sroa.35.0.array_name24.i.i.sroa_idx = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 6, i32 16
  %120 = ptrtoint ptr %array_name.sroa.35.0.array_name24.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %50, ptr %array_name.sroa.35.0.array_name24.i.i.sroa_idx, align 1
  %array_name.sroa.37.0.array_name24.i.i.sroa_idx = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 6, i32 17
  %121 = ptrtoint ptr %array_name.sroa.37.0.array_name24.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %52, ptr %array_name.sroa.37.0.array_name24.i.i.sroa_idx, align 2
  %array_name.sroa.39.0.array_name24.i.i.sroa_idx = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 6, i32 18
  %122 = ptrtoint ptr %array_name.sroa.39.0.array_name24.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %54, ptr %array_name.sroa.39.0.array_name24.i.i.sroa_idx, align 1
  %array_name.sroa.41.0.array_name24.i.i.sroa_idx = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 6, i32 19
  %123 = ptrtoint ptr %array_name.sroa.41.0.array_name24.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %56, ptr %array_name.sroa.41.0.array_name24.i.i.sroa_idx, align 8
  %array_name.sroa.43.0.array_name24.i.i.sroa_idx = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 6, i32 20
  %124 = ptrtoint ptr %array_name.sroa.43.0.array_name24.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %58, ptr %array_name.sroa.43.0.array_name24.i.i.sroa_idx, align 1
  %array_name.sroa.45.0.array_name24.i.i.sroa_idx = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 6, i32 21
  %125 = ptrtoint ptr %array_name.sroa.45.0.array_name24.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %60, ptr %array_name.sroa.45.0.array_name24.i.i.sroa_idx, align 2
  %array_name.sroa.47.0.array_name24.i.i.sroa_idx = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 6, i32 22
  %126 = ptrtoint ptr %array_name.sroa.47.0.array_name24.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %62, ptr %array_name.sroa.47.0.array_name24.i.i.sroa_idx, align 1
  %array_name.sroa.49.0.array_name24.i.i.sroa_idx = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 6, i32 23
  %127 = ptrtoint ptr %array_name.sroa.49.0.array_name24.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %64, ptr %array_name.sroa.49.0.array_name24.i.i.sroa_idx, align 4
  %array_name.sroa.51.0.array_name24.i.i.sroa_idx = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 6, i32 24
  %128 = ptrtoint ptr %array_name.sroa.51.0.array_name24.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %66, ptr %array_name.sroa.51.0.array_name24.i.i.sroa_idx, align 1
  %array_name.sroa.53.0.array_name24.i.i.sroa_idx = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 6, i32 25
  %129 = ptrtoint ptr %array_name.sroa.53.0.array_name24.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %68, ptr %array_name.sroa.53.0.array_name24.i.i.sroa_idx, align 2
  %array_name.sroa.55.0.array_name24.i.i.sroa_idx = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 6, i32 26
  %130 = ptrtoint ptr %array_name.sroa.55.0.array_name24.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %70, ptr %array_name.sroa.55.0.array_name24.i.i.sroa_idx, align 1
  %array_name.sroa.57.0.array_name24.i.i.sroa_idx = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 6, i32 27
  %131 = ptrtoint ptr %array_name.sroa.57.0.array_name24.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %72, ptr %array_name.sroa.57.0.array_name24.i.i.sroa_idx, align 8
  %array_name.sroa.59.0.array_name24.i.i.sroa_idx = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 6, i32 28
  %132 = ptrtoint ptr %array_name.sroa.59.0.array_name24.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %74, ptr %array_name.sroa.59.0.array_name24.i.i.sroa_idx, align 1
  %array_name.sroa.61.0.array_name24.i.i.sroa_idx = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 6, i32 29
  %133 = ptrtoint ptr %array_name.sroa.61.0.array_name24.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %76, ptr %array_name.sroa.61.0.array_name24.i.i.sroa_idx, align 2
  %array_name.sroa.63.0.array_name24.i.i.sroa_idx = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 6, i32 30
  %134 = ptrtoint ptr %array_name.sroa.63.0.array_name24.i.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %array_name.sroa.63.0.array_name24.i.i.sroa_idx, align 1
  %kref26.i.i = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref26.i.i, i32 noundef 4) #11
  %135 = ptrtoint ptr %kref26.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile i32 1, ptr %kref26.i.i, align 4
  %use_ms10.i.i = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 1
  %136 = ptrtoint ptr %use_ms10.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 -1, ptr %use_ms10.i.i, align 8
  %ms_queued.i.i = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 9
  %137 = ptrtoint ptr %ms_queued.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %ms_queued.i.i, align 4
  %ms_sdev.i.i = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 11
  %138 = ptrtoint ptr %ms_sdev.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr null, ptr %ms_sdev.i.i, align 4
  %ms_lock.i.i = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %ms_lock.i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @get_controller.__key, i16 noundef signext 3) #11
  %ms_work.i.i = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 10
  tail call void @__init_work(ptr noundef %ms_work.i.i, i32 noundef 0) #11
  %139 = ptrtoint ptr %ms_work.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 -64, ptr %ms_work.i.i, align 8
  %lockdep_map.i.i = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @get_controller.__key.9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry32.i.i = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 10, i32 1
  %140 = ptrtoint ptr %entry32.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %entry32.i.i, ptr %entry32.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 10, i32 1, i32 1
  %141 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %entry32.i.i, ptr %prev.i.i.i, align 8
  %func.i.i = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 10, i32 2
  %142 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr @send_mode_select, ptr %func.i.i, align 4
  %ms_head.i.i = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 12
  %143 = ptrtoint ptr %ms_head.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile ptr %ms_head.i.i, ptr %ms_head.i.i, align 8
  %prev.i65.i.i = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 12, i32 1
  %144 = ptrtoint ptr %prev.i65.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %ms_head.i.i, ptr %prev.i65.i.i, align 4
  %node36.i.i = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 3
  %145 = load ptr, ptr @ctlr_list, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node36.i.i, ptr noundef nonnull @ctlr_list, ptr noundef %145) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end17.i.i.get_controller.exit.thread23.i_crit_edge

if.end17.i.i.get_controller.exit.thread23.i_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_controller.exit.thread23.i

if.end.i.i.i.i:                                   ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %node36.i.i, ptr %prev1.i.i.i.i, align 4
  %147 = ptrtoint ptr %node36.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %145, ptr %node36.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %148 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @ctlr_list, ptr %prev3.i.i.i.i, align 4
  store volatile ptr %node36.i.i, ptr @ctlr_list, align 4
  br label %get_controller.exit.thread23.i

get_controller.exit.thread23.i:                   ; preds = %if.end.i.i.i.i, %if.end17.i.i.get_controller.exit.thread23.i_crit_edge
  %dh_list.i.i = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 13
  %149 = ptrtoint ptr %dh_list.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile ptr %dh_list.i.i, ptr %dh_list.i.i, align 8
  %prev.i66.i.i = getelementptr inbounds %struct.rdac_controller, ptr %call7.i.i.i, i32 0, i32 13, i32 1
  %150 = ptrtoint ptr %prev.i66.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %dh_list.i.i, ptr %prev.i66.i.i, align 4
  %ctlr25.i = getelementptr inbounds %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 1
  %151 = ptrtoint ptr %ctlr25.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %call7.i.i.i, ptr %ctlr25.i, align 8
  br label %if.else7.i

get_controller.exit.i:                            ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.get_controller.exit.i_crit_edge
  %ctlr.i = getelementptr inbounds %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 1
  %152 = ptrtoint ptr %ctlr.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %tmp.073.i.i, ptr %ctlr.i, align 8
  %tobool5.not.i = icmp eq ptr %tmp.073.i.i, null
  br i1 %tobool5.not.i, label %get_controller.exit.i.if.end10_crit_edge, label %get_controller.exit.i.if.else7.i_crit_edge

get_controller.exit.i.if.else7.i_crit_edge:       ; preds = %get_controller.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else7.i

get_controller.exit.i.if.end10_crit_edge:         ; preds = %get_controller.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.else7.i:                                       ; preds = %get_controller.exit.i.if.else7.i_crit_edge, %get_controller.exit.thread23.i
  %retval.0.i27.i = phi ptr [ %call7.i.i.i, %get_controller.exit.thread23.i ], [ %tmp.073.i.i, %get_controller.exit.i.if.else7.i_crit_edge ]
  %sdev8.i = getelementptr inbounds %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 2
  %153 = ptrtoint ptr %sdev8.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %sdev, ptr %sdev8.i, align 4
  %dh_list.i = getelementptr inbounds %struct.rdac_controller, ptr %retval.0.i27.i, i32 0, i32 13
  %154 = ptrtoint ptr %dh_list.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dh_list.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call7.i.i, ptr noundef %dh_list.i, ptr noundef %155) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else7.i.if.end10_crit_edge

if.else7.i.if.end10_crit_edge:                    ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end.i.i.i:                                     ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #13
  %156 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %155, ptr %call7.i.i, align 8
  %prev2.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %157 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %dh_list.i, ptr %prev2.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  %158 = ptrtoint ptr %dh_list.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store volatile ptr %call7.i.i, ptr %dh_list.i, align 4
  %prev37.i.i.i = getelementptr inbounds %struct.list_head, ptr %155, i32 0, i32 1
  %159 = ptrtoint ptr %prev37.i.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %call7.i.i, ptr %prev37.i.i.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end.i.i.i, %if.else7.i.if.end10_crit_edge, %get_controller.exit.i.if.end10_crit_edge, %get_controller.exit.thread.i
  tail call void @_raw_spin_unlock(ptr noundef nonnull @list_lock) #11
  %call11 = tail call fastcc i32 @check_ownership(ptr noundef %sdev, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12.not = icmp eq i32 %call11, 0
  br i1 %cmp12.not, label %if.end14, label %if.end10.clean_ctlr_crit_edge

if.end10.clean_ctlr_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %clean_ctlr

if.end14:                                         ; preds = %if.end10
  %call.i52 = tail call i32 @scsi_get_vpd_page(ptr noundef %sdev, i8 noundef zeroext -62, ptr noundef %inq.i, i32 noundef 255) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool.not.i53 = icmp eq i32 %call.i52, 0
  br i1 %tobool.not.i53, label %if.end18, label %if.end14.clean_ctlr_crit_edge

if.end14.clean_ctlr_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %clean_ctlr

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %max_lun_supported.i = getelementptr inbounds %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 8
  %160 = ptrtoint ptr %max_lun_supported.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %max_lun_supported.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %161)
  %cmp.i54 = icmp ugt i8 %161, 31
  %ctlr.i55 = getelementptr inbounds %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 1
  %162 = ptrtoint ptr %ctlr.i55 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %ctlr.i55, align 8
  %use_ms10.i = getelementptr inbounds %struct.rdac_controller, ptr %163, i32 0, i32 1
  %..i = zext i1 %cmp.i54 to i32
  %164 = ptrtoint ptr %use_ms10.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %..i, ptr %use_ms10.i, align 4
  %165 = ptrtoint ptr %lun to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %lun, align 8
  %mode = getelementptr inbounds %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 4
  %167 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %mode, align 4
  %conv = zext i8 %168 to i32
  %arrayidx = getelementptr [3 x ptr], ptr @mode, i32 0, i32 %conv
  %169 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %arrayidx, align 4
  %lun_state = getelementptr inbounds %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 6
  %171 = ptrtoint ptr %lun_state to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %lun_state, align 2
  %conv20 = zext i8 %172 to i32
  %arrayidx21 = getelementptr [2 x ptr], ptr @lun_state, i32 0, i32 %conv20
  %173 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx21, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.6, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, i32 noundef %166, ptr noundef %170, ptr noundef %174) #11
  %handler_data = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 60
  %175 = ptrtoint ptr %handler_data to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %call7.i.i, ptr %handler_data, align 4
  br label %cleanup

clean_ctlr:                                       ; preds = %if.end14.clean_ctlr_crit_edge, %if.end10.clean_ctlr_crit_edge
  %err.0 = phi i32 [ %call11, %if.end10.clean_ctlr_crit_edge ], [ 8, %if.end14.clean_ctlr_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @list_lock) #11
  %ctlr = getelementptr inbounds %struct.rdac_dh_data, ptr %call7.i.i, i32 0, i32 1
  %176 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ctlr, align 8
  %kref = getelementptr inbounds %struct.rdac_controller, ptr %177, i32 0, i32 2
  %call.i.i.i.i.i.i58 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !107
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %178 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !108
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %178, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i60, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %clean_ctlr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !103

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #11
  br label %kref_put.exit

if.then.i60:                                      ; preds = %clean_ctlr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %node.i.i = getelementptr %struct.rdac_controller, ptr %177, i32 0, i32 3
  %call.i.i.i.i59 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i.i) #11
  br i1 %call.i.i.i.i59, label %if.end.i.i.i.i61, label %if.then.i60.release_controller.exit.i_crit_edge

if.then.i60.release_controller.exit.i_crit_edge:  ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #13
  br label %release_controller.exit.i

if.end.i.i.i.i61:                                 ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i = getelementptr %struct.rdac_controller, ptr %177, i32 0, i32 3, i32 1
  %179 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %prev.i.i.i.i, align 4
  %181 = ptrtoint ptr %node.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %node.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %182, i32 0, i32 1
  %183 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %180, ptr %prev1.i.i.i.i.i, align 4
  %184 = ptrtoint ptr %180 to i32
  call void @__asan_store4_noabort(i32 %184)
  store volatile ptr %182, ptr %180, align 4
  br label %release_controller.exit.i

release_controller.exit.i:                        ; preds = %if.end.i.i.i.i61, %if.then.i60.release_controller.exit.i_crit_edge
  %185 = ptrtoint ptr %node.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i.i, align 4
  %prev.i.i.i62 = getelementptr %struct.rdac_controller, ptr %177, i32 0, i32 3, i32 1
  %186 = ptrtoint ptr %prev.i.i.i62 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i62, align 4
  tail call void @kfree(ptr noundef %177) #11
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %release_controller.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @list_lock) #11
  br label %failed

failed:                                           ; preds = %kref_put.exit, %if.end4.failed_crit_edge, %lor.lhs.false17.i.failed_crit_edge, %lor.lhs.false11.i.failed_crit_edge, %lor.lhs.false.i.failed_crit_edge, %if.end.i.failed_crit_edge, %if.then.i.failed_crit_edge, %if.end.failed_crit_edge
  %err.1 = phi i32 [ %err.0, %kref_put.exit ], [ 8, %if.end4.failed_crit_edge ], [ 8, %if.end.failed_crit_edge ], [ 16, %if.end.i.failed_crit_edge ], [ 16, %lor.lhs.false.i.failed_crit_edge ], [ 16, %lor.lhs.false11.i.failed_crit_edge ], [ 16, %lor.lhs.false17.i.failed_crit_edge ], [ 16, %if.then.i.failed_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.end18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %failed ], [ 0, %if.end18 ], [ 15, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %array_id) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rdac_bus_detach(ptr nocapture noundef %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 60
  %0 = ptrtoint ptr %handler_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data, align 4
  %ctlr = getelementptr inbounds %struct.rdac_dh_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctlr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ms_queued = getelementptr inbounds %struct.rdac_controller, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %ms_queued to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ms_queued, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %6 = load ptr, ptr @kmpath_rdacd, align 4
  tail call void @flush_workqueue(ptr noundef %6) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @list_lock) #11
  %7 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctlr, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then5.list_del_rcu.exit_crit_edge

if.then5.list_del_rcu.exit_crit_edge:             ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.then5.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %16 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctlr, align 4
  %kref = getelementptr inbounds %struct.rdac_controller, ptr %17, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !107
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !108
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end7_crit_edge, label %if.then10.i.i.i.i, !prof !103

if.end5.i.i.i.i.if.end7_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #11
  br label %if.end7

if.then.i:                                        ; preds = %list_del_rcu.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %node.i.i = getelementptr %struct.rdac_controller, ptr %17, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i.i) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.release_controller.exit.i_crit_edge

if.then.i.release_controller.exit.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %release_controller.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i = getelementptr %struct.rdac_controller, ptr %17, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i.i, align 4
  %21 = ptrtoint ptr %node.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %node.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %release_controller.exit.i

release_controller.exit.i:                        ; preds = %if.end.i.i.i.i, %if.then.i.release_controller.exit.i_crit_edge
  %25 = ptrtoint ptr %node.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i.i, align 4
  %prev.i.i.i = getelementptr %struct.rdac_controller, ptr %17, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @kfree(ptr noundef %17) #11
  br label %if.end7

if.end7:                                          ; preds = %release_controller.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @list_lock) #11
  %27 = ptrtoint ptr %handler_data to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %handler_data, align 4
  tail call void @synchronize_rcu() #11
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdac_activate(ptr noundef %sdev, ptr noundef %fn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 60
  %0 = ptrtoint ptr %handler_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data, align 4
  %call = tail call fastcc i32 @check_ownership(ptr noundef %sdev, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.rdac_dh_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %3, label %if.end.done_crit_edge [
    i8 0, label %sw.bb
    i8 2, label %sw.bb6
  ]

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

sw.bb:                                            ; preds = %if.end
  %lun_state = getelementptr inbounds %struct.rdac_dh_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %lun_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %lun_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp2.not = icmp eq i8 %6, 0
  br i1 %cmp2.not, label %sw.bb.if.then16_crit_edge, label %sw.bb.done_crit_edge

sw.bb.done_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

sw.bb.if.then16_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16

sw.bb6:                                           ; preds = %if.end
  %lun_state7 = getelementptr inbounds %struct.rdac_dh_data, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %lun_state7 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %lun_state7, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp9 = icmp eq i8 %8, 0
  br i1 %cmp9, label %sw.epilog, label %sw.bb6.done_crit_edge

sw.bb6.done_crit_edge:                            ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

sw.epilog:                                        ; preds = %sw.bb6
  %preferred = getelementptr inbounds %struct.rdac_dh_data, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %preferred to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %preferred, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp12.not = icmp eq i8 %10, 0
  br i1 %cmp12.not, label %sw.epilog.if.then16_crit_edge, label %sw.epilog.done_crit_edge

sw.epilog.done_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

sw.epilog.if.then16_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16

if.then16:                                        ; preds = %sw.epilog.if.then16_crit_edge, %sw.bb.if.then16_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 20) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then16.done_crit_edge, label %if.end.i

if.then16.done_crit_edge:                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end.i:                                         ; preds = %if.then16
  %12 = ptrtoint ptr %handler_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %handler_data, align 4
  %h.i = getelementptr inbounds %struct.rdac_queue_data, ptr %call7.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %h.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %h.i, align 8
  %callback_fn.i = getelementptr inbounds %struct.rdac_queue_data, ptr %call7.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %callback_fn.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %fn, ptr %callback_fn.i, align 4
  %callback_data.i = getelementptr inbounds %struct.rdac_queue_data, ptr %call7.i.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %callback_data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %data, ptr %callback_data.i, align 8
  %ctlr2.i = getelementptr inbounds %struct.rdac_dh_data, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %ctlr2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctlr2.i, align 4
  %ms_lock.i = getelementptr inbounds %struct.rdac_controller, ptr %18, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %ms_lock.i) #11
  %ms_head.i = getelementptr inbounds %struct.rdac_controller, ptr %18, i32 0, i32 12
  %prev.i.i = getelementptr inbounds %struct.rdac_controller, ptr %18, i32 0, i32 12, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %20, ptr noundef %ms_head.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_add_tail.exit.i_crit_edge

if.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %ms_head.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %call7.i.i.i, ptr %20, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_add_tail.exit.i_crit_edge
  %ms_queued.i = getelementptr inbounds %struct.rdac_controller, ptr %18, i32 0, i32 9
  %25 = ptrtoint ptr %ms_queued.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ms_queued.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool4.not.i = icmp eq i32 %26, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %list_add_tail.exit.i.queue_mode_select.exit.thread_crit_edge

list_add_tail.exit.i.queue_mode_select.exit.thread_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %queue_mode_select.exit.thread

if.then5.i:                                       ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %ms_queued.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %ms_queued.i, align 4
  %ms_sdev.i = getelementptr inbounds %struct.rdac_controller, ptr %18, i32 0, i32 11
  %28 = ptrtoint ptr %ms_sdev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %sdev, ptr %ms_sdev.i, align 4
  %29 = load ptr, ptr @kmpath_rdacd, align 4
  %ms_work.i = getelementptr inbounds %struct.rdac_controller, ptr %18, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %ms_work.i) #11
  br label %queue_mode_select.exit.thread

queue_mode_select.exit.thread:                    ; preds = %if.then5.i, %list_add_tail.exit.i.queue_mode_select.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ms_lock.i) #11
  br label %cleanup

done:                                             ; preds = %if.then16.done_crit_edge, %sw.epilog.done_crit_edge, %sw.bb6.done_crit_edge, %sw.bb.done_crit_edge, %if.end.done_crit_edge, %entry.done_crit_edge
  %err.0 = phi i32 [ %call, %entry.done_crit_edge ], [ 0, %sw.epilog.done_crit_edge ], [ 0, %if.end.done_crit_edge ], [ 0, %sw.bb6.done_crit_edge ], [ 0, %sw.bb.done_crit_edge ], [ 10, %if.then16.done_crit_edge ]
  %tobool23.not = icmp eq ptr %fn, null
  br i1 %tobool23.not, label %done.cleanup_crit_edge, label %if.then24

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then24:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %fn(ptr noundef %data, i32 noundef %err.0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %done.cleanup_crit_edge, %queue_mode_select.exit.thread
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @rdac_prep_fn(ptr nocapture noundef readonly %sdev, ptr nocapture noundef %req) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 60
  %0 = ptrtoint ptr %handler_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data, align 4
  %state = getelementptr inbounds %struct.rdac_dh_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rq_flags = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rq_flags, align 8
  %or = or i32 %5, 2048
  store i32 %or, ptr %rq_flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 10, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_ownership(ptr noundef %sdev, ptr noundef %h) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %inq = getelementptr inbounds %struct.rdac_dh_data, ptr %h, i32 0, i32 8
  %state = getelementptr inbounds %struct.rdac_dh_data, ptr %h, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %state, align 1
  %call = tail call i32 @scsi_get_vpd_page(ptr noundef %sdev, i8 noundef zeroext -55, ptr noundef %inq, i32 noundef 48) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end79_crit_edge

entry.if.end79_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

if.then:                                          ; preds = %entry
  %avte_cvp = getelementptr inbounds %struct.rdac_dh_data, ptr %h, i32 0, i32 8, i32 0, i32 5
  %1 = ptrtoint ptr %avte_cvp to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %avte_cvp, align 1
  %3 = and i8 %2, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %mode = getelementptr inbounds %struct.rdac_dh_data, ptr %h, i32 0, i32 4
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %mode, align 4
  br label %if.end11

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %tobool6.not = icmp sgt i8 %2, -1
  %mode10 = getelementptr inbounds %struct.rdac_dh_data, ptr %h, i32 0, i32 4
  br i1 %tobool6.not, label %if.else9, label %if.then7

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %mode10 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %mode10, align 4
  br label %if.end11

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %mode10 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %mode10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then7, %if.then2
  %7 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool15.not = icmp eq i8 %7, 0
  %lun_state18 = getelementptr inbounds %struct.rdac_dh_data, ptr %h, i32 0, i32 6
  br i1 %tobool15.not, label %if.else17, label %if.then16

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %lun_state18 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %lun_state18, align 2
  br label %if.end26

if.else17:                                        ; preds = %if.end11
  %9 = ptrtoint ptr %lun_state18 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %lun_state18, align 2
  %mode19 = getelementptr inbounds %struct.rdac_dh_data, ptr %h, i32 0, i32 4
  %10 = ptrtoint ptr %mode19 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mode19, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp = icmp eq i8 %11, 0
  br i1 %cmp, label %if.then22, label %if.else17.if.end26_crit_edge

if.else17.if.end26_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then22:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %state, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.else17.if.end26_crit_edge, %if.then16
  %access_state.0 = phi i8 [ 0, %if.then16 ], [ 2, %if.then22 ], [ 1, %if.else17.if.end26_crit_edge ]
  %path_prio = getelementptr inbounds %struct.rdac_dh_data, ptr %h, i32 0, i32 8, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %path_prio to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %path_prio, align 1
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = shl i8 %14, 7
  %18 = or i8 %access_state.0, %17
  %19 = getelementptr inbounds %struct.rdac_dh_data, ptr %h, i32 0, i32 7
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %16, ptr %19, align 1
  %21 = tail call i32 @llvm.read_register.i32(metadata !93) #11
  %and.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !110
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.end26.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end26.rcu_read_lock.exit_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end26
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end26.rcu_read_lock.exit_crit_edge
  %call34 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call36 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true38

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true38:                                  ; preds = %land.lhs.true
  %.b100 = load i1, ptr @check_ownership.__warned, align 1
  br i1 %.b100, label %land.lhs.true38.do.end_crit_edge, label %if.then40

land.lhs.true38.do.end_crit_edge:                 ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then40:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_ownership.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 425, ptr noundef nonnull @.str.17) #11
  br label %do.end

do.end:                                           ; preds = %if.then40, %land.lhs.true38.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %ctlr = getelementptr inbounds %struct.rdac_dh_data, ptr %h, i32 0, i32 1
  %25 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctlr, align 4
  %dh_list = getelementptr inbounds %struct.rdac_controller, ptr %26, i32 0, i32 13
  %27 = ptrtoint ptr %dh_list to i32
  call void @__asan_load4_noabort(i32 %27)
  %tmp.0110 = load volatile ptr, ptr %dh_list, align 4
  %cmp49.not112 = icmp eq ptr %tmp.0110, %dh_list
  br i1 %cmp49.not112, label %do.end.for.end_crit_edge, label %do.end.do.body51_crit_edge

do.end.do.body51_crit_edge:                       ; preds = %do.end
  br label %do.body51

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body51:                                        ; preds = %do.end66.do.body51_crit_edge, %do.end.do.body51_crit_edge
  %tmp.0113 = phi ptr [ %tmp.0, %do.end66.do.body51_crit_edge ], [ %tmp.0110, %do.end.do.body51_crit_edge ]
  %sdev52 = getelementptr inbounds %struct.rdac_dh_data, ptr %tmp.0113, i32 0, i32 2
  %28 = ptrtoint ptr %sdev52 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sdev52, align 4
  %tobool53.not = icmp eq ptr %29, null
  br i1 %tobool53.not, label %do.body58, label %do.end66, !prof !105

do.body58:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/device_handler/scsi_dh_rdac.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 427, 0\0A.popsection", ""() #11, !srcloc !111
  unreachable

do.end66:                                         ; preds = %do.body51
  %access_state69 = getelementptr inbounds %struct.scsi_device, ptr %29, i32 0, i32 66
  %30 = ptrtoint ptr %access_state69 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %18, ptr %access_state69, align 4
  %31 = ptrtoint ptr %tmp.0113 to i32
  call void @__asan_load4_noabort(i32 %31)
  %tmp.0 = load volatile ptr, ptr %tmp.0113, align 4
  %32 = ptrtoint ptr %ctlr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctlr, align 4
  %dh_list48 = getelementptr inbounds %struct.rdac_controller, ptr %33, i32 0, i32 13
  %cmp49.not = icmp eq ptr %tmp.0, %dh_list48
  br i1 %cmp49.not, label %do.end66.for.end_crit_edge, label %do.end66.do.body51_crit_edge

do.end66.do.body51_crit_edge:                     ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body51

do.end66.for.end_crit_edge:                       ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %do.end66.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i101 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i101, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i104

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i104:                               ; preds = %for.end
  %call1.i102 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i102)
  %tobool.not.i103 = icmp eq i32 %call1.i102, 0
  br i1 %tobool.not.i103, label %land.lhs.true.i104.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i106

land.lhs.true.i104.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i104
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i106:                              ; preds = %land.lhs.true.i104
  %.b4.i105 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i105, label %land.lhs.true2.i106.rcu_read_unlock.exit_crit_edge, label %if.then.i107

land.lhs.true2.i106.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i106
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i107:                                     ; preds = %land.lhs.true2.i106
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.20) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i107, %land.lhs.true2.i106.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i104.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !112
  %34 = tail call i32 @llvm.read_register.i32(metadata !93) #11
  %and.i.i.i.i.i108 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i108 to ptr
  %preempt_count.i.i.i.i109 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i109, align 4
  %sub.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i109, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %if.end79

if.end79:                                         ; preds = %rcu_read_unlock.exit, %entry.if.end79_crit_edge
  %err.0 = phi i32 [ 8, %entry.if.end79_crit_edge ], [ 0, %rcu_read_unlock.exit ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_get_vpd_page(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_mode_select(ptr noundef %work) #2 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  %cdb = alloca [16 x i8], align 1
  %sshdr = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ms_sdev = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %ms_sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ms_sdev, align 4
  %handler_data = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 60
  %2 = ptrtoint ptr %handler_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #11
  %4 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %list, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cdb) #11
  %7 = getelementptr inbounds [16 x i8], ptr %cdb, i32 0, i32 7
  %8 = call ptr @memset(ptr %cdb, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr) #11
  %9 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 1
  %10 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 2
  %11 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 3
  %ms_lock = getelementptr i8, ptr %work, i32 -48
  %12 = ptrtoint ptr %sshdr to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %sshdr, align 8
  call void @_raw_spin_lock(ptr noundef %ms_lock) #11
  %ms_head = getelementptr i8, ptr %work, i32 48
  %13 = ptrtoint ptr %ms_head to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %ms_head, align 4
  %cmp.i.not.i = icmp eq ptr %14, %ms_head
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %list, align 4
  %prev2.i.i = getelementptr i8, ptr %work, i32 52
  %17 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list, ptr %prev3.i.i, align 4
  store ptr %14, ptr %list, align 4
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %16, ptr %18, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev6.i.i, align 4
  %22 = ptrtoint ptr %ms_head to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %ms_head, ptr %ms_head, align 4
  store ptr %ms_head, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  %ms_queued = getelementptr i8, ptr %work, i32 -4
  %23 = ptrtoint ptr %ms_queued to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %ms_queued, align 4
  %24 = ptrtoint ptr %ms_sdev to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %ms_sdev, align 4
  call void @_raw_spin_unlock(ptr noundef %ms_lock) #11
  %use_ms10.i = getelementptr i8, ptr %work, i32 -408
  %mode_select6.i = getelementptr i8, ptr %work, i32 -392
  %common1.i = getelementptr i8, ptr %work, i32 -380
  %page_code.i = getelementptr i8, ptr %work, i32 -384
  %subpage_code.i = getelementptr i8, ptr %work, i32 -383
  %page_len.i = getelementptr i8, ptr %work, i32 -382
  %arrayidx3.i = getelementptr i8, ptr %work, i32 -381
  %common7.i = getelementptr i8, ptr %work, i32 -386
  %page_code8.i = getelementptr i8, ptr %work, i32 -388
  %page_len9.i = getelementptr i8, ptr %work, i32 -387
  %ctlr7 = getelementptr inbounds %struct.rdac_dh_data, ptr %3, i32 0, i32 1
  br label %retry.outer

retry.outer:                                      ; preds = %land.lhs.true.retry.outer_crit_edge, %list_splice_init.exit
  %retry_cnt.0.ph = phi i32 [ %dec, %land.lhs.true.retry.outer_crit_edge ], [ 5, %list_splice_init.exit ]
  %cmp31.ph = phi i1 [ false, %land.lhs.true.retry.outer_crit_edge ], [ true, %list_splice_init.exit ]
  %err.0.ph = phi i32 [ 10, %land.lhs.true.retry.outer_crit_edge ], [ 0, %list_splice_init.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %retry_cnt.0.ph)
  %cmp = icmp eq i32 %retry_cnt.0.ph, 5
  %cond = select i1 %cmp, ptr @.str.12, ptr @.str.13
  br label %retry

retry:                                            ; preds = %mode_select_handle_sense.exit.retry_crit_edge, %retry.outer
  %cmp31 = phi i1 [ false, %mode_select_handle_sense.exit.retry_crit_edge ], [ %cmp31.ph, %retry.outer ]
  %err.0 = phi i32 [ %err.0.i, %mode_select_handle_sense.exit.retry_crit_edge ], [ %err.0.ph, %retry.outer ]
  %25 = call ptr @memset(ptr %cdb, i32 0, i32 16)
  %26 = ptrtoint ptr %use_ms10.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %use_ms10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i113

if.then.i113:                                     ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #13
  %28 = call ptr @memset(ptr %mode_select6.i, i32 0, i32 308)
  %29 = ptrtoint ptr %page_code.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 108, ptr %page_code.i, align 2
  %30 = ptrtoint ptr %subpage_code.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %subpage_code.i, align 1
  %31 = ptrtoint ptr %page_len.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %page_len.i, align 2
  %32 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 40, ptr %arrayidx3.i, align 1
  br label %if.end.i

if.else.i:                                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #13
  %33 = call ptr @memset(ptr %mode_select6.i, i32 0, i32 110)
  %34 = ptrtoint ptr %page_code8.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 44, ptr %page_code8.i, align 1
  %35 = ptrtoint ptr %page_len9.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 104, ptr %page_len9.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i113
  %36 = phi i32 [ -342, %if.then.i113 ], [ -348, %if.else.i ]
  %data_size.0.i = phi i32 [ 308, %if.then.i113 ], [ 110, %if.else.i ]
  %common.0.i = phi ptr [ %common1.i, %if.then.i113 ], [ %common7.i, %if.else.i ]
  %arrayidx12.i = getelementptr %struct.rdac_mode_common, ptr %common.0.i, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 2, ptr %arrayidx12.i, align 1
  %quiescence_timeout.i = getelementptr inbounds %struct.rdac_mode_common, ptr %common.0.i, i32 0, i32 4
  %38 = ptrtoint ptr %quiescence_timeout.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 20, ptr %quiescence_timeout.i, align 1
  %rdac_options.i = getelementptr inbounds %struct.rdac_mode_common, ptr %common.0.i, i32 0, i32 5
  %39 = ptrtoint ptr %rdac_options.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 2, ptr %rdac_options.i, align 1
  %40 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %40)
  %qdata.059.i = load ptr, ptr %list, align 4
  %cmp.not60.i = icmp eq ptr %qdata.059.i, %list
  br i1 %cmp.not60.i, label %if.end.i.for.end.i_crit_edge, label %for.body.i.preheader

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i.preheader:                             ; preds = %if.end.i
  %41 = getelementptr i8, ptr %work, i32 %36
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %qdata.061.i = phi ptr [ %qdata.0.i, %for.body.i.for.body.i_crit_edge ], [ %qdata.059.i, %for.body.i.preheader ]
  %h.i = getelementptr inbounds %struct.rdac_queue_data, ptr %qdata.061.i, i32 0, i32 1
  %42 = ptrtoint ptr %h.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %h.i, align 4
  %lun.i = getelementptr inbounds %struct.rdac_dh_data, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %lun.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %lun.i, align 4
  %arrayidx14.i = getelementptr i8, ptr %41, i32 %45
  %46 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -127, ptr %arrayidx14.i, align 1
  %47 = ptrtoint ptr %qdata.061.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %qdata.0.i = load ptr, ptr %qdata.061.i, align 4
  %cmp.not.i = icmp eq ptr %qdata.0.i, %list
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %48 = ptrtoint ptr %use_ms10.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %use_ms10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool21.not.i = icmp eq i32 %49, 0
  br i1 %tobool21.not.i, label %if.else27.i, label %if.then22.i

if.then22.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %cdb to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 85, ptr %cdb, align 1
  %shr.i = lshr i32 %data_size.0.i, 8
  %conv.i = trunc i32 %shr.i to i8
  %51 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv.i, ptr %7, align 1
  br label %rdac_failover_get.exit

if.else27.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %cdb to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 21, ptr %cdb, align 1
  br label %rdac_failover_get.exit

rdac_failover_get.exit:                           ; preds = %if.else27.i, %if.then22.i
  %.sink.i = phi i32 [ 4, %if.else27.i ], [ 8, %if.then22.i ]
  %conv29.i = trunc i32 %data_size.0.i to i8
  %arrayidx30.i = getelementptr i8, ptr %cdb, i32 %.sink.i
  %53 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv29.i, ptr %arrayidx30.i, align 1
  %54 = load i32, ptr @rdac_logging, align 4
  %and = and i32 %54, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %rdac_failover_get.exit.do.end13_crit_edge, label %if.then, !prof !103

rdac_failover_get.exit.do.end13_crit_edge:        ; preds = %rdac_failover_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13

if.then:                                          ; preds = %rdac_failover_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %ctlr7 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ctlr7, align 4
  %array_name = getelementptr inbounds %struct.rdac_controller, ptr %56, i32 0, i32 6
  %index = getelementptr inbounds %struct.rdac_controller, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %index, align 4
  %conv = zext i8 %58 to i32
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.4, ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef %array_name, i32 noundef %conv, ptr noundef nonnull %cond) #11
  br label %do.end13

do.end13:                                         ; preds = %if.then, %rdac_failover_get.exit.do.end13_crit_edge
  %59 = ptrtoint ptr %ctlr7 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ctlr7, align 4
  %mode_select = getelementptr inbounds %struct.rdac_controller, ptr %60, i32 0, i32 4
  %call17 = call i32 @__scsi_execute(ptr noundef %1, ptr noundef nonnull %cdb, i32 noundef 1, ptr noundef %mode_select, i32 noundef %data_size.0.i, ptr noundef null, ptr noundef nonnull %sshdr, i32 noundef 600000, i32 noundef 3, i64 noundef 1792, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end30, label %if.then19

if.then19:                                        ; preds = %do.end13
  %61 = ptrtoint ptr %handler_data to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %handler_data, align 4
  %63 = ptrtoint ptr %sshdr to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %sshdr, align 8
  %65 = and i8 %64, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %65)
  %cmp.i.i = icmp eq i8 %65, 112
  br i1 %cmp.i.i, label %if.end.i114, label %if.then19.if.end54_crit_edge

if.then19.if.end54_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.end.i114:                                      ; preds = %if.then19
  %66 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %9, align 1
  %68 = zext i8 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %67, label %if.end.i114.do.body.i_crit_edge [
    i8 0, label %if.end.i114.sw.bb.i_crit_edge
    i8 11, label %if.end.i114.sw.bb.i_crit_edge163
    i8 6, label %if.end.i114.sw.bb.i_crit_edge164
    i8 2, label %sw.bb1.i
    i8 5, label %sw.bb9.i
  ]

if.end.i114.sw.bb.i_crit_edge164:                 ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end.i114.sw.bb.i_crit_edge163:                 ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end.i114.sw.bb.i_crit_edge:                    ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end.i114.do.body.i_crit_edge:                  ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

sw.bb.i:                                          ; preds = %if.end.i114.sw.bb.i_crit_edge, %if.end.i114.sw.bb.i_crit_edge163, %if.end.i114.sw.bb.i_crit_edge164
  br label %do.body.i

sw.bb1.i:                                         ; preds = %if.end.i114
  %69 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %10, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %70)
  %cmp.i = icmp eq i8 %70, 4
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb1.i.do.body.i_crit_edge

sw.bb1.i.do.body.i_crit_edge:                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

land.lhs.true.i:                                  ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %72)
  %cmp5.i = icmp eq i8 %72, 1
  %spec.select.i = select i1 %cmp5.i, i32 10, i32 8
  br label %do.body.i

sw.bb9.i:                                         ; preds = %if.end.i114
  %73 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %10, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -111, i8 %74)
  %cmp12.i = icmp eq i8 %74, -111
  br i1 %cmp12.i, label %land.lhs.true14.i, label %sw.bb9.i.do.body.i_crit_edge

sw.bb9.i.do.body.i_crit_edge:                     ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

land.lhs.true14.i:                                ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 54, i8 %76)
  %cmp17.i = icmp eq i8 %76, 54
  %spec.select43.i = select i1 %cmp17.i, i32 11, i32 8
  br label %do.body.i

do.body.i:                                        ; preds = %land.lhs.true14.i, %sw.bb9.i.do.body.i_crit_edge, %land.lhs.true.i, %sw.bb1.i.do.body.i_crit_edge, %sw.bb.i, %if.end.i114.do.body.i_crit_edge
  %err.0.i = phi i32 [ 8, %if.end.i114.do.body.i_crit_edge ], [ 8, %sw.bb9.i.do.body.i_crit_edge ], [ 8, %sw.bb1.i.do.body.i_crit_edge ], [ 10, %sw.bb.i ], [ %spec.select.i, %land.lhs.true.i ], [ %spec.select43.i, %land.lhs.true14.i ]
  %77 = load i32, ptr @rdac_logging, align 4
  %and.i = and i32 %77, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i115 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i115, label %do.body.i.mode_select_handle_sense.exit_crit_edge, label %if.then23.i, !prof !103

do.body.i.mode_select_handle_sense.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mode_select_handle_sense.exit

if.then23.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %ctlr.i = getelementptr inbounds %struct.rdac_dh_data, ptr %62, i32 0, i32 1
  %78 = ptrtoint ptr %ctlr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ctlr.i, align 4
  %array_name.i = getelementptr inbounds %struct.rdac_controller, ptr %79, i32 0, i32 6
  %index.i = getelementptr inbounds %struct.rdac_controller, ptr %79, i32 0, i32 5
  %80 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %index.i, align 4
  %conv25.i = zext i8 %81 to i32
  %conv27.i = zext i8 %67 to i32
  %82 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %10, align 2
  %conv29.i116 = zext i8 %83 to i32
  %84 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %11, align 1
  %conv31.i = zext i8 %85 to i32
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.4, ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef %array_name.i, i32 noundef %conv25.i, i32 noundef %conv27.i, i32 noundef %conv29.i116, i32 noundef %conv31.i) #11
  br label %mode_select_handle_sense.exit

mode_select_handle_sense.exit:                    ; preds = %if.then23.i, %do.body.i.mode_select_handle_sense.exit_crit_edge
  %86 = zext i32 %err.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %err.0.i, label %mode_select_handle_sense.exit.if.end54_crit_edge [
    i32 10, label %land.lhs.true
    i32 11, label %mode_select_handle_sense.exit.retry_crit_edge
  ]

mode_select_handle_sense.exit.retry_crit_edge:    ; preds = %mode_select_handle_sense.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry

mode_select_handle_sense.exit.if.end54_crit_edge: ; preds = %mode_select_handle_sense.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

land.lhs.true:                                    ; preds = %mode_select_handle_sense.exit
  %dec = add nsw i32 %retry_cnt.0.ph, -1
  %tobool23.not = icmp eq i32 %retry_cnt.0.ph, 0
  br i1 %tobool23.not, label %land.lhs.true.if.end54_crit_edge, label %land.lhs.true.retry.outer_crit_edge

land.lhs.true.retry.outer_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry.outer

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.end30:                                         ; preds = %do.end13
  br i1 %cmp31, label %if.then33, label %if.end30.if.end54_crit_edge

if.end30.if.end54_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then33:                                        ; preds = %if.end30
  %state = getelementptr inbounds %struct.rdac_dh_data, ptr %3, i32 0, i32 5
  %87 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %state, align 1
  %88 = load i32, ptr @rdac_logging, align 4
  %and36 = and i32 %88, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.then33.if.end54_crit_edge, label %if.then44, !prof !103

if.then33.if.end54_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then44:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %ctlr7 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ctlr7, align 4
  %array_name46 = getelementptr inbounds %struct.rdac_controller, ptr %90, i32 0, i32 6
  %index49 = getelementptr inbounds %struct.rdac_controller, ptr %90, i32 0, i32 5
  %91 = ptrtoint ptr %index49 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %index49, align 4
  %conv50 = zext i8 %92 to i32
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.4, ptr noundef %1, ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef %array_name46, i32 noundef %conv50) #11
  br label %if.end54

if.end54:                                         ; preds = %if.then44, %if.then33.if.end54_crit_edge, %if.end30.if.end54_crit_edge, %land.lhs.true.if.end54_crit_edge, %mode_select_handle_sense.exit.if.end54_crit_edge, %if.then19.if.end54_crit_edge
  %cmp31126 = phi i1 [ true, %if.then33.if.end54_crit_edge ], [ true, %if.then44 ], [ false, %if.end30.if.end54_crit_edge ], [ false, %if.then19.if.end54_crit_edge ], [ false, %mode_select_handle_sense.exit.if.end54_crit_edge ], [ false, %land.lhs.true.if.end54_crit_edge ]
  %err.1125 = phi i32 [ 0, %if.then33.if.end54_crit_edge ], [ 0, %if.then44 ], [ %err.0, %if.end30.if.end54_crit_edge ], [ %err.0.i, %mode_select_handle_sense.exit.if.end54_crit_edge ], [ 8, %if.then19.if.end54_crit_edge ], [ 10, %land.lhs.true.if.end54_crit_edge ]
  %93 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %list, align 4
  %cmp65.not135 = icmp eq ptr %94, %list
  br i1 %cmp65.not135, label %if.end54.for.end_crit_edge, label %if.end54.for.body_crit_edge

if.end54.for.body_crit_edge:                      ; preds = %if.end54
  br label %for.body

if.end54.for.end_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %if.end79.for.body_crit_edge, %if.end54.for.body_crit_edge
  %qdata.0136 = phi ptr [ %tmp1.0138, %if.end79.for.body_crit_edge ], [ %94, %if.end54.for.body_crit_edge ]
  %95 = ptrtoint ptr %qdata.0136 to i32
  call void @__asan_load4_noabort(i32 %95)
  %tmp1.0138 = load ptr, ptr %qdata.0136, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %qdata.0136) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %qdata.0136, i32 0, i32 1
  %96 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %prev.i.i, align 4
  %98 = ptrtoint ptr %qdata.0136 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %qdata.0136, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %97, ptr %prev1.i.i.i, align 4
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %99, ptr %97, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %102 = ptrtoint ptr %qdata.0136 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr inttoptr (i32 256 to ptr), ptr %qdata.0136, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %qdata.0136, i32 0, i32 1
  %103 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br i1 %cmp31126, label %if.then72, label %list_del.exit.if.end75_crit_edge

list_del.exit.if.end75_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then72:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %h73 = getelementptr inbounds %struct.rdac_queue_data, ptr %qdata.0136, i32 0, i32 1
  %104 = ptrtoint ptr %h73 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %h73, align 4
  %state74 = getelementptr inbounds %struct.rdac_dh_data, ptr %105, i32 0, i32 5
  %106 = ptrtoint ptr %state74 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %state74, align 1
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %list_del.exit.if.end75_crit_edge
  %callback_fn = getelementptr inbounds %struct.rdac_queue_data, ptr %qdata.0136, i32 0, i32 2
  %107 = ptrtoint ptr %callback_fn to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %callback_fn, align 4
  %tobool76.not = icmp eq ptr %108, null
  br i1 %tobool76.not, label %if.end75.if.end79_crit_edge, label %if.then77

if.end75.if.end79_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

if.then77:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  %callback_data = getelementptr inbounds %struct.rdac_queue_data, ptr %qdata.0136, i32 0, i32 3
  %109 = ptrtoint ptr %callback_data to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %callback_data, align 4
  call void %108(ptr noundef %110, i32 noundef %err.1125) #11
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.end75.if.end79_crit_edge
  call void @kfree(ptr noundef %qdata.0136) #11
  %cmp65.not = icmp eq ptr %tmp1.0138, %list
  br i1 %cmp65.not, label %if.end79.for.end_crit_edge, label %if.end79.for.body_crit_edge

if.end79.for.body_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end79.for.end_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end79.for.end_crit_edge, %if.end54.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cdb) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__scsi_execute(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_register_device_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !17, !18, !19, !21, !22, !24, !25, !27, !29, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !47, !48, !49, !51, !53, !55, !56, !57, !59, !60, !61, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !83, !84, !85, !86, !88, !89, !91, !92}
!llvm.named.register.sp = !{!93}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @__param_rdac_logging, !1, !"__param_rdac_logging", i1 false, i1 false}
!1 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 245, i32 1}
!2 = !{ptr @__UNIQUE_ID_rdac_loggingtype281, !1, !"__UNIQUE_ID_rdac_loggingtype281", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_rdac_logging282, !4, !"__UNIQUE_ID_rdac_logging282", i1 false, i1 false}
!4 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 246, i32 1}
!5 = !{ptr @__initcall__kmod_scsi_dh_rdac__286_829_rdac_init6, !6, !"__initcall__kmod_scsi_dh_rdac__286_829_rdac_init6", i1 false, i1 false}
!6 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 829, i32 1}
!7 = !{ptr @__exitcall_rdac_exit, !8, !"__exitcall_rdac_exit", i1 false, i1 false}
!8 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 830, i32 1}
!9 = !{ptr @__UNIQUE_ID_description287, !10, !"__UNIQUE_ID_description287", i1 false, i1 false}
!10 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 832, i32 1}
!11 = !{ptr @__UNIQUE_ID_author288, !12, !"__UNIQUE_ID_author288", i1 false, i1 false}
!12 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 833, i32 1}
!13 = !{ptr @__UNIQUE_ID_version289, !14, !"__UNIQUE_ID_version289", i1 false, i1 false}
!14 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 834, i32 1}
!15 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__modver_attr, !14, !"__modver_attr", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_file290, !20, !"__UNIQUE_ID_file290", i1 false, i1 false}
!20 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 835, i32 1}
!21 = !{ptr @__UNIQUE_ID_license291, !20, !"__UNIQUE_ID_license291", i1 false, i1 false}
!22 = !{ptr @kmpath_rdacd, !23, !"kmpath_rdacd", i1 false, i1 false}
!23 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 236, i32 33}
!24 = !{ptr @__param_str_rdac_logging, !1, !"__param_str_rdac_logging", i1 false, i1 false}
!25 = !{ptr @rdac_logging, !26, !"rdac_logging", i1 false, i1 false}
!26 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 244, i32 12}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 790, i32 10}
!29 = !{ptr @rdac_dh, !30, !"rdac_dh", i1 false, i1 false}
!30 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 789, i32 35}
!31 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 664, i32 2}
!33 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 753, i32 2}
!36 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @get_controller.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 353, i32 2}
!39 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @get_controller.__key.9, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 354, i32 2}
!42 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ctlr_list, !44, !"ctlr_list", i1 false, i1 false}
!44 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 234, i32 8}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 553, i32 2}
!47 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 569, i32 3}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 518, i32 2}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 425, i32 3}
!55 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!59 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!63 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 217, i32 2}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 218, i32 2}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 219, i32 2}
!70 = !{ptr @mode, !71, !"mode", i1 false, i1 false}
!71 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 216, i32 20}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 223, i32 2}
!74 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 224, i32 2}
!76 = !{ptr @lun_state, !77, !"lun_state", i1 false, i1 false}
!77 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 221, i32 20}
!78 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 235, i32 8}
!80 = !{ptr @list_lock, !79, !"list_lock", i1 false, i1 false}
!81 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 805, i32 3}
!83 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @rdac_init._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @rdac_init._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 812, i32 17}
!88 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/device_handler/scsi_dh_rdac.c", i32 815, i32 3}
!91 = !{ptr @rdac_init._entry.31, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @rdac_init._entry_ptr.33, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{!"sp"}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{!"branch_weights", i32 2000, i32 1}
!104 = !{i64 2148722985, i64 2148723017, i64 2148723046, i64 2148723080, i64 2148723111, i64 2148723134}
!105 = !{!"branch_weights", i32 1, i32 2000}
!106 = !{i64 2151526709}
!107 = !{i64 2148811010}
!108 = !{i64 2148725450, i64 2148725482, i64 2148725511, i64 2148725545, i64 2148725576, i64 2148725599}
!109 = !{i64 2149993434}
!110 = !{i64 2150042977}
!111 = !{i64 2154547061, i64 2154547568, i64 2154547098, i64 2154547154, i64 2154547188, i64 2154547212, i64 2154547253, i64 2154547274, i64 2154547302, i64 2154547336}
!112 = !{i64 2150043243}
