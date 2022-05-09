; ModuleID = '/llk/IR_all_yes/drivers/scsi/device_handler/scsi_dh_alua.c_pt.bc'
source_filename = "../drivers/scsi/device_handler/scsi_dh_alua.c"
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.alua_dh_data = type { %struct.list_head, ptr, i32, %struct.spinlock, ptr, i32, %struct.mutex, i8 }
%struct.alua_port_group = type { %struct.kref, %struct.callback_head, %struct.list_head, %struct.list_head, [256 x i8], i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.delayed_work, %struct.spinlock, %struct.list_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.alua_queue_data = type { %struct.list_head, ptr, ptr }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.38, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.39, %union.anon.40, %union.anon.41, %union.anon.46, ptr, ptr }
%union.anon.38 = type { %struct.list_head }
%union.anon.39 = type { %struct.hlist_node }
%union.anon.40 = type { %struct.rb_node }
%union.anon.41 = type { %struct.anon.45 }
%struct.anon.45 = type { i32, %struct.list_head, ptr }
%union.anon.46 = type { i64, [8 x i8] }

@__param_str_optimize_stpg = internal constant [27 x i8] c"scsi_dh_alua.optimize_stpg\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@optimize_stpg = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_optimize_stpg = internal constant %struct.kernel_param { ptr @__param_str_optimize_stpg, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @optimize_stpg } }, section "__param", align 4
@__UNIQUE_ID_optimize_stpgtype281 = internal constant [41 x i8] c"scsi_dh_alua.parmtype=optimize_stpg:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_optimize_stpg282 = internal constant [155 x i8] c"scsi_dh_alua.parm=optimize_stpg:Allow use of a non-optimized path, rather than sending a STPG, when implicit TPGS is supported (0=No,1=Yes). Default is 0.\00", section ".modinfo", align 1
@alua_dh = internal global { %struct.scsi_device_handler, [52 x i8] } { %struct.scsi_device_handler { %struct.list_head zeroinitializer, ptr null, ptr @.str.3, ptr @alua_check_sense, ptr @alua_bus_attach, ptr @alua_bus_detach, ptr @alua_activate, ptr @alua_prep_fn, ptr @alua_set_params, ptr @alua_rescan }, [52 x i8] zeroinitializer }, align 32
@kaluad_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_scsi_dh_alua__313_1280_alua_init6 = internal global ptr @alua_init, section ".initcall6.init", align 4
@__exitcall_alua_exit = internal global ptr @alua_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description314 = internal constant [51 x i8] c"scsi_dh_alua.description=DM Multipath ALUA support\00", section ".modinfo", align 1
@__UNIQUE_ID_author315 = internal constant [51 x i8] c"scsi_dh_alua.author=Hannes Reinecke <hare@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file316 = internal constant [59 x i8] c"scsi_dh_alua.file=drivers/scsi/device_handler/scsi_dh_alua\00", section ".modinfo", align 1
@__UNIQUE_ID_license317 = internal constant [25 x i8] c"scsi_dh_alua.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version318 = internal constant [25 x i8] c"scsi_dh_alua.version=2.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scsi_dh_alua\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"alua\00", [27 x i8] zeroinitializer }, align 32
@alua_check_sense.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/scsi/device_handler/scsi_dh_alua.c\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@alua_check.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@alua_rtpg_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@port_group_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"port_group_lock\00", [16 x i8] zeroinitializer }, align 32
@alua_bus_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&h->pg_lock\00", [20 x i8] zeroinitializer }, align 32
@alua_bus_attach.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&h->init_mutex\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: disable for non-disk devices\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: supports implicit and explicit TPGS\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: supports explicit TPGS\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: supports implicit TPGS\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: not supported\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: No target port descriptors found\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: device %s port group %x rel port %x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: port group %x rel port %x\0A\00", [33 x i8] zeroinitializer }, align 32
@alua_check_vpd.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@alua_check_vpd.__warned.24 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: No device descriptors found\0A\00", [63 x i8] zeroinitializer }, align 32
@alua_alloc_pg.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&pg->rtpg_work)->work)\00", [53 x i8] zeroinitializer }, align 32
@alua_alloc_pg.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&pg->rtpg_work)->timer\00", [39 x i8] zeroinitializer }, align 32
@alua_alloc_pg.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&pg->lock\00", [22 x i8] zeroinitializer }, align 32
@port_group_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @port_group_list, ptr @port_group_list }, [24 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: ignoring rtpg result %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: rtpg failed, result %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: rtpg retry\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: rtpg failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: kmalloc buffer failed\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.alua_rtpg = private unnamed_addr constant [10 x i8] c"alua_rtpg\00", align 1
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: transition timeout set to %d seconds\0A\00", [54 x i8] zeroinitializer }, align 32
@alua_rtpg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: port group %02x state %c %s supports %c%c%c%c%c%c%c\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"preferred\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"non-preferred\00", [18 x i8] zeroinitializer }, align 32
@alua_rtpg.__warned.43 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@alua_rtpg_select_sdev.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@alua_rtpg_select_sdev.__warned.44 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@alua_rtpg_select_sdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014%s: no device found for rtpg\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"alua_rtpg_select_sdev\00", [42 x i8] zeroinitializer }, align 32
@alua_rtpg_select_sdev._entry_ptr = internal global ptr @alua_rtpg_select_sdev._entry, section ".printk_index", align 4
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(nameless PG)\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rtpg retry on different device\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: stpg failed, unhandled TPGS state %d\00", [55 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: stpg failed, result %d\00", [37 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: stpg failed\0A\00", [47 x i8] zeroinitializer }, align 32
@alua_bus_detach.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@alua_activate.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@alua_prep_fn.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@alua_set_params.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kaluad\00", [25 x i8] zeroinitializer }, align 32
@alua_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 1268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: Failed to register scsi device handler\00", [51 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"alua_init\00", [22 x i8] zeroinitializer }, align 32
@alua_init._entry_ptr = internal global ptr @alua_init._entry, section ".printk_index", align 4
@switch.table.alua_rtpg_work = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 65, i32 78, i32 83, i32 85, i32 76, i32 88, i32 88, i32 88, i32 88, i32 88, i32 88, i32 88, i32 88, i32 88, i32 79, i32 84], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 6]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 8, i64 41, i64 42, i64 63]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 14]
@__sancov_gen_cov_switch_values.58 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 4, i64 15]
@__sancov_gen_cov_switch_values.59 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 6]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 14, i64 15]
@__sancov_gen_cov_switch_values.62 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 14, i64 15]
@___asan_gen_.63 = private unnamed_addr constant [14 x i8] c"optimize_stpg\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 53, i32 13 }
@___asan_gen_.66 = private unnamed_addr constant [8 x i8] c"alua_dh\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1245, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant [10 x i8] c"kaluad_wq\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 59, i32 33 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1286, i32 1 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1246, i32 10 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 422, i32 9 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 695, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 723, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [16 x i8] c"port_group_lock\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 58, i32 8 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1203, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1209, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 277, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 286, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 291, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 295, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 299, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 335, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 348, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 353, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 359, i32 11 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 227, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 240, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 244, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [16 x i8] c"port_group_list\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 57, i32 8 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 561, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 568, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 611, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 617, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 633, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 649, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 678, i32 6 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 702, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 845, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 851, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 790, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 799, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 805, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1056, i32 22 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1261, i32 30 }
@___asan_gen_.237 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.244 = private constant [46 x i8] c"../drivers/scsi/device_handler/scsi_dh_alua.c\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1267, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [28 x i8] c"switch.table.alua_rtpg_work\00", align 1
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_author315, ptr @__UNIQUE_ID_description314, ptr @__UNIQUE_ID_file316, ptr @__UNIQUE_ID_license317, ptr @__UNIQUE_ID_optimize_stpg282, ptr @__UNIQUE_ID_optimize_stpgtype281, ptr @__UNIQUE_ID_version318, ptr @__exitcall_alua_exit, ptr @__initcall__kmod_scsi_dh_alua__313_1280_alua_init6, ptr @__modver_attr, ptr @__param_optimize_stpg, ptr @alua_exit, ptr @alua_init._entry, ptr @alua_init._entry_ptr, ptr @alua_rtpg_select_sdev._entry, ptr @alua_rtpg_select_sdev._entry_ptr, ptr @optimize_stpg, ptr @alua_dh, ptr @kaluad_wq, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @port_group_lock, ptr @.str.9, ptr @alua_bus_attach.__key, ptr @.str.10, ptr @alua_bus_attach.__key.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @alua_alloc_pg.__key, ptr @.str.26, ptr @alua_alloc_pg.__key.27, ptr @.str.28, ptr @alua_alloc_pg.__key.29, ptr @.str.30, ptr @port_group_list, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @switch.table.alua_rtpg_work], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optimize_stpg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alua_dh to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kaluad_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_group_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alua_bus_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alua_bus_attach.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alua_alloc_pg.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alua_alloc_pg.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alua_alloc_pg.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_group_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alua_rtpg_select_sdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alua_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.alua_rtpg_work to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @alua_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @scsi_unregister_device_handler(ptr noundef nonnull @alua_dh) #12
  %0 = load ptr, ptr @kaluad_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_unregister_device_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @alua_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.53, i32 noundef 8, i32 noundef 0) #12
  store ptr %call, ptr @kaluad_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @scsi_register_device_handler(ptr noundef nonnull @alua_dh) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.3) #15
  %0 = load ptr, ptr @kaluad_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call1, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alua_check_sense(ptr noundef %sdev, ptr nocapture noundef readonly %sense_hdr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 60
  %0 = ptrtoint ptr %handler_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data, align 4
  %sense_key = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr, i32 0, i32 1
  %2 = ptrtoint ptr %sense_key to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sense_key, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %entry.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 6, label %sw.bb21
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %asc = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr, i32 0, i32 2
  %5 = ptrtoint ptr %asc to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %asc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %6)
  %cmp = icmp eq i8 %6, 4
  br i1 %cmp, label %land.lhs.true, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %ascq = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr, i32 0, i32 3
  %7 = ptrtoint ptr %ascq to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ascq, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %8)
  %cmp4 = icmp eq i8 %8, 10
  br i1 %cmp4, label %if.then, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then:                                          ; preds = %land.lhs.true
  %9 = tail call i32 @llvm.read_register.i32(metadata !150) #12
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !160
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.then.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then.rcu_read_lock.exit_crit_edge
  %pg6 = getelementptr inbounds %struct.alua_dh_data, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %pg6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %pg6, align 4
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true8, label %rcu_read_lock.exit.do.end15_crit_edge

rcu_read_lock.exit.do.end15_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15

land.lhs.true8:                                   ; preds = %rcu_read_lock.exit
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true8.do.end15_crit_edge, label %land.lhs.true11

land.lhs.true8.do.end15_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15

land.lhs.true11:                                  ; preds = %land.lhs.true8
  %.b121 = load i1, ptr @alua_check_sense.__warned, align 1
  br i1 %.b121, label %land.lhs.true11.do.end15_crit_edge, label %if.then13

land.lhs.true11.do.end15_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @alua_check_sense.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 422, ptr noundef nonnull @.str.5) #12
  br label %do.end15

do.end15:                                         ; preds = %if.then13, %land.lhs.true11.do.end15_crit_edge, %land.lhs.true8.do.end15_crit_edge, %rcu_read_lock.exit.do.end15_crit_edge
  %tobool17.not = icmp eq ptr %14, null
  br i1 %tobool17.not, label %do.end15.if.end19_crit_edge, label %if.then18

do.end15.if.end19_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then18:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #14
  %state = getelementptr inbounds %struct.alua_port_group, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 15, ptr %state, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %do.end15.if.end19_crit_edge
  %call.i122 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i122, label %if.end19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i125

if.end19.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i125:                               ; preds = %if.end19
  %call1.i123 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i123)
  %tobool.not.i124 = icmp eq i32 %call1.i123, 0
  br i1 %tobool.not.i124, label %land.lhs.true.i125.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i127

land.lhs.true.i125.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i125
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i127:                              ; preds = %land.lhs.true.i125
  %.b4.i126 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i126, label %land.lhs.true2.i127.rcu_read_unlock.exit_crit_edge, label %if.then.i128

land.lhs.true2.i127.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i127
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i128:                                     ; preds = %land.lhs.true2.i127
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i128, %land.lhs.true2.i127.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i125.rcu_read_unlock.exit_crit_edge, %if.end19.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !161
  %16 = tail call i32 @llvm.read_register.i32(metadata !150) #12
  %and.i.i.i.i.i129 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i129 to ptr
  %preempt_count.i.i.i.i130 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i130 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i130, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i130, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  tail call fastcc void @alua_check(ptr noundef %sdev, i1 noundef zeroext false)
  br label %cleanup

sw.bb21:                                          ; preds = %entry
  %asc22 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr, i32 0, i32 2
  %20 = ptrtoint ptr %asc22 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %asc22, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %21, label %sw.bb21.sw.epilog_crit_edge [
    i8 41, label %land.lhs.true26
    i8 42, label %land.lhs.true48
    i8 63, label %land.lhs.true81
  ]

sw.bb21.sw.epilog_crit_edge:                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true26:                                  ; preds = %sw.bb21
  %ascq27 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr, i32 0, i32 3
  %23 = ptrtoint ptr %ascq27 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ascq27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp29 = icmp eq i8 %24, 0
  br i1 %cmp29, label %if.then31, label %land.lhs.true37

if.then31:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @alua_check(ptr noundef %sdev, i1 noundef zeroext true)
  br label %cleanup

land.lhs.true37:                                  ; preds = %land.lhs.true26
  %25 = ptrtoint ptr %ascq27 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ascq27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %26)
  %cmp40 = icmp eq i8 %26, 4
  br i1 %cmp40, label %land.lhs.true37.cleanup_crit_edge, label %land.lhs.true37.sw.epilog_crit_edge

land.lhs.true37.sw.epilog_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true37.cleanup_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true48:                                  ; preds = %sw.bb21
  %ascq49 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr, i32 0, i32 3
  %27 = ptrtoint ptr %ascq49 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ascq49, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %cmp51 = icmp eq i8 %28, 1
  br i1 %cmp51, label %land.lhs.true48.cleanup_crit_edge, label %land.lhs.true59

land.lhs.true48.cleanup_crit_edge:                ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true59:                                  ; preds = %land.lhs.true48
  %29 = ptrtoint ptr %ascq49 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ascq49, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %30)
  %cmp62 = icmp eq i8 %30, 6
  br i1 %cmp62, label %if.then64, label %land.lhs.true70

if.then64:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @alua_check(ptr noundef %sdev, i1 noundef zeroext true)
  br label %cleanup

land.lhs.true70:                                  ; preds = %land.lhs.true59
  %31 = ptrtoint ptr %ascq49 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ascq49, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %32)
  %cmp73 = icmp eq i8 %32, 7
  br i1 %cmp73, label %if.then75, label %land.lhs.true70.sw.epilog_crit_edge

land.lhs.true70.sw.epilog_crit_edge:              ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then75:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @alua_check(ptr noundef %sdev, i1 noundef zeroext true)
  br label %cleanup

land.lhs.true81:                                  ; preds = %sw.bb21
  %ascq82 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr, i32 0, i32 3
  %33 = ptrtoint ptr %ascq82 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ascq82, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %34)
  %cmp84 = icmp eq i8 %34, 3
  br i1 %cmp84, label %land.lhs.true81.cleanup_crit_edge, label %land.lhs.true92

land.lhs.true81.cleanup_crit_edge:                ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true92:                                  ; preds = %land.lhs.true81
  %35 = ptrtoint ptr %ascq82 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ascq82, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %36)
  %cmp95 = icmp eq i8 %36, 14
  br i1 %cmp95, label %land.lhs.true92.cleanup_crit_edge, label %land.lhs.true92.sw.epilog_crit_edge

land.lhs.true92.sw.epilog_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true92.cleanup_crit_edge:                ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.epilog:                                        ; preds = %land.lhs.true92.sw.epilog_crit_edge, %land.lhs.true70.sw.epilog_crit_edge, %land.lhs.true37.sw.epilog_crit_edge, %sw.bb21.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %land.lhs.true92.cleanup_crit_edge, %land.lhs.true81.cleanup_crit_edge, %if.then75, %if.then64, %land.lhs.true48.cleanup_crit_edge, %land.lhs.true37.cleanup_crit_edge, %if.then31, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ 8200, %sw.epilog ], [ 8198, %if.then31 ], [ 8198, %if.then64 ], [ 8198, %if.then75 ], [ 8193, %rcu_read_unlock.exit ], [ 8198, %land.lhs.true37.cleanup_crit_edge ], [ 8198, %land.lhs.true48.cleanup_crit_edge ], [ 8198, %land.lhs.true81.cleanup_crit_edge ], [ 8198, %land.lhs.true92.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alua_bus_attach(ptr noundef %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 164) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  %pg_lock = getelementptr inbounds %struct.alua_dh_data, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %pg_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @alua_bus_attach.__key, i16 noundef signext 3) #12
  %pg = getelementptr inbounds %struct.alua_dh_data, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %pg to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr null, ptr %pg, align 8
  %init_error = getelementptr inbounds %struct.alua_dh_data, ptr %call7.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %init_error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %init_error, align 8
  %sdev38 = getelementptr inbounds %struct.alua_dh_data, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %sdev38 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sdev, ptr %sdev38, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %init_mutex = getelementptr inbounds %struct.alua_dh_data, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %init_mutex, ptr noundef nonnull @.str.12, ptr noundef nonnull @alua_bus_attach.__key.11) #12
  %call42 = tail call fastcc i32 @alua_initialize(ptr noundef %sdev, ptr noundef nonnull %call7.i.i)
  %6 = zext i32 %call42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %call42, label %failed [
    i32 0, label %do.body.if.end46_crit_edge
    i32 14, label %do.body.if.end46_crit_edge64
  ]

do.body.if.end46_crit_edge64:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

do.body.if.end46_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.end46:                                         ; preds = %do.body.if.end46_crit_edge, %do.body.if.end46_crit_edge64
  %handler_data = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 60
  %7 = ptrtoint ptr %handler_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %handler_data, align 4
  br label %cleanup

failed:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.end46, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %failed ], [ 0, %if.end46 ], [ 15, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alua_bus_detach(ptr nocapture noundef %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 60
  %0 = ptrtoint ptr %handler_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data, align 4
  %pg_lock = getelementptr inbounds %struct.alua_dh_data, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %pg_lock) #12
  %dep_map = getelementptr inbounds %struct.alua_dh_data, ptr %1, i32 0, i32 3, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b64 = load i1, ptr @alua_bus_detach.__warned, align 1
  br i1 %.b64, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @alua_bus_detach.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1231, ptr noundef nonnull @.str.23) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %pg6 = getelementptr inbounds %struct.alua_dh_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pg6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pg6, align 4
  store volatile ptr null, ptr %pg6, align 4
  tail call void @_raw_spin_unlock(ptr noundef %pg_lock) #12
  %tobool45.not = icmp eq ptr %3, null
  br i1 %tobool45.not, label %do.end.if.end49_crit_edge, label %if.then46

do.end.if.end49_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then46:                                        ; preds = %do.end
  %lock = getelementptr inbounds %struct.alua_port_group, ptr %3, i32 0, i32 16
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then46.list_del_rcu.exit_crit_edge

if.then46.list_del_rcu.exit_crit_edge:            ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.then46.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  tail call fastcc void @kref_put(ptr noundef nonnull %3)
  br label %if.end49

if.end49:                                         ; preds = %list_del_rcu.exit, %do.end.if.end49_crit_edge
  %11 = ptrtoint ptr %handler_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %handler_data, align 4
  tail call void @synchronize_rcu() #12
  tail call void @kfree(ptr noundef %1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alua_activate(ptr noundef %sdev, ptr noundef %fn, ptr noundef %data) #2 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 60
  %0 = ptrtoint ptr %handler_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 16) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %callback_fn = getelementptr inbounds %struct.alua_queue_data, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %callback_fn to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fn, ptr %callback_fn, align 8
  %callback_data = getelementptr inbounds %struct.alua_queue_data, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %callback_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %data, ptr %callback_data, align 4
  %init_mutex = getelementptr inbounds %struct.alua_dh_data, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %init_mutex, i32 noundef 0) #12
  %5 = tail call i32 @llvm.read_register.i32(metadata !150) #12
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !160
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %pg1 = getelementptr inbounds %struct.alua_dh_data, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %pg1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %pg1, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end12_crit_edge

