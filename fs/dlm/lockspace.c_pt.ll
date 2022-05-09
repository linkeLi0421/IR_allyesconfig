; ModuleID = '/llk/IR_all_yes/fs/dlm/lockspace.c_pt.bc'
source_filename = "../fs/dlm/lockspace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.kset_uevent_ops = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dlm_config_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.dlm_attr = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.dlm_ls = type { %struct.list_head, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, %struct.kobject, %struct.idr, %struct.spinlock, ptr, i32, %struct.mutex, %struct.list_head, %struct.mutex, %struct.list_head, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, [65 x i8], [8 x ptr], i32, [8 x i32], %struct.list_head, %struct.list_head, i32, i32, i32, ptr, i32, i32, i32, ptr, %struct.dlm_rsb, %struct.dlm_lkb, %struct.dlm_message, ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, i32, %struct.completion, i32, %struct.miscdevice, ptr, %struct.mutex, %struct.list_head, %struct.timer_list, ptr, %struct.mutex, %struct.spinlock, i32, i32, i64, ptr, %struct.rw_semaphore, %struct.rw_semaphore, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.mutex, ptr, i32, i32, i32, i32, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, i32, %struct.idr, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.rw_semaphore, ptr, ptr, i32, [1 x i8] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dlm_rsb = type { ptr, %struct.kref, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %union.anon.41, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, ptr, [65 x i8] }
%union.anon.41 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dlm_lkb = type { ptr, %struct.kref, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, i64, i32, %struct.mutex, %struct.work_struct, %struct.list_head, [6 x %struct.dlm_callback], %struct.dlm_callback, %struct.dlm_callback, i64, i64, i64, ptr, ptr, ptr, ptr, %union.anon.42 }
%struct.dlm_callback = type { i64, i32, i32, i8, i8 }
%union.anon.42 = type { ptr }
%struct.dlm_message = type { %struct.dlm_header, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.dlm_header = type { i32, %union.anon.43, i32, i16, i8, i8 }
%union.anon.43 = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.dlm_rsbtable = type { %struct.rb_root, %struct.rb_root, %struct.spinlock, i32 }
%struct.rb_root = type { ptr }

@ls_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dlm_lockspace_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ls_lock = internal global { %struct.mutex, [36 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&ls_lock\00", [23 x i8] zeroinitializer }, align 32
@lslist = internal global { %struct.list_head, [24 x i8] } zeroinitializer, align 32
@dlm_lockspace_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lslist_lock = internal global { %struct.spinlock, [52 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&lslist_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dlm\00", [28 x i8] zeroinitializer }, align 32
@dlm_uevent_ops = internal constant { %struct.kset_uevent_ops, [20 x i8] } { %struct.kset_uevent_ops { ptr null, ptr null, ptr @dlm_uevent }, [20 x i8] zeroinitializer }, align 32
@kernel_kobj = external dso_local local_unnamed_addr global ptr, align 4
@dlm_kset = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dlm_lockspace_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014%s: can not create kset\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dlm_lockspace_init\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/dlm/lockspace.c\00", [45 x i8] zeroinitializer }, align 32
@dlm_lockspace_init._entry_ptr = internal global ptr @dlm_lockspace_init._entry, section ".printk_index", align 4
@dlm_stop_lockspaces._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.6, i32 915, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013dlm: %s: no userland control daemon, stopping lockspace\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dlm_stop_lockspaces\00", [44 x i8] zeroinitializer }, align 32
@dlm_stop_lockspaces._entry_ptr = internal global ptr @dlm_stop_lockspaces._entry, section ".printk_index", align 4
@dlm_stop_lockspaces._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.6, i32 922, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013dlm: dlm user daemon left %d lockspaces\0A\00", [53 x i8] zeroinitializer }, align 32
@dlm_stop_lockspaces._entry_ptr.11 = internal global ptr @dlm_stop_lockspaces._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LOCKSPACE=%s\00", [19 x i8] zeroinitializer }, align 32
@threads_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.6, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013dlm: cannot start dlm_scand thread %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"threads_start\00", [18 x i8] zeroinitializer }, align 32
@threads_start._entry_ptr = internal global ptr @threads_start._entry, section ".printk_index", align 4
@threads_start._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.6, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013dlm: cannot start dlm lowcomms %d\0A\00", [59 x i8] zeroinitializer }, align 32
@threads_start._entry_ptr.17 = internal global ptr @threads_start._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dlm_scand\00", [22 x i8] zeroinitializer }, align 32
@scand_task = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dlm_config = external dso_local global %struct.dlm_config_info, align 4
@new_lockspace._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.6, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013dlm: dlm user daemon not available\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"new_lockspace\00", [18 x i8] zeroinitializer }, align 32
@new_lockspace._entry_ptr = internal global ptr @new_lockspace._entry, section ".printk_index", align 4
@new_lockspace._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.6, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013dlm: dlm cluster name '%s' is being used without an application provided cluster name\0A\00", [39 x i8] zeroinitializer }, align 32
@new_lockspace._entry_ptr.23 = internal global ptr @new_lockspace._entry.21, section ".printk_index", align 4
@new_lockspace._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.6, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013dlm: dlm cluster name '%s' does not match the application cluster name '%s'\0A\00", [49 x i8] zeroinitializer }, align 32
@new_lockspace._entry_ptr.26 = internal global ptr @new_lockspace._entry.24, section ".printk_index", align 4
@new_lockspace.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ls->ls_count_wait\00", [45 x i8] zeroinitializer }, align 32
@new_lockspace.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&ls->ls_rsbtbl[i].lock\00", [41 x i8] zeroinitializer }, align 32
@new_lockspace.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ls->ls_remove_spin\00", [44 x i8] zeroinitializer }, align 32
@new_lockspace.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ls->ls_remove_wait\00", [44 x i8] zeroinitializer }, align 32
@new_lockspace.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ls->ls_lkbidr_spin\00", [44 x i8] zeroinitializer }, align 32
@new_lockspace.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&ls->ls_waiters_mutex\00", [42 x i8] zeroinitializer }, align 32
@new_lockspace.__key.38 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&ls->ls_orphans_mutex\00", [42 x i8] zeroinitializer }, align 32
@new_lockspace.__key.40 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&ls->ls_timeout_mutex\00", [42 x i8] zeroinitializer }, align 32
@new_lockspace.__key.42 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&ls->ls_new_rsb_spin\00", [43 x i8] zeroinitializer }, align 32
@new_lockspace.__key.44 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ls->ls_uevent_wait\00", [44 x i8] zeroinitializer }, align 32
@new_lockspace.__key.46 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ls->ls_cb_mutex\00", [47 x i8] zeroinitializer }, align 32
@new_lockspace.__key.48 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&ls->ls_recoverd_active\00", [40 x i8] zeroinitializer }, align 32
@new_lockspace.__key.50 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&ls->ls_recover_lock\00", [43 x i8] zeroinitializer }, align 32
@new_lockspace.__key.52 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&ls->ls_rcom_spin\00", [46 x i8] zeroinitializer }, align 32
@new_lockspace.__key.54 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ls->ls_in_recovery\00", [44 x i8] zeroinitializer }, align 32
@new_lockspace.__key.56 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ls->ls_recv_active\00", [44 x i8] zeroinitializer }, align 32
@new_lockspace.__key.58 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&ls->ls_requestqueue_wait\00", [38 x i8] zeroinitializer }, align 32
@new_lockspace.__key.60 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&ls->ls_requestqueue_mutex\00", [37 x i8] zeroinitializer }, align 32
@new_lockspace.__key.62 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&ls->ls_clear_proc_locks\00", [39 x i8] zeroinitializer }, align 32
@new_lockspace.__key.64 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&ls->ls_recover_list_lock\00", [38 x i8] zeroinitializer }, align 32
@new_lockspace.__key.66 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&ls->ls_recover_idr_lock\00", [39 x i8] zeroinitializer }, align 32
@new_lockspace.__key.68 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&ls->ls_wait_general\00", [43 x i8] zeroinitializer }, align 32
@new_lockspace.__key.70 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ls->ls_root_sem\00", [47 x i8] zeroinitializer }, align 32
@new_lockspace._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.20, ptr @.str.6, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013dlm: %s: can't start dlm_callback %d\0A\00", [56 x i8] zeroinitializer }, align 32
@new_lockspace._entry_ptr.74 = internal global ptr @new_lockspace._entry.72, section ".printk_index", align 4
@new_lockspace.__key.75 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.76 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&ls->ls_recover_lock_wait\00", [38 x i8] zeroinitializer }, align 32
@new_lockspace._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.20, ptr @.str.6, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013dlm: %s: can't start dlm_recoverd %d\0A\00", [56 x i8] zeroinitializer }, align 32
@new_lockspace._entry_ptr.79 = internal global ptr @new_lockspace._entry.77, section ".printk_index", align 4
@dlm_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @lockspace_kobj_release, ptr @dlm_attr_ops, ptr null, ptr @dlm_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@new_lockspace._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.20, ptr @.str.6, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016dlm: %s: join complete\0A\00", [38 x i8] zeroinitializer }, align 32
@new_lockspace._entry_ptr.83 = internal global ptr @new_lockspace._entry.81, section ".printk_index", align 4
@new_lockspace._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.20, ptr @.str.6, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017dlm: %s: join complete\0A\00", [38 x i8] zeroinitializer }, align 32
@new_lockspace._entry_ptr.86 = internal global ptr @new_lockspace._entry.84, section ".printk_index", align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dlm_attr_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @dlm_attr_show, ptr @dlm_attr_store }, [24 x i8] zeroinitializer }, align 32
@dlm_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dlm_group, ptr null], [24 x i8] zeroinitializer }, align 32
@dlm_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dlm_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@dlm_attrs = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @dlm_attr_control, ptr @dlm_attr_event, ptr @dlm_attr_id, ptr @dlm_attr_nodir, ptr @dlm_attr_recover_status, ptr @dlm_attr_recover_nodeid, ptr null], [36 x i8] zeroinitializer }, align 32
@dlm_attr_control = internal global { %struct.dlm_attr, [36 x i8] } { %struct.dlm_attr { %struct.attribute { ptr @.str.89, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @dlm_control_store }, [36 x i8] zeroinitializer }, align 32
@dlm_attr_event = internal global { %struct.dlm_attr, [36 x i8] } { %struct.dlm_attr { %struct.attribute { ptr @.str.90, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @dlm_event_store }, [36 x i8] zeroinitializer }, align 32
@dlm_attr_id = internal global { %struct.dlm_attr, [36 x i8] } { %struct.dlm_attr { %struct.attribute { ptr @.str.91, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dlm_id_show, ptr @dlm_id_store }, [36 x i8] zeroinitializer }, align 32
@dlm_attr_nodir = internal global { %struct.dlm_attr, [36 x i8] } { %struct.dlm_attr { %struct.attribute { ptr @.str.93, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dlm_nodir_show, ptr @dlm_nodir_store }, [36 x i8] zeroinitializer }, align 32
@dlm_attr_recover_status = internal global { %struct.dlm_attr, [36 x i8] } { %struct.dlm_attr { %struct.attribute { ptr @.str.94, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dlm_recover_status_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dlm_attr_recover_nodeid = internal global { %struct.dlm_attr, [36 x i8] } { %struct.dlm_attr { %struct.attribute { ptr @.str.96, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dlm_recover_nodeid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event_done\00", [21 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nodir\00", [26 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"recover_status\00", [17 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%x\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"recover_nodeid\00", [17 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@do_uevent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.6, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016dlm: %s: %s the lockspace group...\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"do_uevent\00", [22 x i8] zeroinitializer }, align 32
@do_uevent._entry_ptr = internal global ptr @do_uevent._entry, section ".printk_index", align 4
@.str.100 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"joining\00", [24 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"leaving\00", [24 x i8] zeroinitializer }, align 32
@do_uevent._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.99, ptr @.str.6, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017dlm: %s: %s the lockspace group...\0A\00", [58 x i8] zeroinitializer }, align 32
@do_uevent._entry_ptr.104 = internal global ptr @do_uevent._entry.102, section ".printk_index", align 4
@do_uevent._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.99, ptr @.str.6, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016dlm: %s: group event done %d\0A\00", [32 x i8] zeroinitializer }, align 32
@do_uevent._entry_ptr.107 = internal global ptr @do_uevent._entry.105, section ".printk_index", align 4
@do_uevent._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.99, ptr @.str.6, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017dlm: %s: group event done %d\0A\00", [32 x i8] zeroinitializer }, align 32
@do_uevent._entry_ptr.110 = internal global ptr @do_uevent._entry.108, section ".printk_index", align 4
@release_lockspace._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.6, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017dlm: %s: release_lockspace no remove %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"release_lockspace\00", [46 x i8] zeroinitializer }, align 32
@release_lockspace._entry_ptr = internal global ptr @release_lockspace._entry, section ".printk_index", align 4
@release_lockspace._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.112, ptr @.str.6, i32 858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016dlm: %s: release_lockspace final free\0A\00", [55 x i8] zeroinitializer }, align 32
@release_lockspace._entry_ptr.115 = internal global ptr @release_lockspace._entry.113, section ".printk_index", align 4
@release_lockspace._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.112, ptr @.str.6, i32 858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017dlm: %s: release_lockspace final free\0A\00", [55 x i8] zeroinitializer }, align 32
@release_lockspace._entry_ptr.118 = internal global ptr @release_lockspace._entry.116, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.120 = private unnamed_addr constant [9 x i8] c"ls_count\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 29, i32 14 }
@___asan_gen_.126 = private unnamed_addr constant [8 x i8] c"ls_lock\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 30, i32 22 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 234, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"lslist\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 31, i32 26 }
@___asan_gen_.138 = private unnamed_addr constant [12 x i8] c"lslist_lock\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 32, i32 20 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 236, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 238, i32 33 }
@___asan_gen_.147 = private unnamed_addr constant [15 x i8] c"dlm_uevent_ops\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 227, i32 37 }
@___asan_gen_.150 = private unnamed_addr constant [9 x i8] c"dlm_kset\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 197, i32 21 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 240, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 915, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 922, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 223, i32 22 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 388, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 395, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 295, i32 6 }
@___asan_gen_.201 = private unnamed_addr constant [11 x i8] c"scand_task\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 33, i32 29 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 427, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 440, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 445, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 484, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 510, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 513, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 514, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 524, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 527, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 529, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 531, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 534, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 549, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 554, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 558, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 559, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 560, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 565, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 566, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 569, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 570, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 571, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 588, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 590, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 593, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 595, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 605, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 610, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 621, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant [10 x i8] c"dlm_ktype\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 191, i32 25 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 633, i32 10 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 655, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 378, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.409 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 87, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant [13 x i8] c"dlm_attr_ops\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 186, i32 31 }
@___asan_gen_.414 = private unnamed_addr constant [11 x i8] c"dlm_groups\00", align 1
@___asan_gen_.417 = private unnamed_addr constant [10 x i8] c"dlm_group\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 162, i32 1 }
@___asan_gen_.420 = private unnamed_addr constant [10 x i8] c"dlm_attrs\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 153, i32 26 }
@___asan_gen_.423 = private unnamed_addr constant [17 x i8] c"dlm_attr_control\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 121, i32 24 }
@___asan_gen_.426 = private unnamed_addr constant [15 x i8] c"dlm_attr_event\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 126, i32 24 }
@___asan_gen_.429 = private unnamed_addr constant [12 x i8] c"dlm_attr_id\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 131, i32 24 }
@___asan_gen_.432 = private unnamed_addr constant [15 x i8] c"dlm_attr_nodir\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 137, i32 24 }
@___asan_gen_.435 = private unnamed_addr constant [24 x i8] c"dlm_attr_recover_status\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 143, i32 24 }
@___asan_gen_.438 = private unnamed_addr constant [24 x i8] c"dlm_attr_recover_nodeid\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 148, i32 24 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 122, i32 20 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 127, i32 20 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 132, i32 20 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 75, i32 34 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 138, i32 20 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 144, i32 20 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 107, i32 34 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 149, i32 20 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 112, i32 34 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 206, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 214, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 786, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.519 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.520 = private constant [22 x i8] c"../fs/dlm/lockspace.c\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 858, i32 2 }
@llvm.compiler.used = appending global [153 x ptr] [ptr @dlm_lockspace_init._entry, ptr @dlm_lockspace_init._entry_ptr, ptr @dlm_stop_lockspaces._entry, ptr @dlm_stop_lockspaces._entry.9, ptr @dlm_stop_lockspaces._entry_ptr, ptr @dlm_stop_lockspaces._entry_ptr.11, ptr @do_uevent._entry, ptr @do_uevent._entry.102, ptr @do_uevent._entry.105, ptr @do_uevent._entry.108, ptr @do_uevent._entry_ptr, ptr @do_uevent._entry_ptr.104, ptr @do_uevent._entry_ptr.107, ptr @do_uevent._entry_ptr.110, ptr @new_lockspace._entry, ptr @new_lockspace._entry.21, ptr @new_lockspace._entry.24, ptr @new_lockspace._entry.72, ptr @new_lockspace._entry.77, ptr @new_lockspace._entry.81, ptr @new_lockspace._entry.84, ptr @new_lockspace._entry_ptr, ptr @new_lockspace._entry_ptr.23, ptr @new_lockspace._entry_ptr.26, ptr @new_lockspace._entry_ptr.74, ptr @new_lockspace._entry_ptr.79, ptr @new_lockspace._entry_ptr.83, ptr @new_lockspace._entry_ptr.86, ptr @release_lockspace._entry, ptr @release_lockspace._entry.113, ptr @release_lockspace._entry.116, ptr @release_lockspace._entry_ptr, ptr @release_lockspace._entry_ptr.115, ptr @release_lockspace._entry_ptr.118, ptr @threads_start._entry, ptr @threads_start._entry.15, ptr @threads_start._entry_ptr, ptr @threads_start._entry_ptr.17, ptr @ls_count, ptr @dlm_lockspace_init.__key, ptr @ls_lock, ptr @.str, ptr @lslist, ptr @dlm_lockspace_init.__key.1, ptr @lslist_lock, ptr @.str.2, ptr @.str.3, ptr @dlm_uevent_ops, ptr @dlm_kset, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @scand_task, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @new_lockspace.__key, ptr @.str.27, ptr @new_lockspace.__key.28, ptr @.str.29, ptr @new_lockspace.__key.30, ptr @.str.31, ptr @new_lockspace.__key.32, ptr @.str.33, ptr @new_lockspace.__key.34, ptr @.str.35, ptr @new_lockspace.__key.36, ptr @.str.37, ptr @new_lockspace.__key.38, ptr @.str.39, ptr @new_lockspace.__key.40, ptr @.str.41, ptr @new_lockspace.__key.42, ptr @.str.43, ptr @new_lockspace.__key.44, ptr @.str.45, ptr @new_lockspace.__key.46, ptr @.str.47, ptr @new_lockspace.__key.48, ptr @.str.49, ptr @new_lockspace.__key.50, ptr @.str.51, ptr @new_lockspace.__key.52, ptr @.str.53, ptr @new_lockspace.__key.54, ptr @.str.55, ptr @new_lockspace.__key.56, ptr @.str.57, ptr @new_lockspace.__key.58, ptr @.str.59, ptr @new_lockspace.__key.60, ptr @.str.61, ptr @new_lockspace.__key.62, ptr @.str.63, ptr @new_lockspace.__key.64, ptr @.str.65, ptr @new_lockspace.__key.66, ptr @.str.67, ptr @new_lockspace.__key.68, ptr @.str.69, ptr @new_lockspace.__key.70, ptr @.str.71, ptr @.str.73, ptr @new_lockspace.__key.75, ptr @.str.76, ptr @.str.78, ptr @dlm_ktype, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @xa_init_flags.__key, ptr @.str.87, ptr @init_completion.__key, ptr @.str.88, ptr @dlm_attr_ops, ptr @dlm_groups, ptr @dlm_group, ptr @dlm_attrs, ptr @dlm_attr_control, ptr @dlm_attr_event, ptr @dlm_attr_id, ptr @dlm_attr_nodir, ptr @dlm_attr_recover_status, ptr @dlm_attr_recover_nodeid, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.114, ptr @.str.117], section "llvm.metadata"
@0 = internal global [134 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_lockspace_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lslist to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_lockspace_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lslist_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_uevent_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_kset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_lockspace_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_stop_lockspaces._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_stop_lockspaces._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @threads_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @threads_start._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scand_task to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_lockspace._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_lockspace._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_lockspace._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_lockspace.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_lockspace.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_lockspace.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_lockspace.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_lockspace.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_lockspace.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_lockspace.__key.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_lockspace.__key.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_lockspace.__key.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_lockspace.__key.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_lockspace.__key.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_lockspace.__key.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_lockspace.__key.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_lockspace.__key.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_lockspace.__key.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_lockspace.__key.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_lockspace.__key.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_lockspace.__key.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_lockspace.__key.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_lockspace.__key.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_lockspace.__key.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_lockspace.__key.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_lockspace.__key.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_lockspace._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_lockspace.__key.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_lockspace._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_lockspace._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_lockspace._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_attr_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_attrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_attr_control to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_attr_event to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_attr_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_attr_nodir to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_attr_recover_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_attr_recover_nodeid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_uevent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_uevent._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_uevent._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_uevent._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @release_lockspace._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @release_lockspace._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @release_lockspace._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_lockspace_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @ls_count, align 4
  tail call void @__mutex_init(ptr noundef nonnull @ls_lock, ptr noundef nonnull @.str, ptr noundef nonnull @dlm_lockspace_init.__key) #15
  store volatile ptr @lslist, ptr @lslist, align 4
  store ptr @lslist, ptr getelementptr inbounds (%struct.list_head, ptr @lslist, i32 0, i32 1), align 4
  tail call void @__raw_spin_lock_init(ptr noundef nonnull @lslist_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @dlm_lockspace_init.__key.1, i16 noundef signext 3) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kernel_kobj to i32))
  %0 = load ptr, ptr @kernel_kobj, align 4
  %call3 = tail call ptr @kset_create_and_add(ptr noundef nonnull @.str.3, ptr noundef nonnull @dlm_uevent_ops, ptr noundef %0) #15
  store ptr %call3, ptr @dlm_kset, align 4
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end5, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #18
  br label %return

return:                                           ; preds = %do.end5, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %do.end5 ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_lockspace_exit() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dlm_kset, align 4
  tail call void @kset_unregister(ptr noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kset_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dlm_find_lockspace_global(i32 noundef %id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @lslist_lock) #15
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %ls.0.in = phi ptr [ @lslist, %entry ], [ %ls.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %ls.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %ls.0 = load ptr, ptr %ls.0.in, align 4
  %cmp.not = icmp eq ptr %ls.0, @lslist
  br i1 %cmp.not, label %for.cond.out_crit_edge, label %for.body

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.body:                                         ; preds = %for.cond
  %ls_global_id = getelementptr inbounds %struct.dlm_ls, ptr %ls.0, i32 0, i32 2
  %1 = ptrtoint ptr %ls_global_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ls_global_id, align 4
  %cmp1 = icmp eq i32 %2, %id
  br i1 %cmp1, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %ls_count = getelementptr inbounds %struct.dlm_ls, ptr %ls.0, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ls_count, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %ls_count, i32 1, i32 3, i32 1) #15
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ls_count, ptr %ls_count, i32 1, ptr elementtype(i32) %ls_count) #15, !srcloc !235
  br label %out

out:                                              ; preds = %if.then, %for.cond.out_crit_edge
  %ls.1 = phi ptr [ %ls.0, %if.then ], [ null, %for.cond.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @lslist_lock) #15
  ret ptr %ls.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dlm_find_lockspace_local(ptr noundef readnone %lockspace) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @lslist_lock) #15
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %ls.0.in = phi ptr [ @lslist, %entry ], [ %ls.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %ls.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %ls.0 = load ptr, ptr %ls.0.in, align 4
  %cmp.not = icmp eq ptr %ls.0, @lslist
  br i1 %cmp.not, label %for.cond.out_crit_edge, label %for.body

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.body:                                         ; preds = %for.cond
  %ls_local_handle = getelementptr inbounds %struct.dlm_ls, ptr %ls.0, i32 0, i32 1
  %1 = ptrtoint ptr %ls_local_handle to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ls_local_handle, align 8
  %cmp1 = icmp eq ptr %2, %lockspace
  br i1 %cmp1, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %ls_count = getelementptr inbounds %struct.dlm_ls, ptr %ls.0, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ls_count, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %ls_count, i32 1, i32 3, i32 1) #15
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ls_count, ptr %ls_count, i32 1, ptr elementtype(i32) %ls_count) #15, !srcloc !235
  br label %out

out:                                              ; preds = %if.then, %for.cond.out_crit_edge
  %ls.1 = phi ptr [ %ls.0, %if.then ], [ null, %for.cond.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @lslist_lock) #15
  ret ptr %ls.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dlm_find_lockspace_device(i32 noundef %minor) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @lslist_lock) #15
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %ls.0.in = phi ptr [ @lslist, %entry ], [ %ls.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %ls.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %ls.0 = load ptr, ptr %ls.0.in, align 4
  %cmp.not = icmp eq ptr %ls.0, @lslist
  br i1 %cmp.not, label %for.cond.out_crit_edge, label %for.body

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.body:                                         ; preds = %for.cond
  %ls_device = getelementptr inbounds %struct.dlm_ls, ptr %ls.0, i32 0, i32 53
  %1 = ptrtoint ptr %ls_device to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ls_device, align 8
  %cmp2 = icmp eq i32 %2, %minor
  br i1 %cmp2, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %ls_count = getelementptr inbounds %struct.dlm_ls, ptr %ls.0, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ls_count, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %ls_count, i32 1, i32 3, i32 1) #15
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ls_count, ptr %ls_count, i32 1, ptr elementtype(i32) %ls_count) #15, !srcloc !235
  br label %out

out:                                              ; preds = %if.then, %for.cond.out_crit_edge
  %ls.1 = phi ptr [ %ls.0, %if.then ], [ null, %for.cond.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @lslist_lock) #15
  ret ptr %ls.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_put_lockspace(ptr noundef %ls) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_count = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ls_count, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !236
  tail call void @llvm.prefetch.p0(ptr %ls_count, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ls_count, ptr %ls_count, i32 1, ptr elementtype(i32) %ls_count) #15, !srcloc !237
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %ls_count_wait = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %ls_count_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_new_lockspace(ptr nocapture noundef readonly %name, ptr noundef %cluster, i32 noundef %flags, i32 noundef %lvblen, ptr noundef %ops, ptr noundef %ops_arg, ptr noundef writeonly %ops_result, ptr nocapture noundef writeonly %lockspace) local_unnamed_addr #3 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ls_lock, i32 noundef 0) #15
  %0 = load i32, ptr @ls_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

if.then:                                          ; preds = %entry
  %call.i.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @dlm_scand, ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str.18) #15
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end, label %dlm_scand_start.exit.thread.i

dlm_scand_start.exit.thread.i:                    ; preds = %if.then
  %call2.i.i = tail call i32 @wake_up_process(ptr noundef %call.i.i) #15
  store ptr %call.i.i, ptr @scand_task, align 4
  %call2.i = tail call i32 @dlm_midcomms_start() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %dlm_scand_start.exit.thread.i.if.end3_crit_edge, label %if.end.thread24

dlm_scand_start.exit.thread.i.if.end3_crit_edge:  ; preds = %dlm_scand_start.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

if.end.thread24:                                  ; preds = %dlm_scand_start.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #17
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call2.i) #18
  %1 = load ptr, ptr @scand_task, align 4
  %call.i15.i = tail call i32 @kthread_stop(ptr noundef %1) #15
  br label %out

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %call.i.i to i32
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %2) #18
  br label %out

if.end3:                                          ; preds = %dlm_scand_start.exit.thread.i.if.end3_crit_edge, %entry.if.end3_crit_edge
  %call.i = tail call i32 @strlen(ptr noundef %name) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, 0
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %if.end3.if.end7thread-pre-split_crit_edge, label %if.end.i

if.end3.if.end7thread-pre-split_crit_edge:        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7thread-pre-split

if.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lvblen)
  %tobool.not.i = icmp ne i32 %lvblen, 0
  %3 = and i32 %lvblen, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not.i16 = icmp eq i32 %3, 0
  %or.cond513.i = and i1 %tobool.not.i, %tobool3.not.i16
  br i1 %or.cond513.i, label %if.end5.i, label %if.end.i.if.end7thread-pre-split_crit_edge

