; ModuleID = '/llk/IR_all_yes/drivers/scsi/ch.c_pt.bc'
source_filename = "../drivers/scsi/ch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.scsi_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.anon.85 = type { i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.scsi_changer = type { %struct.kref, %struct.list_head, i32, [8 x i8], ptr, ptr, [8 x i32], [8 x i32], i32, i32, %struct.mutex }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.changer_params = type { i32, i32, i32, i32, i32 }
%struct.changer_vendor_params = type { i32, [16 x i8], i32, [16 x i8], i32, [16 x i8], i32, [16 x i8], [8 x i32] }
%struct.changer_position = type { i32, i32, i32 }
%struct.changer_move = type { i32, i32, i32, i32, i32 }
%struct.changer_exchange = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.changer_element_status = type { i32, ptr }
%struct.changer_get_element = type { i32, i32, i32, i32, i32, i32, i32, i32, [36 x i8], [36 x i8], i32 }
%struct.changer_set_voltag = type { i32, i32, [36 x i8], i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.81 = type { ptr }

@__UNIQUE_ID_description285 = internal constant [60 x i8] c"ch.description=device driver for scsi media changer devices\00", section ".modinfo", align 1
@__UNIQUE_ID_author286 = internal constant [42 x i8] c"ch.author=Gerd Knorr <kraxel@bytesex.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file287 = internal constant [24 x i8] c"ch.file=drivers/scsi/ch\00", section ".modinfo", align 1
@__UNIQUE_ID_license288 = internal constant [15 x i8] c"ch.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias289 = internal constant [25 x i8] c"ch.alias=char-major-86-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias290 = internal constant [22 x i8] c"ch.alias=scsi:t-0x08*\00", section ".modinfo", align 1
@__param_str_init = internal constant [8 x i8] c"ch.init\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@init = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_init = internal constant %struct.kernel_param { ptr @__param_str_init, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @init } }, section "__param", align 4
@__UNIQUE_ID_inittype291 = internal constant [21 x i8] c"ch.parmtype=init:int\00", section ".modinfo", align 1
@__UNIQUE_ID_init292 = internal constant [68 x i8] c"ch.parm=init:initialize element status on driver load (default: on)\00", section ".modinfo", align 1
@__param_str_timeout_move = internal constant [16 x i8] c"ch.timeout_move\00", align 1
@timeout_move = internal global { i32, [28 x i8] } { i32 300, [28 x i8] zeroinitializer }, align 32
@__param_timeout_move = internal constant %struct.kernel_param { ptr @__param_str_timeout_move, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @timeout_move } }, section "__param", align 4
@__UNIQUE_ID_timeout_movetype293 = internal constant [29 x i8] c"ch.parmtype=timeout_move:int\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout_move294 = internal constant [70 x i8] c"ch.parm=timeout_move:timeout for move commands (default: 300 seconds)\00", section ".modinfo", align 1
@__param_str_timeout_init = internal constant [16 x i8] c"ch.timeout_init\00", align 1
@timeout_init = internal global { i32, [28 x i8] } { i32 3600, [28 x i8] zeroinitializer }, align 32
@__param_timeout_init = internal constant %struct.kernel_param { ptr @__param_str_timeout_init, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @timeout_init } }, section "__param", align 4
@__UNIQUE_ID_timeout_inittype295 = internal constant [29 x i8] c"ch.parmtype=timeout_init:int\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout_init296 = internal constant [83 x i8] c"ch.parm=timeout_init:timeout for INITIALIZE ELEMENT STATUS (default: 3600 seconds)\00", section ".modinfo", align 1
@__param_str_verbose = internal constant [11 x i8] c"ch.verbose\00", align 1
@verbose = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype297 = internal constant [24 x i8] c"ch.parmtype=verbose:int\00", section ".modinfo", align 1
@__UNIQUE_ID_verbose298 = internal constant [41 x i8] c"ch.parm=verbose:be verbose (default: on)\00", section ".modinfo", align 1
@__param_str_debug = internal constant [9 x i8] c"ch.debug\00", align 1
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype299 = internal constant [22 x i8] c"ch.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug300 = internal constant [113 x i8] c"ch.parm=debug:enable/disable debug messages, also prints more detailed sense codes on scsi errors (default: off)\00", section ".modinfo", align 1
@__param_str_dt_id = internal constant [9 x i8] c"ch.dt_id\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_dt_id = internal constant %struct.kparam_array { i32 16, i32 4, ptr null, ptr @param_ops_int, ptr @dt_id }, align 4
@__param_dt_id = internal constant %struct.kernel_param { ptr @__param_str_dt_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_dt_id } }, section "__param", align 4
@__UNIQUE_ID_dt_idtype301 = internal constant [31 x i8] c"ch.parmtype=dt_id:array of int\00", section ".modinfo", align 1
@__param_str_dt_lun = internal constant [10 x i8] c"ch.dt_lun\00", align 1
@__param_arr_dt_lun = internal constant %struct.kparam_array { i32 16, i32 4, ptr null, ptr @param_ops_int, ptr @dt_lun }, align 4
@__param_dt_lun = internal constant %struct.kernel_param { ptr @__param_str_dt_lun, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_dt_lun } }, section "__param", align 4
@__UNIQUE_ID_dt_luntype302 = internal constant [32 x i8] c"ch.parmtype=dt_lun:array of int\00", section ".modinfo", align 1
@__param_str_vendor_firsts = internal constant [17 x i8] c"ch.vendor_firsts\00", align 1
@__param_arr_vendor_firsts = internal constant %struct.kparam_array { i32 4, i32 4, ptr null, ptr @param_ops_int, ptr @vendor_firsts }, align 4
@__param_vendor_firsts = internal constant %struct.kernel_param { ptr @__param_str_vendor_firsts, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_vendor_firsts } }, section "__param", align 4
@__UNIQUE_ID_vendor_firststype303 = internal constant [39 x i8] c"ch.parmtype=vendor_firsts:array of int\00", section ".modinfo", align 1
@__param_str_vendor_counts = internal constant [17 x i8] c"ch.vendor_counts\00", align 1
@__param_arr_vendor_counts = internal constant %struct.kparam_array { i32 4, i32 4, ptr null, ptr @param_ops_int, ptr @vendor_counts }, align 4
@__param_vendor_counts = internal constant %struct.kernel_param { ptr @__param_str_vendor_counts, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_vendor_counts } }, section "__param", align 4
@__UNIQUE_ID_vendor_countstype304 = internal constant [39 x i8] c"ch.parmtype=vendor_counts:array of int\00", section ".modinfo", align 1
@ch_template = internal global { %struct.scsi_driver, [60 x i8] } { %struct.scsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr @ch_probe, ptr null, ptr @ch_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ch\00", [29 x i8] zeroinitializer }, align 32
@ch_sysfs_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ch_index_idr = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.38, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_ch__305_1029_init_ch_module6 = internal global ptr @init_ch_module, section ".initcall6.init", align 4
@__exitcall_exit_ch_module = internal global ptr @exit_ch_module, section ".exitcall.exit", align 4
@dt_id = internal global { [16 x i32], [32 x i8] } { [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@dt_lun = internal global { [16 x i32], [32 x i8] } zeroinitializer, align 32
@vendor_firsts = internal global { [4 x i32], [16 x i8] } zeroinitializer, align 32
@vendor_counts = internal global { [4 x i32], [16 x i8] } zeroinitializer, align 32
@ch_index_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ch%d\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ch%d: failed to get device\0A\00", [36 x i8] zeroinitializer }, align 32
@ch_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ch->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"s%s\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ch%d: device_create failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Attached scsi changer %s\0A\00", [38 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ch_index_lock\00", [18 x i8] zeroinitializer }, align 32
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"type #1 (mt): 0x%x+%d [medium transport]\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"type #2 (st): 0x%x+%d [storage]\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"type #3 (ie): 0x%x+%d [import/export]\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"type #4 (dt): 0x%x+%d [data transfer]\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"reading element address assignment page failed!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"type #%d (v%d): 0x%x+%d [%s, vendor specific]\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dt 0x%x: [insmod option] \00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"dt 0x%x: READ ELEMENT STATUS failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dt 0x%x: \00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\01c\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"not this SCSI bus\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ID/LUN unknown\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ID %i, LUN %i, \00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Huh? device not found!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"name: %8.8s %16.16s %4.4s\0A\00", [37 x i8] zeroinitializer }, align 32
@ch_err = internal constant { [6 x %struct.anon.85], [48 x i8] } { [6 x %struct.anon.85] [%struct.anon.85 { i8 5, i8 33, i8 1, i32 57 }, %struct.anon.85 { i8 5, i8 40, i8 1, i32 52 }, %struct.anon.85 { i8 5, i8 59, i8 13, i32 54 }, %struct.anon.85 { i8 5, i8 59, i8 14, i32 52 }, %struct.anon.85 { i8 5, i8 32, i8 0, i32 56 }, %struct.anon.85 zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"v0\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"v1\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"v2\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"v3\00", [29 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"asked for element 0x%02x, got 0x%02x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"device has no volume tag support\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"READ ELEMENT STATUS for element 0x%x failed\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"INITIALIZE ELEMENT STATUS, may take some time ...\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"... finished\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ch_index_idr.xa_lock\00", [43 x i8] zeroinitializer }, align 32
@init_ch_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.41, i32 997, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016SCSI Media Changer driver v0.25 \0A\00", [60 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"init_ch_module\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drivers/scsi/ch.c\00", [46 x i8] zeroinitializer }, align 32
@init_ch_module._entry_ptr = internal global ptr @init_ch_module._entry, section ".printk_index", align 4
@init_ch_module.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scsi_changer\00", [19 x i8] zeroinitializer }, align 32
@changer_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ch_ioctl, ptr null, ptr null, i32 0, ptr @ch_open, ptr null, ptr @ch_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@init_ch_module._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.40, ptr @.str.41, i32 1006, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unable to get major %d for SCSI-Changer\0A\00", [55 x i8] zeroinitializer }, align 32
@init_ch_module._entry_ptr.45 = internal global ptr @init_ch_module._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CHIOPOSITION: invalid parameter\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CHIOMOVE: invalid parameter\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CHIOEXCHANGE: invalid parameter\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CHIOSVOLTAG: invalid parameter\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"position: 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"move: 0x%x => 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"exchange: 0x%x => 0x%x => 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"element 0x%x: asc=0x%x, ascq=0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s %s voltag: 0x%x => \22%s\22\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clear\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"set\00", [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"alternate\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"primary\00", [24 x i8] zeroinitializer }, align 32
@str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"v3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"v1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"v0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 32, i64 33, i64 40, i64 59]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 8, i64 13, i64 14]
@__sancov_gen_cov_switch_values.66 = internal global [11 x i64] [i64 9, i64 32, i64 25361, i64 1074291464, i64 1074553603, i64 1075077889, i64 1075602178, i64 1076912914, i64 1080845072, i64 2148819718, i64 2154849043]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 8, i64 42, i64 63]
@___asan_gen_.68 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 47, i32 12 }
@___asan_gen_.71 = private unnamed_addr constant [13 x i8] c"timeout_move\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 52, i32 12 }
@___asan_gen_.74 = private unnamed_addr constant [13 x i8] c"timeout_init\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 57, i32 12 }
@___asan_gen_.77 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 62, i32 12 }
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 66, i32 12 }
@___asan_gen_.83 = private unnamed_addr constant [12 x i8] c"ch_template\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 975, i32 27 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1024, i32 40 }
@___asan_gen_.89 = private unnamed_addr constant [15 x i8] c"ch_sysfs_class\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 105, i32 23 }
@___asan_gen_.92 = private unnamed_addr constant [13 x i8] c"ch_index_idr\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [6 x i8] c"dt_id\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 71, i32 12 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"dt_lun\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 72, i32 12 }
@___asan_gen_.101 = private unnamed_addr constant [14 x i8] c"vendor_firsts\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 77, i32 12 }
@___asan_gen_.104 = private unnamed_addr constant [14 x i8] c"vendor_counts\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 78, i32 12 }
@___asan_gen_.107 = private unnamed_addr constant [14 x i8] c"ch_index_lock\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 914, i32 19 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 917, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 922, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 927, i32 7 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 929, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 946, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 122, i32 8 }
@___asan_gen_.147 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 36, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 331, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 334, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 337, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 340, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 344, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 355, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 375, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 379, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 382, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 384, i32 5 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 387, i32 5 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 397, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 404, i32 5 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 406, i32 5 }
@___asan_gen_.194 = private unnamed_addr constant [7 x i8] c"ch_err\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 129, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 83, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 83, i32 8 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 83, i32 14 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 83, i32 20 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 259, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 268, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 271, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 283, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 288, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 121, i32 8 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 997, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 998, i32 26 }
@___asan_gen_.248 = private unnamed_addr constant [13 x i8] c"changer_fops\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 984, i32 37 }
@___asan_gen_.251 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1005, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 688, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 708, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 731, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 866, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 174, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 426, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 445, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 467, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 554, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.297 = private constant [21 x i8] c"../drivers/scsi/ch.c\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 515, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [7 x i8] c"str.62\00", align 1
@___asan_gen_.301 = private unnamed_addr constant [7 x i8] c"str.63\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [7 x i8] c"str.64\00", align 1
@llvm.compiler.used = appending global [115 x ptr] [ptr @__UNIQUE_ID_alias289, ptr @__UNIQUE_ID_alias290, ptr @__UNIQUE_ID_author286, ptr @__UNIQUE_ID_debug300, ptr @__UNIQUE_ID_debugtype299, ptr @__UNIQUE_ID_description285, ptr @__UNIQUE_ID_dt_idtype301, ptr @__UNIQUE_ID_dt_luntype302, ptr @__UNIQUE_ID_file287, ptr @__UNIQUE_ID_init292, ptr @__UNIQUE_ID_inittype291, ptr @__UNIQUE_ID_license288, ptr @__UNIQUE_ID_timeout_init296, ptr @__UNIQUE_ID_timeout_inittype295, ptr @__UNIQUE_ID_timeout_move294, ptr @__UNIQUE_ID_timeout_movetype293, ptr @__UNIQUE_ID_vendor_countstype304, ptr @__UNIQUE_ID_vendor_firststype303, ptr @__UNIQUE_ID_verbose298, ptr @__UNIQUE_ID_verbosetype297, ptr @__exitcall_exit_ch_module, ptr @__initcall__kmod_ch__305_1029_init_ch_module6, ptr @__param_debug, ptr @__param_dt_id, ptr @__param_dt_lun, ptr @__param_init, ptr @__param_timeout_init, ptr @__param_timeout_move, ptr @__param_vendor_counts, ptr @__param_vendor_firsts, ptr @__param_verbose, ptr @exit_ch_module, ptr @init_ch_module._entry, ptr @init_ch_module._entry.43, ptr @init_ch_module._entry_ptr, ptr @init_ch_module._entry_ptr.45, ptr @init, ptr @timeout_move, ptr @timeout_init, ptr @verbose, ptr @debug, ptr @ch_template, ptr @.str, ptr @ch_sysfs_class, ptr @ch_index_idr, ptr @dt_id, ptr @dt_lun, ptr @vendor_firsts, ptr @vendor_counts, ptr @ch_index_lock, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ch_probe.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @ch_err, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @init_ch_module.__key, ptr @.str.42, ptr @changer_fops, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @str, ptr @str.62, ptr @str.63, ptr @str.64], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timeout_move to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timeout_init to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verbose to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_template to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_sysfs_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_index_idr to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_id to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_lun to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vendor_firsts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vendor_counts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_index_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_err to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ch_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ch_module.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @changer_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ch_module._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_ch_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @driver_unregister(ptr noundef nonnull @ch_template) #13
  tail call void @__unregister_chrdev(i32 noundef 86, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str) #13
  %0 = load ptr, ptr @ch_sysfs_class, align 4
  tail call void @class_destroy(ptr noundef %0) #13
  tail call void @idr_destroy(ptr noundef nonnull @ch_index_idr) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_ch_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #16
  %call2 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull @init_ch_module.__key) #13
  store ptr %call2, ptr @ch_sysfs_class, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__register_chrdev(i32 noundef 86, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str, ptr noundef nonnull @changer_fops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef 86) #16
  br label %fail1

if.end12:                                         ; preds = %if.end
  %call13 = tail call i32 @scsi_register_driver(ptr noundef nonnull @ch_template) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %fail2, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

fail2:                                            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__unregister_chrdev(i32 noundef 86, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str) #13
  br label %fail1

fail1:                                            ; preds = %fail2, %do.end9
  %rc.0 = phi i32 [ %call.i, %do.end9 ], [ %call13, %fail2 ]
  %1 = load ptr, ptr @ch_sysfs_class, align 4
  tail call void @class_destroy(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.end12.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %rc.0, %fail1 ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch_probe(ptr noundef %dev) #2 align 64 {
entry:
  %cmd.i = alloca [10 x i8], align 1
  %data.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %type = getelementptr i8, ptr %dev, i32 -252
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1)
  %cmp.not = icmp eq i8 %1, 8
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 196) #17
  %cmp2 = icmp eq ptr %call7.i.i, null
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @idr_preload(i32 noundef 3264) #13
  tail call void @_raw_spin_lock(ptr noundef nonnull @ch_index_lock) #13
  %call6 = tail call i32 @idr_alloc(ptr noundef nonnull @ch_index_idr, ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef 129, i32 noundef 2048) #13
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ch_index_lock) #13
  %3 = tail call i32 @llvm.read_register.i32(metadata !210) #13
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %8, ptrtoint (ptr @radix_tree_preloads to i32)
  %9 = inttoptr i32 %add.i to ptr
  tail call fastcc void @local_lock_release(ptr noundef %9) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !220
  %10 = tail call i32 @llvm.read_register.i32(metadata !210) #13
  %and.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call6)
  %cmp10 = icmp eq i32 %call6, -28
  %spec.store.select = select i1 %cmp10, i32 -19, i32 %call6
  br label %free_ch

if.end14:                                         ; preds = %if.end5
  %minor = getelementptr inbounds %struct.scsi_changer, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call6, ptr %minor, align 4
  %name = getelementptr inbounds %struct.scsi_changer, ptr %call7.i.i, i32 0, i32 3
  %call16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.1, i32 noundef %call6)
  %call17 = tail call i32 @scsi_device_get(ptr noundef %add.ptr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %do.body, label %if.then18

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %minor, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.2, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef %16) #13
  br label %remove_idr

do.body:                                          ; preds = %if.end14
  %lock = getelementptr inbounds %struct.scsi_changer, ptr %call7.i.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @ch_probe.__key) #13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #13
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 1, ptr %call7.i.i, align 8
  %device = getelementptr inbounds %struct.scsi_changer, ptr %call7.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr, ptr %device, align 8
  %19 = load ptr, ptr @ch_sysfs_class, align 4
  %20 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %minor, align 4
  %or = or i32 %21, 90177536
  %call24 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %19, ptr noundef %dev, i32 noundef %or, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.5, ptr noundef %name) #13
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then26, label %if.end29

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %minor, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.2, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef %23) #13
  %24 = ptrtoint ptr %call24 to i32
  br label %put_device

if.end29:                                         ; preds = %do.body
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cmd.i) #13
  %25 = getelementptr inbounds [10 x i8], ptr %cmd.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data.i) #13
  %26 = getelementptr inbounds [16 x i8], ptr %data.i, i32 0, i32 6
  %27 = getelementptr inbounds [16 x i8], ptr %data.i, i32 0, i32 7
  %28 = call ptr @memset(ptr %data.i, i32 255, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 512) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %ch_readconfig.exit.thread, label %if.end.i

ch_readconfig.exit.thread:                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data.i) #13
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cmd.i) #13
  br label %if.then33