rcu_read_lock.exit.do.end12_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true7

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b44 = load i1, ptr @alua_activate.__warned, align 1
  br i1 %.b44, label %land.lhs.true7.do.end12_crit_edge, label %if.then9

land.lhs.true7.do.end12_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @alua_activate.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1109, ptr noundef nonnull @.str.5) #12
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %land.lhs.true7.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %rcu_read_lock.exit.do.end12_crit_edge
  %tobool14.not = icmp eq ptr %10, null
  br i1 %tobool14.not, label %do.end12.if.then17_crit_edge, label %lor.lhs.false

do.end12.if.then17_crit_edge:                     ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

lor.lhs.false:                                    ; preds = %do.end12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %10, i32 noundef 4) #12
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %lor.lhs.false
  %13 = phi i32 [ %12, %lor.lhs.false ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %14 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %13, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %10, i32 noundef 4) #12
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #12
  %15 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %10, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %17 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %10, ptr nonnull %10, i32 %16, i32 %add.i.i.i.i, ptr nonnull elementtype(i32) %10) #12, !srcloc !162
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %17, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %16
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !163

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %18 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %19, 1
  %20 = or i32 %add5.i.i.i.i, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %.not.i.i.i.i = icmp sgt i32 %20, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !163

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef nonnull %10, i32 noundef 0) #12
  %21 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %22 = phi i32 [ %19, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool12.i.i.i.i.not = icmp eq i32 %22, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.if.then17_crit_edge, label %if.end19

kref_get_unless_zero.exit.if.then17_crit_edge:    ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

if.then17:                                        ; preds = %kref_get_unless_zero.exit.if.then17_crit_edge, %do.end12.if.then17_crit_edge
  %call.i45 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i45, label %if.then17.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i48

if.then17.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i48:                                ; preds = %if.then17
  %call1.i46 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool.not.i47, label %land.lhs.true.i48.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i50

land.lhs.true.i48.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i50:                               ; preds = %land.lhs.true.i48
  %.b4.i49 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i49, label %land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge, label %if.then.i51

land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i51:                                      ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i51, %land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i48.rcu_read_unlock.exit_crit_edge, %if.then17.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !161
  %23 = call i32 @llvm.read_register.i32(metadata !150) #12
  %and.i.i.i.i.i52 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i52 to ptr
  %preempt_count.i.i.i.i53 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i53, align 4
  %sub.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i53, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  %init_error = getelementptr inbounds %struct.alua_dh_data, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %init_error to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %init_error, align 4
  call void @mutex_unlock(ptr noundef %init_mutex) #12
  br label %out

if.end19:                                         ; preds = %kref_get_unless_zero.exit
  %call.i54 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i54, label %if.end19.rcu_read_unlock.exit64_crit_edge, label %land.lhs.true.i57

if.end19.rcu_read_unlock.exit64_crit_edge:        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit64

land.lhs.true.i57:                                ; preds = %if.end19
  %call1.i55 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i55)
  %tobool.not.i56 = icmp eq i32 %call1.i55, 0
  br i1 %tobool.not.i56, label %land.lhs.true.i57.rcu_read_unlock.exit64_crit_edge, label %land.lhs.true2.i59

land.lhs.true.i57.rcu_read_unlock.exit64_crit_edge: ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit64

land.lhs.true2.i59:                               ; preds = %land.lhs.true.i57
  %.b4.i58 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i58, label %land.lhs.true2.i59.rcu_read_unlock.exit64_crit_edge, label %if.then.i60

land.lhs.true2.i59.rcu_read_unlock.exit64_crit_edge: ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit64

if.then.i60:                                      ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_unlock.exit64

rcu_read_unlock.exit64:                           ; preds = %if.then.i60, %land.lhs.true2.i59.rcu_read_unlock.exit64_crit_edge, %land.lhs.true.i57.rcu_read_unlock.exit64_crit_edge, %if.end19.rcu_read_unlock.exit64_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !161
  %29 = call i32 @llvm.read_register.i32(metadata !150) #12
  %and.i.i.i.i.i61 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i61 to ptr
  %preempt_count.i.i.i.i62 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i62, align 4
  %sub.i.i.i63 = add i32 %32, -1
  store volatile i32 %sub.i.i.i63, ptr %preempt_count.i.i.i.i62, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  call void @mutex_unlock(ptr noundef %init_mutex) #12
  %call21 = call fastcc zeroext i1 @alua_rtpg_queue(ptr noundef nonnull %10, ptr noundef %sdev, ptr noundef nonnull %call7.i.i, i1 noundef zeroext true)
  call fastcc void @kref_put(ptr noundef nonnull %10)
  br i1 %call21, label %rcu_read_unlock.exit64.if.end28_crit_edge, label %rcu_read_unlock.exit64.out_crit_edge

rcu_read_unlock.exit64.out_crit_edge:             ; preds = %rcu_read_unlock.exit64
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

rcu_read_unlock.exit64.if.end28_crit_edge:        ; preds = %rcu_read_unlock.exit64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

out:                                              ; preds = %rcu_read_unlock.exit64.out_crit_edge, %rcu_read_unlock.exit, %entry.out_crit_edge
  %err.1 = phi i32 [ 14, %rcu_read_unlock.exit64.out_crit_edge ], [ %28, %rcu_read_unlock.exit ], [ 13, %entry.out_crit_edge ]
  %tobool26.not = icmp eq ptr %fn, null
  br i1 %tobool26.not, label %out.if.end28_crit_edge, label %if.then27

out.if.end28_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then27:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  call void %fn(ptr noundef %data, i32 noundef %err.1) #12
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %out.if.end28_crit_edge, %rcu_read_unlock.exit64.if.end28_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @alua_prep_fn(ptr nocapture noundef readonly %sdev, ptr nocapture noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 60
  %0 = ptrtoint ptr %handler_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !150) #12
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !160
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %pg1 = getelementptr inbounds %struct.alua_dh_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pg1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %pg1, align 4
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b20 = load i1, ptr @alua_prep_fn.__warned, align 1
  br i1 %.b20, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @alua_prep_fn.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1166, ptr noundef nonnull @.str.5) #12
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %do.end8.if.end13_crit_edge, label %if.then11

do.end8.if.end13_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  %state12 = getelementptr inbounds %struct.alua_port_group, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %state12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state12, align 4
  %phi.cast19 = trunc i32 %9 to i8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.end8.if.end13_crit_edge
  %state.0 = phi i8 [ %phi.cast19, %if.then11 ], [ 0, %do.end8.if.end13_crit_edge ]
  %call.i21 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i21, label %if.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i24

if.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i24:                                ; preds = %if.end13
  %call1.i22 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22)
  %tobool.not.i23 = icmp eq i32 %call1.i22, 0
  br i1 %tobool.not.i23, label %land.lhs.true.i24.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i26

land.lhs.true.i24.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i26:                               ; preds = %land.lhs.true.i24
  %.b4.i25 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i25, label %land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge, label %if.then.i27

land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i27:                                      ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i27, %land.lhs.true2.i26.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i24.rcu_read_unlock.exit_crit_edge, %if.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !161
  %10 = tail call i32 @llvm.read_register.i32(metadata !150) #12
  %and.i.i.i.i.i28 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i28 to ptr
  %preempt_count.i.i.i.i29 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i29, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i29, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %14 = zext i8 %state.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %state.0, label %sw.default [
    i8 0, label %rcu_read_unlock.exit.cleanup_crit_edge
    i8 1, label %rcu_read_unlock.exit.cleanup_crit_edge30
    i8 4, label %rcu_read_unlock.exit.cleanup_crit_edge31
    i8 15, label %sw.bb15
  ]

rcu_read_unlock.exit.cleanup_crit_edge31:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

rcu_read_unlock.exit.cleanup_crit_edge30:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb15:                                          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.default:                                       ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %rq_flags = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 4
  %15 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rq_flags, align 8
  %or = or i32 %16, 2048
  store i32 %or, ptr %rq_flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb15, %rcu_read_unlock.exit.cleanup_crit_edge, %rcu_read_unlock.exit.cleanup_crit_edge30, %rcu_read_unlock.exit.cleanup_crit_edge31
  %retval.0 = phi i8 [ 10, %sw.default ], [ 12, %sw.bb15 ], [ 0, %rcu_read_unlock.exit.cleanup_crit_edge ], [ 0, %rcu_read_unlock.exit.cleanup_crit_edge30 ], [ 0, %rcu_read_unlock.exit.cleanup_crit_edge31 ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alua_set_params(ptr nocapture noundef readonly %sdev, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  %optimize = alloca i32, align 4
  %argc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 60
  %0 = ptrtoint ptr %handler_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %optimize) #12
  %2 = ptrtoint ptr %optimize to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %optimize, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %argc) #12
  %3 = ptrtoint ptr %argc to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %argc, align 4, !annotation !164
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %params, ptr noundef nonnull @.str.52, ptr noundef nonnull %argc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %argc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1.not = icmp eq i32 %5, 1
  br i1 %cmp1.not, label %lor.lhs.false.while.cond_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.while.cond_crit_edge:               ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %lor.lhs.false.while.cond_crit_edge
  %p.0 = phi ptr [ %incdec.ptr, %while.cond.while.cond_crit_edge ], [ %params, %lor.lhs.false.while.cond_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %p.0, i32 1
  %6 = ptrtoint ptr %p.0 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %p.0, align 1
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call2 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %incdec.ptr, ptr noundef nonnull @.str.52, ptr noundef nonnull %optimize)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 1
  br i1 %cmp3.not, label %lor.lhs.false4, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false4:                                   ; preds = %while.end
  %8 = ptrtoint ptr %optimize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %optimize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp5 = icmp ugt i32 %9, 1
  br i1 %cmp5, label %lor.lhs.false4.cleanup_crit_edge, label %if.end7

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false4
  %10 = call i32 @llvm.read_register.i32(metadata !150) #12
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !160
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end7.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end7.rcu_read_lock.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end7
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end7.rcu_read_lock.exit_crit_edge
  %pg8 = getelementptr inbounds %struct.alua_dh_data, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %pg8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %pg8, align 4
  %call10 = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end19_crit_edge

rcu_read_lock.exit.do.end19_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end19

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call12 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.do.end19_crit_edge, label %land.lhs.true14

land.lhs.true.do.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end19

land.lhs.true14:                                  ; preds = %land.lhs.true
  %.b52 = load i1, ptr @alua_set_params.__warned, align 1
  br i1 %.b52, label %land.lhs.true14.do.end19_crit_edge, label %if.then16

land.lhs.true14.do.end19_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end19

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @alua_set_params.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1065, ptr noundef nonnull @.str.5) #12
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %land.lhs.true14.do.end19_crit_edge, %land.lhs.true.do.end19_crit_edge, %rcu_read_lock.exit.do.end19_crit_edge
  %tobool21.not = icmp eq ptr %15, null
  br i1 %tobool21.not, label %if.then22, label %do.body25

if.then22:                                        ; preds = %do.end19
  %call.i53 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i53, label %if.then22.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i56

if.then22.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i56:                                ; preds = %if.then22
  %call1.i54 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i54)
  %tobool.not.i55 = icmp eq i32 %call1.i54, 0
  br i1 %tobool.not.i55, label %land.lhs.true.i56.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i58

land.lhs.true.i56.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i56
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i58:                               ; preds = %land.lhs.true.i56
  %.b4.i57 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i57, label %land.lhs.true2.i58.rcu_read_unlock.exit_crit_edge, label %if.then.i59

land.lhs.true2.i58.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i58
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i59:                                      ; preds = %land.lhs.true2.i58
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i59, %land.lhs.true2.i58.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i56.rcu_read_unlock.exit_crit_edge, %if.then22.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !161
  br label %cleanup.sink.split

do.body25:                                        ; preds = %do.end19
  %lock = getelementptr inbounds %struct.alua_port_group, ptr %15, i32 0, i32 16
  %call29 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %16 = ptrtoint ptr %optimize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %optimize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool34.not = icmp ne i32 %17, 0
  %flags37 = getelementptr inbounds %struct.alua_port_group, ptr %15, i32 0, i32 11
  %18 = ptrtoint ptr %flags37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags37, align 4
  %and = and i32 %19, -2
  %masksel = zext i1 %tobool34.not to i32
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %flags37, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call29) #12
  %call.i62 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i62, label %do.body25.rcu_read_unlock.exit72_crit_edge, label %land.lhs.true.i65

do.body25.rcu_read_unlock.exit72_crit_edge:       ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit72

land.lhs.true.i65:                                ; preds = %do.body25
  %call1.i63 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63)
  %tobool.not.i64 = icmp eq i32 %call1.i63, 0
  br i1 %tobool.not.i64, label %land.lhs.true.i65.rcu_read_unlock.exit72_crit_edge, label %land.lhs.true2.i67

land.lhs.true.i65.rcu_read_unlock.exit72_crit_edge: ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit72

land.lhs.true2.i67:                               ; preds = %land.lhs.true.i65
  %.b4.i66 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i66, label %land.lhs.true2.i67.rcu_read_unlock.exit72_crit_edge, label %if.then.i68

land.lhs.true2.i67.rcu_read_unlock.exit72_crit_edge: ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit72

if.then.i68:                                      ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_unlock.exit72

rcu_read_unlock.exit72:                           ; preds = %if.then.i68, %land.lhs.true2.i67.rcu_read_unlock.exit72_crit_edge, %land.lhs.true.i65.rcu_read_unlock.exit72_crit_edge, %do.body25.rcu_read_unlock.exit72_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !161
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %rcu_read_unlock.exit72, %rcu_read_unlock.exit
  %retval.0.ph = phi i32 [ -6, %rcu_read_unlock.exit ], [ 0, %rcu_read_unlock.exit72 ]
  %20 = call i32 @llvm.read_register.i32(metadata !150) #12
  %and.i.i.i.i.i60 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i60 to ptr
  %preempt_count.i.i.i.i61 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i61, align 4
  %sub.i.i.i71 = add i32 %23, -1
  store volatile i32 %sub.i.i.i71, ptr %preempt_count.i.i.i.i61, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false4.cleanup_crit_edge, %while.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %while.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %argc) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %optimize) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alua_rescan(ptr noundef %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 60
  %0 = ptrtoint ptr %handler_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data, align 4
  %call = tail call fastcc i32 @alua_initialize(ptr noundef %sdev, ptr noundef %1)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !161
  %0 = tail call i32 @llvm.read_register.i32(metadata !150) #12
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alua_check(ptr noundef %sdev, i1 noundef zeroext %force) unnamed_addr #2 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 60
  %0 = ptrtoint ptr %handler_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !150) #12
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !160
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %pg1 = getelementptr inbounds %struct.alua_dh_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pg1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %pg1, align 4
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b24 = load i1, ptr @alua_check.__warned, align 1
  br i1 %.b24, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @alua_check.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 1143, ptr noundef nonnull @.str.5) #12
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %do.end8.if.then13_crit_edge, label %lor.lhs.false

do.end8.if.then13_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

lor.lhs.false:                                    ; preds = %do.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %7, i32 noundef 4) #12
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %lor.lhs.false
  %10 = phi i32 [ %9, %lor.lhs.false ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %11 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %10, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %7, i32 noundef 4) #12
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #12
  %12 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %7, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %14 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 %13, i32 %add.i.i.i.i, ptr nonnull elementtype(i32) %7) #12, !srcloc !162
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %13
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !163

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %15 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %16, 1
  %17 = or i32 %add5.i.i.i.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !163

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef nonnull %7, i32 noundef 0) #12
  %18 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %19 = phi i32 [ %16, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.i.i.i.i.not = icmp eq i32 %19, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.if.then13_crit_edge, label %if.end14

kref_get_unless_zero.exit.if.then13_crit_edge:    ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

if.then13:                                        ; preds = %kref_get_unless_zero.exit.if.then13_crit_edge, %do.end8.if.then13_crit_edge
  %call.i25 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i25, label %if.then13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i28

if.then13.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i28:                                ; preds = %if.then13
  %call1.i26 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26)
  %tobool.not.i27 = icmp eq i32 %call1.i26, 0
  br i1 %tobool.not.i27, label %land.lhs.true.i28.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i30

land.lhs.true.i28.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i30:                               ; preds = %land.lhs.true.i28
  %.b4.i29 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i29, label %land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge, label %if.then.i31

land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i31:                                      ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i31, %land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i28.rcu_read_unlock.exit_crit_edge, %if.then13.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !161
  %20 = call i32 @llvm.read_register.i32(metadata !150) #12
  %and.i.i.i.i.i32 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i32 to ptr
  %preempt_count.i.i.i.i33 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i33, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i33, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

if.end14:                                         ; preds = %kref_get_unless_zero.exit
  %call.i34 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i34, label %if.end14.rcu_read_unlock.exit44_crit_edge, label %land.lhs.true.i37

if.end14.rcu_read_unlock.exit44_crit_edge:        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit44

land.lhs.true.i37:                                ; preds = %if.end14
  %call1.i35 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i35)
  %tobool.not.i36 = icmp eq i32 %call1.i35, 0
  br i1 %tobool.not.i36, label %land.lhs.true.i37.rcu_read_unlock.exit44_crit_edge, label %land.lhs.true2.i39

land.lhs.true.i37.rcu_read_unlock.exit44_crit_edge: ; preds = %land.lhs.true.i37
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit44

land.lhs.true2.i39:                               ; preds = %land.lhs.true.i37
  %.b4.i38 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i38, label %land.lhs.true2.i39.rcu_read_unlock.exit44_crit_edge, label %if.then.i40

land.lhs.true2.i39.rcu_read_unlock.exit44_crit_edge: ; preds = %land.lhs.true2.i39
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit44

if.then.i40:                                      ; preds = %land.lhs.true2.i39
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_unlock.exit44

rcu_read_unlock.exit44:                           ; preds = %if.then.i40, %land.lhs.true2.i39.rcu_read_unlock.exit44_crit_edge, %land.lhs.true.i37.rcu_read_unlock.exit44_crit_edge, %if.end14.rcu_read_unlock.exit44_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !161
  %24 = call i32 @llvm.read_register.i32(metadata !150) #12
  %and.i.i.i.i.i41 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i41 to ptr
  %preempt_count.i.i.i.i42 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i42, align 4
  %sub.i.i.i43 = add i32 %27, -1
  store volatile i32 %sub.i.i.i43, ptr %preempt_count.i.i.i.i42, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %call16 = call fastcc zeroext i1 @alua_rtpg_queue(ptr noundef nonnull %7, ptr noundef %sdev, ptr noundef null, i1 noundef zeroext %force)
  call fastcc void @kref_put(ptr noundef nonnull %7)
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit44, %rcu_read_unlock.exit
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @alua_rtpg_queue(ptr noundef %pg, ptr noundef %sdev, ptr noundef %qdata, i1 noundef zeroext %force) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pg, null
  br i1 %tobool.not, label %land.rhs, label %lor.lhs.false.critedge

land.rhs:                                         ; preds = %entry
  %.b113 = load i1, ptr @alua_rtpg_queue.__already_done, align 1
  br i1 %.b113, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !163

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @alua_rtpg_queue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 979, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