if.end.i.if.end7thread-pre-split_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7thread-pre-split

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call zeroext i1 @try_module_get(ptr noundef null) #15
  br i1 %call6.i, label %if.end8.i, label %if.end5.i.if.end7thread-pre-split_crit_edge

if.end5.i.if.end7thread-pre-split_crit_edge:      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7thread-pre-split

if.end8.i:                                        ; preds = %if.end5.i
  %call9.i17 = tail call i32 @dlm_user_daemon_available() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i17)
  %tobool10.not.i = icmp eq i32 %call9.i17, 0
  br i1 %tobool10.not.i, label %do.end.i18, label %if.end13.i

do.end.i18:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #18
  br label %new_lockspace.exit

if.end13.i:                                       ; preds = %if.end8.i
  %tobool14.not.i = icmp eq ptr %ops, null
  %tobool15.not.i = icmp eq ptr %ops_result, null
  %or.cond514.i = or i1 %tobool14.not.i, %tobool15.not.i
  br i1 %or.cond514.i, label %if.end13.i.if.end20.i_crit_edge, label %if.then16.i

if.end13.i.if.end20.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 13) to i32))
  %4 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool17.not.i = icmp eq i32 %4, 0
  %..i = select i1 %tobool17.not.i, i32 -95, i32 0
  %5 = ptrtoint ptr %ops_result to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %..i, ptr %ops_result, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then16.i, %if.end13.i.if.end20.i_crit_edge
  %tobool21.not.i = icmp eq ptr %cluster, null
  br i1 %tobool21.not.i, label %if.end28.thread.i, label %if.end28.i

if.end28.thread.i:                                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #17
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 14)) #18
  br label %if.end41.i

if.end28.i:                                       ; preds = %if.end20.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 13) to i32))
  %6 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool29.not.i = icmp eq i32 %6, 0
  br i1 %tobool29.not.i, label %if.end28.i.if.end41.i_crit_edge, label %land.lhs.true32.i

if.end28.i.if.end41.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41.i

land.lhs.true32.i:                                ; preds = %if.end28.i
  %call33.i = tail call i32 @strncmp(ptr noundef nonnull %cluster, ptr noundef getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 14), i32 noundef 64) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %land.lhs.true32.i.if.end41.i_crit_edge, label %do.end38.i

land.lhs.true32.i.if.end41.i_crit_edge:           ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41.i

do.end38.i:                                       ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #17
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 14), ptr noundef nonnull %cluster) #18
  br label %new_lockspace.exit

if.end41.i:                                       ; preds = %land.lhs.true32.i.if.end41.i_crit_edge, %if.end28.i.if.end41.i_crit_edge, %if.end28.thread.i
  tail call void @_raw_spin_lock(ptr noundef nonnull @lslist_lock) #15
  %ls.0564.i = load ptr, ptr @lslist, align 4
  %cmp43.not565.i = icmp eq ptr %ls.0564.i, @lslist
  br i1 %cmp43.not565.i, label %if.end41.i.if.end88.i_crit_edge, label %if.end41.i.for.body.i_crit_edge

if.end41.i.for.body.i_crit_edge:                  ; preds = %if.end41.i
  br label %for.body.i

if.end41.i.if.end88.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end41.i.for.body.i_crit_edge
  %ls.0566.i = phi ptr [ %ls.0.i, %for.inc.i.for.body.i_crit_edge ], [ %ls.0564.i, %if.end41.i.for.body.i_crit_edge ]
  %ls_create_count.i = getelementptr inbounds %struct.dlm_ls, ptr %ls.0566.i, i32 0, i32 8
  %7 = ptrtoint ptr %ls_create_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ls_create_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp44.i = icmp slt i32 %8, 1
  br i1 %cmp44.i, label %do.end57.i, label %for.body.i.if.end63.i_crit_edge, !prof !239

for.body.i.if.end63.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end63.i

do.end57.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 456, i32 noundef 9, ptr noundef null) #15
  br label %if.end63.i

if.end63.i:                                       ; preds = %do.end57.i, %for.body.i.if.end63.i_crit_edge
  %ls_namelen.i = getelementptr inbounds %struct.dlm_ls, ptr %ls.0566.i, i32 0, i32 90
  %9 = ptrtoint ptr %ls_namelen.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ls_namelen.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %call.i)
  %cmp71.not.i = icmp eq i32 %10, %call.i
  br i1 %cmp71.not.i, label %if.end73.i, label %if.end63.i.for.inc.i_crit_edge