if.end.i:                                         ; preds = %if.end29
  %30 = getelementptr inbounds [10 x i8], ptr %cmd.i, i32 0, i32 4
  %31 = getelementptr inbounds [10 x i8], ptr %cmd.i, i32 0, i32 2
  %32 = getelementptr inbounds i8, ptr %cmd.i, i32 3
  %33 = call ptr @memset(ptr %32, i32 0, i32 7)
  %34 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 26, ptr %cmd.i, align 1
  %35 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device, align 8
  %lun1.i = getelementptr inbounds %struct.scsi_device, ptr %36, i32 0, i32 18
  %37 = ptrtoint ptr %lun1.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %lun1.i, align 8
  %.tr.i = trunc i64 %38 to i8
  %conv.i = shl i8 %.tr.i, 5
  %39 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv.i, ptr %25, align 1
  %40 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 29, ptr %31, align 1
  %41 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -1, ptr %30, align 1
  %call6.i = call fastcc i32 @ch_do_scsi(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %cmd.i, ptr noundef nonnull %call7.i.i.i, i32 noundef 255, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.not.i = icmp eq i32 %call6.i, 0
  br i1 %cmp.not.i, label %if.end.i.if.then17.i_crit_edge, label %if.end14.i

if.end.i.if.then17.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then17.i

if.end14.i:                                       ; preds = %if.end.i
  %42 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %25, align 1
  %44 = or i8 %43, 8
  store i8 %44, ptr %25, align 1
  %call13.i = call fastcc i32 @ch_do_scsi(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %cmd.i, ptr noundef nonnull %call7.i.i.i, i32 noundef 255, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp15.i = icmp eq i32 %call13.i, 0
  br i1 %cmp15.i, label %if.end14.i.if.then17.i_crit_edge, label %do.body175.i

if.end14.i.if.then17.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then17.i

if.then17.i:                                      ; preds = %if.end14.i.if.then17.i_crit_edge, %if.end.i.if.then17.i_crit_edge
  %arrayidx18.i = getelementptr i8, ptr %call7.i.i.i, i32 3
  %45 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx18.i, align 1
  %conv19.i = zext i8 %46 to i32
  %add.i86 = add nuw nsw i32 %conv19.i, 6
  %arrayidx20.i = getelementptr i8, ptr %call7.i.i.i, i32 %add.i86
  %47 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %48 to i32
  %shl22.i = shl nuw nsw i32 %conv21.i, 8
  %add25.i = add nuw nsw i32 %conv19.i, 7
  %arrayidx26.i = getelementptr i8, ptr %call7.i.i.i, i32 %add25.i
  %49 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx26.i, align 1
  %conv27.i = zext i8 %50 to i32
  %or28.i = or i32 %shl22.i, %conv27.i
  %firsts.i = getelementptr inbounds %struct.scsi_changer, ptr %call7.i.i, i32 0, i32 6
  %51 = ptrtoint ptr %firsts.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or28.i, ptr %firsts.i, align 8
  %add32.i = add nuw nsw i32 %conv19.i, 8
  %arrayidx33.i = getelementptr i8, ptr %call7.i.i.i, i32 %add32.i
  %52 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx33.i, align 1
  %conv34.i = zext i8 %53 to i32
  %shl35.i = shl nuw nsw i32 %conv34.i, 8
  %add38.i = add nuw nsw i32 %conv19.i, 9
  %arrayidx39.i = getelementptr i8, ptr %call7.i.i.i, i32 %add38.i
  %54 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx39.i, align 1
  %conv40.i = zext i8 %55 to i32
  %or41.i = or i32 %shl35.i, %conv40.i
  %counts.i = getelementptr inbounds %struct.scsi_changer, ptr %call7.i.i, i32 0, i32 7
  %56 = ptrtoint ptr %counts.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or41.i, ptr %counts.i, align 8
  %add45.i = add nuw nsw i32 %conv19.i, 10
  %arrayidx46.i = getelementptr i8, ptr %call7.i.i.i, i32 %add45.i
  %57 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx46.i, align 1
  %conv47.i = zext i8 %58 to i32
  %shl48.i = shl nuw nsw i32 %conv47.i, 8
  %add51.i = add nuw nsw i32 %conv19.i, 11
  %arrayidx52.i = getelementptr i8, ptr %call7.i.i.i, i32 %add51.i
  %59 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx52.i, align 1
  %conv53.i = zext i8 %60 to i32
  %or54.i = or i32 %shl48.i, %conv53.i
  %arrayidx56.i = getelementptr %struct.scsi_changer, ptr %call7.i.i, i32 0, i32 6, i32 1
  %61 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or54.i, ptr %arrayidx56.i, align 4
  %add59.i = add nuw nsw i32 %conv19.i, 12
  %arrayidx60.i = getelementptr i8, ptr %call7.i.i.i, i32 %add59.i
  %62 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx60.i, align 1
  %conv61.i = zext i8 %63 to i32
  %shl62.i = shl nuw nsw i32 %conv61.i, 8
  %add65.i = add nuw nsw i32 %conv19.i, 13
  %arrayidx66.i = getelementptr i8, ptr %call7.i.i.i, i32 %add65.i
  %64 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx66.i, align 1
  %conv67.i = zext i8 %65 to i32
  %or68.i = or i32 %shl62.i, %conv67.i
  %arrayidx70.i = getelementptr %struct.scsi_changer, ptr %call7.i.i, i32 0, i32 7, i32 1
  %66 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or68.i, ptr %arrayidx70.i, align 4
  %add73.i = add nuw nsw i32 %conv19.i, 14
  %arrayidx74.i = getelementptr i8, ptr %call7.i.i.i, i32 %add73.i
  %67 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx74.i, align 1
  %conv75.i = zext i8 %68 to i32
  %shl76.i = shl nuw nsw i32 %conv75.i, 8
  %add79.i = add nuw nsw i32 %conv19.i, 15
  %arrayidx80.i = getelementptr i8, ptr %call7.i.i.i, i32 %add79.i
  %69 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx80.i, align 1
  %conv81.i = zext i8 %70 to i32
  %or82.i = or i32 %shl76.i, %conv81.i
  %arrayidx84.i = getelementptr %struct.scsi_changer, ptr %call7.i.i, i32 0, i32 6, i32 2
  %71 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %or82.i, ptr %arrayidx84.i, align 8
  %add87.i = add nuw nsw i32 %conv19.i, 16
  %arrayidx88.i = getelementptr i8, ptr %call7.i.i.i, i32 %add87.i
  %72 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx88.i, align 1
  %conv89.i = zext i8 %73 to i32
  %shl90.i = shl nuw nsw i32 %conv89.i, 8
  %add93.i = add nuw nsw i32 %conv19.i, 17
  %arrayidx94.i = getelementptr i8, ptr %call7.i.i.i, i32 %add93.i
  %74 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx94.i, align 1
  %conv95.i = zext i8 %75 to i32
  %or96.i = or i32 %shl90.i, %conv95.i
  %arrayidx98.i = getelementptr %struct.scsi_changer, ptr %call7.i.i, i32 0, i32 7, i32 2
  %76 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %or96.i, ptr %arrayidx98.i, align 8
  %add101.i = add nuw nsw i32 %conv19.i, 18
  %arrayidx102.i = getelementptr i8, ptr %call7.i.i.i, i32 %add101.i
  %77 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx102.i, align 1
  %conv103.i = zext i8 %78 to i32
  %shl104.i = shl nuw nsw i32 %conv103.i, 8
  %add107.i = add nuw nsw i32 %conv19.i, 19
  %arrayidx108.i = getelementptr i8, ptr %call7.i.i.i, i32 %add107.i
  %79 = ptrtoint ptr %arrayidx108.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx108.i, align 1
  %conv109.i = zext i8 %80 to i32
  %or110.i = or i32 %shl104.i, %conv109.i
  %arrayidx112.i = getelementptr %struct.scsi_changer, ptr %call7.i.i, i32 0, i32 6, i32 3
  %81 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or110.i, ptr %arrayidx112.i, align 4
  %add115.i = add nuw nsw i32 %conv19.i, 20
  %arrayidx116.i = getelementptr i8, ptr %call7.i.i.i, i32 %add115.i
  %82 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx116.i, align 1
  %conv117.i = zext i8 %83 to i32
  %shl118.i = shl nuw nsw i32 %conv117.i, 8
  %add121.i = add nuw nsw i32 %conv19.i, 21
  %arrayidx122.i = getelementptr i8, ptr %call7.i.i.i, i32 %add121.i
  %84 = ptrtoint ptr %arrayidx122.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx122.i, align 1
  %conv123.i = zext i8 %85 to i32
  %or124.i = or i32 %shl118.i, %conv123.i
  %arrayidx126.i = getelementptr %struct.scsi_changer, ptr %call7.i.i, i32 0, i32 7, i32 3
  %86 = ptrtoint ptr %arrayidx126.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %or124.i, ptr %arrayidx126.i, align 4
  %87 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool127.not.i = icmp eq i32 %87, 0
  br i1 %tobool127.not.i, label %if.then17.i.if.end184.i_crit_edge, label %do.body136.i

if.then17.i.if.end184.i_crit_edge:                ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end184.i

do.body136.i:                                     ; preds = %if.then17.i
  %88 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %device, align 8
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.7, ptr noundef %89, ptr noundef %name, ptr noundef nonnull @.str.13, i32 noundef %or28.i, i32 noundef %or41.i) #13
  %.pr.i = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool137.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool137.not.i, label %do.body136.i.if.end184.i_crit_edge, label %do.body149.i

do.body136.i.if.end184.i_crit_edge:               ; preds = %do.body136.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end184.i

do.body149.i:                                     ; preds = %do.body136.i
  %90 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %device, align 8
  %92 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx56.i, align 4
  %94 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx70.i, align 4
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.7, ptr noundef %91, ptr noundef %name, ptr noundef nonnull @.str.14, i32 noundef %93, i32 noundef %95) #13
  %.pr543.i = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr543.i)
  %tobool150.not.i = icmp eq i32 %.pr543.i, 0
  br i1 %tobool150.not.i, label %do.body149.i.if.end184.i_crit_edge, label %do.body162.i

do.body149.i.if.end184.i_crit_edge:               ; preds = %do.body149.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end184.i

do.body162.i:                                     ; preds = %do.body149.i
  %96 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %device, align 8
  %98 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx84.i, align 8
  %100 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx98.i, align 8
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.7, ptr noundef %97, ptr noundef %name, ptr noundef nonnull @.str.15, i32 noundef %99, i32 noundef %101) #13
  %.pr545.pr.i = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr545.pr.i)
  %tobool163.not.i = icmp eq i32 %.pr545.pr.i, 0
  br i1 %tobool163.not.i, label %do.body162.i.if.end184.i_crit_edge, label %if.then164.i

do.body162.i.if.end184.i_crit_edge:               ; preds = %do.body162.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end184.i

if.then164.i:                                     ; preds = %do.body162.i
  call void @__sanitizer_cov_trace_pc() #15
  %102 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %device, align 8
  %104 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx112.i, align 4
  %106 = ptrtoint ptr %arrayidx126.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx126.i, align 4
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.7, ptr noundef %103, ptr noundef %name, ptr noundef nonnull @.str.16, i32 noundef %105, i32 noundef %107) #13
  br label %if.end184.i

do.body175.i:                                     ; preds = %if.end14.i
  %108 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool176.not.i = icmp eq i32 %108, 0
  br i1 %tobool176.not.i, label %do.body175.i.if.end184.i_crit_edge, label %if.then177.i

do.body175.i.if.end184.i_crit_edge:               ; preds = %do.body175.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end184.i

if.then177.i:                                     ; preds = %do.body175.i
  call void @__sanitizer_cov_trace_pc() #15
  %109 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %device, align 8
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.7, ptr noundef %110, ptr noundef %name, ptr noundef nonnull @.str.17) #13
  br label %if.end184.i

if.end184.i:                                      ; preds = %if.then177.i, %do.body175.i.if.end184.i_crit_edge, %if.then164.i, %do.body162.i.if.end184.i_crit_edge, %do.body149.i.if.end184.i_crit_edge, %do.body136.i.if.end184.i_crit_edge, %if.then17.i.if.end184.i_crit_edge
  %111 = load i32, ptr @vendor_counts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp188.i = icmp eq i32 %111, 0
  br i1 %cmp188.i, label %if.end184.i.for.inc.i_crit_edge, label %if.end191.i

if.end184.i.for.inc.i_crit_edge:                  ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end191.i:                                      ; preds = %if.end184.i
  %112 = load i32, ptr @vendor_firsts, align 4
  %arrayidx200.i = getelementptr %struct.scsi_changer, ptr %call7.i.i, i32 0, i32 6, i32 4
  %113 = ptrtoint ptr %arrayidx200.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %arrayidx200.i, align 8
  %arrayidx204.i = getelementptr %struct.scsi_changer, ptr %call7.i.i, i32 0, i32 7, i32 4
  %114 = ptrtoint ptr %arrayidx204.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %111, ptr %arrayidx204.i, align 8
  %115 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool206.not.i = icmp eq i32 %115, 0
  br i1 %tobool206.not.i, label %if.end191.i.for.inc.i_crit_edge, label %if.then207.i

if.end191.i.for.inc.i_crit_edge:                  ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then207.i:                                     ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #15
  %116 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %device, align 8
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.7, ptr noundef %117, ptr noundef %name, ptr noundef nonnull @.str.18, i32 noundef 5, i32 noundef 1, i32 noundef %112, i32 noundef %111, ptr noundef nonnull @.str.28) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then207.i, %if.end191.i.for.inc.i_crit_edge, %if.end184.i.for.inc.i_crit_edge
  %118 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @vendor_counts, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp188.1.i = icmp eq i32 %118, 0
  br i1 %cmp188.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end191.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i

if.end191.1.i:                                    ; preds = %for.inc.i
  %119 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @vendor_firsts, i32 0, i32 1), align 4
  %arrayidx200.1.i = getelementptr %struct.scsi_changer, ptr %call7.i.i, i32 0, i32 6, i32 5
  %120 = ptrtoint ptr %arrayidx200.1.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %arrayidx200.1.i, align 4
  %arrayidx204.1.i = getelementptr %struct.scsi_changer, ptr %call7.i.i, i32 0, i32 7, i32 5
  %121 = ptrtoint ptr %arrayidx204.1.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %118, ptr %arrayidx204.1.i, align 4
  %122 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool206.not.1.i = icmp eq i32 %122, 0
  br i1 %tobool206.not.1.i, label %if.end191.1.i.for.inc.1.i_crit_edge, label %if.then207.1.i

if.end191.1.i.for.inc.1.i_crit_edge:              ; preds = %if.end191.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i

if.then207.1.i:                                   ; preds = %if.end191.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %123 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %device, align 8
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.7, ptr noundef %124, ptr noundef %name, ptr noundef nonnull @.str.18, i32 noundef 6, i32 noundef 2, i32 noundef %119, i32 noundef %118, ptr noundef nonnull @.str.29) #13
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then207.1.i, %if.end191.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %125 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @vendor_counts, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp188.2.i = icmp eq i32 %125, 0
  br i1 %cmp188.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end191.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i

if.end191.2.i:                                    ; preds = %for.inc.1.i
  %126 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @vendor_firsts, i32 0, i32 2), align 4
  %arrayidx200.2.i = getelementptr %struct.scsi_changer, ptr %call7.i.i, i32 0, i32 6, i32 6
  %127 = ptrtoint ptr %arrayidx200.2.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %arrayidx200.2.i, align 8
  %arrayidx204.2.i = getelementptr %struct.scsi_changer, ptr %call7.i.i, i32 0, i32 7, i32 6
  %128 = ptrtoint ptr %arrayidx204.2.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %125, ptr %arrayidx204.2.i, align 8
  %129 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool206.not.2.i = icmp eq i32 %129, 0
  br i1 %tobool206.not.2.i, label %if.end191.2.i.for.inc.2.i_crit_edge, label %if.then207.2.i

if.end191.2.i.for.inc.2.i_crit_edge:              ; preds = %if.end191.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i

if.then207.2.i:                                   ; preds = %if.end191.2.i
  call void @__sanitizer_cov_trace_pc() #15
  %130 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %device, align 8
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.7, ptr noundef %131, ptr noundef %name, ptr noundef nonnull @.str.18, i32 noundef 7, i32 noundef 3, i32 noundef %126, i32 noundef %125, ptr noundef nonnull @.str.30) #13
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then207.2.i, %if.end191.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %132 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @vendor_counts, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp188.3.i = icmp eq i32 %132, 0
  br i1 %cmp188.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.end191.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.i

if.end191.3.i:                                    ; preds = %for.inc.2.i
  %133 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @vendor_firsts, i32 0, i32 3), align 4
  %arrayidx200.3.i = getelementptr %struct.scsi_changer, ptr %call7.i.i, i32 0, i32 6, i32 7
  %134 = ptrtoint ptr %arrayidx200.3.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %arrayidx200.3.i, align 4
  %arrayidx204.3.i = getelementptr %struct.scsi_changer, ptr %call7.i.i, i32 0, i32 7, i32 7
  %135 = ptrtoint ptr %arrayidx204.3.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %132, ptr %arrayidx204.3.i, align 4
  %136 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool206.not.3.i = icmp eq i32 %136, 0
  br i1 %tobool206.not.3.i, label %if.end191.3.i.for.inc.3.i_crit_edge, label %if.then207.3.i

if.end191.3.i.for.inc.3.i_crit_edge:              ; preds = %if.end191.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.i

if.then207.3.i:                                   ; preds = %if.end191.3.i
  call void @__sanitizer_cov_trace_pc() #15
  %137 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %device, align 8
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.7, ptr noundef %138, ptr noundef %name, ptr noundef nonnull @.str.18, i32 noundef 8, i32 noundef 4, i32 noundef %133, i32 noundef %132, ptr noundef nonnull @.str.31) #13
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then207.3.i, %if.end191.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %arrayidx220.i = getelementptr %struct.scsi_changer, ptr %call7.i.i, i32 0, i32 7, i32 3
  %139 = ptrtoint ptr %arrayidx220.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx220.i, align 4
  %141 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %140, i32 4) #13
  %142 = extractvalue { i32, i1 } %141, 1
  br i1 %142, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !221

kcalloc.exit.thread.i:                            ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #15
  %dt548.i = getelementptr inbounds %struct.scsi_changer, ptr %call7.i.i, i32 0, i32 5
  %143 = ptrtoint ptr %dt548.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr null, ptr %dt548.i, align 4
  br label %ch_readconfig.exit.thread90

if.end7.i.i.i:                                    ; preds = %for.inc.3.i
  %144 = extractvalue { i32, i1 } %141, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %144, i32 noundef 3520) #18
  %dt.i = getelementptr inbounds %struct.scsi_changer, ptr %call7.i.i, i32 0, i32 5
  %145 = ptrtoint ptr %dt.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call8.i.i.i, ptr %dt.i, align 4
  %tobool223.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool223.not.i, label %if.end7.i.i.i.ch_readconfig.exit.thread90_crit_edge, label %for.cond226.preheader.i

if.end7.i.i.i.ch_readconfig.exit.thread90_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ch_readconfig.exit.thread90

for.cond226.preheader.i:                          ; preds = %if.end7.i.i.i
  %146 = ptrtoint ptr %arrayidx220.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx220.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp229577.not.i = icmp eq i32 %147, 0
  br i1 %cmp229577.not.i, label %for.cond226.preheader.i.if.end35_crit_edge, label %for.body231.lr.ph.i

for.cond226.preheader.i.if.end35_crit_edge:       ; preds = %for.cond226.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

for.body231.lr.ph.i:                              ; preds = %for.cond226.preheader.i
  %arrayidx247.i = getelementptr %struct.scsi_changer, ptr %call7.i.i, i32 0, i32 6, i32 3
  br label %for.body231.i

for.body231.i:                                    ; preds = %for.inc393.i.for.body231.i_crit_edge, %for.body231.lr.ph.i
  %elem.0578.i = phi i32 [ 0, %for.body231.lr.ph.i ], [ %inc394.i, %for.inc393.i.for.body231.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %elem.0578.i)
  %cmp232.i = icmp ult i32 %elem.0578.i, 16
  br i1 %cmp232.i, label %land.lhs.true.i, label %for.body231.i.if.else252.i_crit_edge

for.body231.i.if.else252.i_crit_edge:             ; preds = %for.body231.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else252.i

land.lhs.true.i:                                  ; preds = %for.body231.i
  %arrayidx234.i = getelementptr [16 x i32], ptr @dt_id, i32 0, i32 %elem.0578.i
  %148 = ptrtoint ptr %arrayidx234.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx234.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %149)
  %cmp235.not.i = icmp eq i32 %149, -1
  br i1 %cmp235.not.i, label %land.lhs.true.i.if.else252.i_crit_edge, label %if.then237.i

land.lhs.true.i.if.else252.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else252.i

if.then237.i:                                     ; preds = %land.lhs.true.i
  %arrayidx239.i = getelementptr [16 x i32], ptr @dt_lun, i32 0, i32 %elem.0578.i
  %150 = ptrtoint ptr %arrayidx239.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx239.i, align 4
  %152 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool241.not.i = icmp eq i32 %152, 0
  br i1 %tobool241.not.i, label %if.then237.i.do.end355.i_crit_edge, label %if.then242.i

if.then237.i.do.end355.i_crit_edge:               ; preds = %if.then237.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end355.i

if.then242.i:                                     ; preds = %if.then237.i
  call void @__sanitizer_cov_trace_pc() #15
  %153 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %device, align 8
  %155 = ptrtoint ptr %arrayidx247.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx247.i, align 4
  %add248.i = add i32 %156, %elem.0578.i
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.7, ptr noundef %154, ptr noundef %name, ptr noundef nonnull @.str.19, i32 noundef %add248.i) #13
  br label %do.body347.i

if.else252.i:                                     ; preds = %land.lhs.true.i.if.else252.i_crit_edge, %for.body231.i.if.else252.i_crit_edge
  %157 = ptrtoint ptr %arrayidx247.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx247.i, align 4
  %add255.i = add i32 %158, %elem.0578.i
  %call257.i = call fastcc i32 @ch_read_element_status(ptr noundef %call7.i.i, i32 noundef %add255.i, ptr noundef nonnull %data.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call257.i)
  %cmp258.not.i = icmp eq i32 %call257.i, 0
  %159 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool275.not.i = icmp eq i32 %159, 0
  br i1 %cmp258.not.i, label %do.body274.i, label %do.body261.i

do.body261.i:                                     ; preds = %if.else252.i
  br i1 %tobool275.not.i, label %do.body261.i.for.inc393.i_crit_edge, label %if.then263.i

do.body261.i.for.inc393.i_crit_edge:              ; preds = %do.body261.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc393.i

if.then263.i:                                     ; preds = %do.body261.i
  call void @__sanitizer_cov_trace_pc() #15
  %160 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %device, align 8
  %162 = ptrtoint ptr %arrayidx247.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx247.i, align 4
  %add269.i = add i32 %163, %elem.0578.i
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.7, ptr noundef %161, ptr noundef %name, ptr noundef nonnull @.str.20, i32 noundef %add269.i) #13
  br label %for.inc393.i

do.body274.i:                                     ; preds = %if.else252.i
  br i1 %tobool275.not.i, label %do.body274.i.do.end285.i_crit_edge, label %if.then276.i

do.body274.i.do.end285.i_crit_edge:               ; preds = %do.body274.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end285.i

if.then276.i:                                     ; preds = %do.body274.i
  call void @__sanitizer_cov_trace_pc() #15
  %164 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %device, align 8
  %166 = ptrtoint ptr %arrayidx247.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx247.i, align 4
  %add282.i = add i32 %167, %elem.0578.i
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.7, ptr noundef %165, ptr noundef %name, ptr noundef nonnull @.str.21, i32 noundef %add282.i) #13
  br label %do.end285.i

do.end285.i:                                      ; preds = %if.then276.i, %do.body274.i.do.end285.i_crit_edge
  %168 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %26, align 1
  %conv287.i = zext i8 %169 to i32
  %and288.i = and i32 %conv287.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and288.i)
  %tobool289.not.i = icmp eq i32 %and288.i, 0
  br i1 %tobool289.not.i, label %if.else302.i, label %do.body291.i

do.body291.i:                                     ; preds = %do.end285.i
  %170 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool292.not.i = icmp eq i32 %170, 0
  br i1 %tobool292.not.i, label %do.body291.i.do.end299.i_crit_edge, label %if.then293.i

do.body291.i.do.end299.i_crit_edge:               ; preds = %do.body291.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end299.i