lor.lhs.false.critedge:                           ; preds = %entry
  %call = tail call i32 @scsi_device_get(ptr noundef %sdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool39.not = icmp eq i32 %call, 0
  br i1 %tobool39.not, label %do.body43, label %lor.lhs.false.critedge.cleanup_crit_edge

lor.lhs.false.critedge.cleanup_crit_edge:         ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body43:                                        ; preds = %lor.lhs.false.critedge
  %lock = getelementptr inbounds %struct.alua_port_group, ptr %pg, i32 0, i32 16
  %call46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %tobool51.not = icmp eq ptr %qdata, null
  br i1 %tobool51.not, label %do.body43.if.end55_crit_edge, label %if.then52

do.body43.if.end55_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then52:                                        ; preds = %do.body43
  %rtpg_list = getelementptr inbounds %struct.alua_port_group, ptr %pg, i32 0, i32 17
  %prev.i = getelementptr inbounds %struct.alua_port_group, ptr %pg, i32 0, i32 17, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %qdata, ptr noundef %1, ptr noundef %rtpg_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then52.list_add_tail.exit_crit_edge

if.then52.list_add_tail.exit_crit_edge:           ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %qdata, ptr %prev.i, align 4
  %3 = ptrtoint ptr %qdata to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %rtpg_list, ptr %qdata, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %qdata, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %qdata, ptr %1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then52.list_add_tail.exit_crit_edge
  %flags54 = getelementptr inbounds %struct.alua_port_group, ptr %pg, i32 0, i32 11
  %6 = ptrtoint ptr %flags54 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags54, align 4
  %or = or i32 %7, 32
  store i32 %or, ptr %flags54, align 4
  br label %if.end55

if.end55:                                         ; preds = %list_add_tail.exit, %do.body43.if.end55_crit_edge
  %force.addr.0.off0 = phi i1 [ true, %list_add_tail.exit ], [ %force, %do.body43.if.end55_crit_edge ]
  %rtpg_sdev = getelementptr inbounds %struct.alua_port_group, ptr %pg, i32 0, i32 18
  %8 = ptrtoint ptr %rtpg_sdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rtpg_sdev, align 4
  %cmp56 = icmp eq ptr %9, null
  br i1 %cmp56, label %if.then58, label %if.else

if.then58:                                        ; preds = %if.end55
  %interval = getelementptr inbounds %struct.alua_port_group, ptr %pg, i32 0, i32 14
  %10 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %interval, align 4
  %flags59 = getelementptr inbounds %struct.alua_port_group, ptr %pg, i32 0, i32 11
  %11 = ptrtoint ptr %flags59 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags59, align 4
  %or60 = or i32 %12, 16
  store i32 %or60, ptr %flags59, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %pg, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull %pg, i32 1, i32 3, i32 1) #12
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %pg, ptr nonnull %pg, i32 1, ptr nonnull elementtype(i32) %pg) #12, !srcloc !165
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then58.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !166

if.then58.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then58
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !163

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then58.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then58.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %pg, i32 noundef %.sink.i.i.i.i) #12
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %15 = ptrtoint ptr %rtpg_sdev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %sdev, ptr %rtpg_sdev, align 4
  br label %if.then79

if.else:                                          ; preds = %if.end55
  %flags62 = getelementptr inbounds %struct.alua_port_group, ptr %pg, i32 0, i32 11
  %16 = ptrtoint ptr %flags62 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags62, align 4
  %and = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool63.not = icmp eq i32 %and, 0
  %18 = and i1 %force.addr.0.off0, %tobool63.not
  br i1 %18, label %if.then66, label %if.end87.critedge

if.then66:                                        ; preds = %if.else
  %or68 = or i32 %17, 16
  %19 = ptrtoint ptr %flags62 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or68, ptr %flags62, align 4
  %and70 = and i32 %17, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.then72, label %if.end87.critedge115

if.then72:                                        ; preds = %if.then66
  %call.i.i.i.i.i.i116 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %pg, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull %pg, i32 1, i32 3, i32 1) #12
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %pg, ptr nonnull %pg, i32 1, ptr nonnull elementtype(i32) %pg) #12, !srcloc !165
  %asmresult.i.i.i.i.i.i117 = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i117)
  %tobool1.not.i.i.i.i118 = icmp eq i32 %asmresult.i.i.i.i.i.i117, 0
  br i1 %tobool1.not.i.i.i.i118, label %if.then72.if.end15.sink.split.i.i.i.i123_crit_edge, label %if.else.i.i.i.i121, !prof !166

if.then72.if.end15.sink.split.i.i.i.i123_crit_edge: ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i123

if.else.i.i.i.i121:                               ; preds = %if.then72
  %add.i.i.i.i119 = add i32 %asmresult.i.i.i.i.i.i117, 1
  %21 = or i32 %add.i.i.i.i119, %asmresult.i.i.i.i.i.i117
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %.not.i.i.i.i120 = icmp sgt i32 %21, -1
  br i1 %.not.i.i.i.i120, label %if.else.i.i.i.i121.if.then79_crit_edge, label %if.else.i.i.i.i121.if.end15.sink.split.i.i.i.i123_crit_edge, !prof !163

if.else.i.i.i.i121.if.end15.sink.split.i.i.i.i123_crit_edge: ; preds = %if.else.i.i.i.i121
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i123

if.else.i.i.i.i121.if.then79_crit_edge:           ; preds = %if.else.i.i.i.i121
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then79

if.end15.sink.split.i.i.i.i123:                   ; preds = %if.else.i.i.i.i121.if.end15.sink.split.i.i.i.i123_crit_edge, %if.then72.if.end15.sink.split.i.i.i.i123_crit_edge
  %.sink.i.i.i.i122 = phi i32 [ 2, %if.then72.if.end15.sink.split.i.i.i.i123_crit_edge ], [ 1, %if.else.i.i.i.i121.if.end15.sink.split.i.i.i.i123_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %pg, i32 noundef %.sink.i.i.i.i122) #12
  br label %if.then79

if.then79:                                        ; preds = %if.end15.sink.split.i.i.i.i123, %if.else.i.i.i.i121.if.then79_crit_edge, %kref_get.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call46) #12
  %22 = load ptr, ptr @kaluad_wq, align 4
  %rtpg_work = getelementptr inbounds %struct.alua_port_group, ptr %pg, i32 0, i32 15
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %rtpg_work, i32 noundef 1) #12
  br i1 %call.i, label %if.then79.cleanup_crit_edge, label %if.else83

if.then79.cleanup_crit_edge:                      ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else83:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @kref_put(ptr noundef nonnull %pg)
  br label %if.end87

if.end87.critedge:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call46) #12
  br label %if.end87

if.end87.critedge115:                             ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call46) #12
  br label %if.end87

if.end87:                                         ; preds = %if.end87.critedge115, %if.end87.critedge, %if.else83
  %tobool88.not = icmp eq ptr %sdev, null
  br i1 %tobool88.not, label %if.end87.cleanup_crit_edge, label %if.then89

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then89:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @scsi_device_put(ptr noundef nonnull %sdev) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then89, %if.end87.cleanup_crit_edge, %if.then79.cleanup_crit_edge, %lor.lhs.false.critedge.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %land.rhs.cleanup_crit_edge ], [ false, %if.then ], [ false, %lor.lhs.false.critedge.cleanup_crit_edge ], [ true, %if.then89 ], [ true, %if.end87.cleanup_crit_edge ], [ true, %if.then79.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_put(ptr noundef %kref) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !167
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #12, !srcloc !168
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !163

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #12
  br label %return

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !169
  %rtpg_sdev.i = getelementptr inbounds %struct.alua_port_group, ptr %kref, i32 0, i32 18
  %1 = ptrtoint ptr %rtpg_sdev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rtpg_sdev.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %rtpg_work.i = getelementptr inbounds %struct.alua_port_group, ptr %kref, i32 0, i32 15
  %call.i = tail call zeroext i1 @flush_delayed_work(ptr noundef %rtpg_work.i) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @port_group_lock) #12
  %node.i = getelementptr inbounds %struct.alua_port_group, ptr %kref, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.alua_port_group, ptr %kref, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i, align 4
  %prev.i.i = getelementptr inbounds %struct.alua_port_group, ptr %kref, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @port_group_lock) #12
  %tobool1.not.i = icmp eq ptr %kref, null
  br i1 %tobool1.not.i, label %list_del.exit.i.return_crit_edge, label %do.end.i

list_del.exit.i.return_crit_edge:                 ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end.i:                                         ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %rcu.i = getelementptr inbounds %struct.alua_port_group, ptr %kref, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #12
  br label %return

return:                                           ; preds = %do.end.i, %list_del.exit.i.return_crit_edge, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_device_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alua_initialize(ptr noundef %sdev, ptr noundef %h) unnamed_addr #2 align 64 {
entry:
  %rel_port.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %init_mutex = getelementptr inbounds %struct.alua_dh_data, ptr %h, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %init_mutex, i32 noundef 0) #12
  %disabled = getelementptr inbounds %struct.alua_dh_data, ptr %h, i32 0, i32 7
  %0 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %disabled, align 4
  %type.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 22
  %1 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp.not.i = icmp eq i8 %2, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.alua_check_tpgs.exit_crit_edge

entry.alua_check_tpgs.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %alua_check_tpgs.exit

if.end.i:                                         ; preds = %entry
  %inquiry.i.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 29
  %3 = ptrtoint ptr %inquiry.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %inquiry.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.alua_check_tpgs.exit_crit_edge, label %scsi_device_tpgs.exit.i

if.end.i.alua_check_tpgs.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %alua_check_tpgs.exit

scsi_device_tpgs.exit.i:                          ; preds = %if.end.i
  %arrayidx.i.i = getelementptr i8, ptr %4, i32 5
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i, align 1
  %7 = lshr i8 %6, 4
  %8 = and i8 %7, 3
  %and.i.i = zext i8 %8 to i32
  %9 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %and.i.i, label %scsi_device_tpgs.exit.unreachabledefault.i [
    i32 3, label %scsi_device_tpgs.exit.i.if.then_crit_edge
    i32 2, label %sw.bb2.i
    i32 1, label %sw.bb3.i
    i32 0, label %scsi_device_tpgs.exit.i.alua_check_tpgs.exit_crit_edge
  ]

scsi_device_tpgs.exit.i.alua_check_tpgs.exit_crit_edge: ; preds = %scsi_device_tpgs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %alua_check_tpgs.exit

scsi_device_tpgs.exit.i.if.then_crit_edge:        ; preds = %scsi_device_tpgs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

sw.bb2.i:                                         ; preds = %scsi_device_tpgs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

sw.bb3.i:                                         ; preds = %scsi_device_tpgs.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

scsi_device_tpgs.exit.unreachabledefault.i:       ; preds = %scsi_device_tpgs.exit.i
  unreachable

alua_check_tpgs.exit:                             ; preds = %scsi_device_tpgs.exit.i.alua_check_tpgs.exit_crit_edge, %if.end.i.alua_check_tpgs.exit_crit_edge, %entry.alua_check_tpgs.exit_crit_edge
  %.str.15.sink.i = phi ptr [ @.str.14, %entry.alua_check_tpgs.exit_crit_edge ], [ @.str.18, %scsi_device_tpgs.exit.i.alua_check_tpgs.exit_crit_edge ], [ @.str.18, %if.end.i.alua_check_tpgs.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.13, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull %.str.15.sink.i, ptr noundef nonnull @.str.3) #12
  br label %if.end

if.then:                                          ; preds = %sw.bb3.i, %sw.bb2.i, %scsi_device_tpgs.exit.i.if.then_crit_edge
  %.str.15.sink.i.ph = phi ptr [ @.str.15, %scsi_device_tpgs.exit.i.if.then_crit_edge ], [ @.str.17, %sw.bb3.i ], [ @.str.16, %sw.bb2.i ]
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.13, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull %.str.15.sink.i.ph, ptr noundef nonnull @.str.3) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rel_port.i) #12
  %10 = ptrtoint ptr %rel_port.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %rel_port.i, align 4
  %call.i = call i32 @scsi_vpd_tpg_id(ptr noundef %sdev, ptr noundef nonnull %rel_port.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i11

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.13, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.3) #12
  br label %alua_check_vpd.exit

if.end.i11:                                       ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 480) #16
  %tobool.not.i.i10 = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i10, label %if.end.i11.if.then3.i_crit_edge, label %if.end.i.i

if.end.i11.if.then3.i_crit_edge:                  ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3.i

if.end.i.i:                                       ; preds = %if.end.i11
  %device_id_str.i.i = getelementptr inbounds %struct.alua_port_group, ptr %call7.i.i.i.i, i32 0, i32 4
  %call2.i.i = call i32 @scsi_vpd_lun_id(ptr noundef %sdev, ptr noundef %device_id_str.i.i, i32 noundef 256) #12
  %device_id_len.i.i = getelementptr inbounds %struct.alua_port_group, ptr %call7.i.i.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %device_id_len.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call2.i.i, ptr %device_id_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 1
  br i1 %cmp.i.i, label %if.then4.i.i, label %if.end.i.i.if.end7.i.i_crit_edge

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.13, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.3) #12
  %13 = ptrtoint ptr %device_id_str.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %device_id_str.i.i, align 4
  %14 = ptrtoint ptr %device_id_len.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %device_id_len.i.i, align 4
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then4.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %group_id8.i.i = getelementptr inbounds %struct.alua_port_group, ptr %call7.i.i.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %group_id8.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.i, ptr %group_id8.i.i, align 8
  %tpgs9.i.i = getelementptr inbounds %struct.alua_port_group, ptr %call7.i.i.i.i, i32 0, i32 7
  %16 = ptrtoint ptr %tpgs9.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and.i.i, ptr %tpgs9.i.i, align 4
  %state.i.i = getelementptr inbounds %struct.alua_port_group, ptr %call7.i.i.i.i, i32 0, i32 8
  %17 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %state.i.i, align 8
  %valid_states.i.i = getelementptr inbounds %struct.alua_port_group, ptr %call7.i.i.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %valid_states.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 223, ptr %valid_states.i.i, align 8
  %19 = load i32, ptr @optimize_stpg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool10.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool10.not.i.i, label %if.end7.i.i.if.end12.i.i_crit_edge, label %if.then11.i.i

if.end7.i.i.if.end12.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i.i

if.then11.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags.i.i = getelementptr inbounds %struct.alua_port_group, ptr %call7.i.i.i.i, i32 0, i32 11
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %21, 1
  store i32 %or.i.i, ptr %flags.i.i, align 4
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then11.i.i, %if.end7.i.i.if.end12.i.i_crit_edge
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i.i.i, i32 noundef 4) #12
  %22 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 1, ptr %call7.i.i.i.i, align 8
  %rtpg_work.i.i = getelementptr inbounds %struct.alua_port_group, ptr %call7.i.i.i.i, i32 0, i32 15
  call void @__init_work(ptr noundef %rtpg_work.i.i, i32 noundef 0) #12
  %23 = ptrtoint ptr %rtpg_work.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -64, ptr %rtpg_work.i.i, align 4
  %lockdep_map.i.i = getelementptr inbounds %struct.alua_port_group, ptr %call7.i.i.i.i, i32 0, i32 15, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @alua_alloc_pg.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry20.i.i = getelementptr inbounds %struct.alua_port_group, ptr %call7.i.i.i.i, i32 0, i32 15, i32 0, i32 1
  %24 = ptrtoint ptr %entry20.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry20.i.i, ptr %entry20.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.alua_port_group, ptr %call7.i.i.i.i, i32 0, i32 15, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry20.i.i, ptr %prev.i.i.i, align 4
  %func.i.i = getelementptr inbounds %struct.alua_port_group, ptr %call7.i.i.i.i, i32 0, i32 15, i32 0, i32 2
  %26 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @alua_rtpg_work, ptr %func.i.i, align 8
  %timer.i.i = getelementptr inbounds %struct.alua_port_group, ptr %call7.i.i.i.i, i32 0, i32 15, i32 1
  call void @init_timer_key(ptr noundef %timer.i.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.28, ptr noundef nonnull @alua_alloc_pg.__key.27) #12
  %rtpg_list.i.i = getelementptr inbounds %struct.alua_port_group, ptr %call7.i.i.i.i, i32 0, i32 17
  %27 = ptrtoint ptr %rtpg_list.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %rtpg_list.i.i, ptr %rtpg_list.i.i, align 4
  %prev.i71.i.i = getelementptr inbounds %struct.alua_port_group, ptr %call7.i.i.i.i, i32 0, i32 17, i32 1
  %28 = ptrtoint ptr %prev.i71.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %rtpg_list.i.i, ptr %prev.i71.i.i, align 8
  %node.i.i = getelementptr inbounds %struct.alua_port_group, ptr %call7.i.i.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %node.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %node.i.i, ptr %node.i.i, align 4
  %prev.i72.i.i = getelementptr inbounds %struct.alua_port_group, ptr %call7.i.i.i.i, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %prev.i72.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %node.i.i, ptr %prev.i72.i.i, align 8
  %dh_list.i.i = getelementptr inbounds %struct.alua_port_group, ptr %call7.i.i.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %dh_list.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %dh_list.i.i, ptr %dh_list.i.i, align 4
  %prev.i73.i.i = getelementptr inbounds %struct.alua_port_group, ptr %call7.i.i.i.i, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %prev.i73.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dh_list.i.i, ptr %prev.i73.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.alua_port_group, ptr %call7.i.i.i.i, i32 0, i32 16
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @alua_alloc_pg.__key.29, i16 noundef signext 3) #12
  call void @_raw_spin_lock(ptr noundef nonnull @port_group_lock) #12
  %33 = ptrtoint ptr %device_id_len.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %device_id_len.i.i, align 4
  %call36.i.i = call fastcc ptr @alua_find_get_pg(ptr noundef %device_id_str.i.i, i32 noundef %34, i32 noundef %call.i) #12
  %tobool37.not.i.i = icmp eq ptr %call36.i.i, null
  br i1 %tobool37.not.i.i, label %if.end39.i.i, label %if.then38.i.i

if.then38.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock(ptr noundef nonnull @port_group_lock) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #12
  br label %alua_alloc_pg.exit.i

if.end39.i.i:                                     ; preds = %if.end12.i.i
  %35 = load ptr, ptr @port_group_list, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i.i, ptr noundef nonnull @port_group_list, ptr noundef %35) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end39.i.i.list_add.exit.i.i_crit_edge

if.end39.i.i.list_add.exit.i.i_crit_edge:         ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %node.i.i, ptr %prev1.i.i.i.i, align 4
  %37 = ptrtoint ptr %node.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %node.i.i, align 4
  %38 = ptrtoint ptr %prev.i72.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @port_group_list, ptr %prev.i72.i.i, align 8
  store volatile ptr %node.i.i, ptr @port_group_list, align 4
  br label %list_add.exit.i.i

list_add.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end39.i.i.list_add.exit.i.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @port_group_lock) #12
  br label %alua_alloc_pg.exit.i

alua_alloc_pg.exit.i:                             ; preds = %list_add.exit.i.i, %if.then38.i.i
  %retval.0.i.i = phi ptr [ %call36.i.i, %if.then38.i.i ], [ %call7.i.i.i.i, %list_add.exit.i.i ]
  %cmp.i159.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i159.i, label %alua_alloc_pg.exit.i.if.then3.i_crit_edge, label %if.end8.i

alua_alloc_pg.exit.i.if.then3.i_crit_edge:        ; preds = %alua_alloc_pg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3.i

if.then3.i:                                       ; preds = %alua_alloc_pg.exit.i.if.then3.i_crit_edge, %if.end.i11.if.then3.i_crit_edge
  %retval.0.i168.i = phi ptr [ %retval.0.i.i, %alua_alloc_pg.exit.i.if.then3.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i11.if.then3.i_crit_edge ]
  %cmp5.i = icmp eq ptr %retval.0.i168.i, inttoptr (i32 -12 to ptr)
  %..i = select i1 %cmp5.i, i32 15, i32 3
  br label %alua_check_vpd.exit

if.end8.i:                                        ; preds = %alua_alloc_pg.exit.i
  %device_id_len.i = getelementptr inbounds %struct.alua_port_group, ptr %retval.0.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %device_id_len.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %device_id_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %device_id_str.i = getelementptr inbounds %struct.alua_port_group, ptr %retval.0.i.i, i32 0, i32 4
  %41 = ptrtoint ptr %rel_port.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rel_port.i, align 4
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.13, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.3, ptr noundef %device_id_str.i, i32 noundef %call.i, i32 noundef %42) #12
  br label %if.end10.i

if.else.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %rel_port.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rel_port.i, align 4
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.13, ptr noundef %sdev, ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.3, i32 noundef %call.i, i32 noundef %44) #12
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i, %if.then9.i
  %pg_lock.i = getelementptr inbounds %struct.alua_dh_data, ptr %h, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %pg_lock.i) #12
  %dep_map.i = getelementptr inbounds %struct.alua_dh_data, ptr %h, i32 0, i32 3, i32 0, i32 0, i32 4
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool13.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i, label %if.end10.i.do.end.i_crit_edge

if.end10.i.do.end.i_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end10.i
  %call14.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true16.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true16.i:                                ; preds = %land.lhs.true.i
  %.b158.i = load i1, ptr @alua_check_vpd.__warned, align 1
  br i1 %.b158.i, label %land.lhs.true16.i.do.end.i_crit_edge, label %if.then18.i