if.end63.i.for.inc.i_crit_edge:                   ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end73.i:                                       ; preds = %if.end63.i
  %ls_name.i = getelementptr inbounds %struct.dlm_ls, ptr %ls.0566.i, i32 0, i32 91
  %bcmp.i = tail call i32 @bcmp(ptr %ls_name.i, ptr %name, i32 %call.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool75.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool75.not.i, label %if.end77.i, label %if.end73.i.for.inc.i_crit_edge

if.end73.i.for.inc.i_crit_edge:                   ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end77.i:                                       ; preds = %if.end73.i
  %and.i = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool78.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool78.not.i, label %if.end80.i, label %if.end77.i.for.end.thread.i_crit_edge

if.end77.i.for.end.thread.i_crit_edge:            ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.thread.i

if.end80.i:                                       ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #17
  %ls_create_count.i.le = getelementptr inbounds %struct.dlm_ls, ptr %ls.0566.i, i32 0, i32 8
  %11 = ptrtoint ptr %ls_create_count.i.le to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ls_create_count.i.le, align 4
  %inc.i = add i32 %12, 1
  store i32 %inc.i, ptr %ls_create_count.i.le, align 4
  %13 = ptrtoint ptr %lockspace to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ls.0566.i, ptr %lockspace, align 4
  br label %for.end.thread.i

for.inc.i:                                        ; preds = %if.end73.i.for.inc.i_crit_edge, %if.end63.i.for.inc.i_crit_edge
  %14 = ptrtoint ptr %ls.0566.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %ls.0.i = load ptr, ptr %ls.0566.i, align 4
  %cmp43.not.i = icmp eq ptr %ls.0.i, @lslist
  br i1 %cmp43.not.i, label %for.inc.i.if.end88.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.if.end88.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88.i

for.end.thread.i:                                 ; preds = %if.end80.i, %if.end77.i.for.end.thread.i_crit_edge
  %error.0.ph.i = phi i32 [ -17, %if.end77.i.for.end.thread.i_crit_edge ], [ 1, %if.end80.i ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @lslist_lock) #15
  br label %new_lockspace.exit

if.end88.i:                                       ; preds = %for.inc.i.if.end88.i_crit_edge, %if.end41.i.if.end88.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @lslist_lock) #15
  %add.i = add i32 %call.i, 3248
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3392) #20
  %tobool90.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool90.not.i, label %if.end88.i.new_lockspace.exit_crit_edge, label %if.end92.i

if.end88.i.new_lockspace.exit_crit_edge:          ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %new_lockspace.exit

if.end92.i:                                       ; preds = %if.end88.i
  %ls_name93.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 91
  %15 = call ptr @memcpy(ptr %ls_name93.i, ptr %name, i32 %call.i)
  %ls_namelen95.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 90
  %16 = ptrtoint ptr %ls_namelen95.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call.i, ptr %ls_namelen95.i, align 8
  %ls_lvblen.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %ls_lvblen.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %lvblen, ptr %ls_lvblen.i, align 8
  %ls_count.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ls_count.i, i32 noundef 4) #15
  %18 = ptrtoint ptr %ls_count.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 0, ptr %ls_count.i, align 4
  %ls_count_wait.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %ls_count_wait.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @new_lockspace.__key) #15
  %ls_flags.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 9
  %19 = ptrtoint ptr %ls_flags.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %ls_flags.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %ls_scan_time.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 10
  %21 = ptrtoint ptr %ls_scan_time.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %ls_scan_time.i, align 4
  br i1 %tobool14.not.i, label %if.end92.i.if.end103.i_crit_edge, label %land.lhs.true100.i

if.end92.i.if.end103.i_crit_edge:                 ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end103.i

land.lhs.true100.i:                               ; preds = %if.end92.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 13) to i32))
  %22 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool101.not.i = icmp eq i32 %22, 0
  br i1 %tobool101.not.i, label %land.lhs.true100.i.if.end103.i_crit_edge, label %if.then102.i

land.lhs.true100.i.if.end103.i_crit_edge:         ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end103.i

if.then102.i:                                     ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #17
  %ls_ops.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 88
  %23 = ptrtoint ptr %ls_ops.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %ops, ptr %ls_ops.i, align 32
  %ls_ops_arg.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 89
  %24 = ptrtoint ptr %ls_ops_arg.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %ops_arg, ptr %ls_ops_arg.i, align 4
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.then102.i, %land.lhs.true100.i.if.end103.i_crit_edge, %if.end92.i.if.end103.i_crit_edge
  %and104.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104.i)
  %tobool105.not.i = icmp eq i32 %and104.i, 0
  br i1 %tobool105.not.i, label %if.end103.i.if.end108.i_crit_edge, label %if.then106.i

if.end103.i.if.end108.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end108.i

if.then106.i:                                     ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 8, ptr noundef %ls_flags.i) #15
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.then106.i, %if.end103.i.if.end108.i_crit_edge
  %and109.i = and i32 %flags, -15
  %ls_exflags.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %ls_exflags.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and109.i, ptr %ls_exflags.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 2) to i32))
  %26 = load volatile i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 2), align 4
  %ls_rsbtbl_size.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 15
  %27 = ptrtoint ptr %ls_rsbtbl_size.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %ls_rsbtbl_size.i, align 4
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %26, i32 56) #15
  %29 = extractvalue { i32, i1 } %28, 1
  %30 = extractvalue { i32, i1 } %28, 0
  %retval.0.i.i = select i1 %29, i32 -1, i32 %30
  %call115.i = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i.i) #20
  %ls_rsbtbl.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 14
  %31 = ptrtoint ptr %ls_rsbtbl.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call115.i, ptr %ls_rsbtbl.i, align 16
  %tobool117.not.i = icmp eq ptr %call115.i, null
  br i1 %tobool117.not.i, label %if.end108.i.if.else341.i_crit_edge, label %for.cond120.preheader.i

if.end108.i.if.else341.i_crit_edge:               ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else341.i

for.cond120.preheader.i:                          ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp121567.i = icmp sgt i32 %26, 0
  br i1 %cmp121567.i, label %for.cond120.preheader.i.for.body122.i_crit_edge, label %for.cond120.preheader.i.do.body136.i_crit_edge

for.cond120.preheader.i.do.body136.i_crit_edge:   ; preds = %for.cond120.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body136.i

for.cond120.preheader.i.for.body122.i_crit_edge:  ; preds = %for.cond120.preheader.i
  br label %for.body122.i

for.body122.i:                                    ; preds = %for.body122.i.for.body122.i_crit_edge, %for.cond120.preheader.i.for.body122.i_crit_edge
  %i.0568.i = phi i32 [ %inc134.i, %for.body122.i.for.body122.i_crit_edge ], [ 0, %for.cond120.preheader.i.for.body122.i_crit_edge ]
  %32 = ptrtoint ptr %ls_rsbtbl.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ls_rsbtbl.i, align 16
  %arrayidx.i = getelementptr %struct.dlm_rsbtable, ptr %33, i32 %i.0568.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %arrayidx.i, align 4
  %35 = load ptr, ptr %ls_rsbtbl.i, align 16
  %toss.i = getelementptr %struct.dlm_rsbtable, ptr %35, i32 %i.0568.i, i32 1
  %36 = ptrtoint ptr %toss.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %toss.i, align 4
  %37 = load ptr, ptr %ls_rsbtbl.i, align 16
  %lock.i = getelementptr %struct.dlm_rsbtable, ptr %37, i32 %i.0568.i, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @new_lockspace.__key.28, i16 noundef signext 3) #15
  %inc134.i = add nuw nsw i32 %i.0568.i, 1
  %exitcond.not.i = icmp eq i32 %inc134.i, %26
  br i1 %exitcond.not.i, label %for.body122.i.do.body136.i_crit_edge, label %for.body122.i.for.body122.i_crit_edge

for.body122.i.for.body122.i_crit_edge:            ; preds = %for.body122.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body122.i

for.body122.i.do.body136.i_crit_edge:             ; preds = %for.body122.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body136.i

do.body136.i:                                     ; preds = %for.body122.i.do.body136.i_crit_edge, %for.cond120.preheader.i.do.body136.i_crit_edge
  %ls_remove_spin.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 25
  tail call void @__raw_spin_lock_init(ptr noundef %ls_remove_spin.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @new_lockspace.__key.30, i16 noundef signext 3) #15
  %ls_remove_wait.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 26
  tail call void @__init_waitqueue_head(ptr noundef %ls_remove_wait.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @new_lockspace.__key.32) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i524.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 65) #21
  %arrayidx147.i = getelementptr %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 28, i32 0
  %39 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i524.i, ptr %arrayidx147.i, align 32
  %tobool150.not.i = icmp eq ptr %call7.i.i524.i, null
  br i1 %tobool150.not.i, label %do.body136.i.out_rsbtbl.i_crit_edge, label %for.cond143.i

do.body136.i.out_rsbtbl.i_crit_edge:              ; preds = %do.body136.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_rsbtbl.i

for.cond143.i:                                    ; preds = %do.body136.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i524.1.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 65) #21
  %arrayidx147.1.i = getelementptr %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 28, i32 1
  %41 = ptrtoint ptr %arrayidx147.1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i524.1.i, ptr %arrayidx147.1.i, align 4
  %tobool150.not.1.i = icmp eq ptr %call7.i.i524.1.i, null
  br i1 %tobool150.not.1.i, label %for.cond143.i.out_rsbtbl.i_crit_edge, label %for.cond143.1.i

for.cond143.i.out_rsbtbl.i_crit_edge:             ; preds = %for.cond143.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_rsbtbl.i

for.cond143.1.i:                                  ; preds = %for.cond143.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %42 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i524.2.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3520, i32 noundef 65) #21
  %arrayidx147.2.i = getelementptr %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 28, i32 2
  %43 = ptrtoint ptr %arrayidx147.2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i524.2.i, ptr %arrayidx147.2.i, align 8
  %tobool150.not.2.i = icmp eq ptr %call7.i.i524.2.i, null
  br i1 %tobool150.not.2.i, label %for.cond143.1.i.out_rsbtbl.i_crit_edge, label %for.cond143.2.i

for.cond143.1.i.out_rsbtbl.i_crit_edge:           ; preds = %for.cond143.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_rsbtbl.i

for.cond143.2.i:                                  ; preds = %for.cond143.1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i524.3.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3520, i32 noundef 65) #21
  %arrayidx147.3.i = getelementptr %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 28, i32 3
  %45 = ptrtoint ptr %arrayidx147.3.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call7.i.i524.3.i, ptr %arrayidx147.3.i, align 4
  %tobool150.not.3.i = icmp eq ptr %call7.i.i524.3.i, null
  br i1 %tobool150.not.3.i, label %for.cond143.2.i.out_rsbtbl.i_crit_edge, label %for.cond143.3.i

for.cond143.2.i.out_rsbtbl.i_crit_edge:           ; preds = %for.cond143.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_rsbtbl.i

for.cond143.3.i:                                  ; preds = %for.cond143.2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %46 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i524.4.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3520, i32 noundef 65) #21
  %arrayidx147.4.i = getelementptr %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 28, i32 4
  %47 = ptrtoint ptr %arrayidx147.4.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call7.i.i524.4.i, ptr %arrayidx147.4.i, align 16
  %tobool150.not.4.i = icmp eq ptr %call7.i.i524.4.i, null
  br i1 %tobool150.not.4.i, label %for.cond143.3.i.out_rsbtbl.i_crit_edge, label %for.cond143.4.i

for.cond143.3.i.out_rsbtbl.i_crit_edge:           ; preds = %for.cond143.3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_rsbtbl.i

for.cond143.4.i:                                  ; preds = %for.cond143.3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %48 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i524.5.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3520, i32 noundef 65) #21
  %arrayidx147.5.i = getelementptr %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 28, i32 5
  %49 = ptrtoint ptr %arrayidx147.5.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call7.i.i524.5.i, ptr %arrayidx147.5.i, align 4
  %tobool150.not.5.i = icmp eq ptr %call7.i.i524.5.i, null
  br i1 %tobool150.not.5.i, label %for.cond143.4.i.out_rsbtbl.i_crit_edge, label %for.cond143.5.i

for.cond143.4.i.out_rsbtbl.i_crit_edge:           ; preds = %for.cond143.4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_rsbtbl.i

for.cond143.5.i:                                  ; preds = %for.cond143.4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %50 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i524.6.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 3520, i32 noundef 65) #21
  %arrayidx147.6.i = getelementptr %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 28, i32 6
  %51 = ptrtoint ptr %arrayidx147.6.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call7.i.i524.6.i, ptr %arrayidx147.6.i, align 8
  %tobool150.not.6.i = icmp eq ptr %call7.i.i524.6.i, null
  br i1 %tobool150.not.6.i, label %for.cond143.5.i.out_rsbtbl.i_crit_edge, label %for.cond143.6.i

for.cond143.5.i.out_rsbtbl.i_crit_edge:           ; preds = %for.cond143.5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_rsbtbl.i

for.cond143.6.i:                                  ; preds = %for.cond143.5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %52 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i524.7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3520, i32 noundef 65) #21
  %arrayidx147.7.i = getelementptr %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 28, i32 7
  %53 = ptrtoint ptr %arrayidx147.7.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call7.i.i524.7.i, ptr %arrayidx147.7.i, align 4
  %tobool150.not.7.i = icmp eq ptr %call7.i.i524.7.i, null
  br i1 %tobool150.not.7.i, label %for.cond143.6.i.out_rsbtbl.i_crit_edge, label %for.cond143.7.i

for.cond143.6.i.out_rsbtbl.i_crit_edge:           ; preds = %for.cond143.6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_rsbtbl.i