if.then293.i:                                     ; preds = %do.body291.i
  call void @__sanitizer_cov_trace_pc() #15
  %171 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %device, align 8
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.22, ptr noundef %172, ptr noundef %name, ptr noundef nonnull @.str.23) #13
  br label %do.end299.i

do.end299.i:                                      ; preds = %if.then293.i, %do.body291.i.do.end299.i_crit_edge
  %173 = ptrtoint ptr %dt.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dt.i, align 4
  %arrayidx301.i = getelementptr ptr, ptr %174, i32 %elem.0578.i
  %175 = ptrtoint ptr %arrayidx301.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr null, ptr %arrayidx301.i, align 4
  br label %for.inc393.i

if.else302.i:                                     ; preds = %do.end285.i
  %and305.i = and i32 %conv287.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and305.i)
  %cmp306.i = icmp eq i32 %and305.i, 0
  br i1 %cmp306.i, label %do.body309.i, label %if.else320.i

do.body309.i:                                     ; preds = %if.else302.i
  %176 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool310.not.i = icmp eq i32 %176, 0
  br i1 %tobool310.not.i, label %do.body309.i.do.end317.i_crit_edge, label %if.then311.i

do.body309.i.do.end317.i_crit_edge:               ; preds = %do.body309.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end317.i

if.then311.i:                                     ; preds = %do.body309.i
  call void @__sanitizer_cov_trace_pc() #15
  %177 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %device, align 8
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.22, ptr noundef %178, ptr noundef %name, ptr noundef nonnull @.str.24) #13
  br label %do.end317.i

do.end317.i:                                      ; preds = %if.then311.i, %do.body309.i.do.end317.i_crit_edge
  %179 = ptrtoint ptr %dt.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dt.i, align 4
  %arrayidx319.i = getelementptr ptr, ptr %180, i32 %elem.0578.i
  %181 = ptrtoint ptr %arrayidx319.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr null, ptr %arrayidx319.i, align 4
  br label %for.inc393.i

if.else320.i:                                     ; preds = %if.else302.i
  %and325.i = and i32 %conv287.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and325.i)
  %tobool326.not.i = icmp eq i32 %and325.i, 0
  br i1 %tobool326.not.i, label %if.end343.i, label %if.end343.thread561.i

if.end343.thread561.i:                            ; preds = %if.else320.i
  call void @__sanitizer_cov_trace_pc() #15
  %182 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %27, align 1
  %conv329.i = zext i8 %183 to i32
  %and333563.i = and i32 %conv287.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and333563.i)
  %tobool334.not564.i = icmp eq i32 %and333563.i, 0
  %and338565.i = and i32 %conv287.i, 7
  %spec.select566.i = select i1 %tobool334.not564.i, i32 0, i32 %and338565.i
  br label %do.body347.i

if.end343.i:                                      ; preds = %if.else320.i
  %184 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %device, align 8
  %id322.i = getelementptr inbounds %struct.scsi_device, ptr %185, i32 0, i32 16
  %186 = ptrtoint ptr %id322.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %id322.i, align 8
  %and333.i = and i32 %conv287.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and333.i)
  %tobool334.not.i = icmp eq i32 %and333.i, 0
  %and338.i = and i32 %conv287.i, 7
  %spec.select.i = select i1 %tobool334.not.i, i32 0, i32 %and338.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %187)
  %cmp344.not.i = icmp eq i32 %187, -1
  br i1 %cmp344.not.i, label %if.end343.i.for.inc393.i_crit_edge, label %if.end343.i.do.body347.i_crit_edge

if.end343.i.do.body347.i_crit_edge:               ; preds = %if.end343.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body347.i

if.end343.i.for.inc393.i_crit_edge:               ; preds = %if.end343.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc393.i

do.body347.i:                                     ; preds = %if.end343.i.do.body347.i_crit_edge, %if.end343.thread561.i, %if.then242.i
  %lun.0560.ph.i = phi i32 [ %151, %if.then242.i ], [ %spec.select566.i, %if.end343.thread561.i ], [ %spec.select.i, %if.end343.i.do.body347.i_crit_edge ]
  %id.1559.ph.i = phi i32 [ %149, %if.then242.i ], [ %conv329.i, %if.end343.thread561.i ], [ %187, %if.end343.i.do.body347.i_crit_edge ]
  %.pr571.i = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr571.i)
  %tobool348.not.i = icmp eq i32 %.pr571.i, 0
  br i1 %tobool348.not.i, label %do.body347.i.do.end355.i_crit_edge, label %if.then349.i

do.body347.i.do.end355.i_crit_edge:               ; preds = %do.body347.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end355.i

if.then349.i:                                     ; preds = %do.body347.i
  call void @__sanitizer_cov_trace_pc() #15
  %188 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %device, align 8
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.22, ptr noundef %189, ptr noundef %name, ptr noundef nonnull @.str.25, i32 noundef %id.1559.ph.i, i32 noundef %lun.0560.ph.i) #13
  br label %do.end355.i

do.end355.i:                                      ; preds = %if.then349.i, %do.body347.i.do.end355.i_crit_edge, %if.then237.i.do.end355.i_crit_edge
  %id.1559575.i = phi i32 [ %id.1559.ph.i, %if.then349.i ], [ %id.1559.ph.i, %do.body347.i.do.end355.i_crit_edge ], [ %149, %if.then237.i.do.end355.i_crit_edge ]
  %lun.0553.i = phi i32 [ %lun.0560.ph.i, %if.then349.i ], [ %lun.0560.ph.i, %do.body347.i.do.end355.i_crit_edge ], [ %151, %if.then237.i.do.end355.i_crit_edge ]
  %190 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %device, align 8
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %191, align 8
  %channel.i = getelementptr inbounds %struct.scsi_device, ptr %191, i32 0, i32 17
  %194 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %channel.i, align 4
  %conv358.i = sext i32 %lun.0553.i to i64
  %call359.i = call ptr @scsi_device_lookup(ptr noundef %193, i32 noundef %195, i32 noundef %id.1559575.i, i64 noundef %conv358.i) #13
  %196 = ptrtoint ptr %dt.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dt.i, align 4
  %arrayidx361.i = getelementptr ptr, ptr %197, i32 %elem.0578.i
  %198 = ptrtoint ptr %arrayidx361.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %call359.i, ptr %arrayidx361.i, align 4
  %199 = load ptr, ptr %dt.i, align 4
  %arrayidx363.i = getelementptr ptr, ptr %199, i32 %elem.0578.i
  %200 = ptrtoint ptr %arrayidx363.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %arrayidx363.i, align 4
  %tobool364.not.i = icmp eq ptr %201, null
  %202 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool367.not.i = icmp eq i32 %202, 0
  br i1 %tobool364.not.i, label %do.body366.i, label %do.body376.i

do.body366.i:                                     ; preds = %do.end355.i
  br i1 %tobool367.not.i, label %do.body366.i.for.inc393.i_crit_edge, label %if.then368.i

do.body366.i.for.inc393.i_crit_edge:              ; preds = %do.body366.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc393.i

if.then368.i:                                     ; preds = %do.body366.i
  call void @__sanitizer_cov_trace_pc() #15
  %203 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %device, align 8
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.22, ptr noundef %204, ptr noundef %name, ptr noundef nonnull @.str.26) #13
  br label %for.inc393.i

do.body376.i:                                     ; preds = %do.end355.i
  br i1 %tobool367.not.i, label %do.body376.i.for.inc393.i_crit_edge, label %if.then378.i

do.body376.i.for.inc393.i_crit_edge:              ; preds = %do.body376.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc393.i

if.then378.i:                                     ; preds = %do.body376.i
  call void @__sanitizer_cov_trace_pc() #15
  %205 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %device, align 8
  %vendor.i = getelementptr inbounds %struct.scsi_device, ptr %201, i32 0, i32 30
  %207 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %vendor.i, align 4
  %model.i = getelementptr inbounds %struct.scsi_device, ptr %201, i32 0, i32 31
  %209 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %model.i, align 8
  %rev.i = getelementptr inbounds %struct.scsi_device, ptr %201, i32 0, i32 32
  %211 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %rev.i, align 4
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.22, ptr noundef %206, ptr noundef %name, ptr noundef nonnull @.str.27, ptr noundef %208, ptr noundef %210, ptr noundef %212) #13
  br label %for.inc393.i

for.inc393.i:                                     ; preds = %if.then378.i, %do.body376.i.for.inc393.i_crit_edge, %if.then368.i, %do.body366.i.for.inc393.i_crit_edge, %if.end343.i.for.inc393.i_crit_edge, %do.end317.i, %do.end299.i, %if.then263.i, %do.body261.i.for.inc393.i_crit_edge
  %inc394.i = add nuw i32 %elem.0578.i, 1
  %213 = ptrtoint ptr %arrayidx220.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx220.i, align 4
  %cmp229.i = icmp ult i32 %inc394.i, %214
  br i1 %cmp229.i, label %for.inc393.i.for.body231.i_crit_edge, label %for.inc393.i.if.end35_crit_edge

for.inc393.i.if.end35_crit_edge:                  ; preds = %for.inc393.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

for.inc393.i.for.body231.i_crit_edge:             ; preds = %for.inc393.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body231.i

ch_readconfig.exit.thread90:                      ; preds = %if.end7.i.i.i.ch_readconfig.exit.thread90_crit_edge, %kcalloc.exit.thread.i
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data.i) #13
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cmd.i) #13
  br label %if.then33

if.then33:                                        ; preds = %ch_readconfig.exit.thread90, %ch_readconfig.exit.thread
  call void @mutex_unlock(ptr noundef %lock) #13
  %215 = load ptr, ptr @ch_sysfs_class, align 4
  %216 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %minor, align 4
  %or44 = or i32 %217, 90177536
  call void @device_destroy(ptr noundef %215, i32 noundef %or44) #13
  br label %put_device

if.end35:                                         ; preds = %for.inc393.i.if.end35_crit_edge, %for.cond226.preheader.i.if.end35_crit_edge
  %voltags.i = getelementptr inbounds %struct.scsi_changer, ptr %call7.i.i, i32 0, i32 9
  %218 = ptrtoint ptr %voltags.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 1, ptr %voltags.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data.i) #13
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cmd.i) #13
  %219 = load i32, ptr @init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %tobool36.not = icmp eq i32 %219, 0
  br i1 %tobool36.not, label %if.end35.if.end39_crit_edge, label %if.then37

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  %call38 = call fastcc i32 @ch_init_elem(ptr noundef nonnull %call7.i.i)
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end35.if.end39_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #13
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %220 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.7, ptr noundef %add.ptr, ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef %name) #13
  br label %cleanup

put_device:                                       ; preds = %if.then33, %if.then26
  %ret.0 = phi i32 [ %24, %if.then26 ], [ -12, %if.then33 ]
  call void @scsi_device_put(ptr noundef %add.ptr) #13
  br label %remove_idr

remove_idr:                                       ; preds = %put_device, %if.then18
  %ret.1 = phi i32 [ %call17, %if.then18 ], [ %ret.0, %put_device ]
  %221 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %minor, align 4
  %call46 = call ptr @idr_remove(ptr noundef nonnull @ch_index_idr, i32 noundef %222) #13
  br label %free_ch

free_ch:                                          ; preds = %remove_idr, %if.then9
  %ret.2 = phi i32 [ %spec.store.select, %if.then9 ], [ %ret.1, %remove_idr ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %free_ch, %if.end39, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %free_ch ], [ 0, %if.end39 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch_remove(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @ch_index_lock) #13
  %minor = getelementptr inbounds %struct.scsi_changer, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %minor, align 4
  %call1 = tail call ptr @idr_remove(ptr noundef nonnull @ch_index_idr, i32 noundef %3) #13
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ch_index_lock) #13
  %5 = load ptr, ptr @ch_sysfs_class, align 4
  %6 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %minor, align 4
  %or = or i32 %7, 90177536
  tail call void @device_destroy(ptr noundef %5, i32 noundef %or) #13
  %device = getelementptr inbounds %struct.scsi_changer, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  tail call void @scsi_device_put(ptr noundef %9) #13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !222
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #13
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #13, !srcloc !223
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !224

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef 3) #13
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !225
  %11 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %device, align 4
  %dt.i.i = getelementptr inbounds %struct.scsi_changer, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %dt.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dt.i.i, align 4
  tail call void @kfree(ptr noundef %13) #13
  tail call void @kfree(ptr noundef %1) #13
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_preload(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_device_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ch_init_elem(ptr noundef %ch) unnamed_addr #2 align 64 {
entry:
  %cmd = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %cmd) #13
  %0 = getelementptr inbounds [6 x i8], ptr %cmd, i32 0, i32 1
  %1 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %device = getelementptr inbounds %struct.scsi_changer, ptr %ch, i32 0, i32 4
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %name = getelementptr inbounds %struct.scsi_changer, ptr %ch, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.7, ptr noundef %3, ptr noundef %name, ptr noundef nonnull @.str.36) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %4 = getelementptr inbounds i8, ptr %cmd, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 0, ptr %4, align 1
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 7, ptr %cmd, align 1
  %device2 = getelementptr inbounds %struct.scsi_changer, ptr %ch, i32 0, i32 4
  %7 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device2, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 18
  %9 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %lun, align 8
  %.tr = trunc i64 %10 to i8
  %conv = shl i8 %.tr, 5
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %0, align 1
  %call = call fastcc i32 @ch_do_scsi(ptr noundef %ch, ptr noundef nonnull %cmd, ptr noundef null, i32 noundef 0, i32 noundef 3)
  %12 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.not = icmp eq i32 %12, 0
  br i1 %tobool6.not, label %do.end.do.end13_crit_edge, label %if.then7

do.end.do.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end13

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device2, align 4
  %name9 = getelementptr inbounds %struct.scsi_changer, ptr %ch, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.7, ptr noundef %14, ptr noundef %name9, ptr noundef nonnull @.str.37) #13
  br label %do.end13

do.end13:                                         ; preds = %if.then7, %do.end.do.end13_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cmd) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !210) #13
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !224

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #13
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ch_do_scsi(ptr noundef %ch, ptr noundef %cmd, ptr noundef %buffer, i32 noundef %buflength, i32 noundef %direction) unnamed_addr #2 align 64 {
entry:
  %sshdr = alloca %struct.scsi_sense_hdr, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sshdr) #13
  %0 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 1
  %1 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 2
  %2 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %sshdr, i32 0, i32 3
  %3 = ptrtoint ptr %sshdr to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %sshdr, align 8
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cmd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %5)
  %cmp = icmp eq i8 %5, 7
  %timeout_init.val = load i32, ptr @timeout_init, align 4
  %timeout_move.val = load i32, ptr @timeout_move, align 4
  %cond = select i1 %cmp, i32 %timeout_init.val, i32 %timeout_move.val
  %unit_attention = getelementptr inbounds %struct.scsi_changer, ptr %ch, i32 0, i32 8
  %device = getelementptr inbounds %struct.scsi_changer, ptr %ch, i32 0, i32 4
  %mul = mul i32 %cond, 100
  %name = getelementptr inbounds %struct.scsi_changer, ptr %ch, i32 0, i32 3
  br label %retry

retry:                                            ; preds = %sw.bb.retry_crit_edge, %entry
  %retries.0 = phi i32 [ 0, %entry ], [ %inc, %sw.bb.retry_crit_edge ]
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %call.i = call i32 @__scsi_execute(ptr noundef %7, ptr noundef %cmd, i32 noundef %direction, ptr noundef %buffer, i32 noundef %buflength, ptr noundef null, ptr noundef nonnull %sshdr, i32 noundef %mul, i32 noundef 1, i64 noundef 0, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %retry.cleanup_crit_edge, label %if.end

retry.cleanup_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %retry
  %8 = ptrtoint ptr %sshdr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sshdr, align 8
  %10 = and i8 %9, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %10)
  %cmp.i = icmp eq i8 %10, 112
  br i1 %cmp.i, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.then5.if.end8_crit_edge, label %if.then6

if.then5.if.end8_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then6:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  call void @scsi_print_sense_hdr(ptr noundef %13, ptr noundef %name, ptr noundef nonnull %sshdr) #13
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then5.if.end8_crit_edge
  %14 = ptrtoint ptr %sshdr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sshdr, align 8
  %16 = and i8 %15, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %16)
  %cmp.i.i = icmp eq i8 %16, 112
  br i1 %cmp.i.i, label %land.lhs.true.i, label %if.end8.ch_find_errno.exitthread-pre-split_crit_edge

if.end8.ch_find_errno.exitthread-pre-split_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %ch_find_errno.exitthread-pre-split

land.lhs.true.i:                                  ; preds = %if.end8
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp.not.i = icmp eq i8 %18, 0
  br i1 %cmp.not.i, label %land.lhs.true.i.ch_find_errno.exitthread-pre-split_crit_edge, label %for.cond.preheader.i

land.lhs.true.i.ch_find_errno.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ch_find_errno.exitthread-pre-split

for.cond.preheader.i:                             ; preds = %land.lhs.true.i
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %20)
  %cmp8.i = icmp eq i8 %20, 5
  br i1 %cmp8.i, label %land.lhs.true10.i, label %for.cond.preheader.i.ch_find_errno.exit_crit_edge

for.cond.preheader.i.ch_find_errno.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ch_find_errno.exit

land.lhs.true10.i:                                ; preds = %for.cond.preheader.i
  %21 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i8 %18, label %land.lhs.true10.i.cleanup_crit_edge [
    i8 33, label %land.lhs.true18.i
    i8 40, label %land.lhs.true18.1.i
    i8 59, label %land.lhs.true18.2.i
    i8 32, label %land.lhs.true18.4.i
  ]

land.lhs.true10.i.cleanup_crit_edge:              ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true18.i:                                ; preds = %land.lhs.true10.i
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp23.i = icmp eq i8 %23, 1
  br i1 %cmp23.i, label %land.lhs.true18.i.if.end28.i_crit_edge, label %land.lhs.true18.i.ch_find_errno.exitthread-pre-split_crit_edge

land.lhs.true18.i.ch_find_errno.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ch_find_errno.exitthread-pre-split

land.lhs.true18.i.if.end28.i_crit_edge:           ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28.i

land.lhs.true18.1.i:                              ; preds = %land.lhs.true10.i
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp23.1.i = icmp eq i8 %25, 1
  br i1 %cmp23.1.i, label %land.lhs.true18.1.i.if.end28.i_crit_edge, label %land.lhs.true18.1.i.ch_find_errno.exitthread-pre-split_crit_edge

land.lhs.true18.1.i.ch_find_errno.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true18.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ch_find_errno.exitthread-pre-split

land.lhs.true18.1.i.if.end28.i_crit_edge:         ; preds = %land.lhs.true18.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28.i

land.lhs.true18.2.i:                              ; preds = %land.lhs.true10.i
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %2, align 1
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %27, label %land.lhs.true18.2.i.ch_find_errno.exitthread-pre-split_crit_edge [
    i8 13, label %land.lhs.true18.2.i.if.end28.i_crit_edge
    i8 14, label %if.end28.i.fold.split
  ]

land.lhs.true18.2.i.if.end28.i_crit_edge:         ; preds = %land.lhs.true18.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28.i

land.lhs.true18.2.i.ch_find_errno.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true18.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ch_find_errno.exitthread-pre-split

land.lhs.true18.4.i:                              ; preds = %land.lhs.true10.i
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp23.4.i = icmp eq i8 %30, 0
  br i1 %cmp23.4.i, label %land.lhs.true18.4.i.if.end28.i_crit_edge, label %land.lhs.true18.4.i.ch_find_errno.exitthread-pre-split_crit_edge

land.lhs.true18.4.i.ch_find_errno.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true18.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ch_find_errno.exitthread-pre-split

land.lhs.true18.4.i.if.end28.i_crit_edge:         ; preds = %land.lhs.true18.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28.i

if.end28.i.fold.split:                            ; preds = %land.lhs.true18.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.end28.i.fold.split, %land.lhs.true18.4.i.if.end28.i_crit_edge, %land.lhs.true18.2.i.if.end28.i_crit_edge, %land.lhs.true18.1.i.if.end28.i_crit_edge, %land.lhs.true18.i.if.end28.i_crit_edge
  %i.048.lcssa.i = phi i32 [ 0, %land.lhs.true18.i.if.end28.i_crit_edge ], [ 1, %land.lhs.true18.1.i.if.end28.i_crit_edge ], [ 2, %land.lhs.true18.2.i.if.end28.i_crit_edge ], [ 4, %land.lhs.true18.4.i.if.end28.i_crit_edge ], [ 3, %if.end28.i.fold.split ]
  %errno2.le.i = getelementptr [6 x %struct.anon.85], ptr @ch_err, i32 0, i32 %i.048.lcssa.i, i32 3
  %31 = ptrtoint ptr %errno2.le.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %errno2.le.i, align 4
  %sub.i = sub i32 0, %32
  br label %ch_find_errno.exitthread-pre-split

ch_find_errno.exitthread-pre-split:               ; preds = %if.end28.i, %land.lhs.true18.4.i.ch_find_errno.exitthread-pre-split_crit_edge, %land.lhs.true18.2.i.ch_find_errno.exitthread-pre-split_crit_edge, %land.lhs.true18.1.i.ch_find_errno.exitthread-pre-split_crit_edge, %land.lhs.true18.i.ch_find_errno.exitthread-pre-split_crit_edge, %land.lhs.true.i.ch_find_errno.exitthread-pre-split_crit_edge, %if.end8.ch_find_errno.exitthread-pre-split_crit_edge
  %.ph = phi i32 [ -5, %land.lhs.true18.1.i.ch_find_errno.exitthread-pre-split_crit_edge ], [ -5, %land.lhs.true18.i.ch_find_errno.exitthread-pre-split_crit_edge ], [ -5, %land.lhs.true.i.ch_find_errno.exitthread-pre-split_crit_edge ], [ -5, %if.end8.ch_find_errno.exitthread-pre-split_crit_edge ], [ -5, %land.lhs.true18.4.i.ch_find_errno.exitthread-pre-split_crit_edge ], [ %sub.i, %if.end28.i ], [ -5, %land.lhs.true18.2.i.ch_find_errno.exitthread-pre-split_crit_edge ]
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %33)
  %.pr = load i8, ptr %0, align 1
  br label %ch_find_errno.exit