land.lhs.true16.i.do.end.i_crit_edge:             ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then18.i:                                      ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @alua_check_vpd.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 359, ptr noundef nonnull @.str.23) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then18.i, %land.lhs.true16.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end10.i.do.end.i_crit_edge
  %pg20.i = getelementptr inbounds %struct.alua_dh_data, ptr %h, i32 0, i32 1
  %45 = ptrtoint ptr %pg20.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pg20.i, align 4
  %cmp21.not.i = icmp eq ptr %46, %retval.0.i.i
  br i1 %cmp21.not.i, label %do.body81.thread.i, label %if.then22.i

do.body81.thread.i:                               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %lock87170.i = getelementptr inbounds %struct.alua_port_group, ptr %retval.0.i.i, i32 0, i32 16
  %call89171.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock87170.i) #12
  br label %if.end97.i

if.then22.i:                                      ; preds = %do.end.i
  %tobool24.not.i = icmp eq ptr %46, null
  br i1 %tobool24.not.i, label %if.then22.i.if.then95.i_crit_edge, label %do.body27.i

if.then22.i.if.then95.i_crit_edge:                ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then95.i

do.body27.i:                                      ; preds = %if.then22.i
  %lock.i = getelementptr inbounds %struct.alua_port_group, ptr %46, i32 0, i32 16
  %call31.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %h) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body27.i.list_del_rcu.exit.i_crit_edge

do.body27.i.list_del_rcu.exit.i_crit_edge:        ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i160.i = getelementptr inbounds %struct.list_head, ptr %h, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i160.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i160.i, align 4
  %49 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %h, align 4
  %prev1.i.i.i161.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i161.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev1.i.i.i161.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %48, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %do.body27.i.list_del_rcu.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %h, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call31.i) #12
  br label %if.then95.i

if.then95.i:                                      ; preds = %list_del_rcu.exit.i, %if.then22.i.if.then95.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !170
  %54 = ptrtoint ptr %pg20.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %retval.0.i.i, ptr %pg20.i, align 4
  %lock87.i = getelementptr inbounds %struct.alua_port_group, ptr %retval.0.i.i, i32 0, i32 16
  %call89.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock87.i) #12
  %dh_list.i = getelementptr inbounds %struct.alua_port_group, ptr %retval.0.i.i, i32 0, i32 3
  %55 = ptrtoint ptr %dh_list.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dh_list.i, align 4
  %call.i.i162.i = call zeroext i1 @__list_add_valid(ptr noundef %h, ptr noundef %dh_list.i, ptr noundef %56) #12
  br i1 %call.i.i162.i, label %if.end.i.i163.i, label %if.then95.i.if.end97.i_crit_edge

if.then95.i.if.end97.i_crit_edge:                 ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97.i

if.end.i.i163.i:                                  ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %h, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.list_head, ptr %h, i32 0, i32 1
  %58 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %dh_list.i, ptr %prev2.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !171
  %59 = ptrtoint ptr %dh_list.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %h, ptr %dh_list.i, align 4
  %prev37.i.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %60 = ptrtoint ptr %prev37.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %h, ptr %prev37.i.i.i, align 4
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.end.i.i163.i, %if.then95.i.if.end97.i_crit_edge, %do.body81.thread.i
  %call89173.i = phi i32 [ %call89171.i, %do.body81.thread.i ], [ %call89.i, %if.then95.i.if.end97.i_crit_edge ], [ %call89.i, %if.end.i.i163.i ]
  %lock87172.i = phi ptr [ %lock87170.i, %do.body81.thread.i ], [ %lock87.i, %if.then95.i.if.end97.i_crit_edge ], [ %lock87.i, %if.end.i.i163.i ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock87172.i, i32 noundef %call89173.i) #12
  %call.i164.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164.i)
  %tobool103.not.i = icmp eq i32 %call.i164.i, 0
  br i1 %tobool103.not.i, label %land.lhs.true104.i, label %if.end97.i.do.end112.i_crit_edge

if.end97.i.do.end112.i_crit_edge:                 ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end112.i

land.lhs.true104.i:                               ; preds = %if.end97.i
  %call105.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.i)
  %tobool106.not.i = icmp eq i32 %call105.i, 0
  br i1 %tobool106.not.i, label %land.lhs.true104.i.do.end112.i_crit_edge, label %land.lhs.true107.i

land.lhs.true104.i.do.end112.i_crit_edge:         ; preds = %land.lhs.true104.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end112.i

land.lhs.true107.i:                               ; preds = %land.lhs.true104.i
  %.b156157.i = load i1, ptr @alua_check_vpd.__warned.24, align 1
  br i1 %.b156157.i, label %land.lhs.true107.i.do.end112.i_crit_edge, label %if.then109.i

land.lhs.true107.i.do.end112.i_crit_edge:         ; preds = %land.lhs.true107.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end112.i

if.then109.i:                                     ; preds = %land.lhs.true107.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @alua_check_vpd.__warned.24, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 377, ptr noundef nonnull @.str.23) #12
  br label %do.end112.i

do.end112.i:                                      ; preds = %if.then109.i, %land.lhs.true107.i.do.end112.i_crit_edge, %land.lhs.true104.i.do.end112.i_crit_edge, %if.end97.i.do.end112.i_crit_edge
  %61 = ptrtoint ptr %pg20.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pg20.i, align 4
  %call115.i = call fastcc zeroext i1 @alua_rtpg_queue(ptr noundef %62, ptr noundef %sdev, ptr noundef null, i1 noundef zeroext true) #12
  call void @_raw_spin_unlock(ptr noundef %pg_lock.i) #12
  %tobool117.not.i = icmp eq ptr %46, null
  br i1 %tobool117.not.i, label %do.end112.i.alua_check_vpd.exit_crit_edge, label %if.then118.i

do.end112.i.alua_check_vpd.exit_crit_edge:        ; preds = %do.end112.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %alua_check_vpd.exit

if.then118.i:                                     ; preds = %do.end112.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @kref_put(ptr noundef nonnull %46) #12
  br label %alua_check_vpd.exit

alua_check_vpd.exit:                              ; preds = %if.then118.i, %do.end112.i.alua_check_vpd.exit_crit_edge, %if.then3.i, %if.then.i
  %retval.0.i12 = phi i32 [ 3, %if.then.i ], [ %..i, %if.then3.i ], [ 0, %if.then118.i ], [ 0, %do.end112.i.alua_check_vpd.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rel_port.i) #12
  br label %if.end

if.end:                                           ; preds = %alua_check_vpd.exit, %alua_check_tpgs.exit
  %err.0 = phi i32 [ %retval.0.i12, %alua_check_vpd.exit ], [ 3, %alua_check_tpgs.exit ]
  %init_error = getelementptr inbounds %struct.alua_dh_data, ptr %h, i32 0, i32 5
  %63 = ptrtoint ptr %init_error to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %err.0, ptr %init_error, align 4
  call void @mutex_unlock(ptr noundef %init_mutex) #12
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_vpd_tpg_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_vpd_lun_id(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alua_rtpg_work(ptr noundef %work) #2 align 64 {
entry:
  %cdb.i.i404 = alloca [16 x i8], align 1
  %stpg_data.i.i = alloca [8 x i8], align 8
  %sense_hdr.i405 = alloca %struct.scsi_sense_hdr, align 8
  %cdb.i.i = alloca [16 x i8], align 1
  %sense_hdr.i370 = alloca %struct.scsi_sense_hdr, align 8
  %sense_hdr.i = alloca %struct.scsi_sense_hdr, align 8
  %qdata_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -324
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %qdata_list) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %qdata_list, i32 0, i32 1
  %1 = ptrtoint ptr %qdata_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %qdata_list, ptr %qdata_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %qdata_list, ptr %0, align 4
  %lock = getelementptr i8, ptr %work, i32 100
  %call4 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %rtpg_sdev = getelementptr i8, ptr %work, i32 152
  %3 = ptrtoint ptr %rtpg_sdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rtpg_sdev, align 4
  %tobool.not = icmp eq ptr %4, null
  %flags7 = getelementptr i8, ptr %work, i32 -16
  %5 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags7, align 4
  br i1 %tobool.not, label %if.then, label %if.end68

if.then:                                          ; preds = %entry
  %and = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.then.if.end_crit_edge, label %do.end20, !prof !163

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end20:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 873, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end20, %if.then.if.end_crit_edge
  %7 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags7, align 4
  %and35 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end.if.end58_crit_edge, label %do.end52, !prof !163

if.end.if.end58_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

do.end52:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 874, i32 noundef 9, ptr noundef null) #12
  br label %if.end58

if.end58:                                         ; preds = %do.end52, %if.end.if.end58_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #12
  call fastcc void @kref_put(ptr noundef %add.ptr)
  br label %cleanup277

if.end68:                                         ; preds = %entry
  %or = or i32 %6, 64
  %9 = ptrtoint ptr %flags7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %flags7, align 4
  %and71 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end68.if.end172_crit_edge, label %if.then73

if.end68.if.end172_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end172

if.then73:                                        ; preds = %if.end68
  %state74 = getelementptr i8, ptr %work, i32 -28
  %10 = ptrtoint ptr %state74 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state74, align 4
  %and76 = and i32 %or, -17
  %12 = ptrtoint ptr %flags7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and76, ptr %flags7, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %11)
  %cmp78 = icmp eq i32 %11, 15
  br i1 %cmp78, label %if.then80, label %if.then73.if.end111_crit_edge

if.then73.if.end111_crit_edge:                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end111

if.then80:                                        ; preds = %if.then73
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sense_hdr.i) #12
  %13 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr.i, i32 0, i32 1
  %14 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr.i, i32 0, i32 3
  %15 = ptrtoint ptr %sense_hdr.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 -1, ptr %sense_hdr.i, align 8
  %call.i = call i32 @scsi_test_unit_ready(ptr noundef nonnull %4, i32 noundef 6000, i32 noundef 5, ptr noundef nonnull %sense_hdr.i) #12
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp.i = icmp eq i8 %17, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then80.alua_tur.exit_crit_edge

if.then80.alua_tur.exit_crit_edge:                ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #14
  br label %alua_tur.exit

land.lhs.true.i:                                  ; preds = %if.then80
  %18 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr.i, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %20)
  %cmp4.i = icmp eq i8 %20, 4
  br i1 %cmp4.i, label %land.lhs.true6.i, label %land.lhs.true.i.alua_tur.exit_crit_edge

land.lhs.true.i.alua_tur.exit_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %alua_tur.exit

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %22)
  %cmp8.i = icmp eq i8 %22, 10
  br i1 %cmp8.i, label %alua_tur.exit.thread, label %land.lhs.true6.i.alua_tur.exit_crit_edge

land.lhs.true6.i.alua_tur.exit_crit_edge:         ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %alua_tur.exit

alua_tur.exit.thread:                             ; preds = %land.lhs.true6.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sense_hdr.i) #12
  %call94 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %23 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags7, align 4
  %and100 = and i32 %24, -81
  %or102 = or i32 %and100, 16
  store i32 %or102, ptr %flags7, align 4
  %interval = getelementptr i8, ptr %work, i32 -4
  %25 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool103.not = icmp eq i32 %26, 0
  br i1 %tobool103.not, label %if.then104, label %alua_tur.exit.thread.if.end106_crit_edge

alua_tur.exit.thread.if.end106_crit_edge:         ; preds = %alua_tur.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

alua_tur.exit:                                    ; preds = %land.lhs.true6.i.alua_tur.exit_crit_edge, %land.lhs.true.i.alua_tur.exit_crit_edge, %if.then80.alua_tur.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sense_hdr.i) #12
  br label %if.end111

if.then104:                                       ; preds = %alua_tur.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %interval, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %alua_tur.exit.thread.if.end106_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call94) #12
  %28 = load ptr, ptr @kaluad_wq, align 4
  %29 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %interval, align 4
  %mul = mul i32 %30, 100
  %call.i369 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %work, i32 noundef %mul) #12
  br label %cleanup277

if.end111:                                        ; preds = %alua_tur.exit, %if.then73.if.end111_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sense_hdr.i370) #12
  %31 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr.i370, i32 0, i32 1
  %32 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr.i370, i32 0, i32 2
  %33 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sense_hdr.i370, i32 0, i32 3
  %group_id.i = getelementptr i8, ptr %work, i32 -36
  %34 = ptrtoint ptr %sense_hdr.i370 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 -1, ptr %sense_hdr.i370, align 8
  %35 = ptrtoint ptr %group_id.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %group_id.i, align 4
  %37 = ptrtoint ptr %state74 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %state74, align 4
  %pref.i = getelementptr i8, ptr %work, i32 -24
  %39 = ptrtoint ptr %pref.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pref.i, align 4
  %valid_states.i = getelementptr i8, ptr %work, i32 -20
  %41 = ptrtoint ptr %valid_states.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %valid_states.i, align 4
  %expiry.i = getelementptr i8, ptr %work, i32 -8
  %43 = ptrtoint ptr %expiry.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %expiry.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i371 = icmp eq i32 %44, 0
  br i1 %tobool.not.i371, label %if.then.i, label %if.end111.if.end7.i_crit_edge

if.end111.if.end7.i_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then.i:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #14
  %transition_tmo2.i = getelementptr i8, ptr %work, i32 -12
  %45 = ptrtoint ptr %transition_tmo2.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %transition_tmo2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool3.not.i = icmp eq i8 %46, 0
  %conv.i = zext i8 %46 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 100
  %transition_tmo.0.i = select i1 %tobool3.not.i, i32 6000, i32 %mul.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %transition_tmo.0.i, %47
  %call.i372 = call i32 @round_jiffies_up(i32 noundef %add.i) #12
  %48 = ptrtoint ptr %expiry.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call.i372, ptr %expiry.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then.i, %if.end111.if.end7.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %49 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3520, i32 noundef 128) #16
  %tobool9.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool9.not.i, label %if.end7.i.if.end132.thread446_crit_edge, label %retry.preheader.i

if.end7.i.if.end132.thread446_crit_edge:          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132.thread446

retry.preheader.i:                                ; preds = %if.end7.i
  %50 = getelementptr inbounds [16 x i8], ptr %cdb.i.i, i32 0, i32 1
  %51 = getelementptr inbounds [16 x i8], ptr %cdb.i.i, i32 0, i32 6
  %52 = getelementptr inbounds i8, ptr %cdb.i.i, i32 2
  br label %retry.i.outer

retry.i.outer:                                    ; preds = %if.then81.i.retry.i.outer_crit_edge, %retry.preheader.i
  %buff.0.i.ph = phi ptr [ %call9.i.i, %if.then81.i.retry.i.outer_crit_edge ], [ %call7.i.i.i, %retry.preheader.i ]
  %bufflen.0.i.ph = phi i32 [ %add78.i, %if.then81.i.retry.i.outer_crit_edge ], [ 128, %retry.preheader.i ]
  br label %retry.i

retry.i:                                          ; preds = %if.then40.i, %retry.i.outer
  %53 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags7, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cdb.i.i) #12
  %55 = call ptr @memset(ptr %52, i32 0, i32 14)
  %56 = ptrtoint ptr %cdb.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -93, ptr %cdb.i.i, align 1
  %and.i.i = and i32 %54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i573.i = icmp eq i32 %and.i.i, 0
  %..i.i = select i1 %tobool.not.i573.i, i8 42, i8 10
  %57 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %..i.i, ptr %50, align 1
  %58 = ptrtoint ptr %51 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 %bufflen.0.i.ph, ptr %51, align 1
  %call.i574.i = call i32 @__scsi_execute(ptr noundef nonnull %4, ptr noundef nonnull %cdb.i.i, i32 noundef 2, ptr noundef %buff.0.i.ph, i32 noundef %bufflen.0.i.ph, ptr noundef null, ptr noundef nonnull %sense_hdr.i370, i32 noundef 6000, i32 noundef 5, i64 noundef 1792, i32 noundef 0, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cdb.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i574.i)
  %tobool14.not.i = icmp eq i32 %call.i574.i, 0
  br i1 %tobool14.not.i, label %if.end76.i, label %if.then15.i

if.then15.i:                                      ; preds = %retry.i
  %59 = ptrtoint ptr %valid_states.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %valid_states.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %60)
  %cmp.i373 = icmp ult i32 %60, 2
  br i1 %cmp.i373, label %if.then18.i, label %if.end19.i

if.then18.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.3, i32 noundef %call.i574.i) #12
  call void @kfree(ptr noundef %buff.0.i.ph) #12
  br label %if.end132.thread446

if.end19.i:                                       ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i574.i)
  %cmp20.i = icmp slt i32 %call.i574.i, 0
  br i1 %cmp20.i, label %if.then26.critedge.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end19.i
  %61 = ptrtoint ptr %sense_hdr.i370 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %sense_hdr.i370, align 8
  %63 = and i8 %62, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %63)
  %cmp.i575.i = icmp eq i8 %63, 112
  br i1 %cmp.i575.i, label %if.end33.i, label %if.end27.critedge.i

if.then26.critedge.i:                             ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.3, i32 noundef %call.i574.i) #12
  call void @kfree(ptr noundef %buff.0.i.ph) #12
  br label %if.end132.thread446

if.end27.critedge.i:                              ; preds = %lor.lhs.false.i
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.3, i32 noundef %call.i574.i) #12
  call void @kfree(ptr noundef %buff.0.i.ph) #12
  %64 = and i32 %call.i574.i, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %64)
  %cmp29.i = icmp eq i32 %64, 65536
  br i1 %cmp29.i, label %land.lhs.true, label %if.end27.critedge.i.if.end132.thread446_crit_edge

if.end27.critedge.i.if.end132.thread446_crit_edge: ; preds = %if.end27.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132.thread446

if.end33.i:                                       ; preds = %lor.lhs.false.i
  %65 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags7, align 4
  %and35.i = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  %67 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %68)
  %cmp38.i = icmp eq i8 %68, 5
  %or.cond565 = select i1 %tobool36.not.i, i1 %cmp38.i, i1 false
  br i1 %or.cond565, label %if.then40.i, label %if.end42.i

if.then40.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  %or.i = or i32 %66, 2
  %69 = ptrtoint ptr %flags7 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %or.i, ptr %flags7, align 4
  br label %retry.i

if.end42.i:                                       ; preds = %if.end33.i
  %70 = zext i8 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %68, label %if.end42.i.if.end74.i_crit_edge [
    i8 2, label %land.lhs.true47.i
    i8 6, label %land.lhs.true65.i
  ]

if.end42.i.if.end74.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74.i

land.lhs.true47.i:                                ; preds = %if.end42.i
  %71 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %32, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %72)
  %cmp49.i = icmp eq i8 %72, 4
  br i1 %cmp49.i, label %land.lhs.true51.i, label %land.lhs.true47.i.if.end74.i_crit_edge

land.lhs.true47.i.if.end74.i_crit_edge:           ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74.i

land.lhs.true51.i:                                ; preds = %land.lhs.true47.i
  %73 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %74)
  %cmp53.i = icmp eq i8 %74, 10
  br i1 %cmp53.i, label %if.then291.i, label %land.lhs.true51.i.if.end74.i_crit_edge

land.lhs.true51.i.if.end74.i_crit_edge:           ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74.i

land.lhs.true65.i:                                ; preds = %if.end42.i
  %75 = ptrtoint ptr %expiry.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %expiry.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp67.not.i = icmp eq i32 %76, 0
  br i1 %cmp67.not.i, label %land.lhs.true65.i.if.end74.i_crit_edge, label %land.lhs.true69.i

land.lhs.true65.i.if.end74.i_crit_edge:           ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74.i

land.lhs.true69.i:                                ; preds = %land.lhs.true65.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %77, %76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp71.i = icmp slt i32 %sub.i, 0
  br i1 %cmp71.i, label %if.end132.thread451, label %land.lhs.true69.i.if.end74.i_crit_edge

land.lhs.true69.i.if.end74.i_crit_edge:           ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74.i

if.end132.thread451:                              ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.3) #12
  call void @scsi_print_sense_hdr(ptr noundef nonnull %4, ptr noundef nonnull @.str.3, ptr noundef nonnull %sense_hdr.i370) #12
  call void @kfree(ptr noundef %buff.0.i.ph) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sense_hdr.i370) #12
  %call122429453 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  br label %if.else