for.cond143.7.i:                                  ; preds = %for.cond143.6.i
  %ls_lkbidr.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %ls_lkbidr.i, ptr noundef nonnull @.str.87, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #15
  %xa_flags.i.i.i.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 12, i32 0, i32 1
  %54 = ptrtoint ptr %xa_flags.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 67108868, ptr %xa_flags.i.i.i.i, align 4
  %xa_head.i.i.i.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 12, i32 0, i32 2
  %55 = ptrtoint ptr %xa_head.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %xa_head.i.i.i.i, align 8
  %idr_base.i.i.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 12, i32 1
  %56 = ptrtoint ptr %idr_base.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %idr_base.i.i.i, align 4
  %idr_next.i.i.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 12, i32 2
  %57 = ptrtoint ptr %idr_next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %idr_next.i.i.i, align 32
  %ls_lkbidr_spin.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %ls_lkbidr_spin.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @new_lockspace.__key.34, i16 noundef signext 3) #15
  %ls_waiters.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 17
  %58 = ptrtoint ptr %ls_waiters.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %ls_waiters.i, ptr %ls_waiters.i, align 4
  %prev.i.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 17, i32 1
  %59 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %ls_waiters.i, ptr %prev.i.i, align 8
  %ls_waiters_mutex.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %ls_waiters_mutex.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @new_lockspace.__key.36) #15
  %ls_orphans.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 19
  %60 = ptrtoint ptr %ls_orphans.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %ls_orphans.i, ptr %ls_orphans.i, align 8
  %prev.i526.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 19, i32 1
  %61 = ptrtoint ptr %prev.i526.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %ls_orphans.i, ptr %prev.i526.i, align 4
  %ls_orphans_mutex.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 18
  tail call void @__mutex_init(ptr noundef %ls_orphans_mutex.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @new_lockspace.__key.38) #15
  %ls_timeout.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 21
  %62 = ptrtoint ptr %ls_timeout.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %ls_timeout.i, ptr %ls_timeout.i, align 4
  %prev.i527.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 21, i32 1
  %63 = ptrtoint ptr %prev.i527.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %ls_timeout.i, ptr %prev.i527.i, align 128
  %ls_timeout_mutex.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 20
  tail call void @__mutex_init(ptr noundef %ls_timeout_mutex.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @new_lockspace.__key.40) #15
  %ls_new_rsb.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 24
  %64 = ptrtoint ptr %ls_new_rsb.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %ls_new_rsb.i, ptr %ls_new_rsb.i, align 4
  %prev.i528.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 24, i32 1
  %65 = ptrtoint ptr %prev.i528.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %ls_new_rsb.i, ptr %prev.i528.i, align 8
  %ls_new_rsb_spin.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 22
  tail call void @__raw_spin_lock_init(ptr noundef %ls_new_rsb_spin.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @new_lockspace.__key.42, i16 noundef signext 3) #15
  %ls_nodes.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 31
  %66 = ptrtoint ptr %ls_nodes.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %ls_nodes.i, ptr %ls_nodes.i, align 4
  %prev.i529.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 31, i32 1
  %67 = ptrtoint ptr %prev.i529.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %ls_nodes.i, ptr %prev.i529.i, align 8
  %ls_nodes_gone.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 32
  %68 = ptrtoint ptr %ls_nodes_gone.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %ls_nodes_gone.i, ptr %ls_nodes_gone.i, align 4
  %prev.i530.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 32, i32 1
  %69 = ptrtoint ptr %prev.i530.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %ls_nodes_gone.i, ptr %prev.i530.i, align 16
  %ls_num_nodes.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 33
  %ls_node_array.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 36
  %ls_stub_rsb.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 41
  %70 = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 41, i32 1
  %71 = call ptr @memset(ptr %70, i32 0, i32 276)
  %72 = call ptr @memset(ptr %ls_num_nodes.i, i32 0, i32 16)
  %73 = ptrtoint ptr %ls_stub_rsb.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call9.i.i.i, ptr %ls_stub_rsb.i, align 4
  %ls_debug_rsb_dentry.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 44
  %74 = ptrtoint ptr %ls_debug_rsb_dentry.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %ls_debug_rsb_dentry.i, align 64
  %ls_debug_waiters_dentry.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 45
  %75 = ptrtoint ptr %ls_debug_waiters_dentry.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %ls_debug_waiters_dentry.i, align 4
  %ls_uevent_wait.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 49
  tail call void @__init_waitqueue_head(ptr noundef %ls_uevent_wait.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @new_lockspace.__key.44) #15
  %ls_uevent_result.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 50
  %76 = ptrtoint ptr %ls_uevent_result.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %ls_uevent_result.i, align 8
  %ls_members_done.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 51
  %77 = ptrtoint ptr %ls_members_done.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %ls_members_done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 51, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.88, ptr noundef nonnull @init_completion.__key) #15
  %ls_members_result.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 52
  %78 = ptrtoint ptr %ls_members_result.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %ls_members_result.i, align 4
  %ls_cb_mutex.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 55
  tail call void @__mutex_init(ptr noundef %ls_cb_mutex.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @new_lockspace.__key.46) #15
  %ls_cb_delay.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 56
  %79 = ptrtoint ptr %ls_cb_delay.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %ls_cb_delay.i, ptr %ls_cb_delay.i, align 16
  %prev.i531.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 56, i32 1
  %80 = ptrtoint ptr %prev.i531.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %ls_cb_delay.i, ptr %prev.i531.i, align 4
  %ls_recoverd_task.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 58
  %81 = ptrtoint ptr %ls_recoverd_task.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %ls_recoverd_task.i, align 8
  %ls_recoverd_active.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 59
  tail call void @__mutex_init(ptr noundef %ls_recoverd_active.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @new_lockspace.__key.48) #15
  %ls_recover_lock.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 60
  tail call void @__raw_spin_lock_init(ptr noundef %ls_recover_lock.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @new_lockspace.__key.50, i16 noundef signext 3) #15
  %ls_rcom_spin.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 77
  tail call void @__raw_spin_lock_init(ptr noundef %ls_rcom_spin.i, ptr noundef nonnull @.str.53, ptr noundef nonnull @new_lockspace.__key.52, i16 noundef signext 3) #15
  %ls_rcom_seq.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 76
  tail call void @get_random_bytes(ptr noundef %ls_rcom_seq.i, i32 noundef 8) #15
  %ls_recover_status.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 62
  %82 = ptrtoint ptr %ls_recover_status.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %ls_recover_status.i, align 8
  %ls_recover_seq.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 63
  %83 = ptrtoint ptr %ls_recover_seq.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 0, ptr %ls_recover_seq.i, align 32
  %ls_recover_args.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 64
  %84 = ptrtoint ptr %ls_recover_args.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %ls_recover_args.i, align 8
  %ls_in_recovery.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 65
  tail call void @__init_rwsem(ptr noundef %ls_in_recovery.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @new_lockspace.__key.54) #15
  %ls_recv_active.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 66
  tail call void @__init_rwsem(ptr noundef %ls_recv_active.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @new_lockspace.__key.56) #15
  %ls_requestqueue.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 67
  %85 = ptrtoint ptr %ls_requestqueue.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %ls_requestqueue.i, ptr %ls_requestqueue.i, align 4
  %prev.i532.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 67, i32 1
  %86 = ptrtoint ptr %prev.i532.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %ls_requestqueue.i, ptr %prev.i532.i, align 16
  %ls_requestqueue_cnt.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 68
  %call.i.i515.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ls_requestqueue_cnt.i, i32 noundef 4) #15
  %87 = ptrtoint ptr %ls_requestqueue_cnt.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile i32 0, ptr %ls_requestqueue_cnt.i, align 4
  %ls_requestqueue_wait.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 69
  tail call void @__init_waitqueue_head(ptr noundef %ls_requestqueue_wait.i, ptr noundef nonnull @.str.59, ptr noundef nonnull @new_lockspace.__key.58) #15
  %ls_requestqueue_mutex.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 70
  tail call void @__mutex_init(ptr noundef %ls_requestqueue_mutex.i, ptr noundef nonnull @.str.61, ptr noundef nonnull @new_lockspace.__key.60) #15
  %ls_clear_proc_locks.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 85
  tail call void @__mutex_init(ptr noundef %ls_clear_proc_locks.i, ptr noundef nonnull @.str.63, ptr noundef nonnull @new_lockspace.__key.62) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %88 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %88, i32 noundef 3136, i32 noundef 4096) #21
  %ls_recover_buf.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 71
  %89 = ptrtoint ptr %ls_recover_buf.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call7.i.i, ptr %ls_recover_buf.i, align 8
  %tobool208.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool208.not.i, label %for.cond143.7.i.out_lkbidr.i_crit_edge, label %if.end210.i

for.cond143.7.i.out_lkbidr.i_crit_edge:           ; preds = %for.cond143.7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_lkbidr.i

if.end210.i:                                      ; preds = %for.cond143.7.i
  %ls_slot.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 37
  %ls_recover_list.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 78
  %90 = call ptr @memset(ptr %ls_slot.i, i32 0, i32 16)
  %91 = ptrtoint ptr %ls_recover_list.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %ls_recover_list.i, ptr %ls_recover_list.i, align 4
  %prev.i533.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 78, i32 1
  %92 = ptrtoint ptr %prev.i533.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %ls_recover_list.i, ptr %prev.i533.i, align 8
  %ls_recover_list_lock.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 79
  tail call void @__raw_spin_lock_init(ptr noundef %ls_recover_list_lock.i, ptr noundef nonnull @.str.65, ptr noundef nonnull @new_lockspace.__key.64, i16 noundef signext 3) #15
  %ls_recover_idr.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 81
  tail call void @__raw_spin_lock_init(ptr noundef %ls_recover_idr.i, ptr noundef nonnull @.str.87, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #15
  %xa_flags.i.i.i534.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 81, i32 0, i32 1
  %93 = ptrtoint ptr %xa_flags.i.i.i534.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 67108868, ptr %xa_flags.i.i.i534.i, align 8
  %xa_head.i.i.i535.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 81, i32 0, i32 2
  %94 = ptrtoint ptr %xa_head.i.i.i535.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %xa_head.i.i.i535.i, align 4
  %idr_base.i.i536.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 81, i32 1
  %95 = ptrtoint ptr %idr_base.i.i536.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %idr_base.i.i536.i, align 64
  %idr_next.i.i537.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 81, i32 2
  %96 = ptrtoint ptr %idr_next.i.i537.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %idr_next.i.i537.i, align 4
  %ls_recover_idr_lock.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 82
  tail call void @__raw_spin_lock_init(ptr noundef %ls_recover_idr_lock.i, ptr noundef nonnull @.str.67, ptr noundef nonnull @new_lockspace.__key.66, i16 noundef signext 3) #15
  %ls_recover_list_count.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 80
  %97 = ptrtoint ptr %ls_recover_list_count.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %ls_recover_list_count.i, align 8
  %ls_local_handle.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 1
  %98 = ptrtoint ptr %ls_local_handle.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call9.i.i.i, ptr %ls_local_handle.i, align 8
  %ls_wait_general.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 83
  tail call void @__init_waitqueue_head(ptr noundef %ls_wait_general.i, ptr noundef nonnull @.str.69, ptr noundef nonnull @new_lockspace.__key.68) #15
  %ls_root_list.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 86
  %99 = ptrtoint ptr %ls_root_list.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %ls_root_list.i, ptr %ls_root_list.i, align 8
  %prev.i538.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 86, i32 1
  %100 = ptrtoint ptr %prev.i538.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %ls_root_list.i, ptr %prev.i538.i, align 4
  %ls_root_sem.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 87
  tail call void @__init_rwsem(ptr noundef %ls_root_sem.i, ptr noundef nonnull @.str.71, ptr noundef nonnull @new_lockspace.__key.70) #15
  tail call void @_raw_spin_lock(ptr noundef nonnull @lslist_lock) #15
  %ls_create_count225.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 8
  %101 = ptrtoint ptr %ls_create_count225.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 1, ptr %ls_create_count225.i, align 4
  %102 = load ptr, ptr @lslist, align 4
  %call.i.i539.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull @lslist, ptr noundef %102) #15
  br i1 %call.i.i539.i, label %if.end.i.i540.i, label %if.end210.i.list_add.exit.i_crit_edge

if.end210.i.list_add.exit.i_crit_edge:            ; preds = %if.end210.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit.i

if.end.i.i540.i:                                  ; preds = %if.end210.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call9.i.i.i, ptr %prev1.i.i.i, align 4
  %104 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %102, ptr %call9.i.i.i, align 128
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i, i32 0, i32 1
  %105 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @lslist, ptr %prev3.i.i.i, align 4
  store volatile ptr %call9.i.i.i, ptr @lslist, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i540.i, %if.end210.i.list_add.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @lslist_lock) #15
  %and227.i = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and227.i)
  %tobool228.not.i = icmp eq i32 %and227.i, 0
  br i1 %tobool228.not.i, label %list_add.exit.i.do.body242.i_crit_edge, label %if.then229.i

list_add.exit.i.do.body242.i_crit_edge:           ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body242.i

if.then229.i:                                     ; preds = %list_add.exit.i
  %call230.i = tail call i32 @dlm_callback_start(ptr noundef nonnull %call9.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call230.i)
  %tobool231.not.i = icmp eq i32 %call230.i, 0
  br i1 %tobool231.not.i, label %if.then229.i.do.body242.i_crit_edge, label %do.end235.i

if.then229.i.do.body242.i_crit_edge:              ; preds = %if.then229.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body242.i

do.end235.i:                                      ; preds = %if.then229.i
  call void @__sanitizer_cov_trace_pc() #17
  %call239.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %ls_name93.i, i32 noundef %call230.i) #18
  br label %out_delist.i

do.body242.i:                                     ; preds = %if.then229.i.do.body242.i_crit_edge, %list_add.exit.i.do.body242.i_crit_edge
  %ls_recover_lock_wait.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 84
  tail call void @__init_waitqueue_head(ptr noundef %ls_recover_lock_wait.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @new_lockspace.__key.75) #15
  %call245.i = tail call i32 @dlm_recoverd_start(ptr noundef nonnull %call9.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call245.i)
  %tobool246.not.i = icmp eq i32 %call245.i, 0
  br i1 %tobool246.not.i, label %do.body257.i, label %do.end250.i

do.end250.i:                                      ; preds = %do.body242.i
  call void @__sanitizer_cov_trace_pc() #17
  %call254.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %ls_name93.i, i32 noundef %call245.i) #18
  br label %out_callback.i

do.body257.i:                                     ; preds = %do.body242.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 626) #15
  %106 = ptrtoint ptr %ls_flags.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %ls_flags.i, align 8
  %108 = and i32 %107, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool265.not.i = icmp eq i32 %108, 0
  br i1 %tobool265.not.i, label %if.end267.i, label %do.body257.i.do.end280.i_crit_edge

do.body257.i.do.end280.i_crit_edge:               ; preds = %do.body257.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end280.i

if.end267.i:                                      ; preds = %do.body257.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #15
  %109 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #15
  %call270570.i = call i32 @prepare_to_wait_event(ptr noundef %ls_recover_lock_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #15
  %110 = ptrtoint ptr %ls_flags.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %ls_flags.i, align 8
  %112 = and i32 %111, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool273.not571.i = icmp eq i32 %112, 0
  br i1 %tobool273.not571.i, label %if.end267.i.cleanup.i_crit_edge, label %if.end267.i.for.end276.i_crit_edge

if.end267.i.for.end276.i_crit_edge:               ; preds = %if.end267.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end276.i

if.end267.i.cleanup.i_crit_edge:                  ; preds = %if.end267.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.end267.i.cleanup.i_crit_edge
  call void @schedule() #15
  %call270.i = call i32 @prepare_to_wait_event(ptr noundef %ls_recover_lock_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #15
  %113 = ptrtoint ptr %ls_flags.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %ls_flags.i, align 8
  %115 = and i32 %114, 4
  %tobool273.not.i = icmp eq i32 %115, 0
  br i1 %tobool273.not.i, label %cleanup.i.cleanup.i_crit_edge, label %cleanup.i.for.end276.i_crit_edge

cleanup.i.for.end276.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end276.i

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

for.end276.i:                                     ; preds = %cleanup.i.for.end276.i_crit_edge, %if.end267.i.for.end276.i_crit_edge
  call void @finish_wait(ptr noundef %ls_recover_lock_wait.i, ptr noundef nonnull %__wq_entry.i) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #15
  br label %do.end280.i

do.end280.i:                                      ; preds = %for.end276.i, %do.body257.i.do.end280.i_crit_edge
  %116 = load ptr, ptr @dlm_kset, align 4
  %ls_kobj.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 11
  %kset.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 11, i32 3
  %117 = ptrtoint ptr %kset.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %116, ptr %kset.i, align 16
  %call284.i = call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %ls_kobj.i, ptr noundef nonnull @dlm_ktype, ptr noundef null, ptr noundef nonnull @.str.80, ptr noundef %ls_name93.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call284.i)
  %tobool285.not.i = icmp eq i32 %call284.i, 0
  br i1 %tobool285.not.i, label %if.end287.i, label %do.end280.i.out_recoverd.i_crit_edge

do.end280.i.out_recoverd.i_crit_edge:             ; preds = %do.end280.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_recoverd.i

if.end287.i:                                      ; preds = %do.end280.i
  %call289.i = call i32 @kobject_uevent(ptr noundef %ls_kobj.i, i32 noundef 0) #15
  %call290.i = call fastcc i32 @do_uevent(ptr noundef nonnull %call9.i.i.i, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call290.i)
  %tobool291.not.i = icmp eq i32 %call290.i, 0
  br i1 %tobool291.not.i, label %if.end293.i, label %if.end287.i.out_recoverd.i_crit_edge

if.end287.i.out_recoverd.i_crit_edge:             ; preds = %if.end287.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_recoverd.i

if.end293.i:                                      ; preds = %if.end287.i
  call void @wait_for_completion(ptr noundef %ls_members_done.i) #15
  %118 = ptrtoint ptr %ls_members_result.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %ls_members_result.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool296.not.i = icmp eq i32 %119, 0
  br i1 %tobool296.not.i, label %if.end298.i, label %out_members.i

if.end298.i:                                      ; preds = %if.end293.i
  call void @dlm_create_debug_file(ptr noundef nonnull %call9.i.i.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %120 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool300.not.i = icmp eq i32 %120, 0
  br i1 %tobool300.not.i, label %if.else309.i, label %if.end298.i.do.end322.sink.split.i_crit_edge

if.end298.i.do.end322.sink.split.i_crit_edge:     ; preds = %if.end298.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end322.sink.split.i

if.else309.i:                                     ; preds = %if.end298.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %121 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool310.not.i = icmp eq i32 %121, 0
  br i1 %tobool310.not.i, label %if.else309.i.if.then6_crit_edge, label %if.else309.i.do.end322.sink.split.i_crit_edge

if.else309.i.do.end322.sink.split.i_crit_edge:    ; preds = %if.else309.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end322.sink.split.i

if.else309.i.if.then6_crit_edge:                  ; preds = %if.else309.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6

do.end322.sink.split.i:                           ; preds = %if.else309.i.do.end322.sink.split.i_crit_edge, %if.end298.i.do.end322.sink.split.i_crit_edge
  %.str.85.sink.i = phi ptr [ @.str.82, %if.end298.i.do.end322.sink.split.i_crit_edge ], [ @.str.85, %if.else309.i.do.end322.sink.split.i_crit_edge ]
  %call318.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.85.sink.i, ptr noundef %ls_name93.i) #18
  br label %if.then6

out_members.i:                                    ; preds = %if.end293.i
  call void @__sanitizer_cov_trace_pc() #17
  %call323.i = call fastcc i32 @do_uevent(ptr noundef nonnull %call9.i.i.i, i32 noundef 0) #15
  call void @dlm_clear_members(ptr noundef nonnull %call9.i.i.i) #15
  %122 = ptrtoint ptr %ls_node_array.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ls_node_array.i, align 64
  call void @kfree(ptr noundef %123) #15
  br label %out_recoverd.i

out_recoverd.i:                                   ; preds = %out_members.i, %if.end287.i.out_recoverd.i_crit_edge, %do.end280.i.out_recoverd.i_crit_edge
  %error.1.i = phi i32 [ %call284.i, %do.end280.i.out_recoverd.i_crit_edge ], [ %call290.i, %if.end287.i.out_recoverd.i_crit_edge ], [ %119, %out_members.i ]
  call void @dlm_recoverd_stop(ptr noundef nonnull %call9.i.i.i) #15
  br label %out_callback.i

out_callback.i:                                   ; preds = %out_recoverd.i, %do.end250.i
  %do_unreg.0.i = phi i32 [ 0, %do.end250.i ], [ 1, %out_recoverd.i ]
  %error.2.i = phi i32 [ %call245.i, %do.end250.i ], [ %error.1.i, %out_recoverd.i ]
  call void @dlm_callback_stop(ptr noundef nonnull %call9.i.i.i) #15
  br label %out_delist.i

out_delist.i:                                     ; preds = %out_callback.i, %do.end235.i
  %do_unreg.1.i = phi i32 [ 0, %do.end235.i ], [ %do_unreg.0.i, %out_callback.i ]
  %error.3.i = phi i32 [ %call230.i, %do.end235.i ], [ %error.2.i, %out_callback.i ]
  call void @_raw_spin_lock(ptr noundef nonnull @lslist_lock) #15
  %call.i.i541.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call9.i.i.i) #15
  br i1 %call.i.i541.i, label %if.end.i.i542.i, label %out_delist.i.list_del.exit.i_crit_edge