ch_find_errno.exit:                               ; preds = %ch_find_errno.exitthread-pre-split, %for.cond.preheader.i.ch_find_errno.exit_crit_edge
  %34 = phi i8 [ %.pr, %ch_find_errno.exitthread-pre-split ], [ %20, %for.cond.preheader.i.ch_find_errno.exit_crit_edge ]
  %35 = phi i32 [ %.ph, %ch_find_errno.exitthread-pre-split ], [ -5, %for.cond.preheader.i.ch_find_errno.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %34)
  %cond20 = icmp eq i8 %34, 6
  br i1 %cond20, label %sw.bb, label %ch_find_errno.exit.cleanup_crit_edge

ch_find_errno.exit.cleanup_crit_edge:             ; preds = %ch_find_errno.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %ch_find_errno.exit
  %36 = ptrtoint ptr %unit_attention to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %unit_attention, align 4
  %inc = add nuw nsw i32 %retries.0, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.retry_crit_edge

sw.bb.retry_crit_edge:                            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %retry

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %sw.bb.cleanup_crit_edge, %ch_find_errno.exit.cleanup_crit_edge, %land.lhs.true10.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %retry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %retry.cleanup_crit_edge ], [ %35, %sw.bb.cleanup_crit_edge ], [ %35, %ch_find_errno.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -5, %land.lhs.true10.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sshdr) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ch_read_element_status(ptr noundef %ch, i32 noundef %elem, ptr nocapture noundef writeonly %data) unnamed_addr #2 align 64 {
entry:
  %cmd = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #13
  %0 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 3
  %3 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 5
  %4 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 512) #17
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %retry.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

retry.preheader:                                  ; preds = %entry
  %device = getelementptr inbounds %struct.scsi_changer, ptr %ch, i32 0, i32 4
  %voltags = getelementptr inbounds %struct.scsi_changer, ptr %ch, i32 0, i32 9
  %shr = lshr i32 %elem, 8
  %conv8 = trunc i32 %shr to i8
  %conv11 = trunc i32 %elem to i8
  %name48 = getelementptr inbounds %struct.scsi_changer, ptr %ch, i32 0, i32 3
  %6 = getelementptr inbounds i8, ptr %cmd, i32 4
  br label %retry

retry:                                            ; preds = %retry.backedge, %retry.preheader
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 0, ptr %6, align 1
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -72, ptr %cmd, align 1
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %10, i32 0, i32 18
  %11 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %lun, align 8
  %and = shl i64 %12, 5
  %13 = ptrtoint ptr %voltags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %voltags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool1.not = icmp eq i32 %14, 0
  %cond = select i1 %tobool1.not, i32 0, i32 16
  %15 = zext i32 %cond to i64
  %or = or i64 %and, %15
  %call2 = call fastcc i32 @ch_elem_to_typecode(ptr noundef %ch, i32 noundef %elem)
  %conv390 = zext i32 %call2 to i64
  %or4 = or i64 %or, %conv390
  %conv5 = trunc i64 %or4 to i8
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv5, ptr %0, align 1
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv8, ptr %1, align 1
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv11, ptr %2, align 1
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %3, align 1
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %4, align 1
  %call16 = call fastcc i32 @ch_do_scsi(ptr noundef %ch, ptr noundef nonnull %cmd, ptr noundef nonnull %call7.i, i32 noundef 256, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp eq i32 %call16, 0
  br i1 %cmp, label %if.then18, label %if.else

if.then18:                                        ; preds = %retry
  %arrayidx19 = getelementptr i8, ptr %call7.i, i32 16
  %21 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx19, align 8
  %conv20 = zext i8 %22 to i32
  %shl21 = shl nuw nsw i32 %conv20, 8
  %arrayidx22 = getelementptr i8, ptr %call7.i, i32 17
  %23 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %24 to i32
  %or24 = or i32 %shl21, %conv23
  call void @__sanitizer_cov_trace_cmp4(i32 %or24, i32 %elem)
  %cmp25.not = icmp eq i32 %or24, %elem
  br i1 %cmp25.not, label %if.end39, label %do.body

do.body:                                          ; preds = %if.then18
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool28.not = icmp eq i32 %25, 0
  br i1 %tobool28.not, label %do.body.cleanup.sink.split_crit_edge, label %if.then29

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device, align 4
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.32, ptr noundef %27, ptr noundef %name48, ptr noundef nonnull @.str.33, i32 noundef %elem, i32 noundef %or24) #13
  br label %cleanup.sink.split

if.end39:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  %28 = call ptr @memcpy(ptr %data, ptr %arrayidx19, i32 16)
  br label %cleanup.sink.split

if.else:                                          ; preds = %retry
  %29 = ptrtoint ptr %voltags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %voltags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool41.not = icmp eq i32 %30, 0
  br i1 %tobool41.not, label %do.body54, label %if.then42

if.then42:                                        ; preds = %if.else
  %31 = ptrtoint ptr %voltags to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %voltags, align 4
  %32 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool45.not = icmp eq i32 %32, 0
  br i1 %tobool45.not, label %if.then42.retry.backedge_crit_edge, label %if.then46

if.then42.retry.backedge_crit_edge:               ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  br label %retry.backedge

if.then46:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device, align 4
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.7, ptr noundef %34, ptr noundef %name48, ptr noundef nonnull @.str.34) #13
  br label %retry.backedge

retry.backedge:                                   ; preds = %if.then46, %if.then42.retry.backedge_crit_edge
  br label %retry

do.body54:                                        ; preds = %if.else
  %35 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool55.not = icmp eq i32 %35, 0
  br i1 %tobool55.not, label %do.body54.cleanup.sink.split_crit_edge, label %if.then56

do.body54.cleanup.sink.split_crit_edge:           ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.then56:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device, align 4
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.32, ptr noundef %37, ptr noundef %name48, ptr noundef nonnull @.str.35, i32 noundef %elem) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then56, %do.body54.cleanup.sink.split_crit_edge, %if.end39, %if.then29, %do.body.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -5, %if.then29 ], [ -5, %do.body.cleanup.sink.split_crit_edge ], [ %call16, %do.body54.cleanup.sink.split_crit_edge ], [ %call16, %if.then56 ], [ %call16, %if.end39 ]
  call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_device_lookup(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_print_sense_hdr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__scsi_execute(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ch_elem_to_typecode(ptr nocapture noundef readonly %ch, i32 noundef %elem) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.scsi_changer, ptr %ch, i32 0, i32 6, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %elem)
  %cmp1.not = icmp ugt i32 %1, %elem
  br i1 %cmp1.not, label %entry.for.inc_crit_edge, label %land.lhs.true

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %arrayidx4 = getelementptr %struct.scsi_changer, ptr %ch, i32 0, i32 7, i32 0
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx4, align 4
  %add = add i32 %3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %elem)
  %cmp5 = icmp ugt i32 %add, %elem
  br i1 %cmp5, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.scsi_changer, ptr %ch, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %elem)
  %cmp1.not.1 = icmp ugt i32 %5, %elem
  br i1 %cmp1.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %arrayidx4.1 = getelementptr %struct.scsi_changer, ptr %ch, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4.1, align 4
  %add.1 = add i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.1, i32 %elem)
  %cmp5.1 = icmp ugt i32 %add.1, %elem
  br i1 %cmp5.1, label %land.lhs.true.1.cleanup_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.scsi_changer, ptr %ch, i32 0, i32 6, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %elem)
  %cmp1.not.2 = icmp ugt i32 %9, %elem
  br i1 %cmp1.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %arrayidx4.2 = getelementptr %struct.scsi_changer, ptr %ch, i32 0, i32 7, i32 2
  %10 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4.2, align 4
  %add.2 = add i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add.2, i32 %elem)
  %cmp5.2 = icmp ugt i32 %add.2, %elem
  br i1 %cmp5.2, label %land.lhs.true.2.cleanup_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

land.lhs.true.2.cleanup_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.scsi_changer, ptr %ch, i32 0, i32 6, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %elem)
  %cmp1.not.3 = icmp ugt i32 %13, %elem
  br i1 %cmp1.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %arrayidx4.3 = getelementptr %struct.scsi_changer, ptr %ch, i32 0, i32 7, i32 3
  %14 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4.3, align 4
  %add.3 = add i32 %15, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %add.3, i32 %elem)
  %cmp5.3 = icmp ugt i32 %add.3, %elem
  br i1 %cmp5.3, label %land.lhs.true.3.cleanup_crit_edge, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3

land.lhs.true.3.cleanup_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.scsi_changer, ptr %ch, i32 0, i32 6, i32 4
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %elem)
  %cmp1.not.4 = icmp ugt i32 %17, %elem
  br i1 %cmp1.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %arrayidx4.4 = getelementptr %struct.scsi_changer, ptr %ch, i32 0, i32 7, i32 4
  %18 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx4.4, align 4
  %add.4 = add i32 %19, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %add.4, i32 %elem)
  %cmp5.4 = icmp ugt i32 %add.4, %elem
  br i1 %cmp5.4, label %land.lhs.true.4.cleanup_crit_edge, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.4

land.lhs.true.4.cleanup_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.scsi_changer, ptr %ch, i32 0, i32 6, i32 5
  %20 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %elem)
  %cmp1.not.5 = icmp ugt i32 %21, %elem
  br i1 %cmp1.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %arrayidx4.5 = getelementptr %struct.scsi_changer, ptr %ch, i32 0, i32 7, i32 5
  %22 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx4.5, align 4
  %add.5 = add i32 %23, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %add.5, i32 %elem)
  %cmp5.5 = icmp ugt i32 %add.5, %elem
  br i1 %cmp5.5, label %land.lhs.true.5.cleanup_crit_edge, label %land.lhs.true.5.for.inc.5_crit_edge

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.5

land.lhs.true.5.cleanup_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.scsi_changer, ptr %ch, i32 0, i32 6, i32 6
  %24 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %elem)
  %cmp1.not.6 = icmp ugt i32 %25, %elem
  br i1 %cmp1.not.6, label %for.inc.5.for.inc.6_crit_edge, label %land.lhs.true.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5
  %arrayidx4.6 = getelementptr %struct.scsi_changer, ptr %ch, i32 0, i32 7, i32 6
  %26 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx4.6, align 4
  %add.6 = add i32 %27, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %add.6, i32 %elem)
  %cmp5.6 = icmp ugt i32 %add.6, %elem
  br i1 %cmp5.6, label %land.lhs.true.6.cleanup_crit_edge, label %land.lhs.true.6.for.inc.6_crit_edge

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.6

land.lhs.true.6.cleanup_crit_edge:                ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.6:                                        ; preds = %land.lhs.true.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.scsi_changer, ptr %ch, i32 0, i32 6, i32 7
  %28 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %elem)
  %cmp1.not.7 = icmp ugt i32 %29, %elem
  br i1 %cmp1.not.7, label %for.inc.6.for.inc.7_crit_edge, label %land.lhs.true.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.7

land.lhs.true.7:                                  ; preds = %for.inc.6
  %arrayidx4.7 = getelementptr %struct.scsi_changer, ptr %ch, i32 0, i32 7, i32 7
  %30 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx4.7, align 4
  %add.7 = add i32 %31, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %add.7, i32 %elem)
  %cmp5.7 = icmp ugt i32 %add.7, %elem
  br i1 %cmp5.7, label %land.lhs.true.7.cleanup_crit_edge, label %land.lhs.true.7.for.inc.7_crit_edge

land.lhs.true.7.for.inc.7_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.7

land.lhs.true.7.cleanup_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.7:                                        ; preds = %land.lhs.true.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc.7, %land.lhs.true.7.cleanup_crit_edge, %land.lhs.true.6.cleanup_crit_edge, %land.lhs.true.5.cleanup_crit_edge, %land.lhs.true.4.cleanup_crit_edge, %land.lhs.true.3.cleanup_crit_edge, %land.lhs.true.2.cleanup_crit_edge, %land.lhs.true.1.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.inc.7 ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 2, %land.lhs.true.1.cleanup_crit_edge ], [ 3, %land.lhs.true.2.cleanup_crit_edge ], [ 4, %land.lhs.true.3.cleanup_crit_edge ], [ 5, %land.lhs.true.4.cleanup_crit_edge ], [ 6, %land.lhs.true.5.cleanup_crit_edge ], [ 7, %land.lhs.true.6.cleanup_crit_edge ], [ 8, %land.lhs.true.7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %cmd.i = alloca [6 x i8], align 1
  %params = alloca %struct.changer_params, align 4
  %vparams = alloca %struct.changer_vendor_params, align 4
  %pos = alloca %struct.changer_position, align 4
  %mv = alloca %struct.changer_move, align 4
  %mv110 = alloca %struct.changer_exchange, align 4
  %ces = alloca %struct.changer_element_status, align 4
  %cge = alloca %struct.changer_get_element, align 4
  %ch_cmd = alloca [12 x i8], align 1
  %csv = alloca %struct.changer_set_voltag, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = inttoptr i32 %arg to ptr
  %device = getelementptr inbounds %struct.scsi_changer, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %5 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f_flags, align 4
  %and = and i32 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %call = tail call i32 @scsi_ioctl_block_when_processing_errors(ptr noundef %4, i32 noundef %cmd, i1 noundef zeroext %tobool) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %entry.cleanup357_crit_edge

entry.cleanup357_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup357

if.end:                                           ; preds = %entry
  %7 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %cmd, label %sw.default [
    i32 -2146147578, label %sw.bb
    i32 -2140118253, label %sw.bb13
    i32 1074553603, label %sw.bb54
    i32 1075077889, label %sw.bb74
    i32 1075602178, label %sw.bb109
    i32 1074291464, label %sw.bb156
    i32 1080845072, label %sw.bb170
    i32 25361, label %sw.bb317
    i32 1076912914, label %sw.bb321
  ]

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %params) #13
  %8 = getelementptr inbounds %struct.changer_params, ptr %params, i32 0, i32 1
  %9 = getelementptr inbounds %struct.changer_params, ptr %params, i32 0, i32 2
  %10 = getelementptr inbounds %struct.changer_params, ptr %params, i32 0, i32 3
  %11 = getelementptr inbounds %struct.changer_params, ptr %params, i32 0, i32 4
  %12 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %params, align 4
  %counts = getelementptr inbounds %struct.scsi_changer, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %counts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %counts, align 4
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %8, align 4
  %arrayidx4 = getelementptr %struct.scsi_changer, ptr %1, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4, align 4
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %9, align 4
  %arrayidx6 = getelementptr %struct.scsi_changer, ptr %1, i32 0, i32 7, i32 2
  %19 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx6, align 4
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %10, align 4
  %arrayidx8 = getelementptr %struct.scsi_changer, ptr %1, i32 0, i32 7, i32 3
  %22 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx8, align 4
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %11, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.52, i32 noundef 174) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %sw.bb.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

sw.bb.copy_to_user.exit.thread_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %sw.bb
  %25 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 20, i32 -1226833920) #19, !srcloc !226
  %asmresult.i.i = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %params, i32 noundef 20) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %params, i32 noundef 20) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool10.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool10.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %sw.bb.copy_to_user.exit.thread_crit_edge
  %26 = phi i32 [ -14, %sw.bb.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %params) #13
  br label %cleanup357

sw.bb13:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %vparams) #13
  %27 = call ptr @memset(ptr %vparams, i32 0, i32 112)
  %arrayidx15 = getelementptr %struct.scsi_changer, ptr %1, i32 0, i32 7, i32 4
  %28 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool16.not = icmp eq i32 %29, 0
  br i1 %tobool16.not, label %sw.bb13.if.end21_crit_edge, label %if.then17

sw.bb13.if.end21_crit_edge:                       ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then17:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %vparams to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %vparams, align 4
  %cvp_label1 = getelementptr inbounds %struct.changer_vendor_params, ptr %vparams, i32 0, i32 1
  %31 = call ptr @memcpy(ptr %cvp_label1, ptr @str.64, i32 16)
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %sw.bb13.if.end21_crit_edge
  %arrayidx23 = getelementptr %struct.scsi_changer, ptr %1, i32 0, i32 7, i32 5
  %32 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool24.not = icmp eq i32 %33, 0
  br i1 %tobool24.not, label %if.end21.if.end30_crit_edge, label %if.then25

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %cvp_n2 = getelementptr inbounds %struct.changer_vendor_params, ptr %vparams, i32 0, i32 2
  %34 = ptrtoint ptr %cvp_n2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %cvp_n2, align 4
  %cvp_label2 = getelementptr inbounds %struct.changer_vendor_params, ptr %vparams, i32 0, i32 3
  %35 = call ptr @memcpy(ptr %cvp_label2, ptr @str.63, i32 16)
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end21.if.end30_crit_edge
  %arrayidx32 = getelementptr %struct.scsi_changer, ptr %1, i32 0, i32 7, i32 6
  %36 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool33.not = icmp eq i32 %37, 0
  br i1 %tobool33.not, label %if.end30.if.end39_crit_edge, label %if.then34

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  %cvp_n3 = getelementptr inbounds %struct.changer_vendor_params, ptr %vparams, i32 0, i32 4
  %38 = ptrtoint ptr %cvp_n3 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %cvp_n3, align 4
  %cvp_label3 = getelementptr inbounds %struct.changer_vendor_params, ptr %vparams, i32 0, i32 5
  %39 = call ptr @memcpy(ptr %cvp_label3, ptr @str.62, i32 16)
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %if.end30.if.end39_crit_edge
  %arrayidx41 = getelementptr %struct.scsi_changer, ptr %1, i32 0, i32 7, i32 7
  %40 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool42.not = icmp eq i32 %41, 0
  br i1 %tobool42.not, label %if.end39.if.end59.i.i483_crit_edge, label %if.then43

if.end39.if.end59.i.i483_crit_edge:               ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59.i.i483

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  %cvp_n4 = getelementptr inbounds %struct.changer_vendor_params, ptr %vparams, i32 0, i32 6
  %42 = ptrtoint ptr %cvp_n4 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %cvp_n4, align 4
  %cvp_label4 = getelementptr inbounds %struct.changer_vendor_params, ptr %vparams, i32 0, i32 7
  %43 = call ptr @memcpy(ptr %cvp_label4, ptr @str, i32 16)
  br label %if.end59.i.i483

if.end59.i.i483:                                  ; preds = %if.then43, %if.end39.if.end59.i.i483_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.52, i32 noundef 174) #13
  %call.i.i484 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i484, label %if.end59.i.i483.copy_to_user.exit492.thread_crit_edge, label %if.end.i.i487

if.end59.i.i483.copy_to_user.exit492.thread_crit_edge: ; preds = %if.end59.i.i483
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit492.thread

if.end.i.i487:                                    ; preds = %if.end59.i.i483
  %44 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 112, i32 -1226833920) #19, !srcloc !226
  %asmresult.i.i485 = extractvalue { i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i485)
  %cmp.i6.i486 = icmp eq i32 %asmresult.i.i485, 0
  br i1 %cmp.i6.i486, label %copy_to_user.exit492, label %if.end.i.i487.copy_to_user.exit492.thread_crit_edge

if.end.i.i487.copy_to_user.exit492.thread_crit_edge: ; preds = %if.end.i.i487
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit492.thread

copy_to_user.exit492:                             ; preds = %if.end.i.i487
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i488 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %vparams, i32 noundef 112) #13
  %call.i12.i.i489 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %vparams, i32 noundef 112) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i489)
  %tobool50.not = icmp eq i32 %call.i12.i.i489, 0
  %spec.select733 = select i1 %tobool50.not, i32 0, i32 -14
  br label %copy_to_user.exit492.thread

copy_to_user.exit492.thread:                      ; preds = %copy_to_user.exit492, %if.end.i.i487.copy_to_user.exit492.thread_crit_edge, %if.end59.i.i483.copy_to_user.exit492.thread_crit_edge
  %45 = phi i32 [ -14, %if.end59.i.i483.copy_to_user.exit492.thread_crit_edge ], [ -14, %if.end.i.i487.copy_to_user.exit492.thread_crit_edge ], [ %spec.select733, %copy_to_user.exit492 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %vparams) #13
  br label %cleanup357

sw.bb54:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pos) #13
  %46 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %pos, align 4, !annotation !227
  %47 = getelementptr inbounds %struct.changer_position, ptr %pos, i32 0, i32 1
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %47, align 4, !annotation !227
  %49 = getelementptr inbounds %struct.changer_position, ptr %pos, i32 0, i32 2
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %49, align 4, !annotation !227
  tail call void @__might_fault(ptr noundef nonnull @.str.52, i32 noundef 156) #13
  %call.i.i497 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i497, label %sw.bb54.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb54.if.then11.i.i_crit_edge:                  ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb54
  %51 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 12, i32 -1226833920) #19, !srcloc !228
  %asmresult.i.i498 = extractvalue { i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i498)
  %cmp.i6.i499 = icmp eq i32 %asmresult.i.i498, 0
  br i1 %cmp.i6.i499, label %if.end.i.i501, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !224

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i501:                                    ; preds = %land.lhs.true.i.i
  %call.i.i.i500 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %pos, i32 noundef 12) #13
  %52 = call i32 @llvm.read_register.i32(metadata !210) #13
  %and.i.i.i.i.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 4
  %54 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !229
  %and.i.i.i.i = and i32 %54, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !230
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !231
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %pos, ptr noundef %2, i32 noundef 12) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %54) #13, !srcloc !230
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !231
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end58, label %if.end.i.i501.if.then11.i.i_crit_edge, !prof !224

if.end.i.i501.if.then11.i.i_crit_edge:            ; preds = %if.end.i.i501
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i501.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb54.if.then11.i.i_crit_edge
  %res.0.i.i687 = phi i32 [ %call1.i.i.i, %if.end.i.i501.if.then11.i.i_crit_edge ], [ 12, %sw.bb54.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.0.i.i687
  %add.ptr.i.i = getelementptr i8, ptr %pos, i32 %sub.i.i
  %55 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i687)
  br label %cleanup73

if.end58:                                         ; preds = %if.end.i.i501
  %56 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %57)
  %cmp.i = icmp ugt i32 %57, 7
  br i1 %cmp.i, label %if.end58.do.body_crit_edge, label %ch_checkrange.exit