if.end74.i:                                       ; preds = %land.lhs.true69.i.if.end74.i_crit_edge, %land.lhs.true65.i.if.end74.i_crit_edge, %land.lhs.true51.i.if.end74.i_crit_edge, %land.lhs.true47.i.if.end74.i_crit_edge, %if.end42.i.if.end74.i_crit_edge
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3) #12
  call void @scsi_print_sense_hdr(ptr noundef nonnull %4, ptr noundef nonnull @.str.3, ptr noundef nonnull %sense_hdr.i370) #12
  call void @kfree(ptr noundef %buff.0.i.ph) #12
  %78 = ptrtoint ptr %expiry.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %expiry.i, align 4
  br label %if.end132.thread446

if.end76.i:                                       ; preds = %retry.i
  %79 = ptrtoint ptr %buff.0.i.ph to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %buff.0.i.ph, align 8
  %add78.i = add i32 %80, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add78.i, i32 %bufflen.0.i.ph)
  %cmp79.i = icmp sgt i32 %add78.i, %bufflen.0.i.ph
  br i1 %cmp79.i, label %if.then81.i, label %if.end87.i

if.then81.i:                                      ; preds = %if.end76.i
  call void @kfree(ptr noundef %buff.0.i.ph) #12
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add78.i, i32 noundef 3264) #17
  %tobool83.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool83.not.i, label %if.then84.i, label %if.then81.i.retry.i.outer_crit_edge

if.then81.i.retry.i.outer_crit_edge:              ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %retry.i.outer

if.then84.i:                                      ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.alua_rtpg) #12
  %81 = ptrtoint ptr %expiry.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %expiry.i, align 4
  br label %if.end132.thread446

if.end87.i:                                       ; preds = %if.end76.i
  %transition_tmo88.i = getelementptr i8, ptr %work, i32 -12
  %82 = ptrtoint ptr %transition_tmo88.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %transition_tmo88.i, align 4
  %arrayidx89.i = getelementptr i8, ptr %buff.0.i.ph, i32 4
  %84 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx89.i, align 4
  %86 = and i8 %85, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %86)
  %cmp92.i = icmp eq i8 %86, 16
  br i1 %cmp92.i, label %land.lhs.true94.i, label %if.end87.i.if.else.i375_crit_edge

if.end87.i.if.else.i375_crit_edge:                ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i375

land.lhs.true94.i:                                ; preds = %if.end87.i
  %arrayidx95.i = getelementptr i8, ptr %buff.0.i.ph, i32 5
  %87 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx95.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %cmp97.not.i = icmp eq i8 %88, 0
  br i1 %cmp97.not.i, label %land.lhs.true94.i.if.else.i375_crit_edge, label %land.lhs.true94.i.if.end103.i_crit_edge

land.lhs.true94.i.if.end103.i_crit_edge:          ; preds = %land.lhs.true94.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103.i

land.lhs.true94.i.if.else.i375_crit_edge:         ; preds = %land.lhs.true94.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i375

if.else.i375:                                     ; preds = %land.lhs.true94.i.if.else.i375_crit_edge, %if.end87.i.if.else.i375_crit_edge
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.else.i375, %land.lhs.true94.i.if.end103.i_crit_edge
  %storemerge.i = phi i8 [ 60, %if.else.i375 ], [ %88, %land.lhs.true94.i.if.end103.i_crit_edge ]
  %89 = ptrtoint ptr %transition_tmo88.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %storemerge.i, ptr %transition_tmo88.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %83, i8 %storemerge.i)
  %cmp107.not.i = icmp eq i8 %83, %storemerge.i
  br i1 %cmp107.not.i, label %if.end103.i.if.end117.i_crit_edge, label %if.then109.i

if.end103.i.if.end117.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end117.i

if.then109.i:                                     ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv106.i = zext i8 %storemerge.i to i32
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, i32 noundef %conv106.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %90 = load volatile i32, ptr @jiffies, align 128
  %91 = ptrtoint ptr %transition_tmo88.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %transition_tmo88.i, align 4
  %conv113.i = zext i8 %92 to i32
  %mul114.i = mul nuw nsw i32 %conv113.i, 100
  %add115.i = add i32 %mul114.i, %90
  %93 = ptrtoint ptr %expiry.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %add115.i, ptr %expiry.i, align 4
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.then109.i, %if.end103.i.if.end117.i_crit_edge
  %94 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx89.i, align 4
  %96 = and i8 %95, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %96)
  %cmp121.i = icmp eq i8 %96, 16
  %..i376 = select i1 %cmp121.i, i32 8, i32 4
  call void @__sanitizer_cov_trace_cmp4(i32 %..i376, i32 %add78.i)
  %cmp126625.i = icmp slt i32 %..i376, %add78.i
  br i1 %cmp126625.i, label %for.body.lr.ph.i, label %if.end117.i.do.body277.i_crit_edge

if.end117.i.do.body277.i_crit_edge:               ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body277.i

for.body.lr.ph.i:                                 ; preds = %if.end117.i
  %add.ptr.i = getelementptr i8, ptr %buff.0.i.ph, i32 %..i376
  %device_id_str.i = getelementptr i8, ptr %work, i32 -296
  %device_id_len.i = getelementptr i8, ptr %work, i32 -40
  br label %for.body.i

for.body.i:                                       ; preds = %if.end267.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %k.0632.i = phi i32 [ %..i376, %for.body.lr.ph.i ], [ %add273.i, %if.end267.i.for.body.i_crit_edge ]
  %desc.0626.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %add.ptr274.i, %if.end267.i.for.body.i_crit_edge ]
  %arrayidx129.i = getelementptr i8, ptr %desc.0626.i, i32 2
  %97 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_loadN_noabort(i32 %97, i32 2)
  %98 = load i16, ptr %arrayidx129.i, align 1
  %call135.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @port_group_lock) #12
  %99 = ptrtoint ptr %device_id_len.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %device_id_len.i, align 4
  %conv138.i = zext i16 %98 to i32
  %call139.i = call fastcc ptr @alua_find_get_pg(ptr noundef %device_id_str.i, i32 noundef %100, i32 noundef %conv138.i) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @port_group_lock, i32 noundef %call135.i) #12
  %tobool140.not.i = icmp eq ptr %call139.i, null
  br i1 %tobool140.not.i, label %for.body.i.if.end267.i_crit_edge, label %do.body144.i

for.body.i.if.end267.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end267.i

do.body144.i:                                     ; preds = %for.body.i
  %101 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !172
  %and.i577.i = and i32 %101, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i577.i)
  %tobool160.not.i = icmp eq i32 %and.i577.i, 0
  br i1 %tobool160.not.i, label %do.end164.i, label %do.end164.thread.i

do.end164.i:                                      ; preds = %do.body144.i
  call void @trace_hardirqs_off() #12
  %lock.i = getelementptr inbounds %struct.alua_port_group, ptr %call139.i, i32 0, i32 16
  %call167.i = call i32 @_raw_spin_trylock(ptr noundef %lock.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167.i)
  %tobool168.not.i = icmp eq i32 %call167.i, 0
  br i1 %tobool168.not.i, label %if.then178.i, label %do.end164.i.if.then202.critedge.i_crit_edge

do.end164.i.if.then202.critedge.i_crit_edge:      ; preds = %do.end164.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then202.critedge.i

do.end164.thread.i:                               ; preds = %do.body144.i
  %lock590.i = getelementptr inbounds %struct.alua_port_group, ptr %call139.i, i32 0, i32 16
  %call167591.i = call i32 @_raw_spin_trylock(ptr noundef %lock590.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167591.i)
  %tobool168.not592.i = icmp eq i32 %call167591.i, 0
  br i1 %tobool168.not592.i, label %do.end164.thread.i.do.body180.i_crit_edge, label %do.end164.thread.i.if.then202.critedge.i_crit_edge

do.end164.thread.i.if.then202.critedge.i_crit_edge: ; preds = %do.end164.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then202.critedge.i

do.end164.thread.i.do.body180.i_crit_edge:        ; preds = %do.end164.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body180.i

if.then178.i:                                     ; preds = %do.end164.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @trace_hardirqs_on() #12
  br label %do.body180.i

do.body180.i:                                     ; preds = %if.then178.i, %do.end164.thread.i.do.body180.i_crit_edge
  %102 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !173
  %and.i.i.i = and i32 %102, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool188.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool188.not.i, label %if.then192.i, label %do.body180.i.do.end195.i_crit_edge, !prof !166

do.body180.i.do.end195.i_crit_edge:               ; preds = %do.body180.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end195.i

if.then192.i:                                     ; preds = %do.body180.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %do.end195.i

do.end195.i:                                      ; preds = %if.then192.i, %do.body180.i.do.end195.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %101) #12, !srcloc !174
  br label %if.end265.i

if.then202.critedge.i:                            ; preds = %do.end164.thread.i.if.then202.critedge.i_crit_edge, %do.end164.i.if.then202.critedge.i_crit_edge
  %lock593.i = phi ptr [ %lock590.i, %do.end164.thread.i.if.then202.critedge.i_crit_edge ], [ %lock.i, %do.end164.i.if.then202.critedge.i_crit_edge ]
  %cmp203.i = icmp eq ptr %call139.i, %add.ptr
  br i1 %cmp203.i, label %if.then202.critedge.i.if.then209.i_crit_edge, label %lor.lhs.false205.i

if.then202.critedge.i.if.then209.i_crit_edge:     ; preds = %if.then202.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then209.i

lor.lhs.false205.i:                               ; preds = %if.then202.critedge.i
  %flags206.i = getelementptr inbounds %struct.alua_port_group, ptr %call139.i, i32 0, i32 11
  %103 = ptrtoint ptr %flags206.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags206.i, align 4
  %and207.i = and i32 %104, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and207.i)
  %tobool208.not.i = icmp eq i32 %and207.i, 0
  br i1 %tobool208.not.i, label %lor.lhs.false205.i.if.then209.i_crit_edge, label %lor.lhs.false205.i.if.end263.i_crit_edge

lor.lhs.false205.i.if.end263.i_crit_edge:         ; preds = %lor.lhs.false205.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end263.i

lor.lhs.false205.i.if.then209.i_crit_edge:        ; preds = %lor.lhs.false205.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then209.i

if.then209.i:                                     ; preds = %lor.lhs.false205.i.if.then209.i_crit_edge, %if.then202.critedge.i.if.then209.i_crit_edge
  %105 = ptrtoint ptr %desc.0626.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %desc.0626.i, align 1
  %107 = and i8 %106, 15
  %and212.i = zext i8 %107 to i32
  %state213.i = getelementptr inbounds %struct.alua_port_group, ptr %call139.i, i32 0, i32 8
  %108 = ptrtoint ptr %state213.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %and212.i, ptr %state213.i, align 4
  %109 = load i8, ptr %desc.0626.i, align 1
  %110 = lshr i8 %109, 7
  %111 = zext i8 %110 to i32
  %pref217.i = getelementptr inbounds %struct.alua_port_group, ptr %call139.i, i32 0, i32 9
  %112 = ptrtoint ptr %pref217.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %pref217.i, align 4
  %113 = call i32 @llvm.read_register.i32(metadata !150) #12
  %and.i.i.i.i.i.i = and i32 %113, -16384
  %114 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %116, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !160
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %if.then209.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then209.i.rcu_read_lock.exit.i_crit_edge:      ; preds = %if.then209.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then209.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i561.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i561.i:                                   ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i561.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then209.i.rcu_read_lock.exit.i_crit_edge
  %call219.i = call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219.i)
  %tobool220.not.i = icmp eq i32 %call219.i, 0
  br i1 %tobool220.not.i, label %land.lhs.true221.i, label %rcu_read_lock.exit.i.do.end229.i_crit_edge

rcu_read_lock.exit.i.do.end229.i_crit_edge:       ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end229.i

land.lhs.true221.i:                               ; preds = %rcu_read_lock.exit.i
  %call222.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222.i)
  %tobool223.not.i = icmp eq i32 %call222.i, 0
  br i1 %tobool223.not.i, label %land.lhs.true221.i.do.end229.i_crit_edge, label %land.lhs.true224.i

land.lhs.true221.i.do.end229.i_crit_edge:         ; preds = %land.lhs.true221.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end229.i

land.lhs.true224.i:                               ; preds = %land.lhs.true221.i
  %.b560.i = load i1, ptr @alua_rtpg.__warned, align 1
  br i1 %.b560.i, label %land.lhs.true224.i.do.end229.i_crit_edge, label %if.then226.i

land.lhs.true224.i.do.end229.i_crit_edge:         ; preds = %land.lhs.true224.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end229.i

if.then226.i:                                     ; preds = %land.lhs.true224.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @alua_rtpg.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 679, ptr noundef nonnull @.str.39) #12
  br label %do.end229.i

do.end229.i:                                      ; preds = %if.then226.i, %land.lhs.true224.i.do.end229.i_crit_edge, %land.lhs.true221.i.do.end229.i_crit_edge, %rcu_read_lock.exit.i.do.end229.i_crit_edge
  %dh_list.i = getelementptr inbounds %struct.alua_port_group, ptr %call139.i, i32 0, i32 3
  %117 = ptrtoint ptr %dh_list.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %h.0622.i = load volatile ptr, ptr %dh_list.i, align 4
  %cmp238.not623.i = icmp eq ptr %h.0622.i, %dh_list.i
  br i1 %cmp238.not623.i, label %do.end229.i.for.end.i_crit_edge, label %do.end229.i.for.body240.i_crit_edge

do.end229.i.for.body240.i_crit_edge:              ; preds = %do.end229.i
  br label %for.body240.i

do.end229.i.for.end.i_crit_edge:                  ; preds = %do.end229.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body240.i:                                    ; preds = %for.inc.i.for.body240.i_crit_edge, %do.end229.i.for.body240.i_crit_edge
  %h.0624.i = phi ptr [ %h.0.i, %for.inc.i.for.body240.i_crit_edge ], [ %h.0622.i, %do.end229.i.for.body240.i_crit_edge ]
  %sdev241.i = getelementptr inbounds %struct.alua_dh_data, ptr %h.0624.i, i32 0, i32 4
  %118 = ptrtoint ptr %sdev241.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %sdev241.i, align 4
  %tobool242.not.i = icmp eq ptr %119, null
  br i1 %tobool242.not.i, label %for.body240.i.for.inc.i_crit_edge, label %if.end244.i

for.body240.i.for.inc.i_crit_edge:                ; preds = %for.body240.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end244.i:                                      ; preds = %for.body240.i
  call void @__sanitizer_cov_trace_pc() #14
  %120 = ptrtoint ptr %desc.0626.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %desc.0626.i, align 1
  %access_state.i = getelementptr inbounds %struct.scsi_device, ptr %119, i32 0, i32 66
  %122 = ptrtoint ptr %access_state.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %access_state.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end244.i, %for.body240.i.for.inc.i_crit_edge
  %123 = ptrtoint ptr %h.0624.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %h.0.i = load volatile ptr, ptr %h.0624.i, align 4
  %cmp238.not.i = icmp eq ptr %h.0.i, %dh_list.i
  br i1 %cmp238.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body240.i_crit_edge

for.inc.i.for.body240.i_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body240.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end229.i.for.end.i_crit_edge
  %call.i579.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i579.i, label %for.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i582.i

for.end.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true.i582.i:                             ; preds = %for.end.i
  %call1.i580.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i580.i)
  %tobool.not.i581.i = icmp eq i32 %call1.i580.i, 0
  br i1 %tobool.not.i581.i, label %land.lhs.true.i582.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i584.i

land.lhs.true.i582.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i582.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i584.i:                            ; preds = %land.lhs.true.i582.i
  %.b4.i583.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i583.i, label %land.lhs.true2.i584.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i585.i

land.lhs.true2.i584.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i584.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

if.then.i585.i:                                   ; preds = %land.lhs.true2.i584.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i585.i, %land.lhs.true2.i584.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i582.i.rcu_read_unlock.exit.i_crit_edge, %for.end.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !161
  %124 = call i32 @llvm.read_register.i32(metadata !150) #12
  %and.i.i.i.i.i586.i = and i32 %124, -16384
  %125 = inttoptr i32 %and.i.i.i.i.i586.i to ptr
  %preempt_count.i.i.i.i587.i = getelementptr inbounds %struct.thread_info, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %preempt_count.i.i.i.i587.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %preempt_count.i.i.i.i587.i, align 4
  %sub.i.i.i588.i = add i32 %127, -1
  store volatile i32 %sub.i.i.i588.i, ptr %preempt_count.i.i.i.i587.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br i1 %cmp203.i, label %if.then259.i, label %rcu_read_unlock.exit.i.if.end263.i_crit_edge

rcu_read_unlock.exit.i.if.end263.i_crit_edge:     ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end263.i

if.then259.i:                                     ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx260.i = getelementptr i8, ptr %desc.0626.i, i32 1
  %128 = ptrtoint ptr %arrayidx260.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx260.i, align 1
  %conv261.i = zext i8 %129 to i32
  %130 = ptrtoint ptr %valid_states.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %conv261.i, ptr %valid_states.i, align 4
  br label %if.end263.i

if.end263.i:                                      ; preds = %if.then259.i, %rcu_read_unlock.exit.i.if.end263.i_crit_edge, %lor.lhs.false205.i.if.end263.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock593.i, i32 noundef %101) #12
  br label %if.end265.i

if.end265.i:                                      ; preds = %if.end263.i, %do.end195.i
  call fastcc void @kref_put(ptr noundef nonnull %call139.i) #12
  br label %if.end267.i

if.end267.i:                                      ; preds = %if.end265.i, %for.body.i.if.end267.i_crit_edge
  %arrayidx268.i = getelementptr i8, ptr %desc.0626.i, i32 7
  %131 = ptrtoint ptr %arrayidx268.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx268.i, align 1
  %conv269.i = zext i8 %132 to i32
  %mul270.i = shl nuw nsw i32 %conv269.i, 2
  %add271.i = add nuw nsw i32 %mul270.i, 8
  %add273.i = add i32 %add271.i, %k.0632.i
  %add.ptr274.i = getelementptr i8, ptr %desc.0626.i, i32 %add271.i
  %cmp126.i = icmp slt i32 %add273.i, %add78.i
  br i1 %cmp126.i, label %if.end267.i.for.body.i_crit_edge, label %if.end267.i.do.body277.i_crit_edge

if.end267.i.do.body277.i_crit_edge:               ; preds = %if.end267.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body277.i

if.end267.i.for.body.i_crit_edge:                 ; preds = %if.end267.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

do.body277.i:                                     ; preds = %if.end267.i.do.body277.i_crit_edge, %if.end117.i.do.body277.i_crit_edge
  %call285.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  br label %if.end293.i

if.then291.i:                                     ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #14
  %call285595.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %133 = ptrtoint ptr %state74 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 15, ptr %state74, align 4
  br label %if.end293.i

if.end293.i:                                      ; preds = %if.then291.i, %do.body277.i
  %call285599.i = phi i32 [ %call285595.i, %if.then291.i ], [ %call285.i, %do.body277.i ]
  %134 = ptrtoint ptr %group_id.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %group_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %135)
  %cmp295.not.i = icmp eq i32 %36, %135
  br i1 %cmp295.not.i, label %lor.lhs.false297.i, label %if.end293.i.if.then309.i_crit_edge

if.end293.i.if.then309.i_crit_edge:               ; preds = %if.end293.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then309.i

lor.lhs.false297.i:                               ; preds = %if.end293.i
  %136 = ptrtoint ptr %state74 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %state74, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %137)
  %cmp299.not.i = icmp eq i32 %38, %137
  br i1 %cmp299.not.i, label %lor.lhs.false301.i, label %lor.lhs.false297.i.if.then309.i_crit_edge

lor.lhs.false297.i.if.then309.i_crit_edge:        ; preds = %lor.lhs.false297.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then309.i

lor.lhs.false301.i:                               ; preds = %lor.lhs.false297.i
  %138 = ptrtoint ptr %pref.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %pref.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %139)
  %cmp303.not.i = icmp eq i32 %40, %139
  br i1 %cmp303.not.i, label %lor.lhs.false305.i, label %lor.lhs.false301.i.if.then309.i_crit_edge

lor.lhs.false301.i.if.then309.i_crit_edge:        ; preds = %lor.lhs.false301.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then309.i