out_delist.i.list_del.exit.i_crit_edge:           ; preds = %out_delist.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i

if.end.i.i542.i:                                  ; preds = %out_delist.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i, i32 0, i32 1
  %124 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %prev.i.i.i, align 4
  %126 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %call9.i.i.i, align 128
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %125, ptr %prev1.i.i.i.i, align 4
  %129 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %127, ptr %125, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i542.i, %out_delist.i.list_del.exit.i_crit_edge
  %130 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr inttoptr (i32 256 to ptr), ptr %call9.i.i.i, align 128
  %prev.i543.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i, i32 0, i32 1
  %131 = ptrtoint ptr %prev.i543.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i543.i, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @lslist_lock) #15
  call void @idr_destroy(ptr noundef %ls_recover_idr.i) #15
  %132 = ptrtoint ptr %ls_recover_buf.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ls_recover_buf.i, align 8
  call void @kfree(ptr noundef %133) #15
  br label %out_lkbidr.i

out_lkbidr.i:                                     ; preds = %list_del.exit.i, %for.cond143.7.i.out_lkbidr.i_crit_edge
  %do_unreg.2.i = phi i32 [ %do_unreg.1.i, %list_del.exit.i ], [ 0, %for.cond143.7.i.out_lkbidr.i_crit_edge ]
  %error.4.i = phi i32 [ %error.3.i, %list_del.exit.i ], [ -12, %for.cond143.7.i.out_lkbidr.i_crit_edge ]
  call void @idr_destroy(ptr noundef %ls_lkbidr.i) #15
  br label %out_rsbtbl.i

out_rsbtbl.i:                                     ; preds = %out_lkbidr.i, %for.cond143.6.i.out_rsbtbl.i_crit_edge, %for.cond143.5.i.out_rsbtbl.i_crit_edge, %for.cond143.4.i.out_rsbtbl.i_crit_edge, %for.cond143.3.i.out_rsbtbl.i_crit_edge, %for.cond143.2.i.out_rsbtbl.i_crit_edge, %for.cond143.1.i.out_rsbtbl.i_crit_edge, %for.cond143.i.out_rsbtbl.i_crit_edge, %do.body136.i.out_rsbtbl.i_crit_edge
  %do_unreg.3.i = phi i32 [ %do_unreg.2.i, %out_lkbidr.i ], [ 0, %for.cond143.6.i.out_rsbtbl.i_crit_edge ], [ 0, %for.cond143.5.i.out_rsbtbl.i_crit_edge ], [ 0, %for.cond143.4.i.out_rsbtbl.i_crit_edge ], [ 0, %for.cond143.3.i.out_rsbtbl.i_crit_edge ], [ 0, %for.cond143.2.i.out_rsbtbl.i_crit_edge ], [ 0, %for.cond143.1.i.out_rsbtbl.i_crit_edge ], [ 0, %for.cond143.i.out_rsbtbl.i_crit_edge ], [ 0, %do.body136.i.out_rsbtbl.i_crit_edge ]
  %error.5.i = phi i32 [ %error.4.i, %out_lkbidr.i ], [ -12, %for.cond143.6.i.out_rsbtbl.i_crit_edge ], [ -12, %for.cond143.5.i.out_rsbtbl.i_crit_edge ], [ -12, %for.cond143.4.i.out_rsbtbl.i_crit_edge ], [ -12, %for.cond143.3.i.out_rsbtbl.i_crit_edge ], [ -12, %for.cond143.2.i.out_rsbtbl.i_crit_edge ], [ -12, %for.cond143.1.i.out_rsbtbl.i_crit_edge ], [ -12, %for.cond143.i.out_rsbtbl.i_crit_edge ], [ -12, %do.body136.i.out_rsbtbl.i_crit_edge ]
  %134 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx147.i, align 32
  call void @kfree(ptr noundef %135) #15
  %arrayidx333.1.i = getelementptr %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 28, i32 1
  %136 = ptrtoint ptr %arrayidx333.1.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx333.1.i, align 4
  call void @kfree(ptr noundef %137) #15
  %arrayidx333.2.i = getelementptr %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 28, i32 2
  %138 = ptrtoint ptr %arrayidx333.2.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx333.2.i, align 8
  call void @kfree(ptr noundef %139) #15
  %arrayidx333.3.i = getelementptr %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 28, i32 3
  %140 = ptrtoint ptr %arrayidx333.3.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx333.3.i, align 4
  call void @kfree(ptr noundef %141) #15
  %arrayidx333.4.i = getelementptr %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 28, i32 4
  %142 = ptrtoint ptr %arrayidx333.4.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx333.4.i, align 16
  call void @kfree(ptr noundef %143) #15
  %arrayidx333.5.i = getelementptr %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 28, i32 5
  %144 = ptrtoint ptr %arrayidx333.5.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx333.5.i, align 4
  call void @kfree(ptr noundef %145) #15
  %arrayidx333.6.i = getelementptr %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 28, i32 6
  %146 = ptrtoint ptr %arrayidx333.6.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx333.6.i, align 8
  call void @kfree(ptr noundef %147) #15
  %arrayidx333.7.i = getelementptr %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 28, i32 7
  %148 = ptrtoint ptr %arrayidx333.7.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx333.7.i, align 4
  call void @kfree(ptr noundef %149) #15
  %150 = ptrtoint ptr %ls_rsbtbl.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ls_rsbtbl.i, align 16
  call void @vfree(ptr noundef %151) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_unreg.3.i)
  %tobool338.not.i = icmp eq i32 %do_unreg.3.i, 0
  br i1 %tobool338.not.i, label %out_rsbtbl.i.if.else341.i_crit_edge, label %if.then339.i

out_rsbtbl.i.if.else341.i_crit_edge:              ; preds = %out_rsbtbl.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else341.i

if.then339.i:                                     ; preds = %out_rsbtbl.i
  call void @__sanitizer_cov_trace_pc() #17
  %ls_kobj340.i = getelementptr inbounds %struct.dlm_ls, ptr %call9.i.i.i, i32 0, i32 11
  call void @kobject_put(ptr noundef %ls_kobj340.i) #15
  br label %new_lockspace.exit

if.else341.i:                                     ; preds = %out_rsbtbl.i.if.else341.i_crit_edge, %if.end108.i.if.else341.i_crit_edge
  %error.6562.i = phi i32 [ %error.5.i, %out_rsbtbl.i.if.else341.i_crit_edge ], [ -12, %if.end108.i.if.else341.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #15
  br label %new_lockspace.exit

new_lockspace.exit:                               ; preds = %if.else341.i, %if.then339.i, %if.end88.i.new_lockspace.exit_crit_edge, %for.end.thread.i, %do.end38.i, %do.end.i18
  %error.7.i = phi i32 [ -53, %do.end38.i ], [ %error.5.i, %if.then339.i ], [ %error.6562.i, %if.else341.i ], [ -12, %if.end88.i.new_lockspace.exit_crit_edge ], [ -49, %do.end.i18 ], [ %error.0.ph.i, %for.end.thread.i ]
  call void @module_put(ptr noundef null) #15
  br label %if.end7thread-pre-split

if.then6:                                         ; preds = %do.end322.sink.split.i, %if.else309.i.if.then6_crit_edge
  %152 = ptrtoint ptr %lockspace to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %call9.i.i.i, ptr %lockspace, align 4
  %153 = load i32, ptr @ls_count, align 4
  %inc = add i32 %153, 1
  store i32 %inc, ptr @ls_count, align 4
  br label %if.end7

if.end7thread-pre-split:                          ; preds = %new_lockspace.exit, %if.end5.i.if.end7thread-pre-split_crit_edge, %if.end.i.if.end7thread-pre-split_crit_edge, %if.end3.if.end7thread-pre-split_crit_edge
  %retval.0.i2029.ph = phi i32 [ %error.7.i, %new_lockspace.exit ], [ -22, %if.end3.if.end7thread-pre-split_crit_edge ], [ -22, %if.end.i.if.end7thread-pre-split_crit_edge ], [ -22, %if.end5.i.if.end7thread-pre-split_crit_edge ]
  %.pr = load i32, ptr @ls_count, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end7thread-pre-split, %if.then6
  %154 = phi i32 [ %.pr, %if.end7thread-pre-split ], [ %inc, %if.then6 ]
  %retval.0.i2029 = phi i32 [ %retval.0.i2029.ph, %if.end7thread-pre-split ], [ 0, %if.then6 ]
  %155 = call i32 @llvm.smin.i32(i32 %retval.0.i2029, i32 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool10.not = icmp eq i32 %154, 0
  br i1 %tobool10.not, label %if.then11, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %156 = load ptr, ptr @scand_task, align 4
  %call.i21 = call i32 @kthread_stop(ptr noundef %156) #15
  call void @dlm_midcomms_shutdown() #15
  call void @dlm_lowcomms_stop() #15
  br label %out

out:                                              ; preds = %if.then11, %if.end7.out_crit_edge, %if.end, %if.end.thread24
  %error.1 = phi i32 [ %2, %if.end ], [ %155, %if.end7.out_crit_edge ], [ %155, %if.then11 ], [ %call2.i, %if.end.thread24 ]
  call void @mutex_unlock(ptr noundef nonnull @ls_lock) #15
  ret i32 %error.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_midcomms_shutdown() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lowcomms_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_release_lockspace(ptr noundef readnone %lockspace, i32 noundef %force) local_unnamed_addr #3 align 64 {
entry:
  %__wq_entry.i.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @lslist_lock) #15
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %ls.0.in.i = phi ptr [ @lslist, %entry ], [ %ls.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %ls.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %ls.0.i = load ptr, ptr %ls.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %ls.0.i, @lslist
  br i1 %cmp.not.i, label %dlm_find_lockspace_local.exit.thread, label %for.body.i

dlm_find_lockspace_local.exit.thread:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock(ptr noundef nonnull @lslist_lock) #15
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %ls_local_handle.i = getelementptr inbounds %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %ls_local_handle.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ls_local_handle.i, align 8
  %cmp1.i = icmp eq ptr %2, %lockspace
  br i1 %cmp1.i, label %dlm_find_lockspace_local.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

dlm_find_lockspace_local.exit:                    ; preds = %for.body.i
  %ls_count.i = getelementptr inbounds %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ls_count.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %ls_count.i, i32 1, i32 3, i32 1) #15
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ls_count.i, ptr %ls_count.i, i32 1, ptr elementtype(i32) %ls_count.i) #15, !srcloc !235
  tail call void @_raw_spin_unlock(ptr noundef nonnull @lslist_lock) #15
  %tobool.not = icmp eq ptr %ls.0.i, null
  br i1 %tobool.not, label %dlm_find_lockspace_local.exit.cleanup_crit_edge, label %if.end

dlm_find_lockspace_local.exit.cleanup_crit_edge:  ; preds = %dlm_find_lockspace_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %dlm_find_lockspace_local.exit
  %call.i.i.i13 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ls_count.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !236
  tail call void @llvm.prefetch.p0(ptr %ls_count.i, i32 1, i32 3, i32 1) #15
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ls_count.i, ptr %ls_count.i, i32 1, ptr elementtype(i32) %ls_count.i) #15, !srcloc !237
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i14, label %if.end.dlm_put_lockspace.exit_crit_edge

if.end.dlm_put_lockspace.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %dlm_put_lockspace.exit

if.then.i14:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %ls_count_wait.i = getelementptr inbounds %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %ls_count_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %dlm_put_lockspace.exit

dlm_put_lockspace.exit:                           ; preds = %if.then.i14, %if.end.dlm_put_lockspace.exit_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @ls_lock, i32 noundef 0) #15
  %ls_lkbidr_spin.i.i = getelementptr inbounds %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %ls_lkbidr_spin.i.i) #15
  %5 = zext i32 %force to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %force, label %dlm_put_lockspace.exit.lockspace_busy.exit.i_crit_edge [
    i32 0, label %dlm_put_lockspace.exit.if.end6.sink.split.i.i_crit_edge
    i32 1, label %if.then2.i.i
  ]

dlm_put_lockspace.exit.if.end6.sink.split.i.i_crit_edge: ; preds = %dlm_put_lockspace.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.sink.split.i.i

dlm_put_lockspace.exit.lockspace_busy.exit.i_crit_edge: ; preds = %dlm_put_lockspace.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %lockspace_busy.exit.i

if.then2.i.i:                                     ; preds = %dlm_put_lockspace.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.sink.split.i.i

if.end6.sink.split.i.i:                           ; preds = %if.then2.i.i, %dlm_put_lockspace.exit.if.end6.sink.split.i.i_crit_edge
  %lkb_idr_is_local.sink.i.i = phi ptr [ @lkb_idr_is_local, %if.then2.i.i ], [ @lkb_idr_is_any, %dlm_put_lockspace.exit.if.end6.sink.split.i.i_crit_edge ]
  %ls_lkbidr3.i.i = getelementptr inbounds %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 12
  %call4.i.i = tail call i32 @idr_for_each(ptr noundef %ls_lkbidr3.i.i, ptr noundef nonnull %lkb_idr_is_local.sink.i.i, ptr noundef nonnull %ls.0.i) #15
  br label %lockspace_busy.exit.i

lockspace_busy.exit.i:                            ; preds = %if.end6.sink.split.i.i, %dlm_put_lockspace.exit.lockspace_busy.exit.i_crit_edge
  %rv.0.i.i = phi i32 [ 0, %dlm_put_lockspace.exit.lockspace_busy.exit.i_crit_edge ], [ %call4.i.i, %if.end6.sink.split.i.i ]
  tail call void @_raw_spin_unlock(ptr noundef %ls_lkbidr_spin.i.i) #15
  tail call void @_raw_spin_lock(ptr noundef nonnull @lslist_lock) #15
  %ls_create_count.i = getelementptr inbounds %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 8
  %6 = ptrtoint ptr %ls_create_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ls_create_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  br i1 %cmp.i, label %if.then.i15, label %if.else3.i

if.then.i15:                                      ; preds = %lockspace_busy.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rv.0.i.i)
  %tobool.not.i = icmp eq i32 %rv.0.i.i, 0
  br i1 %tobool.not.i, label %if.end20.i, label %if.then.i15.do.body.i_crit_edge

if.then.i15.do.body.i_crit_edge:                  ; preds = %if.then.i15
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

if.else3.i:                                       ; preds = %lockspace_busy.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp5.i = icmp sgt i32 %7, 1
  br i1 %cmp5.i, label %if.then6.i, label %if.else3.i.do.body.i_crit_edge

if.else3.i.do.body.i_crit_edge:                   ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

if.then6.i:                                       ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #17
  %dec.i = add nsw i32 %7, -1
  %8 = ptrtoint ptr %ls_create_count.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %dec.i, ptr %ls_create_count.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.then6.i, %if.else3.i.do.body.i_crit_edge, %if.then.i15.do.body.i_crit_edge
  %rv.0.ph.i = phi i32 [ -22, %if.else3.i.do.body.i_crit_edge ], [ -16, %if.then.i15.do.body.i_crit_edge ], [ %dec.i, %if.then6.i ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @lslist_lock) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %9 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool13.not.i = icmp eq i32 %9, 0
  br i1 %tobool13.not.i, label %do.body.i.release_lockspace.exit_crit_edge, label %do.end.i

do.body.i.release_lockspace.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %release_lockspace.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %ls_name.i = getelementptr inbounds %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 91
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %ls_name.i, i32 noundef %rv.0.ph.i) #18
  br label %release_lockspace.exit

if.end20.i:                                       ; preds = %if.then.i15
  %10 = ptrtoint ptr %ls_create_count.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ls_create_count.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @lslist_lock) #15
  %call21.i = tail call i32 @dlm_device_deregister(ptr noundef nonnull %ls.0.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %force)
  %cmp22.i = icmp slt i32 %force, 3
  br i1 %cmp22.i, label %land.lhs.true.i, label %if.end20.i.if.end27.i_crit_edge

if.end20.i.if.end27.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27.i

land.lhs.true.i:                                  ; preds = %if.end20.i
  %call23.i = tail call i32 @dlm_user_daemon_available() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true.i.if.end27.i_crit_edge, label %if.then25.i

land.lhs.true.i.if.end27.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27.i