if.end58.do.body_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

ch_checkrange.exit:                               ; preds = %if.end58
  %58 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %47, align 4
  %arrayidx.i = getelementptr %struct.scsi_changer, ptr %1, i32 0, i32 7, i32 %57
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %59)
  %cmp1.not.i.not = icmp ugt i32 %61, %59
  br i1 %cmp1.not.i.not, label %if.end66, label %ch_checkrange.exit.do.body_crit_edge

ch_checkrange.exit.do.body_crit_edge:             ; preds = %ch_checkrange.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body:                                          ; preds = %ch_checkrange.exit.do.body_crit_edge, %if.end58.do.body_crit_edge
  %62 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool61.not = icmp eq i32 %62, 0
  br i1 %tobool61.not, label %do.body.cleanup73_crit_edge, label %if.then62

do.body.cleanup73_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup73

if.then62:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %63 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %device, align 4
  %name = getelementptr inbounds %struct.scsi_changer, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.32, ptr noundef %64, ptr noundef %name, ptr noundef nonnull @.str.46) #13
  br label %cleanup73

if.end66:                                         ; preds = %ch_checkrange.exit
  call void @__sanitizer_cov_trace_pc() #15
  %lock = getelementptr inbounds %struct.scsi_changer, ptr %1, i32 0, i32 10
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %65 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pos, align 4
  %arrayidx68 = getelementptr %struct.scsi_changer, ptr %1, i32 0, i32 6, i32 %66
  %67 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx68, align 4
  %69 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %47, align 4
  %add = add i32 %70, %68
  %71 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %49, align 4
  %and70 = and i32 %72, 1
  %call71 = call fastcc i32 @ch_position(ptr noundef %1, i32 noundef %add, i32 noundef %and70)
  call void @mutex_unlock(ptr noundef %lock) #13
  br label %cleanup73

cleanup73:                                        ; preds = %if.end66, %if.then62, %do.body.cleanup73_crit_edge, %if.then11.i.i
  %retval.2 = phi i32 [ %call71, %if.end66 ], [ -57, %if.then62 ], [ -57, %do.body.cleanup73_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pos) #13
  br label %cleanup357

sw.bb74:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %mv) #13
  %73 = getelementptr inbounds %struct.changer_move, ptr %mv, i32 0, i32 1
  %74 = getelementptr inbounds %struct.changer_move, ptr %mv, i32 0, i32 2
  %75 = getelementptr inbounds %struct.changer_move, ptr %mv, i32 0, i32 3
  %76 = getelementptr inbounds %struct.changer_move, ptr %mv, i32 0, i32 4
  %77 = call ptr @memset(ptr %mv, i32 255, i32 20)
  tail call void @__might_fault(ptr noundef nonnull @.str.52, i32 noundef 156) #13
  %call.i.i507 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i507, label %sw.bb74.if.then11.i.i523_crit_edge, label %land.lhs.true.i.i510

sw.bb74.if.then11.i.i523_crit_edge:               ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i523

land.lhs.true.i.i510:                             ; preds = %sw.bb74
  %78 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 20, i32 -1226833920) #19, !srcloc !228
  %asmresult.i.i508 = extractvalue { i32, i32 } %78, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i508)
  %cmp.i6.i509 = icmp eq i32 %asmresult.i.i508, 0
  br i1 %cmp.i6.i509, label %if.end.i.i520, label %land.lhs.true.i.i510.if.then11.i.i523_crit_edge, !prof !224

land.lhs.true.i.i510.if.then11.i.i523_crit_edge:  ; preds = %land.lhs.true.i.i510
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i523

if.end.i.i520:                                    ; preds = %land.lhs.true.i.i510
  %call.i.i.i511 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %mv, i32 noundef 20) #13
  %79 = call i32 @llvm.read_register.i32(metadata !210) #13
  %and.i.i.i.i.i.i512 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i.i.i.i512 to ptr
  %cpu_domain.i.i.i.i.i513 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 4
  %81 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i513) #8, !srcloc !229
  %and.i.i.i.i514 = and i32 %81, -13
  %or.i.i.i.i515 = or i32 %and.i.i.i.i514, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i515) #13, !srcloc !230
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !231
  %call1.i.i.i516 = call i32 @arm_copy_from_user(ptr noundef nonnull %mv, ptr noundef %2, i32 noundef 20) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %81) #13, !srcloc !230
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !231
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i516)
  %tobool4.not.i.i519 = icmp eq i32 %call1.i.i.i516, 0
  br i1 %tobool4.not.i.i519, label %if.end78, label %if.end.i.i520.if.then11.i.i523_crit_edge, !prof !224

if.end.i.i520.if.then11.i.i523_crit_edge:         ; preds = %if.end.i.i520
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i523

if.then11.i.i523:                                 ; preds = %if.end.i.i520.if.then11.i.i523_crit_edge, %land.lhs.true.i.i510.if.then11.i.i523_crit_edge, %sw.bb74.if.then11.i.i523_crit_edge
  %res.0.i.i518694 = phi i32 [ %call1.i.i.i516, %if.end.i.i520.if.then11.i.i523_crit_edge ], [ 20, %sw.bb74.if.then11.i.i523_crit_edge ], [ 20, %land.lhs.true.i.i510.if.then11.i.i523_crit_edge ]
  %sub.i.i521 = sub i32 20, %res.0.i.i518694
  %add.ptr.i.i522 = getelementptr i8, ptr %mv, i32 %sub.i.i521
  %82 = call ptr @memset(ptr %add.ptr.i.i522, i32 0, i32 %res.0.i.i518694)
  br label %cleanup108

if.end78:                                         ; preds = %if.end.i.i520
  %83 = ptrtoint ptr %mv to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %84)
  %cmp.i632 = icmp ugt i32 %84, 7
  br i1 %cmp.i632, label %if.end78.do.body84_crit_edge, label %ch_checkrange.exit638

if.end78.do.body84_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body84

ch_checkrange.exit638:                            ; preds = %if.end78
  %85 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %73, align 4
  %arrayidx.i633 = getelementptr %struct.scsi_changer, ptr %1, i32 0, i32 7, i32 %84
  %87 = ptrtoint ptr %arrayidx.i633 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.i633, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %86)
  %cmp1.not.i634.not = icmp ugt i32 %88, %86
  br i1 %cmp1.not.i634.not, label %lor.lhs.false, label %ch_checkrange.exit638.do.body84_crit_edge

ch_checkrange.exit638.do.body84_crit_edge:        ; preds = %ch_checkrange.exit638
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body84

lor.lhs.false:                                    ; preds = %ch_checkrange.exit638
  %89 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %90)
  %cmp.i639 = icmp ugt i32 %90, 7
  br i1 %cmp.i639, label %lor.lhs.false.do.body84_crit_edge, label %ch_checkrange.exit645

lor.lhs.false.do.body84_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body84

ch_checkrange.exit645:                            ; preds = %lor.lhs.false
  %91 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %75, align 4
  %arrayidx.i640 = getelementptr %struct.scsi_changer, ptr %1, i32 0, i32 7, i32 %90
  %93 = ptrtoint ptr %arrayidx.i640 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx.i640, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %92)
  %cmp1.not.i641.not = icmp ugt i32 %94, %92
  br i1 %cmp1.not.i641.not, label %if.end93, label %ch_checkrange.exit645.do.body84_crit_edge

ch_checkrange.exit645.do.body84_crit_edge:        ; preds = %ch_checkrange.exit645
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body84

do.body84:                                        ; preds = %ch_checkrange.exit645.do.body84_crit_edge, %lor.lhs.false.do.body84_crit_edge, %ch_checkrange.exit638.do.body84_crit_edge, %if.end78.do.body84_crit_edge
  %95 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool85.not = icmp eq i32 %95, 0
  br i1 %tobool85.not, label %do.body84.cleanup108_crit_edge, label %if.then86

do.body84.cleanup108_crit_edge:                   ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup108

if.then86:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #15
  %96 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %device, align 4
  %name88 = getelementptr inbounds %struct.scsi_changer, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.32, ptr noundef %97, ptr noundef %name88, ptr noundef nonnull @.str.47) #13
  br label %cleanup108

if.end93:                                         ; preds = %ch_checkrange.exit645
  call void @__sanitizer_cov_trace_pc() #15
  %lock94 = getelementptr inbounds %struct.scsi_changer, ptr %1, i32 0, i32 10
  call void @mutex_lock_nested(ptr noundef %lock94, i32 noundef 0) #13
  %98 = ptrtoint ptr %mv to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %mv, align 4
  %arrayidx97 = getelementptr %struct.scsi_changer, ptr %1, i32 0, i32 6, i32 %99
  %100 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx97, align 4
  %102 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %73, align 4
  %add99 = add i32 %103, %101
  %104 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %74, align 4
  %arrayidx102 = getelementptr %struct.scsi_changer, ptr %1, i32 0, i32 6, i32 %105
  %106 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx102, align 4
  %108 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %75, align 4
  %add104 = add i32 %109, %107
  %110 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %76, align 4
  %and105 = and i32 %111, 1
  %call106 = call fastcc i32 @ch_move(ptr noundef %1, i32 noundef %add99, i32 noundef %add104, i32 noundef %and105)
  call void @mutex_unlock(ptr noundef %lock94) #13
  br label %cleanup108

cleanup108:                                       ; preds = %if.end93, %if.then86, %do.body84.cleanup108_crit_edge, %if.then11.i.i523
  %retval.3 = phi i32 [ %call106, %if.end93 ], [ -57, %if.then86 ], [ -57, %do.body84.cleanup108_crit_edge ], [ -14, %if.then11.i.i523 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %mv) #13
  br label %cleanup357

sw.bb109:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %mv110) #13
  %112 = getelementptr inbounds %struct.changer_exchange, ptr %mv110, i32 0, i32 1
  %113 = getelementptr inbounds %struct.changer_exchange, ptr %mv110, i32 0, i32 2
  %114 = getelementptr inbounds %struct.changer_exchange, ptr %mv110, i32 0, i32 3
  %115 = getelementptr inbounds %struct.changer_exchange, ptr %mv110, i32 0, i32 4
  %116 = getelementptr inbounds %struct.changer_exchange, ptr %mv110, i32 0, i32 5
  %117 = getelementptr inbounds %struct.changer_exchange, ptr %mv110, i32 0, i32 6
  %118 = call ptr @memset(ptr %mv110, i32 255, i32 28)
  tail call void @__might_fault(ptr noundef nonnull @.str.52, i32 noundef 156) #13
  %call.i.i530 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i530, label %sw.bb109.if.then11.i.i546_crit_edge, label %land.lhs.true.i.i533

sw.bb109.if.then11.i.i546_crit_edge:              ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i546

land.lhs.true.i.i533:                             ; preds = %sw.bb109
  %119 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 28, i32 -1226833920) #19, !srcloc !228
  %asmresult.i.i531 = extractvalue { i32, i32 } %119, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i531)
  %cmp.i6.i532 = icmp eq i32 %asmresult.i.i531, 0
  br i1 %cmp.i6.i532, label %if.end.i.i543, label %land.lhs.true.i.i533.if.then11.i.i546_crit_edge, !prof !224

land.lhs.true.i.i533.if.then11.i.i546_crit_edge:  ; preds = %land.lhs.true.i.i533
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i546

if.end.i.i543:                                    ; preds = %land.lhs.true.i.i533
  %call.i.i.i534 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %mv110, i32 noundef 28) #13
  %120 = call i32 @llvm.read_register.i32(metadata !210) #13
  %and.i.i.i.i.i.i535 = and i32 %120, -16384
  %121 = inttoptr i32 %and.i.i.i.i.i.i535 to ptr
  %cpu_domain.i.i.i.i.i536 = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 4
  %122 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i536) #8, !srcloc !229
  %and.i.i.i.i537 = and i32 %122, -13
  %or.i.i.i.i538 = or i32 %and.i.i.i.i537, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i538) #13, !srcloc !230
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !231
  %call1.i.i.i539 = call i32 @arm_copy_from_user(ptr noundef nonnull %mv110, ptr noundef %2, i32 noundef 28) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %122) #13, !srcloc !230
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !231
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i539)
  %tobool4.not.i.i542 = icmp eq i32 %call1.i.i.i539, 0
  br i1 %tobool4.not.i.i542, label %if.end114, label %if.end.i.i543.if.then11.i.i546_crit_edge, !prof !224

if.end.i.i543.if.then11.i.i546_crit_edge:         ; preds = %if.end.i.i543
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i546

if.then11.i.i546:                                 ; preds = %if.end.i.i543.if.then11.i.i546_crit_edge, %land.lhs.true.i.i533.if.then11.i.i546_crit_edge, %sw.bb109.if.then11.i.i546_crit_edge
  %res.0.i.i541703 = phi i32 [ %call1.i.i.i539, %if.end.i.i543.if.then11.i.i546_crit_edge ], [ 28, %sw.bb109.if.then11.i.i546_crit_edge ], [ 28, %land.lhs.true.i.i533.if.then11.i.i546_crit_edge ]
  %sub.i.i544 = sub i32 28, %res.0.i.i541703
  %add.ptr.i.i545 = getelementptr i8, ptr %mv110, i32 %sub.i.i544
  %123 = call ptr @memset(ptr %add.ptr.i.i545, i32 0, i32 %res.0.i.i541703)
  br label %cleanup155

if.end114:                                        ; preds = %if.end.i.i543
  %124 = ptrtoint ptr %mv110 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %mv110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %125)
  %cmp.i646 = icmp ugt i32 %125, 7
  br i1 %cmp.i646, label %if.end114.do.body124_crit_edge, label %ch_checkrange.exit652

if.end114.do.body124_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body124

ch_checkrange.exit652:                            ; preds = %if.end114
  %126 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %112, align 4
  %arrayidx.i647 = getelementptr %struct.scsi_changer, ptr %1, i32 0, i32 7, i32 %125
  %128 = ptrtoint ptr %arrayidx.i647 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx.i647, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %127)
  %cmp1.not.i648.not = icmp ugt i32 %129, %127
  br i1 %cmp1.not.i648.not, label %lor.lhs.false117, label %ch_checkrange.exit652.do.body124_crit_edge

ch_checkrange.exit652.do.body124_crit_edge:       ; preds = %ch_checkrange.exit652
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body124

lor.lhs.false117:                                 ; preds = %ch_checkrange.exit652
  %130 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %131)
  %cmp.i653 = icmp ugt i32 %131, 7
  br i1 %cmp.i653, label %lor.lhs.false117.do.body124_crit_edge, label %ch_checkrange.exit659

lor.lhs.false117.do.body124_crit_edge:            ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body124

ch_checkrange.exit659:                            ; preds = %lor.lhs.false117
  %132 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %114, align 4
  %arrayidx.i654 = getelementptr %struct.scsi_changer, ptr %1, i32 0, i32 7, i32 %131
  %134 = ptrtoint ptr %arrayidx.i654 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx.i654, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %133)
  %cmp1.not.i655.not = icmp ugt i32 %135, %133
  br i1 %cmp1.not.i655.not, label %lor.lhs.false120, label %ch_checkrange.exit659.do.body124_crit_edge

ch_checkrange.exit659.do.body124_crit_edge:       ; preds = %ch_checkrange.exit659
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body124

lor.lhs.false120:                                 ; preds = %ch_checkrange.exit659
  %136 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %137)
  %cmp.i660 = icmp ugt i32 %137, 7
  br i1 %cmp.i660, label %lor.lhs.false120.do.body124_crit_edge, label %ch_checkrange.exit666

lor.lhs.false120.do.body124_crit_edge:            ; preds = %lor.lhs.false120
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body124

ch_checkrange.exit666:                            ; preds = %lor.lhs.false120
  %138 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %116, align 4
  %arrayidx.i661 = getelementptr %struct.scsi_changer, ptr %1, i32 0, i32 7, i32 %137
  %140 = ptrtoint ptr %arrayidx.i661 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx.i661, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %141, i32 %139)
  %cmp1.not.i662.not = icmp ugt i32 %141, %139
  br i1 %cmp1.not.i662.not, label %if.end133, label %ch_checkrange.exit666.do.body124_crit_edge

ch_checkrange.exit666.do.body124_crit_edge:       ; preds = %ch_checkrange.exit666
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body124

do.body124:                                       ; preds = %ch_checkrange.exit666.do.body124_crit_edge, %lor.lhs.false120.do.body124_crit_edge, %ch_checkrange.exit659.do.body124_crit_edge, %lor.lhs.false117.do.body124_crit_edge, %ch_checkrange.exit652.do.body124_crit_edge, %if.end114.do.body124_crit_edge
  %142 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool125.not = icmp eq i32 %142, 0
  br i1 %tobool125.not, label %do.body124.cleanup155_crit_edge, label %if.then126

do.body124.cleanup155_crit_edge:                  ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup155

if.then126:                                       ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #15
  %143 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %device, align 4
  %name128 = getelementptr inbounds %struct.scsi_changer, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.32, ptr noundef %144, ptr noundef %name128, ptr noundef nonnull @.str.48) #13
  br label %cleanup155

if.end133:                                        ; preds = %ch_checkrange.exit666
  call void @__sanitizer_cov_trace_pc() #15
  %lock134 = getelementptr inbounds %struct.scsi_changer, ptr %1, i32 0, i32 10
  call void @mutex_lock_nested(ptr noundef %lock134, i32 noundef 0) #13
  %145 = ptrtoint ptr %mv110 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %mv110, align 4
  %arrayidx137 = getelementptr %struct.scsi_changer, ptr %1, i32 0, i32 6, i32 %146
  %147 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx137, align 4
  %149 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %112, align 4
  %add139 = add i32 %150, %148
  %151 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %113, align 4
  %arrayidx142 = getelementptr %struct.scsi_changer, ptr %1, i32 0, i32 6, i32 %152
  %153 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx142, align 4
  %155 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %114, align 4
  %add144 = add i32 %156, %154
  %157 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %115, align 4
  %arrayidx147 = getelementptr %struct.scsi_changer, ptr %1, i32 0, i32 6, i32 %158
  %159 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx147, align 4
  %161 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %116, align 4
  %add149 = add i32 %162, %160
  %163 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %117, align 4
  %and150 = and i32 %164, 1
  %and152 = and i32 %164, 2
  %call153 = call fastcc i32 @ch_exchange(ptr noundef %1, i32 noundef %add139, i32 noundef %add144, i32 noundef %add149, i32 noundef %and150, i32 noundef %and152)
  call void @mutex_unlock(ptr noundef %lock134) #13
  br label %cleanup155

cleanup155:                                       ; preds = %if.end133, %if.then126, %do.body124.cleanup155_crit_edge, %if.then11.i.i546
  %retval.4 = phi i32 [ %call153, %if.end133 ], [ -57, %if.then126 ], [ -57, %do.body124.cleanup155_crit_edge ], [ -14, %if.then11.i.i546 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %mv110) #13
  br label %cleanup357

sw.bb156:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ces) #13
  %165 = ptrtoint ptr %ces to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 -1, ptr %ces, align 4, !annotation !227
  %166 = getelementptr inbounds %struct.changer_element_status, ptr %ces, i32 0, i32 1
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr inttoptr (i32 -1 to ptr), ptr %166, align 4, !annotation !227
  tail call void @__might_fault(ptr noundef nonnull @.str.52, i32 noundef 156) #13
  %call.i.i553 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i553, label %sw.bb156.if.then11.i.i569_crit_edge, label %land.lhs.true.i.i556

sw.bb156.if.then11.i.i569_crit_edge:              ; preds = %sw.bb156
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i569

land.lhs.true.i.i556:                             ; preds = %sw.bb156
  %168 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #19, !srcloc !228
  %asmresult.i.i554 = extractvalue { i32, i32 } %168, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i554)
  %cmp.i6.i555 = icmp eq i32 %asmresult.i.i554, 0
  br i1 %cmp.i6.i555, label %if.end.i.i566, label %land.lhs.true.i.i556.if.then11.i.i569_crit_edge, !prof !224

land.lhs.true.i.i556.if.then11.i.i569_crit_edge:  ; preds = %land.lhs.true.i.i556
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i569

if.end.i.i566:                                    ; preds = %land.lhs.true.i.i556
  %call.i.i.i557 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ces, i32 noundef 8) #13
  %169 = call i32 @llvm.read_register.i32(metadata !210) #13
  %and.i.i.i.i.i.i558 = and i32 %169, -16384
  %170 = inttoptr i32 %and.i.i.i.i.i.i558 to ptr
  %cpu_domain.i.i.i.i.i559 = getelementptr inbounds %struct.thread_info, ptr %170, i32 0, i32 4
  %171 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i559) #8, !srcloc !229
  %and.i.i.i.i560 = and i32 %171, -13
  %or.i.i.i.i561 = or i32 %and.i.i.i.i560, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i561) #13, !srcloc !230
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !231
  %call1.i.i.i562 = call i32 @arm_copy_from_user(ptr noundef nonnull %ces, ptr noundef %2, i32 noundef 8) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %171) #13, !srcloc !230
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !231
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i562)
  %tobool4.not.i.i565 = icmp eq i32 %call1.i.i.i562, 0
  br i1 %tobool4.not.i.i565, label %if.end160, label %if.end.i.i566.if.then11.i.i569_crit_edge, !prof !224

if.end.i.i566.if.then11.i.i569_crit_edge:         ; preds = %if.end.i.i566
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i569

if.then11.i.i569:                                 ; preds = %if.end.i.i566.if.then11.i.i569_crit_edge, %land.lhs.true.i.i556.if.then11.i.i569_crit_edge, %sw.bb156.if.then11.i.i569_crit_edge
  %res.0.i.i564714 = phi i32 [ %call1.i.i.i562, %if.end.i.i566.if.then11.i.i569_crit_edge ], [ 8, %sw.bb156.if.then11.i.i569_crit_edge ], [ 8, %land.lhs.true.i.i556.if.then11.i.i569_crit_edge ]
  %sub.i.i567 = sub i32 8, %res.0.i.i564714
  %add.ptr.i.i568 = getelementptr i8, ptr %ces, i32 %sub.i.i567
  %172 = call ptr @memset(ptr %add.ptr.i.i568, i32 0, i32 %res.0.i.i564714)
  br label %cleanup169