lor.lhs.false305.i:                               ; preds = %lor.lhs.false301.i
  %140 = ptrtoint ptr %valid_states.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %valid_states.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %141)
  %cmp307.not.i = icmp eq i32 %42, %141
  br i1 %cmp307.not.i, label %lor.lhs.false305.i.if.end346.i_crit_edge, label %lor.lhs.false305.i.if.then309.i_crit_edge

lor.lhs.false305.i.if.then309.i_crit_edge:        ; preds = %lor.lhs.false305.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then309.i

lor.lhs.false305.i.if.end346.i_crit_edge:         ; preds = %lor.lhs.false305.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end346.i

if.then309.i:                                     ; preds = %lor.lhs.false305.i.if.then309.i_crit_edge, %lor.lhs.false301.i.if.then309.i_crit_edge, %lor.lhs.false297.i.if.then309.i_crit_edge, %if.end293.i.if.then309.i_crit_edge
  %142 = ptrtoint ptr %state74 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %state74, align 4
  %144 = and i32 %143, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %switch.lookup, label %if.then309.i.print_alua_state.exit.i_crit_edge

if.then309.i.print_alua_state.exit.i_crit_edge:   ; preds = %if.then309.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %print_alua_state.exit.i

switch.lookup:                                    ; preds = %if.then309.i
  call void @__sanitizer_cov_trace_pc() #14
  %sext = shl i32 %143, 24
  %146 = ashr exact i32 %sext, 24
  %switch.gep = getelementptr inbounds [16 x i32], ptr @switch.table.alua_rtpg_work, i32 0, i32 %146
  %147 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %147)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %print_alua_state.exit.i

print_alua_state.exit.i:                          ; preds = %switch.lookup, %if.then309.i.print_alua_state.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 88, %if.then309.i.print_alua_state.exit.i_crit_edge ]
  %148 = ptrtoint ptr %pref.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %pref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool316.not.i = icmp eq i32 %149, 0
  %cond317.i = select i1 %tobool316.not.i, ptr @.str.42, ptr @.str.41
  %150 = ptrtoint ptr %valid_states.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %valid_states.i, align 4
  %and319.i = and i32 %151, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and319.i)
  %tobool320.not.i = icmp eq i32 %and319.i, 0
  %cond321.i = select i1 %tobool320.not.i, i32 116, i32 84
  %and323.i = and i32 %151, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and323.i)
  %tobool324.not.i = icmp eq i32 %and323.i, 0
  %cond325.i = select i1 %tobool324.not.i, i32 111, i32 79
  %and327.i = and i32 %151, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and327.i)
  %tobool328.not.i = icmp eq i32 %and327.i, 0
  %cond329.i = select i1 %tobool328.not.i, i32 108, i32 76
  %and331.i = and i32 %151, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and331.i)
  %tobool332.not.i = icmp eq i32 %and331.i, 0
  %cond333.i = select i1 %tobool332.not.i, i32 117, i32 85
  %and335.i = and i32 %151, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and335.i)
  %tobool336.not.i = icmp eq i32 %and335.i, 0
  %cond337.i = select i1 %tobool336.not.i, i32 115, i32 83
  %and339.i = and i32 %151, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and339.i)
  %tobool340.not.i = icmp eq i32 %and339.i, 0
  %cond341.i = select i1 %tobool340.not.i, i32 110, i32 78
  %and343.i = and i32 %151, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and343.i)
  %tobool344.not.i = icmp eq i32 %and343.i, 0
  %cond345.i = select i1 %tobool344.not.i, i32 97, i32 65
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.3, i32 noundef %135, i32 noundef %retval.0.i.i, ptr noundef nonnull %cond317.i, i32 noundef %cond321.i, i32 noundef %cond325.i, i32 noundef %cond329.i, i32 noundef %cond333.i, i32 noundef %cond337.i, i32 noundef %cond341.i, i32 noundef %cond345.i) #12
  br label %if.end346.i

if.end346.i:                                      ; preds = %print_alua_state.exit.i, %lor.lhs.false305.i.if.end346.i_crit_edge
  %152 = ptrtoint ptr %state74 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %state74, align 4
  %154 = zext i32 %153 to i64
  call void @__sanitizer_cov_trace_switch(i64 %154, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %153, label %sw.default.i [
    i32 15, label %sw.bb.i
    i32 14, label %sw.bb414.i
  ]

sw.bb.i:                                          ; preds = %if.end346.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %155 = load volatile i32, ptr @jiffies, align 128
  %156 = ptrtoint ptr %expiry.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %expiry.i, align 4
  %sub349.i = sub i32 %155, %157
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub349.i)
  %cmp350.i = icmp slt i32 %sub349.i, 0
  br i1 %cmp350.i, label %if.then352.i, label %if.else353.i

if.then352.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  %interval.i = getelementptr i8, ptr %work, i32 -4
  %158 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 2, ptr %interval.i, align 4
  br label %if.end132

if.else353.i:                                     ; preds = %sw.bb.i
  %159 = ptrtoint ptr %state74 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 2, ptr %state74, align 4
  %160 = ptrtoint ptr %expiry.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %expiry.i, align 4
  %161 = call i32 @llvm.read_register.i32(metadata !150) #12
  %and.i.i.i.i.i562.i = and i32 %161, -16384
  %162 = inttoptr i32 %and.i.i.i.i.i562.i to ptr
  %preempt_count.i.i.i.i563.i = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %preempt_count.i.i.i.i563.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load volatile i32, ptr %preempt_count.i.i.i.i563.i, align 4
  %add.i.i.i564.i = add i32 %164, 1
  store volatile i32 %add.i.i.i564.i, ptr %preempt_count.i.i.i.i563.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !160
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i565.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i565.i, label %if.else353.i.rcu_read_lock.exit572.i_crit_edge, label %land.lhs.true.i568.i

if.else353.i.rcu_read_lock.exit572.i_crit_edge:   ; preds = %if.else353.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit572.i

land.lhs.true.i568.i:                             ; preds = %if.else353.i
  %call1.i566.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i566.i)
  %tobool.not.i567.i = icmp eq i32 %call1.i566.i, 0
  br i1 %tobool.not.i567.i, label %land.lhs.true.i568.i.rcu_read_lock.exit572.i_crit_edge, label %land.lhs.true2.i570.i

land.lhs.true.i568.i.rcu_read_lock.exit572.i_crit_edge: ; preds = %land.lhs.true.i568.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit572.i

land.lhs.true2.i570.i:                            ; preds = %land.lhs.true.i568.i
  %.b4.i569.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i569.i, label %land.lhs.true2.i570.i.rcu_read_lock.exit572.i_crit_edge, label %if.then.i571.i

land.lhs.true2.i570.i.rcu_read_lock.exit572.i_crit_edge: ; preds = %land.lhs.true2.i570.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit572.i

if.then.i571.i:                                   ; preds = %land.lhs.true2.i570.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #12
  br label %rcu_read_lock.exit572.i

rcu_read_lock.exit572.i:                          ; preds = %if.then.i571.i, %land.lhs.true2.i570.i.rcu_read_lock.exit572.i_crit_edge, %land.lhs.true.i568.i.rcu_read_lock.exit572.i_crit_edge, %if.else353.i.rcu_read_lock.exit572.i_crit_edge
  %call358.i = call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call358.i)
  %tobool359.not.i = icmp eq i32 %call358.i, 0
  br i1 %tobool359.not.i, label %land.lhs.true360.i, label %rcu_read_lock.exit572.i.do.end368.i_crit_edge

rcu_read_lock.exit572.i.do.end368.i_crit_edge:    ; preds = %rcu_read_lock.exit572.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end368.i

land.lhs.true360.i:                               ; preds = %rcu_read_lock.exit572.i
  %call361.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call361.i)
  %tobool362.not.i = icmp eq i32 %call361.i, 0
  br i1 %tobool362.not.i, label %land.lhs.true360.i.do.end368.i_crit_edge, label %land.lhs.true363.i

land.lhs.true360.i.do.end368.i_crit_edge:         ; preds = %land.lhs.true360.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end368.i

land.lhs.true363.i:                               ; preds = %land.lhs.true360.i
  %.b558559.i = load i1, ptr @alua_rtpg.__warned.43, align 1
  br i1 %.b558559.i, label %land.lhs.true363.i.do.end368.i_crit_edge, label %if.then365.i

land.lhs.true363.i.do.end368.i_crit_edge:         ; preds = %land.lhs.true363.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end368.i

if.then365.i:                                     ; preds = %land.lhs.true363.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @alua_rtpg.__warned.43, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 728, ptr noundef nonnull @.str.39) #12
  br label %do.end368.i

do.end368.i:                                      ; preds = %if.then365.i, %land.lhs.true363.i.do.end368.i_crit_edge, %land.lhs.true360.i.do.end368.i_crit_edge, %rcu_read_lock.exit572.i.do.end368.i_crit_edge
  %dh_list374.i = getelementptr i8, ptr %work, i32 -304
  %165 = ptrtoint ptr %dh_list374.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %h354.0633.i = load volatile ptr, ptr %dh_list374.i, align 4
  %cmp381.not634.i = icmp eq ptr %h354.0633.i, %dh_list374.i
  br i1 %cmp381.not634.i, label %do.end368.i.for.end412.i_crit_edge, label %do.end368.i.for.body383.i_crit_edge

do.end368.i.for.body383.i_crit_edge:              ; preds = %do.end368.i
  br label %for.body383.i

do.end368.i.for.end412.i_crit_edge:               ; preds = %do.end368.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end412.i

for.body383.i:                                    ; preds = %for.inc402.i.for.body383.i_crit_edge, %do.end368.i.for.body383.i_crit_edge
  %h354.0635.i = phi ptr [ %h354.0.i, %for.inc402.i.for.body383.i_crit_edge ], [ %h354.0633.i, %do.end368.i.for.body383.i_crit_edge ]
  %sdev384.i = getelementptr inbounds %struct.alua_dh_data, ptr %h354.0635.i, i32 0, i32 4
  %166 = ptrtoint ptr %sdev384.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %sdev384.i, align 4
  %tobool385.not.i = icmp eq ptr %167, null
  br i1 %tobool385.not.i, label %for.body383.i.for.inc402.i_crit_edge, label %if.end387.i

for.body383.i.for.inc402.i_crit_edge:             ; preds = %for.body383.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc402.i

if.end387.i:                                      ; preds = %for.body383.i
  %168 = ptrtoint ptr %state74 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %state74, align 4
  %170 = trunc i32 %169 to i8
  %conv390.i = and i8 %170, 15
  %access_state392.i = getelementptr inbounds %struct.scsi_device, ptr %167, i32 0, i32 66
  %171 = ptrtoint ptr %access_state392.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %conv390.i, ptr %access_state392.i, align 4
  %172 = ptrtoint ptr %pref.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %pref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %tobool394.not.i = icmp eq i32 %173, 0
  br i1 %tobool394.not.i, label %if.end387.i.for.inc402.i_crit_edge, label %if.then395.i

if.end387.i.for.inc402.i_crit_edge:               ; preds = %if.end387.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc402.i

if.then395.i:                                     ; preds = %if.end387.i
  call void @__sanitizer_cov_trace_pc() #14
  %174 = ptrtoint ptr %sdev384.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %sdev384.i, align 4
  %access_state397.i = getelementptr inbounds %struct.scsi_device, ptr %175, i32 0, i32 66
  %176 = ptrtoint ptr %access_state397.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %access_state397.i, align 4
  %178 = or i8 %177, -128
  store i8 %178, ptr %access_state397.i, align 4
  br label %for.inc402.i

for.inc402.i:                                     ; preds = %if.then395.i, %if.end387.i.for.inc402.i_crit_edge, %for.body383.i.for.inc402.i_crit_edge
  %179 = ptrtoint ptr %h354.0635.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %h354.0.i = load volatile ptr, ptr %h354.0635.i, align 4
  %cmp381.not.i = icmp eq ptr %h354.0.i, %dh_list374.i
  br i1 %cmp381.not.i, label %for.inc402.i.for.end412.i_crit_edge, label %for.inc402.i.for.body383.i_crit_edge

for.inc402.i.for.body383.i_crit_edge:             ; preds = %for.inc402.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body383.i

for.inc402.i.for.end412.i_crit_edge:              ; preds = %for.inc402.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end412.i

for.end412.i:                                     ; preds = %for.inc402.i.for.end412.i_crit_edge, %do.end368.i.for.end412.i_crit_edge
  call fastcc void @rcu_read_unlock() #12
  br label %if.end132

sw.bb414.i:                                       ; preds = %if.end346.i
  call void @__sanitizer_cov_trace_pc() #14
  %180 = ptrtoint ptr %expiry.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 0, ptr %expiry.i, align 4
  br label %if.end132

sw.default.i:                                     ; preds = %if.end346.i
  call void @__sanitizer_cov_trace_pc() #14
  %181 = ptrtoint ptr %expiry.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 0, ptr %expiry.i, align 4
  br label %if.end132

land.lhs.true:                                    ; preds = %if.end27.critedge.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sense_hdr.i370) #12
  %call122 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %182 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool.not.i378 = icmp eq i32 %182, 0
  br i1 %tobool.not.i378, label %land.lhs.true.if.end.i_crit_edge, label %land.rhs.i

land.lhs.true.if.end.i_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.rhs.i:                                       ; preds = %land.lhs.true
  %dep_map.i = getelementptr i8, ptr %work, i32 116
  %call.i161.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161.i)
  %cmp.not.i = icmp eq i32 %call.i161.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !166

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 819, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %land.lhs.true.if.end.i_crit_edge
  %183 = ptrtoint ptr %rtpg_sdev to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %rtpg_sdev, align 4
  %tobool25.not.i = icmp eq ptr %184, null
  br i1 %tobool25.not.i, label %do.end43.i, label %if.end59.i, !prof !166

do.end43.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 820, i32 noundef 9, ptr noundef null) #12
  br label %lor.lhs.false137.thread

if.end59.i:                                       ; preds = %if.end.i
  %185 = call i32 @llvm.read_register.i32(metadata !150) #12
  %and.i.i.i.i.i.i379 = and i32 %185, -16384
  %186 = inttoptr i32 %and.i.i.i.i.i.i379 to ptr
  %preempt_count.i.i.i.i.i380 = getelementptr inbounds %struct.thread_info, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %preempt_count.i.i.i.i.i380 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load volatile i32, ptr %preempt_count.i.i.i.i.i380, align 4
  %add.i.i.i.i381 = add i32 %188, 1
  store volatile i32 %add.i.i.i.i381, ptr %preempt_count.i.i.i.i.i380, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !160
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i382 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i382, label %if.end59.i.rcu_read_lock.exit.i389_crit_edge, label %land.lhs.true.i.i385

if.end59.i.rcu_read_lock.exit.i389_crit_edge:     ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i389

land.lhs.true.i.i385:                             ; preds = %if.end59.i
  %call1.i.i383 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i383)
  %tobool.not.i.i384 = icmp eq i32 %call1.i.i383, 0
  br i1 %tobool.not.i.i384, label %land.lhs.true.i.i385.rcu_read_lock.exit.i389_crit_edge, label %land.lhs.true2.i.i387

land.lhs.true.i.i385.rcu_read_lock.exit.i389_crit_edge: ; preds = %land.lhs.true.i.i385
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i389

land.lhs.true2.i.i387:                            ; preds = %land.lhs.true.i.i385
  %.b4.i.i386 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i386, label %land.lhs.true2.i.i387.rcu_read_lock.exit.i389_crit_edge, label %if.then.i.i388

land.lhs.true2.i.i387.rcu_read_lock.exit.i389_crit_edge: ; preds = %land.lhs.true2.i.i387
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i389

if.then.i.i388:                                   ; preds = %land.lhs.true2.i.i387
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #12
  br label %rcu_read_lock.exit.i389

rcu_read_lock.exit.i389:                          ; preds = %if.then.i.i388, %land.lhs.true2.i.i387.rcu_read_lock.exit.i389_crit_edge, %land.lhs.true.i.i385.rcu_read_lock.exit.i389_crit_edge, %if.end59.i.rcu_read_lock.exit.i389_crit_edge
  %call61.i = call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %land.lhs.true.i390, label %rcu_read_lock.exit.i389.do.end70.i_crit_edge

rcu_read_lock.exit.i389.do.end70.i_crit_edge:     ; preds = %rcu_read_lock.exit.i389
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end70.i

land.lhs.true.i390:                               ; preds = %rcu_read_lock.exit.i389
  %call63.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %land.lhs.true.i390.do.end70.i_crit_edge, label %land.lhs.true65.i391

land.lhs.true.i390.do.end70.i_crit_edge:          ; preds = %land.lhs.true.i390
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end70.i

land.lhs.true65.i391:                             ; preds = %land.lhs.true.i390
  %.b160.i = load i1, ptr @alua_rtpg_select_sdev.__warned, align 1
  br i1 %.b160.i, label %land.lhs.true65.i391.do.end70.i_crit_edge, label %if.then67.i

land.lhs.true65.i391.do.end70.i_crit_edge:        ; preds = %land.lhs.true65.i391
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end70.i

if.then67.i:                                      ; preds = %land.lhs.true65.i391
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @alua_rtpg_select_sdev.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 828, ptr noundef nonnull @.str.39) #12
  br label %do.end70.i

do.end70.i:                                       ; preds = %if.then67.i, %land.lhs.true65.i391.do.end70.i_crit_edge, %land.lhs.true.i390.do.end70.i_crit_edge, %rcu_read_lock.exit.i389.do.end70.i_crit_edge
  %dh_list.i392 = getelementptr i8, ptr %work, i32 -304
  %189 = ptrtoint ptr %dh_list.i392 to i32
  call void @__asan_load4_noabort(i32 %189)
  %h.0171.i = load volatile ptr, ptr %dh_list.i392, align 4
  %cmp77.not172.i = icmp eq ptr %h.0171.i, %dh_list.i392
  br i1 %cmp77.not172.i, label %do.end70.i.for.end.i396_crit_edge, label %do.end70.i.for.body.i393_crit_edge

do.end70.i.for.body.i393_crit_edge:               ; preds = %do.end70.i
  br label %for.body.i393

do.end70.i.for.end.i396_crit_edge:                ; preds = %do.end70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i396

for.body.i393:                                    ; preds = %for.inc.i395.for.body.i393_crit_edge, %do.end70.i.for.body.i393_crit_edge
  %h.0173.i = phi ptr [ %h.0.i394, %for.inc.i395.for.body.i393_crit_edge ], [ %h.0171.i, %do.end70.i.for.body.i393_crit_edge ]
  %sdev78.i = getelementptr inbounds %struct.alua_dh_data, ptr %h.0173.i, i32 0, i32 4
  %190 = ptrtoint ptr %sdev78.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %sdev78.i, align 4
  %tobool79.not.i = icmp eq ptr %191, null
  br i1 %tobool79.not.i, label %for.body.i393.for.inc.i395_crit_edge, label %if.end81.i

for.body.i393.for.inc.i395_crit_edge:             ; preds = %for.body.i393
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i395

if.end81.i:                                       ; preds = %for.body.i393
  %192 = ptrtoint ptr %rtpg_sdev to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %rtpg_sdev, align 4
  %cmp84.i = icmp eq ptr %191, %193
  br i1 %cmp84.i, label %if.then85.i, label %if.end86.i

if.then85.i:                                      ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #14
  %disabled.i = getelementptr inbounds %struct.alua_dh_data, ptr %h.0173.i, i32 0, i32 7
  %194 = ptrtoint ptr %disabled.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 1, ptr %disabled.i, align 4
  br label %for.inc.i395

if.end86.i:                                       ; preds = %if.end81.i
  %pg91.i = getelementptr inbounds %struct.alua_dh_data, ptr %h.0173.i, i32 0, i32 1
  %195 = ptrtoint ptr %pg91.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load volatile ptr, ptr %pg91.i, align 4
  %call93.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.i)
  %tobool94.not.i = icmp eq i32 %call93.i, 0
  br i1 %tobool94.not.i, label %land.lhs.true95.i, label %if.end86.i.do.end103.i_crit_edge

if.end86.i.do.end103.i_crit_edge:                 ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end103.i