if.then25.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %call26.i = tail call fastcc i32 @do_uevent(ptr noundef nonnull %ls.0.i, i32 noundef 0) #15
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %land.lhs.true.i.if.end27.i_crit_edge, %if.end20.i.if.end27.i_crit_edge
  tail call void @dlm_recoverd_stop(ptr noundef nonnull %ls.0.i) #15
  %11 = load i32, ptr @ls_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp28.i = icmp eq i32 %11, 1
  br i1 %cmp28.i, label %if.then29.i, label %if.end27.i.if.end30.i_crit_edge

if.end27.i.if.end30.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30.i

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #17
  %12 = load ptr, ptr @scand_task, align 4
  %call.i.i = tail call i32 @kthread_stop(ptr noundef %12) #15
  tail call void @dlm_clear_members(ptr noundef nonnull %ls.0.i) #15
  tail call void @dlm_midcomms_shutdown() #15
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then29.i, %if.end27.i.if.end30.i_crit_edge
  tail call void @dlm_callback_stop(ptr noundef nonnull %ls.0.i) #15
  %ls_count_wait.i.i = getelementptr inbounds %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 7
  br label %retry.i.i

retry.i.i:                                        ; preds = %if.then15.i.i, %if.end30.i
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 369) #15
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ls_count.i, i32 noundef 4) #15
  %13 = ptrtoint ptr %ls_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %ls_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i = icmp eq i32 %14, 0
  br i1 %cmp.i.i, label %retry.i.i.do.end11.i.i_crit_edge, label %if.end.i.i

retry.i.i.do.end11.i.i_crit_edge:                 ; preds = %retry.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end11.i.i

if.end.i.i:                                       ; preds = %retry.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i.i) #15
  %15 = call ptr @memset(ptr %__wq_entry.i.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i.i, i32 noundef 0) #15
  %call453.i.i = call i32 @prepare_to_wait_event(ptr noundef %ls_count_wait.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 2) #15
  %call.i.i4854.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ls_count.i, i32 noundef 4) #15
  %16 = ptrtoint ptr %ls_count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %ls_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp755.i.i = icmp eq i32 %17, 0
  br i1 %cmp755.i.i, label %if.end.i.i.for.end.i.i_crit_edge, label %if.end.i.i.cleanup.i.i_crit_edge

if.end.i.i.cleanup.i.i_crit_edge:                 ; preds = %if.end.i.i
  br label %cleanup.i.i

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

cleanup.i.i:                                      ; preds = %cleanup.i.i.cleanup.i.i_crit_edge, %if.end.i.i.cleanup.i.i_crit_edge
  call void @schedule() #15
  %call4.i149.i = call i32 @prepare_to_wait_event(ptr noundef %ls_count_wait.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 2) #15
  %call.i.i48.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ls_count.i, i32 noundef 4) #15
  %18 = ptrtoint ptr %ls_count.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %ls_count.i, align 4
  %cmp7.i.i = icmp eq i32 %19, 0
  br i1 %cmp7.i.i, label %cleanup.i.i.for.end.i.i_crit_edge, label %cleanup.i.i.cleanup.i.i_crit_edge

cleanup.i.i.cleanup.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i.i

cleanup.i.i.for.end.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %cleanup.i.i.for.end.i.i_crit_edge, %if.end.i.i.for.end.i.i_crit_edge
  call void @finish_wait(ptr noundef %ls_count_wait.i.i, ptr noundef nonnull %__wq_entry.i.i) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i) #15
  br label %do.end11.i.i

do.end11.i.i:                                     ; preds = %for.end.i.i, %retry.i.i.do.end11.i.i_crit_edge
  call void @_raw_spin_lock(ptr noundef nonnull @lslist_lock) #15
  %call.i.i49.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ls_count.i, i32 noundef 4) #15
  %20 = ptrtoint ptr %ls_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %ls_count.i, align 4
  %cmp14.not.i.i = icmp eq i32 %21, 0
  br i1 %cmp14.not.i.i, label %if.end16.i.i, label %if.then15.i.i

if.then15.i.i:                                    ; preds = %do.end11.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @_raw_spin_unlock(ptr noundef nonnull @lslist_lock) #15
  br label %retry.i.i

if.end16.i.i:                                     ; preds = %do.end11.i.i
  %22 = ptrtoint ptr %ls_create_count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ls_create_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp17.not.i.i = icmp eq i32 %23, 0
  br i1 %cmp17.not.i.i, label %if.end16.i.i.if.end33.i.i_crit_edge, label %do.end27.i.i, !prof !240

if.end16.i.i.if.end33.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33.i.i

do.end27.i.i:                                     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 377, i32 noundef 9, ptr noundef null) #15
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %do.end27.i.i, %if.end16.i.i.if.end33.i.i_crit_edge
  %call.i.i50.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %ls.0.i) #15
  br i1 %call.i.i50.i.i, label %if.end.i.i.i.i, label %if.end33.i.i.remove_lockspace.exit.i_crit_edge

if.end33.i.i.remove_lockspace.exit.i_crit_edge:   ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %remove_lockspace.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %ls.0.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i.i, align 4
  %26 = ptrtoint ptr %ls.0.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ls.0.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %remove_lockspace.exit.i

remove_lockspace.exit.i:                          ; preds = %if.end.i.i.i.i, %if.end33.i.i.remove_lockspace.exit.i_crit_edge
  %30 = ptrtoint ptr %ls.0.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %ls.0.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %ls.0.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @lslist_lock) #15
  call void @dlm_delete_debug_file(ptr noundef %ls.0.i) #15
  %ls_recover_idr.i = getelementptr inbounds %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 81
  call void @idr_destroy(ptr noundef %ls_recover_idr.i) #15
  %ls_recover_buf.i = getelementptr inbounds %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 71
  %32 = ptrtoint ptr %ls_recover_buf.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ls_recover_buf.i, align 8
  call void @kfree(ptr noundef %33) #15
  %ls_lkbidr.i = getelementptr inbounds %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 12
  %call31.i = call i32 @idr_for_each(ptr noundef %ls_lkbidr.i, ptr noundef nonnull @lkb_idr_free, ptr noundef %ls.0.i) #15
  call void @idr_destroy(ptr noundef %ls_lkbidr.i) #15
  %ls_rsbtbl_size.i = getelementptr inbounds %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 15
  %34 = ptrtoint ptr %ls_rsbtbl_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ls_rsbtbl_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp33163.not.i = icmp eq i32 %35, 0
  br i1 %cmp33163.not.i, label %remove_lockspace.exit.i.for.end.i_crit_edge, label %while.cond.preheader.lr.ph.i

remove_lockspace.exit.i.for.end.i_crit_edge:      ; preds = %remove_lockspace.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

while.cond.preheader.lr.ph.i:                     ; preds = %remove_lockspace.exit.i
  %ls_rsbtbl.i = getelementptr inbounds %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 14
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %for.inc.i.while.cond.preheader.i_crit_edge, %while.cond.preheader.lr.ph.i
  %i.0164.i = phi i32 [ 0, %while.cond.preheader.lr.ph.i ], [ %inc.i, %for.inc.i.while.cond.preheader.i_crit_edge ]
  %36 = ptrtoint ptr %ls_rsbtbl.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ls_rsbtbl.i, align 8
  %arrayidx155.i = getelementptr %struct.dlm_rsbtable, ptr %37, i32 %i.0164.i
  %call34156.i = call ptr @rb_first(ptr noundef %arrayidx155.i) #15
  %tobool35.not157.i = icmp eq ptr %call34156.i, null
  br i1 %tobool35.not157.i, label %while.cond.preheader.i.while.cond40.preheader.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.while.cond40.preheader.i_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond40.preheader.i

while.cond40.preheader.i:                         ; preds = %while.body.i.while.cond40.preheader.i_crit_edge, %while.cond.preheader.i.while.cond40.preheader.i_crit_edge
  %38 = ptrtoint ptr %ls_rsbtbl.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ls_rsbtbl.i, align 8
  %toss159.i = getelementptr %struct.dlm_rsbtable, ptr %39, i32 %i.0164.i, i32 1
  %call43160.i = call ptr @rb_first(ptr noundef %toss159.i) #15
  %tobool44.not161.i = icmp eq ptr %call43160.i, null
  br i1 %tobool44.not161.i, label %while.cond40.preheader.i.for.inc.i_crit_edge, label %while.cond40.preheader.i.while.body45.i_crit_edge

while.cond40.preheader.i.while.body45.i_crit_edge: ; preds = %while.cond40.preheader.i
  br label %while.body45.i

while.cond40.preheader.i.for.inc.i_crit_edge:     ; preds = %while.cond40.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %call34158.i = phi ptr [ %call34.i, %while.body.i.while.body.i_crit_edge ], [ %call34156.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %call34158.i, i32 -152
  %40 = ptrtoint ptr %ls_rsbtbl.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ls_rsbtbl.i, align 8
  %arrayidx38.i = getelementptr %struct.dlm_rsbtable, ptr %41, i32 %i.0164.i
  call void @rb_erase(ptr noundef nonnull %call34158.i, ptr noundef %arrayidx38.i) #15
  call void @dlm_free_rsb(ptr noundef %add.ptr.i) #15
  %42 = ptrtoint ptr %ls_rsbtbl.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ls_rsbtbl.i, align 8
  %arrayidx.i = getelementptr %struct.dlm_rsbtable, ptr %43, i32 %i.0164.i
  %call34.i = call ptr @rb_first(ptr noundef %arrayidx.i) #15
  %tobool35.not.i = icmp eq ptr %call34.i, null
  br i1 %tobool35.not.i, label %while.body.i.while.cond40.preheader.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

while.body.i.while.cond40.preheader.i_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond40.preheader.i

while.body45.i:                                   ; preds = %while.body45.i.while.body45.i_crit_edge, %while.cond40.preheader.i.while.body45.i_crit_edge
  %call43162.i = phi ptr [ %call43.i, %while.body45.i.while.body45.i_crit_edge ], [ %call43160.i, %while.cond40.preheader.i.while.body45.i_crit_edge ]
  %add.ptr48.i = getelementptr i8, ptr %call43162.i, i32 -152
  %44 = ptrtoint ptr %ls_rsbtbl.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ls_rsbtbl.i, align 8
  %toss51.i = getelementptr %struct.dlm_rsbtable, ptr %45, i32 %i.0164.i, i32 1
  call void @rb_erase(ptr noundef nonnull %call43162.i, ptr noundef %toss51.i) #15
  call void @dlm_free_rsb(ptr noundef %add.ptr48.i) #15
  %46 = ptrtoint ptr %ls_rsbtbl.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ls_rsbtbl.i, align 8
  %toss.i = getelementptr %struct.dlm_rsbtable, ptr %47, i32 %i.0164.i, i32 1
  %call43.i = call ptr @rb_first(ptr noundef %toss.i) #15
  %tobool44.not.i = icmp eq ptr %call43.i, null
  br i1 %tobool44.not.i, label %while.body45.i.for.inc.i_crit_edge, label %while.body45.i.while.body45.i_crit_edge

while.body45.i.while.body45.i_crit_edge:          ; preds = %while.body45.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body45.i

while.body45.i.for.inc.i_crit_edge:               ; preds = %while.body45.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %while.body45.i.for.inc.i_crit_edge, %while.cond40.preheader.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.0164.i, 1
  %48 = ptrtoint ptr %ls_rsbtbl_size.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ls_rsbtbl_size.i, align 4
  %cmp33.i = icmp ult i32 %inc.i, %49
  br i1 %cmp33.i, label %for.inc.i.while.cond.preheader.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.inc.i.while.cond.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.preheader.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %remove_lockspace.exit.i.for.end.i_crit_edge
  %ls_rsbtbl53.i = getelementptr inbounds %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 14
  %50 = ptrtoint ptr %ls_rsbtbl53.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ls_rsbtbl53.i, align 8
  call void @vfree(ptr noundef %51) #15
  %arrayidx57.i = getelementptr %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 28, i32 0
  %52 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx57.i, align 4
  call void @kfree(ptr noundef %53) #15
  %arrayidx57.1.i = getelementptr %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 28, i32 1
  %54 = ptrtoint ptr %arrayidx57.1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx57.1.i, align 4
  call void @kfree(ptr noundef %55) #15
  %arrayidx57.2.i = getelementptr %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 28, i32 2
  %56 = ptrtoint ptr %arrayidx57.2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx57.2.i, align 4
  call void @kfree(ptr noundef %57) #15
  %arrayidx57.3.i = getelementptr %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 28, i32 3
  %58 = ptrtoint ptr %arrayidx57.3.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx57.3.i, align 4
  call void @kfree(ptr noundef %59) #15
  %arrayidx57.4.i = getelementptr %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 28, i32 4
  %60 = ptrtoint ptr %arrayidx57.4.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx57.4.i, align 4
  call void @kfree(ptr noundef %61) #15
  %arrayidx57.5.i = getelementptr %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 28, i32 5
  %62 = ptrtoint ptr %arrayidx57.5.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx57.5.i, align 4
  call void @kfree(ptr noundef %63) #15
  %arrayidx57.6.i = getelementptr %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 28, i32 6
  %64 = ptrtoint ptr %arrayidx57.6.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx57.6.i, align 4
  call void @kfree(ptr noundef %65) #15
  %arrayidx57.7.i = getelementptr %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 28, i32 7
  %66 = ptrtoint ptr %arrayidx57.7.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx57.7.i, align 4
  call void @kfree(ptr noundef %67) #15
  %ls_new_rsb.i = getelementptr inbounds %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 24
  %68 = ptrtoint ptr %ls_new_rsb.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %ls_new_rsb.i, align 4
  %cmp.i150.not167.i = icmp eq ptr %69, %ls_new_rsb.i
  br i1 %cmp.i150.not167.i, label %for.end.i.while.end69.i_crit_edge, label %for.end.i.while.body64.i_crit_edge

for.end.i.while.body64.i_crit_edge:               ; preds = %for.end.i
  br label %while.body64.i

for.end.i.while.end69.i_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end69.i

while.body64.i:                                   ; preds = %list_del.exit.i.while.body64.i_crit_edge, %for.end.i.while.body64.i_crit_edge
  %70 = phi ptr [ %80, %list_del.exit.i.while.body64.i_crit_edge ], [ %69, %for.end.i.while.body64.i_crit_edge ]
  %add.ptr68.i = getelementptr i8, ptr %70, i32 -152
  %call.i.i.i16 = call zeroext i1 @__list_del_entry_valid(ptr noundef %70) #15
  br i1 %call.i.i.i16, label %if.end.i.i.i, label %while.body64.i.list_del.exit.i_crit_edge

while.body64.i.list_del.exit.i_crit_edge:         ; preds = %while.body64.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body64.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i151.i = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i151.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i151.i, align 4
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %70, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev1.i.i.i.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %74, ptr %72, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body64.i.list_del.exit.i_crit_edge
  %77 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr inttoptr (i32 256 to ptr), ptr %70, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @dlm_free_rsb(ptr noundef %add.ptr68.i) #15
  %79 = ptrtoint ptr %ls_new_rsb.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile ptr, ptr %ls_new_rsb.i, align 4
  %cmp.i150.not.i = icmp eq ptr %80, %ls_new_rsb.i
  br i1 %cmp.i150.not.i, label %list_del.exit.i.while.end69.i_crit_edge, label %list_del.exit.i.while.body64.i_crit_edge

list_del.exit.i.while.body64.i_crit_edge:         ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body64.i

list_del.exit.i.while.end69.i_crit_edge:          ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end69.i

while.end69.i:                                    ; preds = %list_del.exit.i.while.end69.i_crit_edge, %for.end.i.while.end69.i_crit_edge
  call void @dlm_purge_requestqueue(ptr noundef %ls.0.i) #15
  %ls_recover_args.i = getelementptr inbounds %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 64
  %81 = ptrtoint ptr %ls_recover_args.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ls_recover_args.i, align 8
  call void @kfree(ptr noundef %82) #15
  call void @dlm_clear_members(ptr noundef %ls.0.i) #15
  call void @dlm_clear_members_gone(ptr noundef %ls.0.i) #15
  %ls_node_array.i = getelementptr inbounds %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 36
  %83 = ptrtoint ptr %ls_node_array.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ls_node_array.i, align 8
  call void @kfree(ptr noundef %84) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %85 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool71.not.i = icmp eq i32 %85, 0
  br i1 %tobool71.not.i, label %if.else80.i, label %while.end69.i.do.end93.sink.split.i_crit_edge

while.end69.i.do.end93.sink.split.i_crit_edge:    ; preds = %while.end69.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end93.sink.split.i

if.else80.i:                                      ; preds = %while.end69.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %86 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool81.not.i = icmp eq i32 %86, 0
  br i1 %tobool81.not.i, label %if.else80.i.release_lockspace.exit.thread_crit_edge, label %if.else80.i.do.end93.sink.split.i_crit_edge

if.else80.i.do.end93.sink.split.i_crit_edge:      ; preds = %if.else80.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end93.sink.split.i

if.else80.i.release_lockspace.exit.thread_crit_edge: ; preds = %if.else80.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %release_lockspace.exit.thread

do.end93.sink.split.i:                            ; preds = %if.else80.i.do.end93.sink.split.i_crit_edge, %while.end69.i.do.end93.sink.split.i_crit_edge
  %.str.117.sink.i = phi ptr [ @.str.114, %while.end69.i.do.end93.sink.split.i_crit_edge ], [ @.str.117, %if.else80.i.do.end93.sink.split.i_crit_edge ]
  %ls_name87.i = getelementptr inbounds %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 91
  %call89.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.117.sink.i, ptr noundef %ls_name87.i) #18
  br label %release_lockspace.exit.thread