if.end160:                                        ; preds = %if.end.i.i566
  %173 = ptrtoint ptr %ces to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %ces, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %174)
  %175 = icmp ugt i32 %174, 7
  br i1 %175, label %if.end160.cleanup169_crit_edge, label %if.end166

if.end160.cleanup169_crit_edge:                   ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup169

if.end166:                                        ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #15
  %176 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %166, align 4
  %call168 = call fastcc i32 @ch_gstatus(ptr noundef %1, i32 noundef %174, ptr noundef %177)
  br label %cleanup169

cleanup169:                                       ; preds = %if.end166, %if.end160.cleanup169_crit_edge, %if.then11.i.i569
  %retval.5 = phi i32 [ %call168, %if.end166 ], [ -22, %if.end160.cleanup169_crit_edge ], [ -14, %if.then11.i.i569 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ces) #13
  br label %cleanup357

sw.bb170:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %cge) #13
  %178 = call ptr @memset(ptr %cge, i32 255, i32 108)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ch_cmd) #13
  %179 = getelementptr inbounds [12 x i8], ptr %ch_cmd, i32 0, i32 1
  %180 = getelementptr inbounds [12 x i8], ptr %ch_cmd, i32 0, i32 2
  %181 = getelementptr inbounds [12 x i8], ptr %ch_cmd, i32 0, i32 3
  %182 = getelementptr inbounds [12 x i8], ptr %ch_cmd, i32 0, i32 5
  %183 = getelementptr inbounds [12 x i8], ptr %ch_cmd, i32 0, i32 9
  tail call void @__might_fault(ptr noundef nonnull @.str.52, i32 noundef 156) #13
  %call.i.i576 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i576, label %sw.bb170.if.then11.i.i592_crit_edge, label %land.lhs.true.i.i579

sw.bb170.if.then11.i.i592_crit_edge:              ; preds = %sw.bb170
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i592

land.lhs.true.i.i579:                             ; preds = %sw.bb170
  %184 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 108, i32 -1226833920) #19
  %asmresult.i.i577 = extractvalue { i32, i32 } %184, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i577)
  %cmp.i6.i578 = icmp eq i32 %asmresult.i.i577, 0
  br i1 %cmp.i6.i578, label %if.end.i.i589, label %land.lhs.true.i.i579.if.then11.i.i592_crit_edge, !prof !224

land.lhs.true.i.i579.if.then11.i.i592_crit_edge:  ; preds = %land.lhs.true.i.i579
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i592

if.end.i.i589:                                    ; preds = %land.lhs.true.i.i579
  %call.i.i.i580 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cge, i32 noundef 108) #13
  %185 = call i32 @llvm.read_register.i32(metadata !210) #13
  %and.i.i.i.i.i.i581 = and i32 %185, -16384
  %186 = inttoptr i32 %and.i.i.i.i.i.i581 to ptr
  %cpu_domain.i.i.i.i.i582 = getelementptr inbounds %struct.thread_info, ptr %186, i32 0, i32 4
  %187 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i582) #8, !srcloc !229
  %and.i.i.i.i583 = and i32 %187, -13
  %or.i.i.i.i584 = or i32 %and.i.i.i.i583, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i584) #13, !srcloc !230
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !231
  %call1.i.i.i585 = call i32 @arm_copy_from_user(ptr noundef nonnull %cge, ptr noundef %2, i32 noundef 108) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %187) #13, !srcloc !230
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !231
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i585)
  %tobool4.not.i.i588 = icmp eq i32 %call1.i.i.i585, 0
  br i1 %tobool4.not.i.i588, label %if.end174, label %if.end.i.i589.if.then11.i.i592_crit_edge, !prof !224

if.end.i.i589.if.then11.i.i592_crit_edge:         ; preds = %if.end.i.i589
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i592

if.then11.i.i592:                                 ; preds = %if.end.i.i589.if.then11.i.i592_crit_edge, %land.lhs.true.i.i579.if.then11.i.i592_crit_edge, %sw.bb170.if.then11.i.i592_crit_edge
  %res.0.i.i587719 = phi i32 [ %call1.i.i.i585, %if.end.i.i589.if.then11.i.i592_crit_edge ], [ 108, %sw.bb170.if.then11.i.i592_crit_edge ], [ 108, %land.lhs.true.i.i579.if.then11.i.i592_crit_edge ]
  %sub.i.i590 = sub i32 108, %res.0.i.i587719
  %add.ptr.i.i591 = getelementptr i8, ptr %cge, i32 %sub.i.i590
  %188 = call ptr @memset(ptr %add.ptr.i.i591, i32 0, i32 %res.0.i.i587719)
  br label %cleanup311

if.end174:                                        ; preds = %if.end.i.i589
  %189 = ptrtoint ptr %cge to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %cge, align 4
  %cge_unit = getelementptr inbounds %struct.changer_get_element, ptr %cge, i32 0, i32 1
  %191 = ptrtoint ptr %cge_unit to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %cge_unit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %190)
  %cmp.i667 = icmp ugt i32 %190, 7
  br i1 %cmp.i667, label %if.end174.cleanup311_crit_edge, label %ch_checkrange.exit673

if.end174.cleanup311_crit_edge:                   ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup311

ch_checkrange.exit673:                            ; preds = %if.end174
  %arrayidx.i668 = getelementptr %struct.scsi_changer, ptr %1, i32 0, i32 7, i32 %190
  %193 = ptrtoint ptr %arrayidx.i668 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx.i668, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %194, i32 %192)
  %cmp1.not.i669.not = icmp ugt i32 %194, %192
  br i1 %cmp1.not.i669.not, label %if.end178, label %ch_checkrange.exit673.cleanup311_crit_edge

ch_checkrange.exit673.cleanup311_crit_edge:       ; preds = %ch_checkrange.exit673
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup311

if.end178:                                        ; preds = %ch_checkrange.exit673
  %arrayidx181 = getelementptr %struct.scsi_changer, ptr %1, i32 0, i32 6, i32 %190
  %195 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx181, align 4
  %add183 = add i32 %196, %192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %197 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %197, i32 noundef 3264, i32 noundef 512) #17
  %tobool185.not = icmp eq ptr %call7.i, null
  br i1 %tobool185.not, label %if.end178.cleanup311_crit_edge, label %if.end187

if.end178.cleanup311_crit_edge:                   ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup311

if.end187:                                        ; preds = %if.end178
  %lock188 = getelementptr inbounds %struct.scsi_changer, ptr %1, i32 0, i32 10
  call void @mutex_lock_nested(ptr noundef %lock188, i32 noundef 0) #13
  %voltags = getelementptr inbounds %struct.scsi_changer, ptr %1, i32 0, i32 9
  %shr = lshr i32 %add183, 8
  %conv200 = trunc i32 %shr to i8
  %conv203 = trunc i32 %add183 to i8
  %name299 = getelementptr inbounds %struct.scsi_changer, ptr %1, i32 0, i32 3
  %198 = getelementptr inbounds i8, ptr %ch_cmd, i32 4
  br label %voltag_retry

voltag_retry:                                     ; preds = %voltag_retry.backedge, %if.end187
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_storeN_noabort(i32 %199, i32 8)
  store i64 0, ptr %198, align 1
  %200 = ptrtoint ptr %ch_cmd to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 -72, ptr %ch_cmd, align 1
  %201 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %202, i32 0, i32 18
  %203 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %lun, align 8
  %and192 = shl i64 %204, 5
  %205 = ptrtoint ptr %voltags to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %voltags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %tobool193.not = icmp eq i32 %206, 0
  %cond = select i1 %tobool193.not, i32 0, i32 16
  %207 = zext i32 %cond to i64
  %or = or i64 %and192, %207
  %call194 = call fastcc i32 @ch_elem_to_typecode(ptr noundef %1, i32 noundef %add183)
  %conv195478 = zext i32 %call194 to i64
  %or196 = or i64 %or, %conv195478
  %conv197 = trunc i64 %or196 to i8
  %208 = ptrtoint ptr %179 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %conv197, ptr %179, align 1
  %209 = ptrtoint ptr %180 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %conv200, ptr %180, align 1
  %210 = ptrtoint ptr %181 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %conv203, ptr %181, align 1
  %211 = ptrtoint ptr %182 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 1, ptr %182, align 1
  %212 = ptrtoint ptr %183 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 -1, ptr %183, align 1
  %call208 = call fastcc i32 @ch_do_scsi(ptr noundef %1, ptr noundef nonnull %ch_cmd, ptr noundef nonnull %call7.i, i32 noundef 256, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %tobool209.not = icmp eq i32 %call208, 0
  br i1 %tobool209.not, label %if.then210, label %if.else

if.then210:                                       ; preds = %voltag_retry
  %arrayidx211 = getelementptr i8, ptr %call7.i, i32 18
  %213 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %arrayidx211, align 2
  %conv212 = zext i8 %214 to i32
  %cge_status = getelementptr inbounds %struct.changer_get_element, ptr %cge, i32 0, i32 2
  %215 = ptrtoint ptr %cge_status to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %conv212, ptr %cge_status, align 4
  %cge_flags = getelementptr inbounds %struct.changer_get_element, ptr %cge, i32 0, i32 10
  %216 = ptrtoint ptr %cge_flags to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 0, ptr %cge_flags, align 4
  %217 = and i8 %214, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %217)
  %tobool216.not = icmp eq i8 %217, 0
  br i1 %tobool216.not, label %if.then210.if.end218_crit_edge, label %if.then217

if.then210.if.end218_crit_edge:                   ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end218

if.then217:                                       ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #15
  %cge_errno = getelementptr inbounds %struct.changer_get_element, ptr %cge, i32 0, i32 3
  %218 = ptrtoint ptr %cge_errno to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 5, ptr %cge_errno, align 4
  br label %if.end218

if.end218:                                        ; preds = %if.then217, %if.then210.if.end218_crit_edge
  %arrayidx219 = getelementptr i8, ptr %call7.i, i32 25
  %219 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %arrayidx219, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %220)
  %tobool222.not = icmp sgt i8 %220, -1
  br i1 %tobool222.not, label %if.end218.if.end257_crit_edge, label %if.then223

if.end218.if.end257_crit_edge:                    ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end257

if.then223:                                       ; preds = %if.end218
  %221 = and i8 %220, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %221)
  %tobool229.not = icmp eq i8 %221, 0
  %spec.store.select = select i1 %tobool229.not, i32 4, i32 6
  %222 = ptrtoint ptr %cge_flags to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %spec.store.select, ptr %cge_flags, align 4
  %arrayidx234 = getelementptr i8, ptr %call7.i, i32 26
  %223 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx234, align 2
  %conv235 = zext i8 %224 to i32
  %shl236 = shl nuw nsw i32 %conv235, 8
  %arrayidx237 = getelementptr i8, ptr %call7.i, i32 27
  %225 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %arrayidx237, align 1
  %conv238 = zext i8 %226 to i32
  %or239 = or i32 %shl236, %conv238
  %cge_srctype = getelementptr inbounds %struct.changer_get_element, ptr %cge, i32 0, i32 4
  %cge_srcunit = getelementptr inbounds %struct.changer_get_element, ptr %cge, i32 0, i32 5
  %arrayidx243 = getelementptr %struct.scsi_changer, ptr %1, i32 0, i32 6, i32 0
  %227 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %arrayidx243, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or239, i32 %228)
  %cmp244.not = icmp ult i32 %or239, %228
  br i1 %cmp244.not, label %if.then223.for.inc_crit_edge, label %land.lhs.true

if.then223.for.inc_crit_edge:                     ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %if.then223
  %arrayidx249 = getelementptr %struct.scsi_changer, ptr %1, i32 0, i32 7, i32 0
  %229 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %arrayidx249, align 4
  %add250 = add i32 %230, %228
  call void @__sanitizer_cov_trace_cmp4(i32 %or239, i32 %add250)
  %cmp251 = icmp ult i32 %or239, %add250
  br i1 %cmp251, label %if.then253, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then253:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %231 = ptrtoint ptr %cge_srctype to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 0, ptr %cge_srctype, align 4
  %232 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx243, align 4
  %sub = sub i32 %or239, %233
  %234 = ptrtoint ptr %cge_srcunit to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %sub, ptr %cge_srcunit, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then253, %land.lhs.true.for.inc_crit_edge, %if.then223.for.inc_crit_edge
  %arrayidx243.1 = getelementptr %struct.scsi_changer, ptr %1, i32 0, i32 6, i32 1
  %235 = ptrtoint ptr %arrayidx243.1 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %arrayidx243.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or239, i32 %236)
  %cmp244.not.1 = icmp ult i32 %or239, %236
  br i1 %cmp244.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %arrayidx249.1 = getelementptr %struct.scsi_changer, ptr %1, i32 0, i32 7, i32 1
  %237 = ptrtoint ptr %arrayidx249.1 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %arrayidx249.1, align 4
  %add250.1 = add i32 %238, %236
  call void @__sanitizer_cov_trace_cmp4(i32 %or239, i32 %add250.1)
  %cmp251.1 = icmp ult i32 %or239, %add250.1
  br i1 %cmp251.1, label %if.then253.1, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.then253.1:                                     ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #15
  %239 = ptrtoint ptr %cge_srctype to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 1, ptr %cge_srctype, align 4
  %240 = ptrtoint ptr %arrayidx243.1 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx243.1, align 4
  %sub.1 = sub i32 %or239, %241
  %242 = ptrtoint ptr %cge_srcunit to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %sub.1, ptr %cge_srcunit, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then253.1, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx243.2 = getelementptr %struct.scsi_changer, ptr %1, i32 0, i32 6, i32 2
  %243 = ptrtoint ptr %arrayidx243.2 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %arrayidx243.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or239, i32 %244)
  %cmp244.not.2 = icmp ult i32 %or239, %244
  br i1 %cmp244.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %arrayidx249.2 = getelementptr %struct.scsi_changer, ptr %1, i32 0, i32 7, i32 2
  %245 = ptrtoint ptr %arrayidx249.2 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %arrayidx249.2, align 4
  %add250.2 = add i32 %246, %244
  call void @__sanitizer_cov_trace_cmp4(i32 %or239, i32 %add250.2)
  %cmp251.2 = icmp ult i32 %or239, %add250.2
  br i1 %cmp251.2, label %if.then253.2, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.then253.2:                                     ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #15
  %247 = ptrtoint ptr %cge_srctype to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 2, ptr %cge_srctype, align 4
  %248 = ptrtoint ptr %arrayidx243.2 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %arrayidx243.2, align 4
  %sub.2 = sub i32 %or239, %249
  %250 = ptrtoint ptr %cge_srcunit to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %sub.2, ptr %cge_srcunit, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then253.2, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx243.3 = getelementptr %struct.scsi_changer, ptr %1, i32 0, i32 6, i32 3
  %251 = ptrtoint ptr %arrayidx243.3 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %arrayidx243.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or239, i32 %252)
  %cmp244.not.3 = icmp ult i32 %or239, %252
  br i1 %cmp244.not.3, label %for.inc.2.if.end257_crit_edge, label %land.lhs.true.3

for.inc.2.if.end257_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end257

land.lhs.true.3:                                  ; preds = %for.inc.2
  %arrayidx249.3 = getelementptr %struct.scsi_changer, ptr %1, i32 0, i32 7, i32 3
  %253 = ptrtoint ptr %arrayidx249.3 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %arrayidx249.3, align 4
  %add250.3 = add i32 %254, %252
  call void @__sanitizer_cov_trace_cmp4(i32 %or239, i32 %add250.3)
  %cmp251.3 = icmp ult i32 %or239, %add250.3
  br i1 %cmp251.3, label %if.then253.3, label %land.lhs.true.3.if.end257_crit_edge

land.lhs.true.3.if.end257_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end257

if.then253.3:                                     ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #15
  %255 = ptrtoint ptr %cge_srctype to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 3, ptr %cge_srctype, align 4
  %256 = ptrtoint ptr %arrayidx243.3 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %arrayidx243.3, align 4
  %sub.3 = sub i32 %or239, %257
  %258 = ptrtoint ptr %cge_srcunit to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %sub.3, ptr %cge_srcunit, align 4
  br label %if.end257

if.end257:                                        ; preds = %if.then253.3, %land.lhs.true.3.if.end257_crit_edge, %for.inc.2.if.end257_crit_edge, %if.end218.if.end257_crit_edge
  %arrayidx258 = getelementptr i8, ptr %call7.i, i32 22
  %259 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %arrayidx258, align 2
  %261 = and i8 %260, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %261)
  %cmp261 = icmp eq i8 %261, 48
  br i1 %cmp261, label %if.then263, label %if.end257.if.end271_crit_edge

if.end257.if.end271_crit_edge:                    ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end271

if.then263:                                       ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #15
  %262 = ptrtoint ptr %cge_flags to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %cge_flags, align 4
  %or265 = or i32 %263, 8
  store i32 %or265, ptr %cge_flags, align 4
  %arrayidx266 = getelementptr i8, ptr %call7.i, i32 23
  %264 = ptrtoint ptr %arrayidx266 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %arrayidx266, align 1
  %conv267 = zext i8 %265 to i32
  %cge_id = getelementptr inbounds %struct.changer_get_element, ptr %cge, i32 0, i32 6
  %266 = ptrtoint ptr %cge_id to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %conv267, ptr %cge_id, align 4
  %267 = and i8 %260, 7
  %and270 = zext i8 %267 to i32
  %cge_lun = getelementptr inbounds %struct.changer_get_element, ptr %cge, i32 0, i32 7
  %268 = ptrtoint ptr %cge_lun to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %and270, ptr %cge_lun, align 4
  br label %if.end271

if.end271:                                        ; preds = %if.then263, %if.end257.if.end271_crit_edge
  %arrayidx272 = getelementptr i8, ptr %call7.i, i32 9
  %269 = ptrtoint ptr %arrayidx272 to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %arrayidx272, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %270)
  %tobool275.not = icmp sgt i8 %270, -1
  br i1 %tobool275.not, label %if.end271.if.end280_crit_edge, label %if.then276

if.end271.if.end280_crit_edge:                    ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end280

if.then276:                                       ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #15
  %271 = ptrtoint ptr %cge_flags to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %cge_flags, align 4
  %or278 = or i32 %272, 16
  store i32 %or278, ptr %cge_flags, align 4
  %cge_pvoltag = getelementptr inbounds %struct.changer_get_element, ptr %cge, i32 0, i32 8
  %add.ptr = getelementptr i8, ptr %call7.i, i32 28
  %273 = call ptr @memcpy(ptr %cge_pvoltag, ptr %add.ptr, i32 36)
  br label %if.end280

if.end280:                                        ; preds = %if.then276, %if.end271.if.end280_crit_edge
  %274 = and i8 %270, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %274)
  %tobool284.not = icmp eq i8 %274, 0
  br i1 %tobool284.not, label %if.end280.if.end305_crit_edge, label %if.then285

if.end280.if.end305_crit_edge:                    ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end305

if.then285:                                       ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #15
  %275 = ptrtoint ptr %cge_flags to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %cge_flags, align 4
  %or287 = or i32 %276, 32
  store i32 %or287, ptr %cge_flags, align 4
  %cge_avoltag = getelementptr inbounds %struct.changer_get_element, ptr %cge, i32 0, i32 9
  %add.ptr289 = getelementptr i8, ptr %call7.i, i32 64
  %277 = call ptr @memcpy(ptr %cge_avoltag, ptr %add.ptr289, i32 36)
  br label %if.end305

if.else:                                          ; preds = %voltag_retry
  %278 = ptrtoint ptr %voltags to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %voltags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %279)
  %tobool292.not = icmp eq i32 %279, 0
  br i1 %tobool292.not, label %if.else.if.end305_crit_edge, label %if.then293

if.else.if.end305_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end305

if.then293:                                       ; preds = %if.else
  %280 = ptrtoint ptr %voltags to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 0, ptr %voltags, align 4
  %281 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %281)
  %tobool296.not = icmp eq i32 %281, 0
  br i1 %tobool296.not, label %if.then293.voltag_retry.backedge_crit_edge, label %if.then297

if.then293.voltag_retry.backedge_crit_edge:       ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #15
  br label %voltag_retry.backedge

if.then297:                                       ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #15
  %282 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %device, align 4
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.7, ptr noundef %283, ptr noundef %name299, ptr noundef nonnull @.str.34) #13
  br label %voltag_retry.backedge

voltag_retry.backedge:                            ; preds = %if.then297, %if.then293.voltag_retry.backedge_crit_edge
  br label %voltag_retry

if.end305:                                        ; preds = %if.else.if.end305_crit_edge, %if.then285, %if.end280.if.end305_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i) #13
  call void @mutex_unlock(ptr noundef %lock188) #13
  call void @__might_fault(ptr noundef nonnull @.str.52, i32 noundef 174) #13
  %call.i.i600 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i600, label %if.end305.cleanup311_crit_edge, label %copy_to_user.exit608

if.end305.cleanup311_crit_edge:                   ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup311

copy_to_user.exit608:                             ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i604 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %cge, i32 noundef 108) #13
  %call.i12.i.i605 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %cge, i32 noundef 108) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i605)
  %tobool308.not = icmp eq i32 %call.i12.i.i605, 0
  %spec.select734 = select i1 %tobool308.not, i32 %call208, i32 -14
  br label %cleanup311

cleanup311:                                       ; preds = %copy_to_user.exit608, %if.end305.cleanup311_crit_edge, %if.end178.cleanup311_crit_edge, %ch_checkrange.exit673.cleanup311_crit_edge, %if.end174.cleanup311_crit_edge, %if.then11.i.i592
  %retval.6 = phi i32 [ -22, %ch_checkrange.exit673.cleanup311_crit_edge ], [ -12, %if.end178.cleanup311_crit_edge ], [ -14, %if.then11.i.i592 ], [ -22, %if.end174.cleanup311_crit_edge ], [ -14, %if.end305.cleanup311_crit_edge ], [ %spec.select734, %copy_to_user.exit608 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ch_cmd) #13
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %cge) #13
  br label %cleanup357