land.lhs.true95.i:                                ; preds = %if.end86.i
  %call96.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96.i)
  %tobool97.not.i = icmp eq i32 %call96.i, 0
  br i1 %tobool97.not.i, label %land.lhs.true95.i.do.end103.i_crit_edge, label %land.lhs.true98.i

land.lhs.true95.i.do.end103.i_crit_edge:          ; preds = %land.lhs.true95.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end103.i

land.lhs.true98.i:                                ; preds = %land.lhs.true95.i
  %.b158159.i = load i1, ptr @alua_rtpg_select_sdev.__warned.44, align 1
  br i1 %.b158159.i, label %land.lhs.true98.i.do.end103.i_crit_edge, label %if.then100.i

land.lhs.true98.i.do.end103.i_crit_edge:          ; preds = %land.lhs.true98.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end103.i

if.then100.i:                                     ; preds = %land.lhs.true98.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @alua_rtpg_select_sdev.__warned.44, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 835, ptr noundef nonnull @.str.5) #12
  br label %do.end103.i

do.end103.i:                                      ; preds = %if.then100.i, %land.lhs.true98.i.do.end103.i_crit_edge, %land.lhs.true95.i.do.end103.i_crit_edge, %if.end86.i.do.end103.i_crit_edge
  %cmp105.i = icmp eq ptr %196, %add.ptr
  br i1 %cmp105.i, label %land.lhs.true106.i, label %do.end103.i.for.inc.i395_crit_edge

do.end103.i.for.inc.i395_crit_edge:               ; preds = %do.end103.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i395

land.lhs.true106.i:                               ; preds = %do.end103.i
  %disabled107.i = getelementptr inbounds %struct.alua_dh_data, ptr %h.0173.i, i32 0, i32 7
  %197 = ptrtoint ptr %disabled107.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %disabled107.i, align 4, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %tobool108.not.i = icmp eq i8 %198, 0
  br i1 %tobool108.not.i, label %land.lhs.true109.i, label %land.lhs.true106.i.for.inc.i395_crit_edge

land.lhs.true106.i.for.inc.i395_crit_edge:        ; preds = %land.lhs.true106.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i395

land.lhs.true109.i:                               ; preds = %land.lhs.true106.i
  %199 = ptrtoint ptr %sdev78.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %sdev78.i, align 4
  %call111.i = call i32 @scsi_device_get(ptr noundef %200) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i)
  %tobool112.not.i = icmp eq i32 %call111.i, 0
  br i1 %tobool112.not.i, label %if.then113.i, label %land.lhs.true109.i.for.inc.i395_crit_edge

land.lhs.true109.i.for.inc.i395_crit_edge:        ; preds = %land.lhs.true109.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i395

if.then113.i:                                     ; preds = %land.lhs.true109.i
  call void @__sanitizer_cov_trace_pc() #14
  %201 = ptrtoint ptr %sdev78.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %sdev78.i, align 4
  br label %for.end.i396

for.inc.i395:                                     ; preds = %land.lhs.true109.i.for.inc.i395_crit_edge, %land.lhs.true106.i.for.inc.i395_crit_edge, %do.end103.i.for.inc.i395_crit_edge, %if.then85.i, %for.body.i393.for.inc.i395_crit_edge
  %203 = ptrtoint ptr %h.0173.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %h.0.i394 = load volatile ptr, ptr %h.0173.i, align 4
  %cmp77.not.i = icmp eq ptr %h.0.i394, %dh_list.i392
  br i1 %cmp77.not.i, label %for.inc.i395.for.end.i396_crit_edge, label %for.inc.i395.for.body.i393_crit_edge

for.inc.i395.for.body.i393_crit_edge:             ; preds = %for.inc.i395
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i393

for.inc.i395.for.end.i396_crit_edge:              ; preds = %for.inc.i395
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i396

for.end.i396:                                     ; preds = %for.inc.i395.for.end.i396_crit_edge, %if.then113.i, %do.end70.i.for.end.i396_crit_edge
  %sdev.0.i = phi ptr [ %202, %if.then113.i ], [ null, %do.end70.i.for.end.i396_crit_edge ], [ null, %for.inc.i395.for.end.i396_crit_edge ]
  %call.i162.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i162.i, label %for.end.i396.rcu_read_unlock.exit.i398_crit_edge, label %land.lhs.true.i165.i

for.end.i396.rcu_read_unlock.exit.i398_crit_edge: ; preds = %for.end.i396
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i398

land.lhs.true.i165.i:                             ; preds = %for.end.i396
  %call1.i163.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i163.i)
  %tobool.not.i164.i = icmp eq i32 %call1.i163.i, 0
  br i1 %tobool.not.i164.i, label %land.lhs.true.i165.i.rcu_read_unlock.exit.i398_crit_edge, label %land.lhs.true2.i167.i

land.lhs.true.i165.i.rcu_read_unlock.exit.i398_crit_edge: ; preds = %land.lhs.true.i165.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i398

land.lhs.true2.i167.i:                            ; preds = %land.lhs.true.i165.i
  %.b4.i166.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i166.i, label %land.lhs.true2.i167.i.rcu_read_unlock.exit.i398_crit_edge, label %if.then.i168.i

land.lhs.true2.i167.i.rcu_read_unlock.exit.i398_crit_edge: ; preds = %land.lhs.true2.i167.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i398

if.then.i168.i:                                   ; preds = %land.lhs.true2.i167.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_unlock.exit.i398

rcu_read_unlock.exit.i398:                        ; preds = %if.then.i168.i, %land.lhs.true2.i167.i.rcu_read_unlock.exit.i398_crit_edge, %land.lhs.true.i165.i.rcu_read_unlock.exit.i398_crit_edge, %for.end.i396.rcu_read_unlock.exit.i398_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !161
  %204 = call i32 @llvm.read_register.i32(metadata !150) #12
  %and.i.i.i.i.i169.i = and i32 %204, -16384
  %205 = inttoptr i32 %and.i.i.i.i.i169.i to ptr
  %preempt_count.i.i.i.i170.i = getelementptr inbounds %struct.thread_info, ptr %205, i32 0, i32 1
  %206 = ptrtoint ptr %preempt_count.i.i.i.i170.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load volatile i32, ptr %preempt_count.i.i.i.i170.i, align 4
  %sub.i.i.i.i397 = add i32 %207, -1
  store volatile i32 %sub.i.i.i.i397, ptr %preempt_count.i.i.i.i170.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %tobool125.not.i = icmp eq ptr %sdev.0.i, null
  br i1 %tobool125.not.i, label %do.end129.i, label %if.then146

do.end129.i:                                      ; preds = %rcu_read_unlock.exit.i398
  call void @__sanitizer_cov_trace_pc() #14
  %device_id_len.i399 = getelementptr i8, ptr %work, i32 -40
  %208 = ptrtoint ptr %device_id_len.i399 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %device_id_len.i399, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %tobool131.not.i = icmp eq i32 %209, 0
  %device_id_str.i400 = getelementptr i8, ptr %work, i32 -296
  %spec.select.i401 = select i1 %tobool131.not.i, ptr @.str.47, ptr %device_id_str.i400
  %call132.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %spec.select.i401) #15
  br label %lor.lhs.false137.thread

if.end132.thread446:                              ; preds = %if.then84.i, %if.end74.i, %if.end27.critedge.i.if.end132.thread446_crit_edge, %if.then26.critedge.i, %if.then18.i, %if.end7.i.if.end132.thread446_crit_edge
  %retval.0.i377.ph.ph = phi i32 [ 0, %if.then18.i ], [ 2, %if.then26.critedge.i ], [ 8, %if.end74.i ], [ 2, %if.then84.i ], [ 2, %if.end7.i.if.end132.thread446_crit_edge ], [ 8, %if.end27.critedge.i.if.end132.thread446_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sense_hdr.i370) #12
  %call122429448 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  br label %lor.lhs.false137

if.end132:                                        ; preds = %sw.default.i, %sw.bb414.i, %for.end412.i, %if.then352.i
  %switch = phi i1 [ true, %if.then352.i ], [ false, %for.end412.i ], [ false, %sw.bb414.i ], [ false, %sw.default.i ]
  %err.1.i = phi i32 [ 10, %if.then352.i ], [ 8, %for.end412.i ], [ 14, %sw.bb414.i ], [ 0, %sw.default.i ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call285599.i) #12
  call void @kfree(ptr noundef %buff.0.i.ph) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sense_hdr.i370) #12
  %call122429 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  br i1 %switch, label %if.end132.if.else_crit_edge, label %if.end132.lor.lhs.false137_crit_edge

if.end132.lor.lhs.false137_crit_edge:             ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false137

if.end132.if.else_crit_edge:                      ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

lor.lhs.false137:                                 ; preds = %if.end132.lor.lhs.false137_crit_edge, %if.end132.thread446
  %err.0445 = phi i32 [ %err.1.i, %if.end132.lor.lhs.false137_crit_edge ], [ %retval.0.i377.ph.ph, %if.end132.thread446 ]
  %call122431444 = phi i32 [ %call122429, %if.end132.lor.lhs.false137_crit_edge ], [ %call122429448, %if.end132.thread446 ]
  %210 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %flags7, align 4
  %and139 = and i32 %211, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %if.end165, label %lor.lhs.false137.if.else_crit_edge

lor.lhs.false137.if.else_crit_edge:               ; preds = %lor.lhs.false137
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

lor.lhs.false137.thread:                          ; preds = %do.end129.i, %do.end43.i
  %212 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %flags7, align 4
  %and139468 = and i32 %213, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139468)
  %tobool140.not469 = icmp eq i32 %and139468, 0
  br i1 %tobool140.not469, label %lor.lhs.false137.thread.if.then168_crit_edge, label %lor.lhs.false137.thread.if.else_crit_edge

lor.lhs.false137.thread.if.else_crit_edge:        ; preds = %lor.lhs.false137.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

lor.lhs.false137.thread.if.then168_crit_edge:     ; preds = %lor.lhs.false137.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then168

if.then146:                                       ; preds = %rcu_read_unlock.exit.i398
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull %sdev.0.i, ptr noundef null, ptr noundef nonnull @.str.48) #12
  %214 = ptrtoint ptr %rtpg_sdev to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %rtpg_sdev, align 4
  call void @scsi_device_put(ptr noundef %215) #12
  %216 = ptrtoint ptr %rtpg_sdev to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %sdev.0.i, ptr %rtpg_sdev, align 4
  %217 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %flags7, align 4
  %interval147 = getelementptr i8, ptr %work, i32 -4
  %219 = ptrtoint ptr %interval147 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 0, ptr %interval147, align 4
  br label %if.end157

if.else:                                          ; preds = %lor.lhs.false137.thread.if.else_crit_edge, %lor.lhs.false137.if.else_crit_edge, %if.end132.if.else_crit_edge, %if.end132.thread451
  %call122431437.ph = phi i32 [ %call122429453, %if.end132.thread451 ], [ %call122431444, %lor.lhs.false137.if.else_crit_edge ], [ %call122429, %if.end132.if.else_crit_edge ], [ %call122, %lor.lhs.false137.thread.if.else_crit_edge ]
  %220 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %flags7, align 4
  %interval148 = getelementptr i8, ptr %work, i32 -4
  %222 = ptrtoint ptr %interval148 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %interval148, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %tobool149.not = icmp eq i32 %223, 0
  %and152 = and i32 %221, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  %or.cond = select i1 %tobool149.not, i1 %tobool153.not, i1 false
  br i1 %or.cond, label %if.then154, label %if.else.if.end157_crit_edge

if.else.if.end157_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end157

if.then154:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %224 = ptrtoint ptr %interval148 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 2, ptr %interval148, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.then154, %if.else.if.end157_crit_edge, %if.then146
  %and143464.in = phi i32 [ %221, %if.else.if.end157_crit_edge ], [ %221, %if.then154 ], [ %218, %if.then146 ]
  %call122431437462 = phi i32 [ %call122431437.ph, %if.else.if.end157_crit_edge ], [ %call122431437.ph, %if.then154 ], [ %call122, %if.then146 ]
  %and143464 = and i32 %and143464.in, -81
  %or159 = or i32 %and143464, 16
  %225 = ptrtoint ptr %flags7 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %or159, ptr %flags7, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call122431437462) #12
  %226 = load ptr, ptr @kaluad_wq, align 4
  %interval162 = getelementptr i8, ptr %work, i32 -4
  %227 = ptrtoint ptr %interval162 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %interval162, align 4
  %mul163 = mul i32 %228, 100
  %call.i403 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %226, ptr noundef %work, i32 noundef %mul163) #12
  br label %cleanup277

if.end165:                                        ; preds = %lor.lhs.false137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0445)
  %cmp166.not = icmp eq i32 %err.0445, 0
  br i1 %cmp166.not, label %if.end165.if.end172_crit_edge, label %if.end165.if.then168_crit_edge

if.end165.if.then168_crit_edge:                   ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then168

if.end165.if.end172_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end172

if.then168:                                       ; preds = %if.end165.if.then168_crit_edge, %lor.lhs.false137.thread.if.then168_crit_edge
  %err.0445470476 = phi i32 [ %err.0445, %if.end165.if.then168_crit_edge ], [ 13, %lor.lhs.false137.thread.if.then168_crit_edge ]
  %call122431444471475 = phi i32 [ %call122431444, %if.end165.if.then168_crit_edge ], [ %call122, %lor.lhs.false137.thread.if.then168_crit_edge ]
  %229 = phi i32 [ %211, %if.end165.if.then168_crit_edge ], [ %213, %lor.lhs.false137.thread.if.then168_crit_edge ]
  %and170 = and i32 %229, -33
  %230 = ptrtoint ptr %flags7 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %and170, ptr %flags7, align 4
  br label %if.end172

if.end172:                                        ; preds = %if.then168, %if.end165.if.end172_crit_edge, %if.end68.if.end172_crit_edge
  %flags.1 = phi i32 [ %call4, %if.end68.if.end172_crit_edge ], [ %call122431444, %if.end165.if.end172_crit_edge ], [ %call122431444471475, %if.then168 ]
  %err.2 = phi i32 [ 0, %if.end68.if.end172_crit_edge ], [ 0, %if.end165.if.end172_crit_edge ], [ %err.0445470476, %if.then168 ]
  %231 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %flags7, align 4
  %and174 = and i32 %232, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %if.end172.if.end213_crit_edge, label %if.then176

if.end172.if.end213_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end213

if.then176:                                       ; preds = %if.end172
  %and178 = and i32 %232, -33
  %233 = ptrtoint ptr %flags7 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %and178, ptr %flags7, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.1) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sense_hdr.i405) #12
  %tpgs.i = getelementptr i8, ptr %work, i32 -32
  %234 = ptrtoint ptr %sense_hdr.i405 to i32
  call void @__asan_store8_noabort(i32 %234)
  store i64 -1, ptr %sense_hdr.i405, align 8
  %235 = ptrtoint ptr %tpgs.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %tpgs.i, align 4
  %and.i = and i32 %236, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i406 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i406, label %if.then176.alua_stpg.exit_crit_edge, label %if.end.i408

if.then176.alua_stpg.exit_crit_edge:              ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #14
  br label %alua_stpg.exit

if.end.i408:                                      ; preds = %if.then176
  %state.i407 = getelementptr i8, ptr %work, i32 -28
  %237 = ptrtoint ptr %state.i407 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %state.i407, align 4
  %239 = zext i32 %238 to i64
  call void @__sanitizer_cov_trace_switch(i64 %239, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %238, label %sw.default.i412 [
    i32 0, label %if.end.i408.lor.lhs.false197_crit_edge
    i32 1, label %sw.bb2.i
    i32 2, label %if.end.i408.sw.epilog.i415_crit_edge
    i32 3, label %if.end.i408.sw.epilog.i415_crit_edge594
    i32 14, label %sw.bb13.i
    i32 15, label %if.end.i408.sw.epilog.i415_crit_edge595
  ]

if.end.i408.sw.epilog.i415_crit_edge595:          ; preds = %if.end.i408
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i415

if.end.i408.sw.epilog.i415_crit_edge594:          ; preds = %if.end.i408
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i415

if.end.i408.sw.epilog.i415_crit_edge:             ; preds = %if.end.i408
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i415

if.end.i408.lor.lhs.false197_crit_edge:           ; preds = %if.end.i408
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false197

sw.bb2.i:                                         ; preds = %if.end.i408
  %240 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %flags7, align 4
  %and3.i = and i32 %241, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %sw.bb2.i.sw.epilog.i415_crit_edge, label %land.lhs.true.i411

sw.bb2.i.sw.epilog.i415_crit_edge:                ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i415

land.lhs.true.i411:                               ; preds = %sw.bb2.i
  %pref.i409 = getelementptr i8, ptr %work, i32 -24
  %242 = ptrtoint ptr %pref.i409 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %pref.i409, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %tobool5.not.i = icmp ne i32 %243, 0
  %and8.i = and i32 %236, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i410 = icmp eq i32 %and8.i, 0
  %or.cond.i = select i1 %tobool5.not.i, i1 true, i1 %tobool9.not.i410
  br i1 %or.cond.i, label %land.lhs.true.i411.sw.epilog.i415_crit_edge, label %land.lhs.true.i411.lor.lhs.false197_crit_edge

land.lhs.true.i411.lor.lhs.false197_crit_edge:    ; preds = %land.lhs.true.i411
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false197

land.lhs.true.i411.sw.epilog.i415_crit_edge:      ; preds = %land.lhs.true.i411
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i415

sw.bb13.i:                                        ; preds = %if.end.i408
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false197

sw.default.i412:                                  ; preds = %if.end.i408
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.3, i32 noundef %238) #12
  br label %lor.lhs.false197

sw.epilog.i415:                                   ; preds = %land.lhs.true.i411.sw.epilog.i415_crit_edge, %sw.bb2.i.sw.epilog.i415_crit_edge, %if.end.i408.sw.epilog.i415_crit_edge, %if.end.i408.sw.epilog.i415_crit_edge594, %if.end.i408.sw.epilog.i415_crit_edge595
  %group_id.i413 = getelementptr i8, ptr %work, i32 -36
  %244 = ptrtoint ptr %group_id.i413 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %group_id.i413, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cdb.i.i404) #12
  %246 = getelementptr inbounds [16 x i8], ptr %cdb.i.i404, i32 0, i32 1
  %247 = getelementptr inbounds [16 x i8], ptr %cdb.i.i404, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stpg_data.i.i) #12
  %248 = getelementptr inbounds [8 x i8], ptr %stpg_data.i.i, i32 0, i32 6
  %249 = ptrtoint ptr %stpg_data.i.i to i32
  call void @__asan_store8_noabort(i32 %249)
  store i64 0, ptr %stpg_data.i.i, align 8
  %conv.i.i = trunc i32 %245 to i16
  %250 = ptrtoint ptr %248 to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 %conv.i.i, ptr %248, align 2
  %251 = getelementptr inbounds i8, ptr %cdb.i.i404, i32 2
  %252 = call ptr @memset(ptr %251, i32 0, i32 14)
  %253 = ptrtoint ptr %cdb.i.i404 to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 -92, ptr %cdb.i.i404, align 1
  %254 = ptrtoint ptr %246 to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 10, ptr %246, align 1
  %255 = ptrtoint ptr %247 to i32
  call void @__asan_storeN_noabort(i32 %255, i32 4)
  store i32 8, ptr %247, align 1
  %call.i.i414 = call i32 @__scsi_execute(ptr noundef nonnull %4, ptr noundef nonnull %cdb.i.i404, i32 noundef 1, ptr noundef nonnull %stpg_data.i.i, i32 noundef 8, ptr noundef null, ptr noundef nonnull %sense_hdr.i405, i32 noundef 6000, i32 noundef 5, i64 noundef 1792, i32 noundef 0, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stpg_data.i.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cdb.i.i404) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i414)
  %tobool15.not.i = icmp eq i32 %call.i.i414, 0
  br i1 %tobool15.not.i, label %sw.epilog.i415.alua_stpg.exit_crit_edge, label %if.then16.i

sw.epilog.i415.alua_stpg.exit_crit_edge:          ; preds = %sw.epilog.i415
  call void @__sanitizer_cov_trace_pc() #14
  br label %alua_stpg.exit

if.then16.i:                                      ; preds = %sw.epilog.i415
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i414)
  %cmp.i416 = icmp slt i32 %call.i.i414, 0
  br i1 %cmp.i416, label %if.then20.critedge.i, label %lor.lhs.false.i418