release_lockspace.exit.thread:                    ; preds = %do.end93.sink.split.i, %if.else80.i.release_lockspace.exit.thread_crit_edge
  %ls_kobj.i = getelementptr inbounds %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 11
  call void @kobject_put(ptr noundef %ls_kobj.i) #15
  call void @module_put(ptr noundef null) #15
  br label %if.then3

release_lockspace.exit:                           ; preds = %do.end.i, %do.body.i.release_lockspace.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rv.0.ph.i)
  %tobool2.not = icmp eq i32 %rv.0.ph.i, 0
  br i1 %tobool2.not, label %release_lockspace.exit.if.then3_crit_edge, label %if.end4thread-pre-split

release_lockspace.exit.if.then3_crit_edge:        ; preds = %release_lockspace.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then3

if.then3:                                         ; preds = %release_lockspace.exit.if.then3_crit_edge, %release_lockspace.exit.thread
  %87 = load i32, ptr @ls_count, align 4
  %dec = add i32 %87, -1
  store i32 %dec, ptr @ls_count, align 4
  br label %if.end4

if.end4thread-pre-split:                          ; preds = %release_lockspace.exit
  call void @__sanitizer_cov_trace_pc() #17
  %.pr = load i32, ptr @ls_count, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end4thread-pre-split, %if.then3
  %88 = phi i32 [ %.pr, %if.end4thread-pre-split ], [ %dec, %if.then3 ]
  %retval.0.i25 = phi i32 [ %rv.0.ph.i, %if.end4thread-pre-split ], [ 0, %if.then3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool5.not = icmp eq i32 %88, 0
  br i1 %tobool5.not, label %if.then6, label %if.end4.if.end7_crit_edge

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  call void @dlm_lowcomms_stop() #15
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @ls_lock) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %dlm_find_lockspace_local.exit.cleanup_crit_edge, %dlm_find_lockspace_local.exit.thread
  %retval.0 = phi i32 [ %retval.0.i25, %if.end7 ], [ -22, %dlm_find_lockspace_local.exit.cleanup_crit_edge ], [ -22, %dlm_find_lockspace_local.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_stop_lockspaces() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @lslist_lock) #15
  %ls.02429 = load ptr, ptr @lslist, align 4
  %cmp.not2530 = icmp eq ptr %ls.02429, @lslist
  br i1 %cmp.not2530, label %entry.for.end.thread_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.thread

for.body:                                         ; preds = %for.body.backedge, %entry.for.body_crit_edge
  %ls.027 = phi ptr [ %ls.027.be, %for.body.backedge ], [ %ls.02429, %entry.for.body_crit_edge ]
  %count.026 = phi i32 [ %count.026.be, %for.body.backedge ], [ 0, %entry.for.body_crit_edge ]
  %ls_flags = getelementptr inbounds %struct.dlm_ls, ptr %ls.027, i32 0, i32 9
  %0 = ptrtoint ptr %ls_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ls_flags, align 4
  %2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %inc = add i32 %count.026, 1
  %3 = ptrtoint ptr %ls.027 to i32
  call void @__asan_load4_noabort(i32 %3)
  %ls.0 = load ptr, ptr %ls.027, align 4
  %cmp.not = icmp eq ptr %ls.0, @lslist
  br i1 %cmp.not, label %for.end, label %if.then.for.body.backedge_crit_edge

if.then.for.body.backedge_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.backedge

for.body.backedge:                                ; preds = %if.end.for.body.backedge_crit_edge, %if.then.for.body.backedge_crit_edge
  %ls.027.be = phi ptr [ %ls.0, %if.then.for.body.backedge_crit_edge ], [ %ls.024, %if.end.for.body.backedge_crit_edge ]
  %count.026.be = phi i32 [ %inc, %if.then.for.body.backedge_crit_edge ], [ 0, %if.end.for.body.backedge_crit_edge ]
  br label %for.body

if.end:                                           ; preds = %for.body
  tail call void @_raw_spin_unlock(ptr noundef nonnull @lslist_lock) #15
  %ls_name = getelementptr inbounds %struct.dlm_ls, ptr %ls.027, i32 0, i32 91
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %ls_name) #18
  %call3 = tail call i32 @dlm_ls_stop(ptr noundef %ls.027) #15
  tail call void @_raw_spin_lock(ptr noundef nonnull @lslist_lock) #15
  %ls.024 = load ptr, ptr @lslist, align 4
  %cmp.not25 = icmp eq ptr %ls.024, @lslist
  br i1 %cmp.not25, label %if.end.for.end.thread_crit_edge, label %if.end.for.body.backedge_crit_edge

if.end.for.body.backedge_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.backedge

if.end.for.end.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.thread

for.end.thread:                                   ; preds = %if.end.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @lslist_lock) #15
  br label %if.end15

for.end:                                          ; preds = %if.then
  tail call void @_raw_spin_unlock(ptr noundef nonnull @lslist_lock) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool8.not = icmp eq i32 %inc, 0
  br i1 %tobool8.not, label %for.end.if.end15_crit_edge, label %do.end12

for.end.if.end15_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

do.end12:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %inc) #18
  br label %if.end15

if.end15:                                         ; preds = %do.end12, %for.end.if.end15_crit_edge, %for.end.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_ls_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_uevent(ptr noundef %kobj, ptr noundef %env) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_name = getelementptr i8, ptr %kobj, i32 3148
  %call = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.12, ptr noundef %ls_name) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_midcomms_start() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_scand(ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call18 = tail call zeroext i1 @kthread_should_stop() #15
  br i1 %call18, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry.while.body_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @lslist_lock) #15
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %while.body
  %ls.0.in.i = phi ptr [ @lslist, %while.body ], [ %ls.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %ls.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %ls.0.i = load ptr, ptr %ls.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %ls.0.i, @lslist
  br i1 %cmp.not.i, label %find_ls_to_scan.exit.thread, label %for.body.i

find_ls_to_scan.exit.thread:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock(ptr noundef nonnull @lslist_lock) #15
  br label %if.end6

for.body.i:                                       ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %ls_scan_time.i = getelementptr inbounds %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 10
  %2 = ptrtoint ptr %ls_scan_time.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ls_scan_time.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 5) to i32))
  %4 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 5), align 4
  %mul.neg.i = mul i32 %4, -100
  %add.neg.i = sub i32 %1, %3
  %sub.i = add i32 %add.neg.i, %mul.neg.i
  %cmp1.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp1.i, label %find_ls_to_scan.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

find_ls_to_scan.exit:                             ; preds = %for.body.i
  %ls_scan_time.i.le = getelementptr inbounds %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 10
  tail call void @_raw_spin_unlock(ptr noundef nonnull @lslist_lock) #15
  %tobool.not = icmp eq ptr %ls.0.i, null
  br i1 %tobool.not, label %find_ls_to_scan.exit.if.end6_crit_edge, label %if.then

find_ls_to_scan.exit.if.end6_crit_edge:           ; preds = %find_ls_to_scan.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then:                                          ; preds = %find_ls_to_scan.exit
  %call2 = tail call i32 @dlm_lock_recovery_try(ptr noundef nonnull %ls.0.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %6 = ptrtoint ptr %ls_scan_time.i.le to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %ls_scan_time.i.le, align 4
  tail call void @dlm_scan_rsbs(ptr noundef nonnull %ls.0.i) #15
  tail call void @dlm_scan_timeout(ptr noundef nonnull %ls.0.i) #15
  tail call void @dlm_scan_waiters(ptr noundef nonnull %ls.0.i) #15
  tail call void @dlm_unlock_recovery(ptr noundef nonnull %ls.0.i) #15
  br label %while.cond.backedge

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %ls_scan_time.i.le to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ls_scan_time.i.le, align 4
  %add = add i32 %8, 100
  store i32 %add, ptr %ls_scan_time.i.le, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end6, %if.else, %if.then4
  %call = tail call zeroext i1 @kthread_should_stop() #15
  br i1 %call, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end6:                                          ; preds = %find_ls_to_scan.exit.if.end6_crit_edge, %find_ls_to_scan.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 5) to i32))
  %9 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 5), align 4
  %mul = mul i32 %9, 100
  %call7 = tail call i32 @schedule_timeout_interruptible(i32 noundef %mul) #15
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_lock_recovery_try(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_scan_rsbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_scan_timeout(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_scan_waiters(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_unlock_recovery(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_user_daemon_available() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_callback_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_recoverd_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_uevent(ptr noundef %ls, i32 noundef %in) unnamed_addr #3 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in)
  %tobool.not = icmp eq i32 %in, 0
  %ls_kobj1 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 11
  %. = select i1 %tobool.not, i32 5, i32 4
  %call = tail call i32 @kobject_uevent(ptr noundef %ls_kobj1, i32 noundef %.) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool3.not = icmp eq i32 %0, 0
  br i1 %tobool3.not, label %if.else8, label %entry.do.body23.sink.split_crit_edge

entry.do.body23.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body23.sink.split

if.else8:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %1 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool9.not = icmp eq i32 %1, 0
  br i1 %tobool9.not, label %if.else8.do.body23_crit_edge, label %if.else8.do.body23.sink.split_crit_edge

if.else8.do.body23.sink.split_crit_edge:          ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body23.sink.split

if.else8.do.body23_crit_edge:                     ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body23

do.body23.sink.split:                             ; preds = %if.else8.do.body23.sink.split_crit_edge, %entry.do.body23.sink.split_crit_edge
  %.str.98.sink = phi ptr [ @.str.98, %entry.do.body23.sink.split_crit_edge ], [ @.str.103, %if.else8.do.body23.sink.split_crit_edge ]
  %ls_name = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %cond = select i1 %tobool.not, ptr @.str.101, ptr @.str.100
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.98.sink, ptr noundef %ls_name, ptr noundef nonnull %cond) #18
  br label %do.body23

do.body23:                                        ; preds = %do.body23.sink.split, %if.else8.do.body23_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 212) #15
  %ls_flags = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 9
  %call27 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %ls_flags) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %do.body23.do.body40_crit_edge

do.body23.do.body40_crit_edge:                    ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body40

if.end30:                                         ; preds = %do.body23
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #15
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #15
  %ls_uevent_wait = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 49
  %call3179 = call i32 @prepare_to_wait_event(ptr noundef %ls_uevent_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %call3380 = call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %ls_flags) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3380)
  %tobool34.not81 = icmp eq i32 %call3380, 0
  br i1 %tobool34.not81, label %if.end30.cleanup_crit_edge, label %if.end30.for.end_crit_edge

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end30.cleanup_crit_edge
  call void @schedule() #15
  %call31 = call i32 @prepare_to_wait_event(ptr noundef %ls_uevent_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %call33 = call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %ls_flags) #15
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end30.for.end_crit_edge
  call void @finish_wait(ptr noundef %ls_uevent_wait, ptr noundef nonnull %__wq_entry) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  br label %do.body40

do.body40:                                        ; preds = %for.end, %do.body23.do.body40_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7) to i32))
  %3 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool41.not = icmp eq i32 %3, 0
  br i1 %tobool41.not, label %if.else49, label %do.body40.do.end61.sink.split_crit_edge

do.body40.do.end61.sink.split_crit_edge:          ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end61.sink.split

if.else49:                                        ; preds = %do.body40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6) to i32))
  %4 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool50.not = icmp eq i32 %4, 0
  br i1 %tobool50.not, label %if.else49.do.end61_crit_edge, label %if.else49.do.end61.sink.split_crit_edge

if.else49.do.end61.sink.split_crit_edge:          ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end61.sink.split

if.else49.do.end61_crit_edge:                     ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end61

do.end61.sink.split:                              ; preds = %if.else49.do.end61.sink.split_crit_edge, %do.body40.do.end61.sink.split_crit_edge
  %.str.106.sink = phi ptr [ @.str.106, %do.body40.do.end61.sink.split_crit_edge ], [ @.str.109, %if.else49.do.end61.sink.split_crit_edge ]
  %ls_name46 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 91
  %ls_uevent_result = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 50
  %5 = ptrtoint ptr %ls_uevent_result to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ls_uevent_result, align 8
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.106.sink, ptr noundef %ls_name46, i32 noundef %6) #18
  br label %do.end61