sw.bb317:                                         ; preds = %if.end
  %lock318 = getelementptr inbounds %struct.scsi_changer, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %lock318, i32 noundef 0) #13
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %cmd.i) #13
  %284 = getelementptr inbounds [6 x i8], ptr %cmd.i, i32 0, i32 1
  %285 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %285)
  %tobool.not.i = icmp eq i32 %285, 0
  br i1 %tobool.not.i, label %sw.bb317.do.end.i_crit_edge, label %if.then.i

sw.bb317.do.end.i_crit_edge:                      ; preds = %sw.bb317
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then.i:                                        ; preds = %sw.bb317
  call void @__sanitizer_cov_trace_pc() #15
  %286 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %device, align 4
  %name.i = getelementptr inbounds %struct.scsi_changer, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.7, ptr noundef %287, ptr noundef %name.i, ptr noundef nonnull @.str.36) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %sw.bb317.do.end.i_crit_edge
  %288 = getelementptr inbounds i8, ptr %cmd.i, i32 2
  %289 = ptrtoint ptr %288 to i32
  call void @__asan_storeN_noabort(i32 %289, i32 4)
  store i32 0, ptr %288, align 1
  %290 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 7, ptr %cmd.i, align 1
  %291 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %device, align 4
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %292, i32 0, i32 18
  %293 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %293)
  %294 = load i64, ptr %lun.i, align 8
  %.tr.i = trunc i64 %294 to i8
  %conv.i = shl i8 %.tr.i, 5
  %295 = ptrtoint ptr %284 to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 %conv.i, ptr %284, align 1
  %call.i = call fastcc i32 @ch_do_scsi(ptr noundef %1, ptr noundef nonnull %cmd.i, ptr noundef null, i32 noundef 0, i32 noundef 3) #13
  %296 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %296)
  %tobool6.not.i = icmp eq i32 %296, 0
  br i1 %tobool6.not.i, label %do.end.i.ch_init_elem.exit_crit_edge, label %if.then7.i

do.end.i.ch_init_elem.exit_crit_edge:             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ch_init_elem.exit

if.then7.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %297 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %device, align 4
  %name9.i = getelementptr inbounds %struct.scsi_changer, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.7, ptr noundef %298, ptr noundef %name9.i, ptr noundef nonnull @.str.37) #13
  br label %ch_init_elem.exit

ch_init_elem.exit:                                ; preds = %if.then7.i, %do.end.i.ch_init_elem.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cmd.i) #13
  call void @mutex_unlock(ptr noundef %lock318) #13
  br label %cleanup357

sw.bb321:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %csv) #13
  %299 = call ptr @memset(ptr %csv, i32 255, i32 48)
  tail call void @__might_fault(ptr noundef nonnull @.str.52, i32 noundef 156) #13
  %call.i.i613 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i613, label %sw.bb321.if.then11.i.i629_crit_edge, label %land.lhs.true.i.i616

sw.bb321.if.then11.i.i629_crit_edge:              ; preds = %sw.bb321
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i629

land.lhs.true.i.i616:                             ; preds = %sw.bb321
  %300 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 48, i32 -1226833920) #19, !srcloc !228
  %asmresult.i.i614 = extractvalue { i32, i32 } %300, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i614)
  %cmp.i6.i615 = icmp eq i32 %asmresult.i.i614, 0
  br i1 %cmp.i6.i615, label %if.end.i.i626, label %land.lhs.true.i.i616.if.then11.i.i629_crit_edge, !prof !224

land.lhs.true.i.i616.if.then11.i.i629_crit_edge:  ; preds = %land.lhs.true.i.i616
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i629

if.end.i.i626:                                    ; preds = %land.lhs.true.i.i616
  %call.i.i.i617 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %csv, i32 noundef 48) #13
  %301 = call i32 @llvm.read_register.i32(metadata !210) #13
  %and.i.i.i.i.i.i618 = and i32 %301, -16384
  %302 = inttoptr i32 %and.i.i.i.i.i.i618 to ptr
  %cpu_domain.i.i.i.i.i619 = getelementptr inbounds %struct.thread_info, ptr %302, i32 0, i32 4
  %303 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i619) #8, !srcloc !229
  %and.i.i.i.i620 = and i32 %303, -13
  %or.i.i.i.i621 = or i32 %and.i.i.i.i620, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i621) #13, !srcloc !230
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !231
  %call1.i.i.i622 = call i32 @arm_copy_from_user(ptr noundef nonnull %csv, ptr noundef %2, i32 noundef 48) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %303) #13, !srcloc !230
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !231
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i622)
  %tobool4.not.i.i625 = icmp eq i32 %call1.i.i.i622, 0
  br i1 %tobool4.not.i.i625, label %if.end326, label %if.end.i.i626.if.then11.i.i629_crit_edge, !prof !224

if.end.i.i626.if.then11.i.i629_crit_edge:         ; preds = %if.end.i.i626
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i629

if.then11.i.i629:                                 ; preds = %if.end.i.i626.if.then11.i.i629_crit_edge, %land.lhs.true.i.i616.if.then11.i.i629_crit_edge, %sw.bb321.if.then11.i.i629_crit_edge
  %res.0.i.i624728 = phi i32 [ %call1.i.i.i622, %if.end.i.i626.if.then11.i.i629_crit_edge ], [ 48, %sw.bb321.if.then11.i.i629_crit_edge ], [ 48, %land.lhs.true.i.i616.if.then11.i.i629_crit_edge ]
  %sub.i.i627 = sub i32 48, %res.0.i.i624728
  %add.ptr.i.i628 = getelementptr i8, ptr %csv, i32 %sub.i.i627
  %304 = call ptr @memset(ptr %add.ptr.i.i628, i32 0, i32 %res.0.i.i624728)
  br label %cleanup353

if.end326:                                        ; preds = %if.end.i.i626
  %305 = ptrtoint ptr %csv to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %csv, align 4
  %csv_unit = getelementptr inbounds %struct.changer_set_voltag, ptr %csv, i32 0, i32 1
  %307 = ptrtoint ptr %csv_unit to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %csv_unit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %306)
  %cmp.i674 = icmp ugt i32 %306, 7
  br i1 %cmp.i674, label %if.end326.do.body331_crit_edge, label %ch_checkrange.exit680

if.end326.do.body331_crit_edge:                   ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body331

ch_checkrange.exit680:                            ; preds = %if.end326
  %arrayidx.i675 = getelementptr %struct.scsi_changer, ptr %1, i32 0, i32 7, i32 %306
  %309 = ptrtoint ptr %arrayidx.i675 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %arrayidx.i675, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %310, i32 %308)
  %cmp1.not.i676.not = icmp ugt i32 %310, %308
  br i1 %cmp1.not.i676.not, label %if.end340, label %ch_checkrange.exit680.do.body331_crit_edge

ch_checkrange.exit680.do.body331_crit_edge:       ; preds = %ch_checkrange.exit680
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body331

do.body331:                                       ; preds = %ch_checkrange.exit680.do.body331_crit_edge, %if.end326.do.body331_crit_edge
  %311 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %311)
  %tobool332.not = icmp eq i32 %311, 0
  br i1 %tobool332.not, label %do.body331.cleanup353_crit_edge, label %if.then333

do.body331.cleanup353_crit_edge:                  ; preds = %do.body331
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup353

if.then333:                                       ; preds = %do.body331
  call void @__sanitizer_cov_trace_pc() #15
  %312 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %device, align 4
  %name335 = getelementptr inbounds %struct.scsi_changer, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.32, ptr noundef %313, ptr noundef %name335, ptr noundef nonnull @.str.49) #13
  br label %cleanup353

if.end340:                                        ; preds = %ch_checkrange.exit680
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx343 = getelementptr %struct.scsi_changer, ptr %1, i32 0, i32 6, i32 %306
  %314 = ptrtoint ptr %arrayidx343 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %arrayidx343, align 4
  %add345 = add i32 %315, %308
  %lock346 = getelementptr inbounds %struct.scsi_changer, ptr %1, i32 0, i32 10
  call void @mutex_lock_nested(ptr noundef %lock346, i32 noundef 0) #13
  %csv_flags = getelementptr inbounds %struct.changer_set_voltag, ptr %csv, i32 0, i32 3
  %316 = ptrtoint ptr %csv_flags to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %csv_flags, align 4
  %and347 = and i32 %317, 2
  %and349 = and i32 %317, 4
  %csv_voltag = getelementptr inbounds %struct.changer_set_voltag, ptr %csv, i32 0, i32 2
  %call351 = call fastcc i32 @ch_set_voltag(ptr noundef %1, i32 noundef %add345, i32 noundef %and347, i32 noundef %and349, ptr noundef %csv_voltag)
  call void @mutex_unlock(ptr noundef %lock346) #13
  br label %cleanup353

cleanup353:                                       ; preds = %if.end340, %if.then333, %do.body331.cleanup353_crit_edge, %if.then11.i.i629
  %retval.7 = phi i32 [ %call351, %if.end340 ], [ -57, %if.then333 ], [ -57, %do.body331.cleanup353_crit_edge ], [ -14, %if.then11.i.i629 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %csv) #13
  br label %cleanup357

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %318 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %device, align 4
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %320 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %f_mode, align 8
  %call356 = tail call i32 @scsi_ioctl(ptr noundef %319, i32 noundef %321, i32 noundef %cmd, ptr noundef %2) #13
  br label %cleanup357

cleanup357:                                       ; preds = %sw.default, %cleanup353, %ch_init_elem.exit, %cleanup311, %cleanup169, %cleanup155, %cleanup108, %cleanup73, %copy_to_user.exit492.thread, %copy_to_user.exit.thread, %entry.cleanup357_crit_edge
  %retval.8 = phi i32 [ %call356, %sw.default ], [ %retval.7, %cleanup353 ], [ %call.i, %ch_init_elem.exit ], [ %retval.6, %cleanup311 ], [ %retval.5, %cleanup169 ], [ %retval.4, %cleanup155 ], [ %retval.3, %cleanup108 ], [ %retval.2, %cleanup73 ], [ %45, %copy_to_user.exit492.thread ], [ %26, %copy_to_user.exit.thread ], [ %call, %entry.cleanup357_crit_edge ]
  ret i32 %retval.8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #2 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  tail call void @_raw_spin_lock(ptr noundef nonnull @ch_index_lock) #13
  %call1 = tail call ptr @idr_find(ptr noundef nonnull @ch_index_idr, i32 noundef %and.i) #13
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #13
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call1, i32 noundef 4) #13
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %call1, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %lor.lhs.false
  %4 = phi i32 [ %3, %lor.lhs.false ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %5 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %4, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call1, i32 noundef 4) #13
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #13
  %6 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %call1, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %8 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call1, ptr nonnull %call1, i32 %7, i32 %add.i.i.i.i, ptr nonnull elementtype(i32) %call1) #13, !srcloc !232
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %7
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !224

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %9 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %10, 1
  %11 = or i32 %add5.i.i.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !224

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef nonnull %call1, i32 noundef 0) #13
  %12 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %13 = phi i32 [ %10, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.i.i.i.i.not = icmp eq i32 %13, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #13
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.if.then_crit_edge, label %if.end

kref_get_unless_zero.exit.if.then_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %kref_get_unless_zero.exit.if.then_crit_edge, %entry.if.then_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @ch_index_lock) #13
  br label %cleanup

if.end:                                           ; preds = %kref_get_unless_zero.exit
  call void @_raw_spin_unlock(ptr noundef nonnull @ch_index_lock) #13
  %device = getelementptr inbounds %struct.scsi_changer, ptr %call1, i32 0, i32 4
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %call3 = call i32 @scsi_device_get(ptr noundef %15) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  %call.i.i.i.i.i.i17 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call1, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !222
  call void @llvm.prefetch.p0(ptr nonnull %call1, i32 1, i32 3, i32 1) #13
  %16 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call1, ptr nonnull %call1, i32 1, ptr nonnull elementtype(i32) %call1) #13, !srcloc !223
  %asmresult.i.i.i.i.i.i.i18 = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i18)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i18, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i18)
  %.not.i.i.i.i19 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i18, 0
  br i1 %.not.i.i.i.i19, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i20, !prof !224

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then10.i.i.i.i20:                              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef nonnull %call1, i32 noundef 3) #13
  br label %cleanup

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !225
  %17 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %device, align 4
  %dt.i.i = getelementptr inbounds %struct.scsi_changer, ptr %call1, i32 0, i32 5
  %18 = ptrtoint ptr %dt.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dt.i.i, align 4
  call void @kfree(ptr noundef %19) #13
  call void @kfree(ptr noundef nonnull %call1) #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %lock = getelementptr inbounds %struct.scsi_changer, ptr %call1, i32 0, i32 10
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %20 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call1, ptr %private_data, align 4
  call void @mutex_unlock(ptr noundef %lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then.i, %if.then10.i.i.i.i20, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -6, %if.then ], [ 0, %if.end8 ], [ -6, %if.end5.i.i.i.i.cleanup_crit_edge ], [ -6, %if.then10.i.i.i.i20 ], [ -6, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %device = getelementptr inbounds %struct.scsi_changer, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  tail call void @scsi_device_put(ptr noundef %3) #13
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %private_data, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !222
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #13
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #13, !srcloc !223
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !224

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef 3) #13
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !225
  %6 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %device, align 4
  %dt.i.i = getelementptr inbounds %struct.scsi_changer, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %dt.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dt.i.i, align 4
  tail call void @kfree(ptr noundef %8) #13
  tail call void @kfree(ptr noundef %1) #13
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_ioctl_block_when_processing_errors(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ch_position(ptr noundef %ch, i32 noundef %elem, i32 noundef %rotate) unnamed_addr #2 align 64 {
entry:
  %cmd = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cmd) #13
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end2

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %device = getelementptr inbounds %struct.scsi_changer, ptr %ch, i32 0, i32 4
  %1 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device, align 4
  %name = getelementptr inbounds %struct.scsi_changer, ptr %ch, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.32, ptr noundef %2, ptr noundef %name, ptr noundef nonnull @.str.53, i32 noundef %elem) #13
  br label %if.end2

if.end2:                                          ; preds = %if.then, %entry.if.end2_crit_edge
  %3 = getelementptr inbounds [10 x i8], ptr %cmd, i32 0, i32 8
  %4 = getelementptr inbounds [10 x i8], ptr %cmd, i32 0, i32 5
  %5 = getelementptr inbounds [10 x i8], ptr %cmd, i32 0, i32 4
  %6 = getelementptr inbounds [10 x i8], ptr %cmd, i32 0, i32 3
  %7 = getelementptr inbounds [10 x i8], ptr %cmd, i32 0, i32 2
  %8 = getelementptr inbounds [10 x i8], ptr %cmd, i32 0, i32 1
  %firsts = getelementptr inbounds %struct.scsi_changer, ptr %ch, i32 0, i32 6
  %9 = ptrtoint ptr %firsts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %firsts, align 4
  %11 = getelementptr inbounds i8, ptr %cmd, i32 6
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 0, ptr %11, align 1
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 43, ptr %cmd, align 1
  %device5 = getelementptr inbounds %struct.scsi_changer, ptr %ch, i32 0, i32 4
  %14 = ptrtoint ptr %device5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device5, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %15, i32 0, i32 18
  %16 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %lun, align 8
  %.tr = trunc i64 %17 to i8
  %conv = shl i8 %.tr, 5
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %8, align 1
  %shr = lshr i32 %10, 8
  %conv8 = trunc i32 %shr to i8
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv8, ptr %7, align 1
  %conv11 = trunc i32 %10 to i8
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv11, ptr %6, align 1
  %shr13 = lshr i32 %elem, 8
  %conv15 = trunc i32 %shr13 to i8
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv15, ptr %5, align 1
  %conv18 = trunc i32 %elem to i8
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv18, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rotate)
  %tobool20.not = icmp ne i32 %rotate, 0
  %conv21 = zext i1 %tobool20.not to i8
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv21, ptr %3, align 1
  %call = call fastcc i32 @ch_do_scsi(ptr noundef %ch, ptr noundef nonnull %cmd, ptr noundef null, i32 noundef 0, i32 noundef 3)
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cmd) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ch_move(ptr noundef %ch, i32 noundef %src, i32 noundef %dest, i32 noundef %rotate) unnamed_addr #2 align 64 {
entry:
  %cmd = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #13
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end2

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %device = getelementptr inbounds %struct.scsi_changer, ptr %ch, i32 0, i32 4
  %1 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device, align 4
  %name = getelementptr inbounds %struct.scsi_changer, ptr %ch, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.32, ptr noundef %2, ptr noundef %name, ptr noundef nonnull @.str.54, i32 noundef %src, i32 noundef %dest) #13
  br label %if.end2

if.end2:                                          ; preds = %if.then, %entry.if.end2_crit_edge
  %3 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 10
  %4 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 7
  %5 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 6
  %6 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 5
  %7 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 4
  %8 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 3
  %9 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 2
  %10 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 1
  %firsts = getelementptr inbounds %struct.scsi_changer, ptr %ch, i32 0, i32 6
  %11 = ptrtoint ptr %firsts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %firsts, align 4
  %13 = getelementptr inbounds i8, ptr %cmd, i32 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 0, ptr %13, align 1
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -91, ptr %cmd, align 1
  %device5 = getelementptr inbounds %struct.scsi_changer, ptr %ch, i32 0, i32 4
  %16 = ptrtoint ptr %device5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device5, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %17, i32 0, i32 18
  %18 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %lun, align 8
  %.tr = trunc i64 %19 to i8
  %conv = shl i8 %.tr, 5
  %20 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %10, align 1
  %shr = lshr i32 %12, 8
  %conv8 = trunc i32 %shr to i8
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv8, ptr %9, align 1
  %conv11 = trunc i32 %12 to i8
  %22 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv11, ptr %8, align 1
  %shr13 = lshr i32 %src, 8
  %conv15 = trunc i32 %shr13 to i8
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv15, ptr %7, align 1
  %conv18 = trunc i32 %src to i8
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv18, ptr %6, align 1
  %shr20 = lshr i32 %dest, 8
  %conv22 = trunc i32 %shr20 to i8
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv22, ptr %5, align 1
  %conv25 = trunc i32 %dest to i8
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv25, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rotate)
  %tobool27.not = icmp ne i32 %rotate, 0
  %conv28 = zext i1 %tobool27.not to i8
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv28, ptr %3, align 1
  %call = call fastcc i32 @ch_do_scsi(ptr noundef %ch, ptr noundef nonnull %cmd, ptr noundef null, i32 noundef 0, i32 noundef 3)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ch_exchange(ptr noundef %ch, i32 noundef %src, i32 noundef %dest1, i32 noundef %dest2, i32 noundef %rotate1, i32 noundef %rotate2) unnamed_addr #2 align 64 {
entry:
  %cmd = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #13
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end2

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %device = getelementptr inbounds %struct.scsi_changer, ptr %ch, i32 0, i32 4
  %1 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device, align 4
  %name = getelementptr inbounds %struct.scsi_changer, ptr %ch, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.32, ptr noundef %2, ptr noundef %name, ptr noundef nonnull @.str.55, i32 noundef %src, i32 noundef %dest1, i32 noundef %dest2) #13
  br label %if.end2

if.end2:                                          ; preds = %if.then, %entry.if.end2_crit_edge
  %3 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 10
  %4 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 9
  %5 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 8
  %6 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 7
  %7 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 6
  %8 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 5
  %9 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 4
  %10 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 3
  %11 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 2
  %12 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 1
  %firsts = getelementptr inbounds %struct.scsi_changer, ptr %ch, i32 0, i32 6
  %13 = ptrtoint ptr %firsts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %firsts, align 4
  %15 = getelementptr inbounds i8, ptr %cmd, i32 11
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %15, align 1
  %17 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -90, ptr %cmd, align 1
  %device5 = getelementptr inbounds %struct.scsi_changer, ptr %ch, i32 0, i32 4
  %18 = ptrtoint ptr %device5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device5, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %19, i32 0, i32 18
  %20 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %lun, align 8
  %.tr = trunc i64 %21 to i8
  %conv = shl i8 %.tr, 5
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv, ptr %12, align 1
  %shr = lshr i32 %14, 8
  %conv8 = trunc i32 %shr to i8
  %23 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv8, ptr %11, align 1
  %conv11 = trunc i32 %14 to i8
  %24 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv11, ptr %10, align 1
  %shr13 = lshr i32 %src, 8
  %conv15 = trunc i32 %shr13 to i8
  %25 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv15, ptr %9, align 1
  %conv18 = trunc i32 %src to i8
  %26 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv18, ptr %8, align 1
  %shr20 = lshr i32 %dest1, 8
  %conv22 = trunc i32 %shr20 to i8
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv22, ptr %7, align 1
  %conv25 = trunc i32 %dest1 to i8
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv25, ptr %6, align 1
  %shr27 = lshr i32 %dest2, 8
  %conv29 = trunc i32 %shr27 to i8
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv29, ptr %5, align 1
  %conv32 = trunc i32 %dest2 to i8
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv32, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rotate1)
  %tobool34.not = icmp ne i32 %rotate1, 0
  %cond = zext i1 %tobool34.not to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rotate2)
  %tobool35.not = icmp eq i32 %rotate2, 0
  %cond36 = select i1 %tobool35.not, i8 0, i8 2
  %or = or i8 %cond36, %cond
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %or, ptr %3, align 1
  %call = call fastcc i32 @ch_do_scsi(ptr noundef %ch, ptr noundef nonnull %cmd, ptr noundef null, i32 noundef 0, i32 noundef 3)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ch_gstatus(ptr noundef %ch, i32 noundef %type, ptr noundef %dest) unnamed_addr #2 align 64 {
entry:
  %data = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data) #13
  %0 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 2
  %1 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 4
  %2 = getelementptr inbounds [16 x i8], ptr %data, i32 0, i32 5
  %lock = getelementptr inbounds %struct.scsi_changer, ptr %ch, i32 0, i32 10
  %3 = call ptr @memset(ptr %data, i32 255, i32 16)
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %arrayidx2 = getelementptr %struct.scsi_changer, ptr %ch, i32 0, i32 6, i32 %type
  %arrayidx = getelementptr %struct.scsi_changer, ptr %ch, i32 0, i32 7, i32 %type
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp52.not = icmp eq i32 %5, 0
  br i1 %cmp52.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %device = getelementptr inbounds %struct.scsi_changer, ptr %ch, i32 0, i32 4
  %name = getelementptr inbounds %struct.scsi_changer, ptr %ch, i32 0, i32 3
  br label %for.body