lor.lhs.false.i418:                               ; preds = %if.then16.i
  %256 = ptrtoint ptr %sense_hdr.i405 to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %sense_hdr.i405, align 8
  %258 = and i8 %257, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %258)
  %cmp.i.i417 = icmp eq i8 %258, 112
  br i1 %cmp.i.i417, label %if.else.i419, label %if.end23.critedge.i

if.then20.critedge.i:                             ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.3, i32 noundef %call.i.i414) #12
  br label %lor.lhs.false197

if.else.i419:                                     ; preds = %lor.lhs.false.i418
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.3) #12
  call void @scsi_print_sense_hdr(ptr noundef nonnull %4, ptr noundef nonnull @.str.3, ptr noundef nonnull %sense_hdr.i405) #12
  br label %alua_stpg.exit

if.end23.critedge.i:                              ; preds = %lor.lhs.false.i418
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.3, i32 noundef %call.i.i414) #12
  br label %alua_stpg.exit

alua_stpg.exit:                                   ; preds = %if.end23.critedge.i, %if.else.i419, %sw.epilog.i415.alua_stpg.exit_crit_edge, %if.then176.alua_stpg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sense_hdr.i405) #12
  %call190 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  br label %if.then201

lor.lhs.false197:                                 ; preds = %if.then20.critedge.i, %sw.default.i412, %sw.bb13.i, %land.lhs.true.i411.lor.lhs.false197_crit_edge, %if.end.i408.lor.lhs.false197_crit_edge
  %retval.0.i420.ph = phi i32 [ 0, %land.lhs.true.i411.lor.lhs.false197_crit_edge ], [ %238, %if.end.i408.lor.lhs.false197_crit_edge ], [ 2, %if.then20.critedge.i ], [ 8, %sw.bb13.i ], [ 16, %sw.default.i412 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sense_hdr.i405) #12
  %call190481 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %259 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %flags7, align 4
  %and199 = and i32 %260, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %tobool200.not = icmp eq i32 %and199, 0
  br i1 %tobool200.not, label %lor.lhs.false197.if.end213_crit_edge, label %lor.lhs.false197.if.then201_crit_edge

lor.lhs.false197.if.then201_crit_edge:            ; preds = %lor.lhs.false197
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then201

lor.lhs.false197.if.end213_crit_edge:             ; preds = %lor.lhs.false197
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end213

if.then201:                                       ; preds = %lor.lhs.false197.if.then201_crit_edge, %alua_stpg.exit
  %call190485 = phi i32 [ %call190481, %lor.lhs.false197.if.then201_crit_edge ], [ %call190, %alua_stpg.exit ]
  %261 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %flags7, align 4
  %interval204 = getelementptr i8, ptr %work, i32 -4
  %263 = ptrtoint ptr %interval204 to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 0, ptr %interval204, align 4
  %or203 = and i32 %262, -81
  %and206 = or i32 %or203, 16
  store i32 %and206, ptr %flags7, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call190485) #12
  %264 = load ptr, ptr @kaluad_wq, align 4
  %265 = ptrtoint ptr %interval204 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %interval204, align 4
  %mul210 = mul i32 %266, 100
  %call.i421 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %264, ptr noundef %work, i32 noundef %mul210) #12
  br label %cleanup277

if.end213:                                        ; preds = %lor.lhs.false197.if.end213_crit_edge, %if.end172.if.end213_crit_edge
  %flags.2 = phi i32 [ %call190481, %lor.lhs.false197.if.end213_crit_edge ], [ %flags.1, %if.end172.if.end213_crit_edge ]
  %err.3 = phi i32 [ %retval.0.i420.ph, %lor.lhs.false197.if.end213_crit_edge ], [ %err.2, %if.end172.if.end213_crit_edge ]
  %rtpg_list = getelementptr i8, ptr %work, i32 144
  %267 = ptrtoint ptr %rtpg_list to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load volatile ptr, ptr %rtpg_list, align 4
  %cmp.i.not.i = icmp eq ptr %268, %rtpg_list
  br i1 %cmp.i.not.i, label %if.end213.list_splice_init.exit_crit_edge, label %if.then.i422

if.end213.list_splice_init.exit_crit_edge:        ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_init.exit

if.then.i422:                                     ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #14
  %269 = ptrtoint ptr %qdata_list to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %qdata_list, align 4
  %prev2.i.i = getelementptr i8, ptr %work, i32 148
  %271 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %268, i32 0, i32 1
  %273 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr %qdata_list, ptr %prev3.i.i, align 4
  store ptr %268, ptr %qdata_list, align 4
  %274 = ptrtoint ptr %272 to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr %270, ptr %272, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %270, i32 0, i32 1
  %275 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr %272, ptr %prev6.i.i, align 4
  %276 = ptrtoint ptr %rtpg_list to i32
  call void @__asan_store4_noabort(i32 %276)
  store volatile ptr %rtpg_list, ptr %rtpg_list, align 4
  store ptr %rtpg_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i422, %if.end213.list_splice_init.exit_crit_edge
  %dh_list = getelementptr i8, ptr %work, i32 -304
  %277 = ptrtoint ptr %dh_list to i32
  call void @__asan_load4_noabort(i32 %277)
  %h.0506 = load ptr, ptr %dh_list, align 4
  %cmp219.not507 = icmp eq ptr %h.0506, %dh_list
  br i1 %cmp219.not507, label %list_splice_init.exit.for.end_crit_edge, label %list_splice_init.exit.for.body_crit_edge

list_splice_init.exit.for.body_crit_edge:         ; preds = %list_splice_init.exit
  br label %for.body

list_splice_init.exit.for.end_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %list_splice_init.exit.for.body_crit_edge
  %h.0508 = phi ptr [ %h.0, %for.body.for.body_crit_edge ], [ %h.0506, %list_splice_init.exit.for.body_crit_edge ]
  %disabled = getelementptr inbounds %struct.alua_dh_data, ptr %h.0508, i32 0, i32 7
  %278 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 0, ptr %disabled, align 4
  %279 = ptrtoint ptr %h.0508 to i32
  call void @__asan_load4_noabort(i32 %279)
  %h.0 = load ptr, ptr %h.0508, align 4
  %cmp219.not = icmp eq ptr %h.0, %dh_list
  br i1 %cmp219.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %list_splice_init.exit.for.end_crit_edge
  %280 = ptrtoint ptr %rtpg_sdev to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr null, ptr %rtpg_sdev, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.2) #12
  %281 = ptrtoint ptr %qdata_list to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %qdata_list, align 4
  %cmp241.not510 = icmp eq ptr %282, %qdata_list
  br i1 %cmp241.not510, label %for.end.do.body259_crit_edge, label %for.end.for.body245_crit_edge

for.end.for.body245_crit_edge:                    ; preds = %for.end
  br label %for.body245

for.end.do.body259_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body259

for.body245:                                      ; preds = %if.end250.for.body245_crit_edge, %for.end.for.body245_crit_edge
  %qdata.0511 = phi ptr [ %tmp1.0513, %if.end250.for.body245_crit_edge ], [ %282, %for.end.for.body245_crit_edge ]
  %283 = ptrtoint ptr %qdata.0511 to i32
  call void @__asan_load4_noabort(i32 %283)
  %tmp1.0513 = load ptr, ptr %qdata.0511, align 4
  %call.i.i424 = call zeroext i1 @__list_del_entry_valid(ptr noundef %qdata.0511) #12
  br i1 %call.i.i424, label %if.end.i.i425, label %for.body245.list_del.exit_crit_edge

for.body245.list_del.exit_crit_edge:              ; preds = %for.body245
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i425:                                    ; preds = %for.body245
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %qdata.0511, i32 0, i32 1
  %284 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %prev.i.i, align 4
  %286 = ptrtoint ptr %qdata.0511 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %qdata.0511, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %287, i32 0, i32 1
  %288 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr %285, ptr %prev1.i.i.i, align 4
  %289 = ptrtoint ptr %285 to i32
  call void @__asan_store4_noabort(i32 %289)
  store volatile ptr %287, ptr %285, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i425, %for.body245.list_del.exit_crit_edge
  %290 = ptrtoint ptr %qdata.0511 to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr inttoptr (i32 256 to ptr), ptr %qdata.0511, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %qdata.0511, i32 0, i32 1
  %291 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %callback_fn = getelementptr inbounds %struct.alua_queue_data, ptr %qdata.0511, i32 0, i32 1
  %292 = ptrtoint ptr %callback_fn to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %callback_fn, align 4
  %tobool247.not = icmp eq ptr %293, null
  br i1 %tobool247.not, label %list_del.exit.if.end250_crit_edge, label %if.then248

list_del.exit.if.end250_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end250

if.then248:                                       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %callback_data = getelementptr inbounds %struct.alua_queue_data, ptr %qdata.0511, i32 0, i32 2
  %294 = ptrtoint ptr %callback_data to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %callback_data, align 4
  call void %293(ptr noundef %295, i32 noundef %err.3) #12
  br label %if.end250

if.end250:                                        ; preds = %if.then248, %list_del.exit.if.end250_crit_edge
  call void @kfree(ptr noundef %qdata.0511) #12
  %cmp241.not = icmp eq ptr %tmp1.0513, %qdata_list
  br i1 %cmp241.not, label %if.end250.do.body259_crit_edge, label %if.end250.for.body245_crit_edge

if.end250.for.body245_crit_edge:                  ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body245

if.end250.do.body259_crit_edge:                   ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body259

do.body259:                                       ; preds = %if.end250.do.body259_crit_edge, %for.end.do.body259_crit_edge
  %call267 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %296 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %flags7, align 4
  %and273 = and i32 %297, -65
  store i32 %and273, ptr %flags7, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call267) #12
  call void @scsi_device_put(ptr noundef nonnull %4) #12
  call fastcc void @kref_put(ptr noundef %add.ptr)
  br label %cleanup277

cleanup277:                                       ; preds = %do.body259, %if.then201, %if.end157, %if.end106, %if.end58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %qdata_list) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alua_find_get_pg(ptr noundef readonly %id_str, i32 noundef %id_size, i32 noundef %group_id) unnamed_addr #2 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %id_str, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id_size)
  %tobool1.not = icmp eq i32 %id_size, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %0 = ptrtoint ptr %id_str to i32
  call void @__asan_load1_noabort(i32 %0)
  %char0 = load i8, ptr %id_str, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool3.not = icmp eq i8 %char0, 0
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false2
  %.pn38 = load ptr, ptr @port_group_list, align 4
  %cmp.not40 = icmp eq ptr %.pn38, @port_group_list
  br i1 %cmp.not40, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %.pn41 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn38, %for.cond.preheader.for.body_crit_edge ]
  %pg.042 = getelementptr i8, ptr %.pn41, i32 -12
  %group_id4 = getelementptr i8, ptr %.pn41, i32 276
  %1 = ptrtoint ptr %group_id4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %group_id4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %group_id)
  %cmp5.not = icmp eq i32 %2, %group_id
  br i1 %cmp5.not, label %if.end7, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %device_id_len = getelementptr i8, ptr %.pn41, i32 272
  %3 = ptrtoint ptr %device_id_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %device_id_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool8.not = icmp ne i32 %4, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %id_size)
  %cmp11.not = icmp eq i32 %4, %id_size
  %or.cond37 = and i1 %tobool8.not, %cmp11.not
  br i1 %or.cond37, label %if.end13, label %if.end7.for.inc_crit_edge

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end13:                                         ; preds = %if.end7
  %device_id_str = getelementptr i8, ptr %.pn41, i32 16
  %call14 = call i32 @strncmp(ptr noundef %device_id_str, ptr noundef nonnull %id_str, i32 noundef %id_size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.for.inc_crit_edge

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end17:                                         ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %pg.042, i32 noundef 4) #12
  %5 = ptrtoint ptr %pg.042 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %pg.042, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end17
  %7 = phi i32 [ %6, %if.end17 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %8 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %7, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pg.042, i32 noundef 4) #12
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #12
  %9 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %pg.042, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %11 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %pg.042, ptr %pg.042, i32 %10, i32 %add.i.i.i.i, ptr elementtype(i32) %pg.042) #12, !srcloc !162
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %10
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !163

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %12 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %13, 1
  %14 = or i32 %add5.i.i.i.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !163

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %pg.042, i32 noundef 0) #12
  %15 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %16 = phi i32 [ %13, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool12.i.i.i.i.not = icmp eq i32 %16, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.for.inc_crit_edge, label %kref_get_unless_zero.exit.cleanup_crit_edge

kref_get_unless_zero.exit.cleanup_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

kref_get_unless_zero.exit.for.inc_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %kref_get_unless_zero.exit.for.inc_crit_edge, %if.end13.for.inc_crit_edge, %if.end7.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %17 = ptrtoint ptr %.pn41 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn41, align 4
  %cmp.not = icmp eq ptr %.pn, @port_group_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %kref_get_unless_zero.exit.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %lor.lhs.false2.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %for.cond.preheader.cleanup_crit_edge ], [ %pg.042, %kref_get_unless_zero.exit.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_test_unit_ready(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_up(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_print_sense_hdr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__scsi_execute(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_register_device_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !19, !20, !21, !22, !24, !26, !27, !29, !31, !33, !34, !35, !37, !38, !39, !41, !42, !44, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !79, !81, !83, !84, !85, !86, !88, !89, !91, !93, !95, !96, !98, !100, !101, !102, !104, !106, !107, !109, !110, !111, !113, !115, !117, !119, !120, !121, !122, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !148, !149}
!llvm.named.register.sp = !{!150}
!llvm.module.flags = !{!151, !152, !153, !154, !155, !156, !157, !158}
!llvm.ident = !{!159}

!0 = !{ptr @__param_optimize_stpg, !1, !"__param_optimize_stpg", i1 false, i1 false}
!1 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 54, i32 1}
!2 = !{ptr @__UNIQUE_ID_optimize_stpgtype281, !1, !"__UNIQUE_ID_optimize_stpgtype281", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_optimize_stpg282, !4, !"__UNIQUE_ID_optimize_stpg282", i1 false, i1 false}
!4 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 55, i32 1}
!5 = !{ptr @__initcall__kmod_scsi_dh_alua__313_1280_alua_init6, !6, !"__initcall__kmod_scsi_dh_alua__313_1280_alua_init6", i1 false, i1 false}
!6 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 1280, i32 1}
!7 = !{ptr @__exitcall_alua_exit, !8, !"__exitcall_alua_exit", i1 false, i1 false}
!8 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 1281, i32 1}
!9 = !{ptr @__UNIQUE_ID_description314, !10, !"__UNIQUE_ID_description314", i1 false, i1 false}
!10 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 1283, i32 1}
!11 = !{ptr @__UNIQUE_ID_author315, !12, !"__UNIQUE_ID_author315", i1 false, i1 false}
!12 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 1284, i32 1}
!13 = !{ptr @__UNIQUE_ID_file316, !14, !"__UNIQUE_ID_file316", i1 false, i1 false}
!14 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 1285, i32 1}
!15 = !{ptr @__UNIQUE_ID_license317, !14, !"__UNIQUE_ID_license317", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_version318, !17, !"__UNIQUE_ID_version318", i1 false, i1 false}
!17 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 1286, i32 1}
!18 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__modver_attr, !17, !"__modver_attr", i1 false, i1 false}
!22 = !{ptr @optimize_stpg, !23, !"optimize_stpg", i1 false, i1 false}
!23 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 53, i32 13}
!24 = !{ptr @kaluad_wq, !25, !"kaluad_wq", i1 false, i1 false}
!25 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 59, i32 33}
!26 = !{ptr @__param_str_optimize_stpg, !1, !"__param_str_optimize_stpg", i1 false, i1 false}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 1246, i32 10}
!29 = !{ptr @alua_dh, !30, !"alua_dh", i1 false, i1 false}
!30 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 1245, i32 35}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 422, i32 9}
!33 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!37 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!41 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 1143, i32 7}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 979, i32 6}
!46 = !{ptr @.str.9, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 58, i32 8}
!48 = !{ptr @port_group_lock, !47, !"port_group_lock", i1 false, i1 false}
!49 = !{ptr @alua_bus_attach.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 1203, i32 2}
!51 = !{ptr @.str.10, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @alua_bus_attach.__key.11, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 1209, i32 2}
!54 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 277, i32 3}
!57 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 286, i32 3}
!60 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 291, i32 3}
!62 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 295, i32 3}
!64 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 299, i32 3}
!66 = distinct !{null, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 303, i32 3}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 335, i32 3}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 348, i32 3}
!72 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 353, i32 3}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 359, i32 11}
!76 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 376, i32 18}
!79 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 227, i32 3}
!81 = !{ptr @alua_alloc_pg.__key, !82, !"__key", i1 false, i1 false}
!82 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 240, i32 2}
!83 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @alua_alloc_pg.__key.27, !82, !"__key", i1 false, i1 false}
!85 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @alua_alloc_pg.__key.29, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 244, i32 2}
!88 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 561, i32 4}
!91 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 568, i32 4}
!93 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 611, i32 4}
!95 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 617, i32 3}
!98 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 633, i32 4}
!100 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @__func__.alua_rtpg, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 649, i32 3}
!104 = distinct !{null, !105, !"__warned", i1 false, i1 false}
!105 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 678, i32 6}
!106 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.40, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 702, i32 3}
!109 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!111 = distinct !{null, !112, !"__warned", i1 false, i1 false}
!112 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 728, i32 4}
!113 = distinct !{null, !114, !"__warned", i1 false, i1 false}
!114 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 828, i32 2}
!115 = distinct !{null, !116, !"__warned", i1 false, i1 false}
!116 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 835, i32 7}
!117 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 845, i32 3}
!119 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @alua_rtpg_select_sdev._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @alua_rtpg_select_sdev._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 851, i32 2}
!125 = !{ptr @.str.49, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 790, i32 3}
!127 = !{ptr @.str.50, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 799, i32 4}
!129 = !{ptr @.str.51, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 805, i32 4}
!131 = !{ptr @port_group_list, !132, !"port_group_list", i1 false, i1 false}
!132 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 57, i32 8}
!133 = distinct !{null, !134, !"__warned", i1 false, i1 false}
!134 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 1231, i32 7}
!135 = distinct !{null, !136, !"__warned", i1 false, i1 false}
!136 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 1109, i32 7}
!137 = distinct !{null, !138, !"__warned", i1 false, i1 false}
!138 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 1166, i32 7}
!139 = !{ptr @.str.52, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 1056, i32 22}
!141 = distinct !{null, !142, !"__warned", i1 false, i1 false}
!142 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 1065, i32 7}
!143 = !{ptr @.str.53, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 1261, i32 30}
!145 = !{ptr @.str.54, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/scsi/device_handler/scsi_dh_alua.c", i32 1267, i32 3}
!147 = !{ptr @.str.55, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @alua_init._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @alua_init._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{!"sp"}
!151 = !{i32 1, !"wchar_size", i32 2}
!152 = !{i32 1, !"min_enum_size", i32 4}
!153 = !{i32 8, !"branch-target-enforcement", i32 0}
!154 = !{i32 8, !"sign-return-address", i32 0}
!155 = !{i32 8, !"sign-return-address-all", i32 0}
!156 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!157 = !{i32 7, !"uwtable", i32 1}
!158 = !{i32 7, !"frame-pointer", i32 2}
!159 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!160 = !{i64 2149949207}
!161 = !{i64 2149949473}
!162 = !{i64 1097849, i64 1097873, i64 1097894, i64 1097911, i64 1097928}
!163 = !{!"branch_weights", i32 2000, i32 1}
!164 = !{!"auto-init"}
!165 = !{i64 2148613866, i64 2148613898, i64 2148613927, i64 2148613961, i64 2148613992, i64 2148614015}
!166 = !{!"branch_weights", i32 1, i32 2000}
!167 = !{i64 2148701891}
!168 = !{i64 2148616331, i64 2148616363, i64 2148616392, i64 2148616426, i64 2148616457, i64 2148616480}
!169 = !{i64 2149899664}
!170 = !{i64 2154545665}
!171 = !{i64 2151451719}
!172 = !{i64 1017016, i64 1017077}
!173 = !{i64 1019748}
!174 = !{i64 1020033}
!175 = !{i8 0, i8 2}