do.end61:                                         ; preds = %do.end61.sink.split, %if.else49.do.end61_crit_edge
  %ls_uevent_result62 = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 50
  %7 = ptrtoint ptr %ls_uevent_result62 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ls_uevent_result62, align 8
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_create_debug_file(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_clear_members(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_recoverd_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_callback_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lockspace_kobj_release(ptr noundef %k) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %k, i32 -96
  tail call void @kfree(ptr noundef %add.ptr) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_attr_show(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.dlm_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr = getelementptr i8, ptr %kobj, i32 -96
  %call = tail call i32 %1(ptr noundef %add.ptr, ptr noundef %buf) #15
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_attr_store(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.dlm_attr, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr = getelementptr i8, ptr %kobj, i32 -96
  %call = tail call i32 %1(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %len) #15
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ %len, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_control_store(ptr nocapture noundef readonly %ls, ptr noundef %buf, i32 noundef %len) #3 align 64 {
entry:
  %n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #15
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %n, align 4, !annotation !241
  %call = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %n) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %ls_local_handle = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 1
  %1 = ptrtoint ptr %ls_local_handle to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ls_local_handle, align 8
  call void @_raw_spin_lock(ptr noundef nonnull @lslist_lock) #15
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %ls.0.in.i = phi ptr [ @lslist, %if.end ], [ %ls.0.i, %for.body.i.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %ls.0.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %ls.0.i = load ptr, ptr %ls.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %ls.0.i, @lslist
  br i1 %cmp.not.i, label %dlm_find_lockspace_local.exit.thread, label %for.body.i

dlm_find_lockspace_local.exit.thread:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @_raw_spin_unlock(ptr noundef nonnull @lslist_lock) #15
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %ls_local_handle.i = getelementptr inbounds %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 1
  %4 = ptrtoint ptr %ls_local_handle.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ls_local_handle.i, align 8
  %cmp1.i = icmp eq ptr %5, %2
  br i1 %cmp1.i, label %dlm_find_lockspace_local.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

dlm_find_lockspace_local.exit:                    ; preds = %for.body.i
  %ls_count.i = getelementptr inbounds %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 6
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ls_count.i, i32 noundef 4) #15
  call void @llvm.prefetch.p0(ptr %ls_count.i, i32 1, i32 3, i32 1) #15
  %6 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ls_count.i, ptr %ls_count.i, i32 1, ptr elementtype(i32) %ls_count.i) #15, !srcloc !235
  call void @_raw_spin_unlock(ptr noundef nonnull @lslist_lock) #15
  %tobool2.not = icmp eq ptr %ls.0.i, null
  br i1 %tobool2.not, label %dlm_find_lockspace_local.exit.cleanup_crit_edge, label %if.end4

dlm_find_lockspace_local.exit.cleanup_crit_edge:  ; preds = %dlm_find_lockspace_local.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %dlm_find_lockspace_local.exit
  %7 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %8, label %if.end4.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = call i32 @dlm_ls_stop(ptr noundef nonnull %ls.0.i) #15
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %call7 = call i32 @dlm_ls_start(ptr noundef nonnull %ls.0.i) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb, %if.end4.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %len, %sw.bb6 ], [ %len, %sw.bb ], [ -22, %if.end4.sw.epilog_crit_edge ]
  %call.i.i.i16 = call zeroext i1 @__kasan_check_write(ptr noundef %ls_count.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !236
  call void @llvm.prefetch.p0(ptr %ls_count.i, i32 1, i32 3, i32 1) #15
  %10 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ls_count.i, ptr %ls_count.i, i32 1, ptr elementtype(i32) %ls_count.i) #15, !srcloc !237
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i17, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i17:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  %ls_count_wait.i = getelementptr inbounds %struct.dlm_ls, ptr %ls.0.i, i32 0, i32 7
  call void @__wake_up(ptr noundef %ls_count_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i17, %sw.epilog.cleanup_crit_edge, %dlm_find_lockspace_local.exit.cleanup_crit_edge, %dlm_find_lockspace_local.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %dlm_find_lockspace_local.exit.cleanup_crit_edge ], [ -22, %dlm_find_lockspace_local.exit.thread ], [ %ret.0, %sw.epilog.cleanup_crit_edge ], [ %ret.0, %if.then.i17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_ls_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_event_store(ptr noundef %ls, ptr noundef %buf, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_uevent_result = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 50
  %call = tail call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef %ls_uevent_result) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %ls_flags = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 7, ptr noundef %ls_flags) #15
  %ls_uevent_wait = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 49
  tail call void @__wake_up(ptr noundef %ls_uevent_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_id_show(ptr nocapture noundef readonly %ls, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_global_id = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 2
  %0 = ptrtoint ptr %ls_global_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ls_global_id, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.92, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_id_store(ptr noundef %ls, ptr noundef %buf, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_global_id = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 2
  %call = tail call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef %ls_global_id) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %len.call = select i1 %tobool.not, i32 %len, i32 %call
  ret i32 %len.call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_nodir_show(ptr noundef %ls, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_flags.i = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 9
  %0 = ptrtoint ptr %ls_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ls_flags.i, align 4
  %shr.i.i = lshr i32 %1, 10
  %and1.i.i = and i32 %shr.i.i, 1
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.92, i32 noundef %and1.i.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_nodir_store(ptr noundef %ls, ptr noundef %buf, i32 noundef %len) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #15
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !241
  %call = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %ls_flags = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 9
  call void @_set_bit(i32 noundef 10, ptr noundef %ls_flags) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %len, %if.then1 ], [ %len, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_recover_status_show(ptr noundef %ls, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dlm_recover_status(ptr noundef %ls) #15
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.95, i32 noundef %call)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_recover_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_recover_nodeid_show(ptr nocapture noundef readonly %ls, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ls_recover_nodeid = getelementptr inbounds %struct.dlm_ls, ptr %ls, i32 0, i32 72
  %0 = ptrtoint ptr %ls_recover_nodeid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ls_recover_nodeid, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.97, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_device_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_delete_debug_file(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lkb_idr_free(i32 noundef %id, ptr noundef %p, ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lkb_lvbptr = getelementptr inbounds %struct.dlm_lkb, ptr %p, i32 0, i32 34
  %0 = ptrtoint ptr %lkb_lvbptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lkb_lvbptr, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %lkb_flags = getelementptr inbounds %struct.dlm_lkb, ptr %p, i32 0, i32 8
  %2 = ptrtoint ptr %lkb_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lkb_flags, align 8
  %and = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dlm_free_lvb(ptr noundef nonnull %1) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @dlm_free_lkb(ptr noundef %p) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_free_rsb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_purge_requestqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_clear_members_gone(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lkb_idr_is_any(i32 noundef %id, ptr nocapture noundef readnone %p, ptr nocapture noundef readnone %data) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lkb_idr_is_local(i32 noundef %id, ptr nocapture noundef readonly %p, ptr nocapture noundef readnone %data) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lkb_nodeid = getelementptr inbounds %struct.dlm_lkb, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %lkb_nodeid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lkb_nodeid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %lkb_grmode = getelementptr inbounds %struct.dlm_lkb, ptr %p, i32 0, i32 12
  %2 = ptrtoint ptr %lkb_grmode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %lkb_grmode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp1 = icmp ne i8 %3, -1
  %phi.cast = zext i1 %cmp1 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_free_lvb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_free_lkb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !136, !138, !139, !141, !142, !143, !145, !147, !148, !149, !150, !151, !152, !154, !155, !157, !158, !160, !162, !164, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !200, !201, !202, !203, !204, !205, !206, !207, !209, !210, !211, !212, !213, !214, !216, !217, !218, !219, !221, !222, !223, !224, !225}
!llvm.module.flags = !{!226, !227, !228, !229, !230, !231, !232, !233}
!llvm.ident = !{!234}

!0 = !{ptr @dlm_lockspace_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../fs/dlm/lockspace.c", i32 234, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @dlm_lockspace_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../fs/dlm/lockspace.c", i32 236, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/dlm/lockspace.c", i32 238, i32 33}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/dlm/lockspace.c", i32 240, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @dlm_lockspace_init._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @dlm_lockspace_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/dlm/lockspace.c", i32 915, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @dlm_stop_lockspaces._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @dlm_stop_lockspaces._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/dlm/lockspace.c", i32 922, i32 3}
!21 = !{ptr @dlm_stop_lockspaces._entry.9, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @dlm_stop_lockspaces._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @ls_count, !24, !"ls_count", i1 false, i1 false}
!24 = !{!"../fs/dlm/lockspace.c", i32 29, i32 14}
!25 = !{ptr @ls_lock, !26, !"ls_lock", i1 false, i1 false}
!26 = !{!"../fs/dlm/lockspace.c", i32 30, i32 22}
!27 = !{ptr @lslist, !28, !"lslist", i1 false, i1 false}
!28 = !{!"../fs/dlm/lockspace.c", i32 31, i32 26}
!29 = !{ptr @lslist_lock, !30, !"lslist_lock", i1 false, i1 false}
!30 = !{!"../fs/dlm/lockspace.c", i32 32, i32 20}
!31 = !{ptr @dlm_kset, !32, !"dlm_kset", i1 false, i1 false}
!32 = !{!"../fs/dlm/lockspace.c", i32 197, i32 21}
!33 = !{ptr @dlm_uevent_ops, !34, !"dlm_uevent_ops", i1 false, i1 false}
!34 = !{!"../fs/dlm/lockspace.c", i32 227, i32 37}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/dlm/lockspace.c", i32 223, i32 22}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/dlm/lockspace.c", i32 388, i32 3}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @threads_start._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @threads_start._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/dlm/lockspace.c", i32 395, i32 3}
!44 = !{ptr @threads_start._entry.15, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @threads_start._entry_ptr.17, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/dlm/lockspace.c", i32 295, i32 6}
!48 = !{ptr @scand_task, !49, !"scand_task", i1 false, i1 false}
!49 = !{!"../fs/dlm/lockspace.c", i32 33, i32 29}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/dlm/lockspace.c", i32 427, i32 3}
!52 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @new_lockspace._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @new_lockspace._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/dlm/lockspace.c", i32 440, i32 3}
!57 = !{ptr @new_lockspace._entry.21, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @new_lockspace._entry_ptr.23, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/dlm/lockspace.c", i32 445, i32 3}
!61 = !{ptr @new_lockspace._entry.24, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @new_lockspace._entry_ptr.26, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @new_lockspace.__key, !64, !"__key", i1 false, i1 false}
!64 = !{!"../fs/dlm/lockspace.c", i32 484, i32 2}
!65 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @new_lockspace.__key.28, !67, !"__key", i1 false, i1 false}
!67 = !{!"../fs/dlm/lockspace.c", i32 510, i32 3}
!68 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @new_lockspace.__key.30, !70, !"__key", i1 false, i1 false}
!70 = !{!"../fs/dlm/lockspace.c", i32 513, i32 2}
!71 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @new_lockspace.__key.32, !73, !"__key", i1 false, i1 false}
!73 = !{!"../fs/dlm/lockspace.c", i32 514, i32 2}
!74 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @new_lockspace.__key.34, !76, !"__key", i1 false, i1 false}
!76 = !{!"../fs/dlm/lockspace.c", i32 524, i32 2}
!77 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @new_lockspace.__key.36, !79, !"__key", i1 false, i1 false}
!79 = !{!"../fs/dlm/lockspace.c", i32 527, i32 2}
!80 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @new_lockspace.__key.38, !82, !"__key", i1 false, i1 false}
!82 = !{!"../fs/dlm/lockspace.c", i32 529, i32 2}
!83 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @new_lockspace.__key.40, !85, !"__key", i1 false, i1 false}
!85 = !{!"../fs/dlm/lockspace.c", i32 531, i32 2}
!86 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @new_lockspace.__key.42, !88, !"__key", i1 false, i1 false}
!88 = !{!"../fs/dlm/lockspace.c", i32 534, i32 2}
!89 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @new_lockspace.__key.44, !91, !"__key", i1 false, i1 false}
!91 = !{!"../fs/dlm/lockspace.c", i32 549, i32 2}
!92 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @new_lockspace.__key.46, !94, !"__key", i1 false, i1 false}
!94 = !{!"../fs/dlm/lockspace.c", i32 554, i32 2}
!95 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @new_lockspace.__key.48, !97, !"__key", i1 false, i1 false}
!97 = !{!"../fs/dlm/lockspace.c", i32 558, i32 2}
!98 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @new_lockspace.__key.50, !100, !"__key", i1 false, i1 false}
!100 = !{!"../fs/dlm/lockspace.c", i32 559, i32 2}
!101 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @new_lockspace.__key.52, !103, !"__key", i1 false, i1 false}
!103 = !{!"../fs/dlm/lockspace.c", i32 560, i32 2}
!104 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @new_lockspace.__key.54, !106, !"__key", i1 false, i1 false}
!106 = !{!"../fs/dlm/lockspace.c", i32 565, i32 2}
!107 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @new_lockspace.__key.56, !109, !"__key", i1 false, i1 false}
!109 = !{!"../fs/dlm/lockspace.c", i32 566, i32 2}
!110 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @new_lockspace.__key.58, !112, !"__key", i1 false, i1 false}
!112 = !{!"../fs/dlm/lockspace.c", i32 569, i32 2}
!113 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @new_lockspace.__key.60, !115, !"__key", i1 false, i1 false}
!115 = !{!"../fs/dlm/lockspace.c", i32 570, i32 2}
!116 = !{ptr @.str.61, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @new_lockspace.__key.62, !118, !"__key", i1 false, i1 false}
!118 = !{!"../fs/dlm/lockspace.c", i32 571, i32 2}
!119 = !{ptr @.str.63, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @new_lockspace.__key.64, !121, !"__key", i1 false, i1 false}
!121 = !{!"../fs/dlm/lockspace.c", i32 588, i32 2}
!122 = !{ptr @.str.65, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @new_lockspace.__key.66, !124, !"__key", i1 false, i1 false}
!124 = !{!"../fs/dlm/lockspace.c", i32 590, i32 2}
!125 = !{ptr @.str.67, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @new_lockspace.__key.68, !127, !"__key", i1 false, i1 false}
!127 = !{!"../fs/dlm/lockspace.c", i32 593, i32 2}
!128 = !{ptr @.str.69, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @new_lockspace.__key.70, !130, !"__key", i1 false, i1 false}
!130 = !{!"../fs/dlm/lockspace.c", i32 595, i32 2}
!131 = !{ptr @.str.71, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.73, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/dlm/lockspace.c", i32 605, i32 4}
!134 = !{ptr @new_lockspace._entry.72, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @new_lockspace._entry_ptr.74, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @new_lockspace.__key.75, !137, !"__key", i1 false, i1 false}
!137 = !{!"../fs/dlm/lockspace.c", i32 610, i32 2}
!138 = !{ptr @.str.76, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.78, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/dlm/lockspace.c", i32 621, i32 3}
!141 = !{ptr @new_lockspace._entry.77, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @new_lockspace._entry_ptr.79, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.80, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/dlm/lockspace.c", i32 633, i32 10}
!145 = !{ptr @.str.82, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/dlm/lockspace.c", i32 655, i32 2}
!147 = !{ptr @new_lockspace._entry.81, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @new_lockspace._entry_ptr.83, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.85, !146, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @new_lockspace._entry.84, !146, !"_entry", i1 false, i1 false}
!151 = !{ptr @new_lockspace._entry_ptr.86, !146, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @xa_init_flags.__key, !153, !"__key", i1 false, i1 false}
!153 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!154 = !{ptr @.str.87, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @init_completion.__key, !156, !"__key", i1 false, i1 false}
!156 = !{!"../include/linux/completion.h", i32 87, i32 2}
!157 = !{ptr @.str.88, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @dlm_ktype, !159, !"dlm_ktype", i1 false, i1 false}
!159 = !{!"../fs/dlm/lockspace.c", i32 191, i32 25}
!160 = !{ptr @dlm_attr_ops, !161, !"dlm_attr_ops", i1 false, i1 false}
!161 = !{!"../fs/dlm/lockspace.c", i32 186, i32 31}
!162 = !{ptr @dlm_groups, !163, !"dlm_groups", i1 false, i1 false}
!163 = !{!"../fs/dlm/lockspace.c", i32 162, i32 1}
!164 = !{ptr @dlm_group, !163, !"dlm_group", i1 false, i1 false}
!165 = !{ptr @dlm_attrs, !166, !"dlm_attrs", i1 false, i1 false}
!166 = !{!"../fs/dlm/lockspace.c", i32 153, i32 26}
!167 = !{ptr @.str.89, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../fs/dlm/lockspace.c", i32 122, i32 20}
!169 = !{ptr @dlm_attr_control, !170, !"dlm_attr_control", i1 false, i1 false}
!170 = !{!"../fs/dlm/lockspace.c", i32 121, i32 24}
!171 = !{ptr @.str.90, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/dlm/lockspace.c", i32 127, i32 20}
!173 = !{ptr @dlm_attr_event, !174, !"dlm_attr_event", i1 false, i1 false}
!174 = !{!"../fs/dlm/lockspace.c", i32 126, i32 24}
!175 = !{ptr @.str.91, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/dlm/lockspace.c", i32 132, i32 20}
!177 = !{ptr @dlm_attr_id, !178, !"dlm_attr_id", i1 false, i1 false}
!178 = !{!"../fs/dlm/lockspace.c", i32 131, i32 24}
!179 = !{ptr @.str.92, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../fs/dlm/lockspace.c", i32 75, i32 34}
!181 = !{ptr @.str.93, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/dlm/lockspace.c", i32 138, i32 20}
!183 = !{ptr @dlm_attr_nodir, !184, !"dlm_attr_nodir", i1 false, i1 false}
!184 = !{!"../fs/dlm/lockspace.c", i32 137, i32 24}
!185 = !{ptr @.str.94, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../fs/dlm/lockspace.c", i32 144, i32 20}
!187 = !{ptr @dlm_attr_recover_status, !188, !"dlm_attr_recover_status", i1 false, i1 false}
!188 = !{!"../fs/dlm/lockspace.c", i32 143, i32 24}
!189 = !{ptr @.str.95, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../fs/dlm/lockspace.c", i32 107, i32 34}
!191 = !{ptr @.str.96, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../fs/dlm/lockspace.c", i32 149, i32 20}
!193 = !{ptr @dlm_attr_recover_nodeid, !194, !"dlm_attr_recover_nodeid", i1 false, i1 false}
!194 = !{!"../fs/dlm/lockspace.c", i32 148, i32 24}
!195 = !{ptr @.str.97, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../fs/dlm/lockspace.c", i32 112, i32 34}
!197 = !{ptr @.str.98, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../fs/dlm/lockspace.c", i32 206, i32 2}
!199 = !{ptr @.str.99, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @do_uevent._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @do_uevent._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.100, !198, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.101, !198, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.103, !198, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @do_uevent._entry.102, !198, !"_entry", i1 false, i1 false}
!206 = !{ptr @do_uevent._entry_ptr.104, !198, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.106, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../fs/dlm/lockspace.c", i32 214, i32 2}
!209 = !{ptr @do_uevent._entry.105, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @do_uevent._entry_ptr.107, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.109, !208, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @do_uevent._entry.108, !208, !"_entry", i1 false, i1 false}
!213 = !{ptr @do_uevent._entry_ptr.110, !208, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.111, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../fs/dlm/lockspace.c", i32 786, i32 3}
!216 = !{ptr @.str.112, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @release_lockspace._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @release_lockspace._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.114, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../fs/dlm/lockspace.c", i32 858, i32 2}
!221 = !{ptr @release_lockspace._entry.113, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @release_lockspace._entry_ptr.115, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.117, !220, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @release_lockspace._entry.116, !220, !"_entry", i1 false, i1 false}
!225 = !{ptr @release_lockspace._entry_ptr.118, !220, !"_entry_ptr", i1 false, i1 false}
!226 = !{i32 1, !"wchar_size", i32 2}
!227 = !{i32 1, !"min_enum_size", i32 4}
!228 = !{i32 8, !"branch-target-enforcement", i32 0}
!229 = !{i32 8, !"sign-return-address", i32 0}
!230 = !{i32 8, !"sign-return-address-all", i32 0}
!231 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!232 = !{i32 7, !"uwtable", i32 1}
!233 = !{i32 7, !"frame-pointer", i32 2}
!234 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!235 = !{i64 2148359328, i64 2148359354, i64 2148359383, i64 2148359417, i64 2148359448, i64 2148359471}
!236 = !{i64 2148447804}
!237 = !{i64 2148362513, i64 2148362545, i64 2148362574, i64 2148362608, i64 2148362639, i64 2148362662}
!238 = !{i64 2148448033}
!239 = !{!"branch_weights", i32 1, i32 2000}
!240 = !{!"branch_weights", i32 2000, i32 1}
!241 = !{!"auto-init"}