for.cond:                                         ; preds = %if.end23
  %inc = add nuw i32 %i.053, 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2, align 4
  %add = add i32 %9, %i.053
  %call = call fastcc i32 @ch_read_element_status(ptr noundef %ch, i32 noundef %add, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3.not = icmp eq i32 %call, 0
  br i1 %cmp3.not, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end:                                           ; preds = %for.body
  %add.ptr = getelementptr i8, ptr %dest, i32 %i.053
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %0, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str.41, i32 noundef 552) #13
  %12 = tail call i32 @llvm.read_register.i32(metadata !210) #13
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #8, !srcloc !229
  %and.i = and i32 %14, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #13, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !231
  %15 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr, i8 %11, i32 -1226833921) #13, !srcloc !233
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #13, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !231
  %16 = and i8 %11, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.end.if.end23_crit_edge, label %do.body9

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

do.body9:                                         ; preds = %if.end
  %17 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool10.not = icmp eq i32 %17, 0
  br i1 %tobool10.not, label %do.body9.if.end23_crit_edge, label %if.then11

do.body9.if.end23_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then11:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device, align 4
  %20 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx2, align 4
  %add15 = add i32 %21, %i.053
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %1, align 1
  %conv17 = zext i8 %23 to i32
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %2, align 1
  %conv19 = zext i8 %25 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.7, ptr noundef %19, ptr noundef %name, ptr noundef nonnull @.str.56, i32 noundef %add15, i32 noundef %conv17, i32 noundef %conv19) #13
  br label %if.end23

if.end23:                                         ; preds = %if.then11, %do.body9.if.end23_crit_edge, %if.end.if.end23_crit_edge
  %26 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx2, align 4
  %add26 = add i32 %27, %i.053
  %call28 = call fastcc i32 @ch_read_element_status(ptr noundef %ch, i32 noundef %add26, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29.not = icmp eq i32 %call28, 0
  br i1 %cmp29.not, label %for.cond, label %if.end23.for.end_crit_edge

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end23.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %retval1.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ -5, %for.body.for.end_crit_edge ], [ %call28, %if.end23.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data) #13
  ret i32 %retval1.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ch_set_voltag(ptr noundef %ch, i32 noundef %elem, i32 noundef %alternate, i32 noundef %clear, ptr noundef %tag) unnamed_addr #2 align 64 {
entry:
  %cmd = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #13
  %0 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 3
  %3 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 5
  %4 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 512) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %do.body.do.end_crit_edge, label %if.then2

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %device = getelementptr inbounds %struct.scsi_changer, ptr %ch, i32 0, i32 4
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device, align 4
  %name = getelementptr inbounds %struct.scsi_changer, ptr %ch, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clear)
  %tobool3.not = icmp eq i32 %clear, 0
  %cond = select i1 %tobool3.not, ptr @.str.59, ptr @.str.58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alternate)
  %tobool4.not = icmp eq i32 %alternate, 0
  %cond5 = select i1 %tobool4.not, ptr @.str.61, ptr @.str.60
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.32, ptr noundef %8, ptr noundef %name, ptr noundef nonnull @.str.57, ptr noundef nonnull %cond, ptr noundef nonnull %cond5, i32 noundef %elem, ptr noundef %tag) #13
  br label %do.end

do.end:                                           ; preds = %if.then2, %do.body.do.end_crit_edge
  %9 = getelementptr inbounds i8, ptr %cmd, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 0, ptr %9, align 1
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -74, ptr %cmd, align 1
  %device8 = getelementptr inbounds %struct.scsi_changer, ptr %ch, i32 0, i32 4
  %12 = ptrtoint ptr %device8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device8, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %lun, align 8
  %and = shl i64 %15, 5
  %call9 = tail call fastcc i32 @ch_elem_to_typecode(ptr noundef %ch, i32 noundef %elem)
  %conv46 = zext i32 %call9 to i64
  %or = or i64 %and, %conv46
  %conv10 = trunc i64 %or to i8
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv10, ptr %0, align 1
  %shr = lshr i32 %elem, 8
  %conv13 = trunc i32 %shr to i8
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv13, ptr %1, align 1
  %conv16 = trunc i32 %elem to i8
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv16, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clear)
  %tobool18.not = icmp eq i32 %clear, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alternate)
  %tobool19.not = icmp eq i32 %alternate, 0
  %cond20 = select i1 %tobool19.not, i8 12, i8 13
  %cond22 = select i1 %tobool19.not, i8 10, i8 11
  %cond23 = select i1 %tobool18.not, i8 %cond22, i8 %cond20
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %cond23, ptr %3, align 1
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %4, align 1
  %21 = call ptr @memcpy(ptr %call7.i.i, ptr %tag, i32 32)
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end
  %i.032.i = phi i32 [ 0, %do.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %call7.i.i, i32 %i.032.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %24 = add i8 %23, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %24)
  %25 = icmp ult i8 %24, -95
  br i1 %25, label %for.body.i.for.inc.sink.split.i_crit_edge, label %if.end.i

for.body.i.for.inc.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split.i

if.end.i:                                         ; preds = %for.body.i
  %26 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %23, label %if.end.i.for.inc.i_crit_edge [
    i8 63, label %if.end.i.for.inc.sink.split.i_crit_edge
    i8 42, label %if.end.i.for.inc.sink.split.i_crit_edge47
  ]

if.end.i.for.inc.sink.split.i_crit_edge47:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split.i

if.end.i.for.inc.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.sink.split.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.sink.split.i:                             ; preds = %if.end.i.for.inc.sink.split.i_crit_edge, %if.end.i.for.inc.sink.split.i_crit_edge47, %for.body.i.for.inc.sink.split.i_crit_edge
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 32, ptr %arrayidx.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %if.end.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %ch_check_voltag.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

ch_check_voltag.exit:                             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  %call28 = call fastcc i32 @ch_do_scsi(ptr noundef %ch, ptr noundef nonnull %cmd, ptr noundef nonnull %call7.i.i, i32 noundef 256, i32 noundef 1)
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %ch_check_voltag.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %ch_check_voltag.exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_ioctl(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !19, !21, !23, !24, !26, !28, !29, !31, !33, !34, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !52, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !89, !91, !93, !94, !96, !97, !99, !101, !103, !104, !106, !107, !109, !110, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !155, !157, !159, !161, !163, !165, !166, !168, !169, !170, !171, !172, !174, !175, !177, !178, !179, !181, !183, !185, !187, !189, !191, !192, !194, !196, !198, !200, !202, !204, !206, !207, !208, !209}
!llvm.named.register.sp = !{!210}
!llvm.module.flags = !{!211, !212, !213, !214, !215, !216, !217, !218}
!llvm.ident = !{!219}

!0 = !{ptr @__UNIQUE_ID_description285, !1, !"__UNIQUE_ID_description285", i1 false, i1 false}
!1 = !{!"../drivers/scsi/ch.c", i32 41, i32 1}
!2 = !{ptr @__UNIQUE_ID_author286, !3, !"__UNIQUE_ID_author286", i1 false, i1 false}
!3 = !{!"../drivers/scsi/ch.c", i32 42, i32 1}
!4 = !{ptr @__UNIQUE_ID_file287, !5, !"__UNIQUE_ID_file287", i1 false, i1 false}
!5 = !{!"../drivers/scsi/ch.c", i32 43, i32 1}
!6 = !{ptr @__UNIQUE_ID_license288, !5, !"__UNIQUE_ID_license288", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias289, !8, !"__UNIQUE_ID_alias289", i1 false, i1 false}
!8 = !{!"../drivers/scsi/ch.c", i32 44, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias290, !10, !"__UNIQUE_ID_alias290", i1 false, i1 false}
!10 = !{!"../drivers/scsi/ch.c", i32 45, i32 1}
!11 = !{ptr @__param_init, !12, !"__param_init", i1 false, i1 false}
!12 = !{!"../drivers/scsi/ch.c", i32 48, i32 1}
!13 = !{ptr @__UNIQUE_ID_inittype291, !12, !"__UNIQUE_ID_inittype291", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_init292, !15, !"__UNIQUE_ID_init292", i1 false, i1 false}
!15 = !{!"../drivers/scsi/ch.c", i32 49, i32 1}
!16 = !{ptr @__param_timeout_move, !17, !"__param_timeout_move", i1 false, i1 false}
!17 = !{!"../drivers/scsi/ch.c", i32 53, i32 1}
!18 = !{ptr @__UNIQUE_ID_timeout_movetype293, !17, !"__UNIQUE_ID_timeout_movetype293", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_timeout_move294, !20, !"__UNIQUE_ID_timeout_move294", i1 false, i1 false}
!20 = !{!"../drivers/scsi/ch.c", i32 54, i32 1}
!21 = !{ptr @__param_timeout_init, !22, !"__param_timeout_init", i1 false, i1 false}
!22 = !{!"../drivers/scsi/ch.c", i32 58, i32 1}
!23 = !{ptr @__UNIQUE_ID_timeout_inittype295, !22, !"__UNIQUE_ID_timeout_inittype295", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_timeout_init296, !25, !"__UNIQUE_ID_timeout_init296", i1 false, i1 false}
!25 = !{!"../drivers/scsi/ch.c", i32 59, i32 1}
!26 = !{ptr @__param_verbose, !27, !"__param_verbose", i1 false, i1 false}
!27 = !{!"../drivers/scsi/ch.c", i32 63, i32 1}
!28 = !{ptr @__UNIQUE_ID_verbosetype297, !27, !"__UNIQUE_ID_verbosetype297", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_verbose298, !30, !"__UNIQUE_ID_verbose298", i1 false, i1 false}
!30 = !{!"../drivers/scsi/ch.c", i32 64, i32 1}
!31 = !{ptr @__param_debug, !32, !"__param_debug", i1 false, i1 false}
!32 = !{!"../drivers/scsi/ch.c", i32 67, i32 1}
!33 = !{ptr @__UNIQUE_ID_debugtype299, !32, !"__UNIQUE_ID_debugtype299", i1 false, i1 false}
!34 = !{ptr @__UNIQUE_ID_debug300, !35, !"__UNIQUE_ID_debug300", i1 false, i1 false}
!35 = !{!"../drivers/scsi/ch.c", i32 68, i32 1}
!36 = !{ptr @__param_dt_id, !37, !"__param_dt_id", i1 false, i1 false}
!37 = !{!"../drivers/scsi/ch.c", i32 73, i32 1}
!38 = !{ptr @__UNIQUE_ID_dt_idtype301, !37, !"__UNIQUE_ID_dt_idtype301", i1 false, i1 false}
!39 = !{ptr @__param_dt_lun, !40, !"__param_dt_lun", i1 false, i1 false}
!40 = !{!"../drivers/scsi/ch.c", i32 74, i32 1}
!41 = !{ptr @__UNIQUE_ID_dt_luntype302, !40, !"__UNIQUE_ID_dt_luntype302", i1 false, i1 false}
!42 = !{ptr @__param_vendor_firsts, !43, !"__param_vendor_firsts", i1 false, i1 false}
!43 = !{!"../drivers/scsi/ch.c", i32 79, i32 1}
!44 = !{ptr @__UNIQUE_ID_vendor_firststype303, !43, !"__UNIQUE_ID_vendor_firststype303", i1 false, i1 false}
!45 = !{ptr @__param_vendor_counts, !46, !"__param_vendor_counts", i1 false, i1 false}
!46 = !{!"../drivers/scsi/ch.c", i32 80, i32 1}
!47 = !{ptr @__UNIQUE_ID_vendor_countstype304, !46, !"__UNIQUE_ID_vendor_countstype304", i1 false, i1 false}
!48 = !{ptr @.str, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/ch.c", i32 1024, i32 40}
!50 = !{ptr @__initcall__kmod_ch__305_1029_init_ch_module6, !51, !"__initcall__kmod_ch__305_1029_init_ch_module6", i1 false, i1 false}
!51 = !{!"../drivers/scsi/ch.c", i32 1029, i32 1}
!52 = !{ptr @__exitcall_exit_ch_module, !53, !"__exitcall_exit_ch_module", i1 false, i1 false}
!53 = !{!"../drivers/scsi/ch.c", i32 1030, i32 1}
!54 = !{ptr @ch_sysfs_class, !55, !"ch_sysfs_class", i1 false, i1 false}
!55 = !{!"../drivers/scsi/ch.c", i32 105, i32 23}
!56 = !{ptr @__param_str_init, !12, !"__param_str_init", i1 false, i1 false}
!57 = !{ptr @init, !58, !"init", i1 false, i1 false}
!58 = !{!"../drivers/scsi/ch.c", i32 47, i32 12}
!59 = !{ptr @__param_str_timeout_move, !17, !"__param_str_timeout_move", i1 false, i1 false}
!60 = !{ptr @timeout_move, !61, !"timeout_move", i1 false, i1 false}
!61 = !{!"../drivers/scsi/ch.c", i32 52, i32 12}
!62 = !{ptr @__param_str_timeout_init, !22, !"__param_str_timeout_init", i1 false, i1 false}
!63 = !{ptr @timeout_init, !64, !"timeout_init", i1 false, i1 false}
!64 = !{!"../drivers/scsi/ch.c", i32 57, i32 12}
!65 = !{ptr @__param_str_verbose, !27, !"__param_str_verbose", i1 false, i1 false}
!66 = !{ptr @verbose, !67, !"verbose", i1 false, i1 false}
!67 = !{!"../drivers/scsi/ch.c", i32 62, i32 12}
!68 = !{ptr @__param_str_debug, !32, !"__param_str_debug", i1 false, i1 false}
!69 = !{ptr @debug, !70, !"debug", i1 false, i1 false}
!70 = !{!"../drivers/scsi/ch.c", i32 66, i32 12}
!71 = !{ptr @__param_str_dt_id, !37, !"__param_str_dt_id", i1 false, i1 false}
!72 = !{ptr @__param_arr_dt_id, !37, !"__param_arr_dt_id", i1 false, i1 false}
!73 = !{ptr @dt_id, !74, !"dt_id", i1 false, i1 false}
!74 = !{!"../drivers/scsi/ch.c", i32 71, i32 12}
!75 = !{ptr @__param_str_dt_lun, !40, !"__param_str_dt_lun", i1 false, i1 false}
!76 = !{ptr @__param_arr_dt_lun, !40, !"__param_arr_dt_lun", i1 false, i1 false}
!77 = !{ptr @dt_lun, !78, !"dt_lun", i1 false, i1 false}
!78 = !{!"../drivers/scsi/ch.c", i32 72, i32 12}
!79 = !{ptr @__param_str_vendor_firsts, !43, !"__param_str_vendor_firsts", i1 false, i1 false}
!80 = !{ptr @__param_arr_vendor_firsts, !43, !"__param_arr_vendor_firsts", i1 false, i1 false}
!81 = !{ptr @vendor_firsts, !82, !"vendor_firsts", i1 false, i1 false}
!82 = !{!"../drivers/scsi/ch.c", i32 77, i32 12}
!83 = !{ptr @__param_str_vendor_counts, !46, !"__param_str_vendor_counts", i1 false, i1 false}
!84 = !{ptr @__param_arr_vendor_counts, !46, !"__param_arr_vendor_counts", i1 false, i1 false}
!85 = !{ptr @vendor_counts, !86, !"vendor_counts", i1 false, i1 false}
!86 = !{!"../drivers/scsi/ch.c", i32 78, i32 12}
!87 = !{ptr @ch_template, !88, !"ch_template", i1 false, i1 false}
!88 = !{!"../drivers/scsi/ch.c", i32 975, i32 27}
!89 = !{ptr @.str.1, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/ch.c", i32 914, i32 19}
!91 = !{ptr @.str.2, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/ch.c", i32 917, i32 3}
!93 = !{ptr @.str.3, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @ch_probe.__key, !95, !"__key", i1 false, i1 false}
!95 = !{!"../drivers/scsi/ch.c", i32 922, i32 2}
!96 = !{ptr @.str.4, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.5, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/ch.c", i32 927, i32 7}
!99 = !{ptr @.str.6, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/ch.c", i32 929, i32 3}
!101 = !{ptr @.str.7, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/ch.c", i32 946, i32 2}
!103 = !{ptr @.str.8, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.9, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/ch.c", i32 122, i32 8}
!106 = !{ptr @ch_index_lock, !105, !"ch_index_lock", i1 false, i1 false}
!107 = !{ptr @.str.10, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!109 = !{ptr @.str.11, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.12, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.13, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/ch.c", i32 331, i32 3}
!113 = !{ptr @.str.14, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/ch.c", i32 334, i32 3}
!115 = !{ptr @.str.15, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/ch.c", i32 337, i32 3}
!117 = !{ptr @.str.16, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/scsi/ch.c", i32 340, i32 3}
!119 = !{ptr @.str.17, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/ch.c", i32 344, i32 3}
!121 = !{ptr @.str.18, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/ch.c", i32 355, i32 3}
!123 = !{ptr @.str.19, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/ch.c", i32 375, i32 4}
!125 = !{ptr @.str.20, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/ch.c", i32 379, i32 4}
!127 = !{ptr @.str.21, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/ch.c", i32 382, i32 4}
!129 = !{ptr @.str.22, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/ch.c", i32 384, i32 5}
!131 = !{ptr @.str.23, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.24, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/ch.c", i32 387, i32 5}
!134 = !{ptr @.str.25, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/ch.c", i32 397, i32 4}
!136 = !{ptr @.str.26, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/scsi/ch.c", i32 404, i32 5}
!138 = !{ptr @.str.27, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/ch.c", i32 406, i32 5}
!140 = !{ptr @ch_err, !141, !"ch_err", i1 false, i1 false}
!141 = !{!"../drivers/scsi/ch.c", i32 129, i32 3}
!142 = !{ptr @.str.28, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/ch.c", i32 83, i32 2}
!144 = !{ptr @.str.29, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/ch.c", i32 83, i32 8}
!146 = !{ptr @.str.30, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/ch.c", i32 83, i32 14}
!148 = !{ptr @.str.31, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/ch.c", i32 83, i32 20}
!150 = distinct !{null, !151, !"vendor_labels", i1 false, i1 false}
!151 = !{!"../drivers/scsi/ch.c", i32 82, i32 21}
!152 = !{ptr @.str.32, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/scsi/ch.c", i32 259, i32 4}
!154 = !{ptr @.str.33, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.34, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/scsi/ch.c", i32 268, i32 4}
!157 = !{ptr @.str.35, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/scsi/ch.c", i32 271, i32 3}
!159 = !{ptr @.str.36, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/scsi/ch.c", i32 283, i32 2}
!161 = !{ptr @.str.37, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/scsi/ch.c", i32 288, i32 2}
!163 = !{ptr @.str.38, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/scsi/ch.c", i32 121, i32 8}
!165 = !{ptr @ch_index_idr, !164, !"ch_index_idr", i1 false, i1 false}
!166 = !{ptr @.str.39, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/scsi/ch.c", i32 997, i32 2}
!168 = !{ptr @.str.40, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.41, !167, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @init_ch_module._entry, !167, !"_entry", i1 false, i1 false}
!171 = !{ptr @init_ch_module._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @init_ch_module.__key, !173, !"__key", i1 false, i1 false}
!173 = !{!"../drivers/scsi/ch.c", i32 998, i32 26}
!174 = !{ptr @.str.42, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.44, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/ch.c", i32 1005, i32 3}
!177 = !{ptr @init_ch_module._entry.43, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @init_ch_module._entry_ptr.45, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @changer_fops, !180, !"changer_fops", i1 false, i1 false}
!180 = !{!"../drivers/scsi/ch.c", i32 984, i32 37}
!181 = !{ptr @.str.46, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/scsi/ch.c", i32 688, i32 4}
!183 = !{ptr @.str.47, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/scsi/ch.c", i32 708, i32 4}
!185 = !{ptr @.str.48, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/scsi/ch.c", i32 731, i32 4}
!187 = !{ptr @.str.49, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/scsi/ch.c", i32 866, i32 4}
!189 = distinct !{null, !190, !"__already_done", i1 false, i1 false}
!190 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!191 = distinct !{null, !190, !"<string literal>", i1 false, i1 false}
!192 = distinct !{null, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!194 = !{ptr @.str.52, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!196 = !{ptr @.str.53, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/scsi/ch.c", i32 426, i32 2}
!198 = !{ptr @.str.54, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/scsi/ch.c", i32 445, i32 2}
!200 = !{ptr @.str.55, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/scsi/ch.c", i32 467, i32 2}
!202 = !{ptr @.str.56, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/scsi/ch.c", i32 554, i32 4}
!204 = !{ptr @.str.57, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/scsi/ch.c", i32 515, i32 2}
!206 = !{ptr @.str.58, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.59, !205, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.60, !205, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.61, !205, !"<string literal>", i1 false, i1 false}
!210 = !{!"sp"}
!211 = !{i32 1, !"wchar_size", i32 2}
!212 = !{i32 1, !"min_enum_size", i32 4}
!213 = !{i32 8, !"branch-target-enforcement", i32 0}
!214 = !{i32 8, !"sign-return-address", i32 0}
!215 = !{i32 8, !"sign-return-address-all", i32 0}
!216 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!217 = !{i32 7, !"uwtable", i32 1}
!218 = !{i32 7, !"frame-pointer", i32 2}
!219 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!220 = !{i64 2151462620}
!221 = !{!"branch_weights", i32 1, i32 2000}
!222 = !{i64 2148452940}
!223 = !{i64 2148367380, i64 2148367412, i64 2148367441, i64 2148367475, i64 2148367506, i64 2148367529}
!224 = !{!"branch_weights", i32 2000, i32 1}
!225 = !{i64 2149329054}
!226 = !{i64 2152428683, i64 2152428708}
!227 = !{!"auto-init"}
!228 = !{i64 2152428002, i64 2152428027}
!229 = !{i64 4923557}
!230 = !{i64 4923754}
!231 = !{i64 2152408987}
!232 = !{i64 847918, i64 847942, i64 847963, i64 847980, i64 847997}
!233 = !{i64 2154830703, i64 2154830983, i64 2154831317, i64 2154831651}
