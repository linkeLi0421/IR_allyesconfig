; ModuleID = '/llk/IR_all_yes/fs/fuse/virtio_fs.c_pt.bc'
source_filename = "../fs/fuse/virtio_fs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.virtio_driver = type { %struct.device_driver, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.constant_table = type { ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fuse_iqueue_ops = type { ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.virtio_device_id = type { i32, i32 }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.fuse_conn = type { %struct.spinlock, %struct.refcount_struct, %struct.atomic_t, %struct.callback_head, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, i32, i32, i32, %struct.fuse_iqueue, %struct.atomic64_t, %struct.rb_root, i32, i32, i32, i32, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, i32, i8, [7 x i8], %struct.atomic_t, i32, %struct.list_head, i32, [5 x ptr], i32, [4 x i32], %struct.atomic64_t, ptr, %struct.rw_semaphore, %struct.list_head, %struct.list_head, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.fuse_iqueue = type { i32, %struct.spinlock, %struct.wait_queue_head, i64, %struct.list_head, %struct.list_head, %struct.fuse_forget_link, ptr, i32, ptr, ptr, ptr }
%struct.fuse_forget_link = type { %struct.fuse_forget_one, ptr }
%struct.fuse_forget_one = type { i64, i64 }
%struct.rb_root = type { ptr }
%struct.atomic64_t = type { i64 }
%struct.virtio_fs = type { %struct.kref, %struct.list_head, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.virtio_fs_vq = type { %struct.spinlock, ptr, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.delayed_work, ptr, i8, i32, %struct.completion, [24 x i8], [84 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.fs_parse_result = type { i8, %union.anon.81 }
%union.anon.81 = type { i64 }
%struct.fuse_fs_context = type { i32, ptr, i32, %struct.kuid_t, %struct.kgid_t, i16, i32, i32, i32, ptr, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.79, %struct.list_head, %struct.list_head, %union.anon.80 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.4, ptr }
%union.anon.4 = type { i64 }
%struct.lockref = type { %union.anon.77 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { %struct.spinlock, i32 }
%union.anon.79 = type { %struct.list_head }
%union.anon.80 = type { %struct.hlist_node }
%struct.virtio_fs_forget = type { %struct.list_head, %struct.virtio_fs_forget_req }
%struct.virtio_fs_forget_req = type { %struct.fuse_in_header, %struct.fuse_forget_in }
%struct.fuse_in_header = type { i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.fuse_forget_in = type { i64 }
%struct.fuse_req = type { %struct.list_head, %struct.list_head, ptr, %struct.refcount_struct, i32, %struct.anon.83, %struct.anon.84, %struct.wait_queue_head, ptr, ptr }
%struct.anon.83 = type { %struct.fuse_in_header }
%struct.anon.84 = type { %struct.fuse_out_header }
%struct.fuse_out_header = type { i32, i32, i64 }
%struct.fuse_args = type { i64, i32, i16, i16, i16, [3 x %struct.fuse_in_arg], [2 x %struct.fuse_arg], ptr }
%struct.fuse_in_arg = type { i32, ptr }
%struct.fuse_arg = type { i32, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.fuse_args_pages = type { %struct.fuse_args, ptr, ptr, i32 }
%struct.fuse_page_desc = type { i32, i32 }
%struct.fuse_dev = type { ptr, %struct.fuse_pqueue, %struct.list_head }
%struct.fuse_pqueue = type { i32, %struct.spinlock, ptr, %struct.list_head }
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_fs_req_work = type { ptr, ptr, %struct.work_struct }

@__initcall__kmod_virtiofs__294_1526_virtio_fs_init6 = internal global ptr @virtio_fs_init, section ".initcall6.init", align 4
@virtio_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str, i32 0, ptr @virtio_fs_init_fs_context, ptr null, ptr null, ptr @virtio_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@virtio_fs_driver = internal global { %struct.virtio_driver, [36 x i8] } { %struct.virtio_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @id_table, ptr @feature_table, i32 0, ptr null, i32 0, ptr null, ptr @virtio_fs_probe, ptr null, ptr @virtio_fs_remove, ptr null, ptr @virtio_fs_freeze, ptr @virtio_fs_restore }, [36 x i8] zeroinitializer }, align 32
@__exitcall_virtio_fs_exit = internal global ptr @virtio_fs_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [54 x i8] c"virtiofs.author=Stefan Hajnoczi <stefanha@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [39 x i8] c"virtiofs.description=Virtio Filesystem\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [31 x i8] c"virtiofs.file=fs/fuse/virtiofs\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [21 x i8] c"virtiofs.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias299 = internal constant [27 x i8] c"virtiofs.alias=fs-virtiofs\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"virtiofs\00", [23 x i8] zeroinitializer }, align 32
@virtio_fs_context_ops = internal constant { %struct.fs_context_operations, [40 x i8] } { %struct.fs_context_operations { ptr @virtio_fs_free_fsc, ptr null, ptr @virtio_fs_parse_param, ptr null, ptr @virtio_fs_get_tree, ptr null }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@virtio_fs_parameters = internal constant { [3 x %struct.fs_parameter_spec], [48 x i8] } { [3 x %struct.fs_parameter_spec] [%struct.fs_parameter_spec { ptr @.str.1, ptr null, i8 0, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.1, ptr @fs_param_is_enum, i8 1, i16 0, ptr @dax_param_enums }, %struct.fs_parameter_spec zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dax\00", [28 x i8] zeroinitializer }, align 32
@dax_param_enums = internal constant { [4 x %struct.constant_table], [32 x i8] } { [4 x %struct.constant_table] [%struct.constant_table { ptr @.str.2, i32 1 }, %struct.constant_table { ptr @.str.3, i32 2 }, %struct.constant_table { ptr @.str.4, i32 3 }, %struct.constant_table zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"always\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"never\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"inode\00", [26 x i8] zeroinitializer }, align 32
@virtio_fs_get_tree._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016virtio-fs: tag <%s> not found\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"virtio_fs_get_tree\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/fuse/virtio_fs.c\00", [44 x i8] zeroinitializer }, align 32
@virtio_fs_get_tree._entry_ptr = internal global ptr @virtio_fs_get_tree._entry, section ".printk_index", align 4
@virtio_fs_fiq_ops = internal constant { %struct.fuse_iqueue_ops, [16 x i8] } { %struct.fuse_iqueue_ops { ptr @virtio_fs_wake_forget_and_unlock, ptr @virtio_fs_wake_interrupt_and_unlock, ptr @virtio_fs_wake_pending_and_unlock, ptr @virtio_fs_fiq_release }, [16 x i8] zeroinitializer }, align 32
@virtio_fs_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @virtio_fs_mutex, i64 52), ptr getelementptr (i8, ptr @virtio_fs_mutex, i64 52) }, ptr @virtio_fs_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@virtio_fs_instances = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @virtio_fs_instances, ptr @virtio_fs_instances }, [24 x i8] zeroinitializer }, align 32
@send_forget_request.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.7, ptr @.str.9, i8 0, i8 107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"send_forget_request\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@send_forget_request.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.7, ptr @.str.10, i8 0, i8 109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"virtio-fs: Could not queue FORGET: err=%d. Will try later\0A\00", [37 x i8] zeroinitializer }, align 32
@send_forget_request.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.7, ptr @.str.11, i8 0, i8 111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"virtio-fs: Could not queue FORGET: err=%d. Dropping it.\0A\00", [39 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@virtio_fs_wake_pending_and_unlock.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.7, ptr @.str.13, i8 1, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"virtio_fs_wake_pending_and_unlock\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: opcode %u unique %#llx nodeid %#llx in.len %u out.len %u\0A\00", [34 x i8] zeroinitializer }, align 32
@virtio_fs_wake_pending_and_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.7, i32 1261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013virtio-fs: virtio_fs_enqueue_req() failed %d\0A\00", [48 x i8] zeroinitializer }, align 32
@virtio_fs_wake_pending_and_unlock._entry_ptr = internal global ptr @virtio_fs_wake_pending_and_unlock._entry, section ".printk_index", align 4
@virtio_fs_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.15, ptr @.str.7, i32 1309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"virtio_fs_fill_super\00", [43 x i8] zeroinitializer }, align 32
@virtio_fs_fill_super._entry_ptr = internal global ptr @virtio_fs_fill_super._entry, section ".printk_index", align 4
@virtio_fs_fill_super._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.7, i32 1329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013virtio-fs: dax can't be enabled as filesystem device does not support it.\0A\00", [51 x i8] zeroinitializer }, align 32
@virtio_fs_fill_super._entry_ptr.18 = internal global ptr @virtio_fs_fill_super._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"virtio_fs_mutex.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"virtio_fs_mutex\00", [16 x i8] zeroinitializer }, align 32
@id_table = internal constant { [2 x %struct.virtio_device_id], [16 x i8] } { [2 x %struct.virtio_device_id] [%struct.virtio_device_id { i32 26, i32 -1 }, %struct.virtio_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@feature_table = internal constant { [0 x i32], [32 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/linux/virtio_config.h\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hiprio\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"requests.%u\00", [20 x i8] zeroinitializer }, align 32
@virtio_fs_vq_done.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.7, ptr @.str.25, i8 0, i8 -92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"virtio_fs_vq_done\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %s\0A\00", [25 x i8] zeroinitializer }, align 32
@virtio_fs_init_vq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&fsvq->lock\00", [20 x i8] zeroinitializer }, align 32
@virtio_fs_init_vq.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&fsvq->done_work)\00", [60 x i8] zeroinitializer }, align 32
@virtio_fs_init_vq.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&fsvq->dispatch_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@virtio_fs_init_vq.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&fsvq->dispatch_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@virtio_fs_init_vq.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@virtio_fs_init_vq.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@virtio_fs_init_vq.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@virtio_fs_requests_done_work.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&w->done_work)\00", [63 x i8] zeroinitializer }, align 32
@virtio_fs_request_dispatch_work.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.7, ptr @.str.39, i8 0, i8 89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"virtio_fs_request_dispatch_work\00", [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"virtio-fs: worker %s called.\0A\00", [34 x i8] zeroinitializer }, align 32
@virtio_fs_request_dispatch_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.38, ptr @.str.7, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@virtio_fs_request_dispatch_work._entry_ptr = internal global ptr @virtio_fs_request_dispatch_work._entry, section ".printk_index", align 4
@virtio_fs_hiprio_dispatch_work.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.7, ptr @.str.39, i8 0, i8 118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"virtio_fs_hiprio_dispatch_work\00", [33 x i8] zeroinitializer }, align 32
@virtio_fs_freeze._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.7, i32 939, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014virtio-fs: suspend/resume not yet supported\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"virtio_fs_freeze\00", [47 x i8] zeroinitializer }, align 32
@virtio_fs_freeze._entry_ptr = internal global ptr @virtio_fs_freeze._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 4294967268, i64 4294967284]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 4294967268, i64 4294967284]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 4294967268, i64 4294967284]
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"virtio_fs_type\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1503, i32 32 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"virtio_fs_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 957, i32 29 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1505, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant [22 x i8] c"virtio_fs_context_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1482, i32 43 }
@___asan_gen_.59 = private unnamed_addr constant [21 x i8] c"virtio_fs_parameters\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 103, i32 39 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 104, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [16 x i8] c"dax_param_enums\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 91, i32 36 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 92, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 93, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 94, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1426, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [18 x i8] c"virtio_fs_fiq_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1272, i32 37 }
@___asan_gen_.92 = private unnamed_addr constant [16 x i8] c"virtio_fs_mutex\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [20 x i8] c"virtio_fs_instances\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 31, i32 8 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 430, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 435, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 445, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1239, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1261, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1309, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1328, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 30, i32 8 }
@___asan_gen_.140 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 950, i32 38 }
@___asan_gen_.143 = private unnamed_addr constant [14 x i8] c"feature_table\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 955, i32 27 }
@___asan_gen_.147 = private unnamed_addr constant [33 x i8] c"../include/linux/virtio_config.h\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 451, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 712, i32 41 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 719, i32 34 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 656, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 665, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 671, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 672, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 675, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 676, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 87, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 641, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 358, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 399, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 472, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.225 = private constant [23 x i8] c"../fs/fuse/virtio_fs.c\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 939, i32 2 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_alias299, ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_virtio_fs_exit, ptr @__initcall__kmod_virtiofs__294_1526_virtio_fs_init6, ptr @virtio_fs_exit, ptr @virtio_fs_fill_super._entry, ptr @virtio_fs_fill_super._entry.16, ptr @virtio_fs_fill_super._entry_ptr, ptr @virtio_fs_fill_super._entry_ptr.18, ptr @virtio_fs_freeze._entry, ptr @virtio_fs_freeze._entry_ptr, ptr @virtio_fs_get_tree._entry, ptr @virtio_fs_get_tree._entry_ptr, ptr @virtio_fs_request_dispatch_work._entry, ptr @virtio_fs_request_dispatch_work._entry_ptr, ptr @virtio_fs_wake_pending_and_unlock._entry, ptr @virtio_fs_wake_pending_and_unlock._entry_ptr, ptr @virtio_fs_type, ptr @virtio_fs_driver, ptr @.str, ptr @virtio_fs_context_ops, ptr @virtio_fs_parameters, ptr @.str.1, ptr @dax_param_enums, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @virtio_fs_fiq_ops, ptr @virtio_fs_mutex, ptr @virtio_fs_instances, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @id_table, ptr @feature_table, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @virtio_fs_init_vq.__key, ptr @.str.26, ptr @virtio_fs_init_vq.__key.27, ptr @.str.28, ptr @virtio_fs_init_vq.__key.29, ptr @.str.30, ptr @virtio_fs_init_vq.__key.31, ptr @.str.32, ptr @virtio_fs_init_vq.__key.33, ptr @virtio_fs_init_vq.__key.34, ptr @virtio_fs_init_vq.__key.35, ptr @init_completion.__key, ptr @.str.36, ptr @virtio_fs_requests_done_work.__key, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_fs_driver to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_fs_context_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_fs_parameters to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dax_param_enums to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_fs_get_tree._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_fs_fiq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_fs_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_fs_instances to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_fs_wake_pending_and_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_fs_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_fs_fill_super._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @feature_table to i32), i32 0, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_fs_init_vq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_fs_init_vq.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_fs_init_vq.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_fs_init_vq.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_fs_init_vq.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_fs_init_vq.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_fs_init_vq.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_fs_requests_done_work.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_fs_request_dispatch_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_fs_freeze._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_fs_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_virtio_driver(ptr noundef nonnull @virtio_fs_driver) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_filesystem(ptr noundef nonnull @virtio_fs_type) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @unregister_virtio_driver(ptr noundef nonnull @virtio_fs_driver) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @virtio_fs_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @unregister_filesystem(ptr noundef nonnull @virtio_fs_type) #13
  tail call void @unregister_virtio_driver(ptr noundef nonnull @virtio_fs_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_fs_init_fs_context(ptr noundef %fsc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %purpose = getelementptr inbounds %struct.fs_context, ptr %fsc, i32 0, i32 17
  %0 = ptrtoint ptr %purpose to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %purpose, align 4
  %bf.lshr.mask = and i32 %bf.load, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.lshr.mask)
  %cmp = icmp eq i32 %bf.lshr.mask, 16777216
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @fuse_init_fs_context_submount(ptr noundef %fsc) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 48) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fsc, i32 0, i32 3
  %2 = ptrtoint ptr %fs_private to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %fs_private, align 4
  %3 = ptrtoint ptr %fsc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @virtio_fs_context_ops, ptr %fsc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end3 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_kill_sb(ptr noundef %sb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %2 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_root, align 64
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @fuse_mount_remove(ptr noundef %1) #13
  br i1 %call1, label %if.then3, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then3:                                         ; preds = %if.then
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %priv.i = getelementptr inbounds %struct.fuse_conn, ptr %5, i32 0, i32 12, i32 11
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %vqs.i = getelementptr inbounds %struct.virtio_fs, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %vqs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vqs.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %9) #13
  %connected.i = getelementptr inbounds %struct.virtio_fs_vq, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %connected.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %connected.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %9) #13
  tail call void @mutex_lock_nested(ptr noundef nonnull @virtio_fs_mutex, i32 noundef 0) #13
  tail call fastcc void @virtio_fs_drain_all_queues_locked(ptr noundef %7) #13
  tail call void @mutex_unlock(ptr noundef nonnull @virtio_fs_mutex) #13
  tail call void @fuse_conn_destroy(ptr noundef %1) #13
  %nvqs.i.i = getelementptr inbounds %struct.virtio_fs, ptr %7, i32 0, i32 4
  %11 = ptrtoint ptr %nvqs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nvqs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp7.not.i.i = icmp eq i32 %12, 0
  br i1 %cmp7.not.i.i, label %if.then3.virtio_fs_stop_all_queues.exit.i_crit_edge, label %if.then3.for.body.i.i_crit_edge

if.then3.for.body.i.i_crit_edge:                  ; preds = %if.then3
  br label %for.body.i.i

if.then3.virtio_fs_stop_all_queues.exit.i_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %virtio_fs_stop_all_queues.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then3.for.body.i.i_crit_edge
  %i.08.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then3.for.body.i.i_crit_edge ]
  %13 = ptrtoint ptr %vqs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vqs.i, align 4
  %arrayidx.i.i = getelementptr %struct.virtio_fs_vq, ptr %14, i32 %i.08.i.i
  tail call void @_raw_spin_lock(ptr noundef %arrayidx.i.i) #13
  %connected.i.i = getelementptr %struct.virtio_fs_vq, ptr %14, i32 %i.08.i.i, i32 7
  %15 = ptrtoint ptr %connected.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %connected.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i) #13
  %inc.i.i = add nuw i32 %i.08.i.i, 1
  %16 = ptrtoint ptr %nvqs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nvqs.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %17
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.virtio_fs_stop_all_queues.exit.i_crit_edge

for.body.i.i.virtio_fs_stop_all_queues.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %virtio_fs_stop_all_queues.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

virtio_fs_stop_all_queues.exit.i:                 ; preds = %for.body.i.i.virtio_fs_stop_all_queues.exit.i_crit_edge, %if.then3.virtio_fs_stop_all_queues.exit.i_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @virtio_fs_mutex, i32 noundef 0) #13
  tail call fastcc void @virtio_fs_drain_all_queues_locked(ptr noundef %7) #13
  tail call void @mutex_unlock(ptr noundef nonnull @virtio_fs_mutex) #13
  %18 = ptrtoint ptr %nvqs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nvqs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp8.not.i.i = icmp eq i32 %19, 0
  br i1 %cmp8.not.i.i, label %virtio_fs_stop_all_queues.exit.i.if.end4_crit_edge, label %virtio_fs_stop_all_queues.exit.i.for.body.i13.i_crit_edge

virtio_fs_stop_all_queues.exit.i.for.body.i13.i_crit_edge: ; preds = %virtio_fs_stop_all_queues.exit.i
  br label %for.body.i13.i

virtio_fs_stop_all_queues.exit.i.if.end4_crit_edge: ; preds = %virtio_fs_stop_all_queues.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

for.body.i13.i:                                   ; preds = %cleanup.i.i.for.body.i13.i_crit_edge, %virtio_fs_stop_all_queues.exit.i.for.body.i13.i_crit_edge
  %i.09.i.i = phi i32 [ %inc.i14.i, %cleanup.i.i.for.body.i13.i_crit_edge ], [ 0, %virtio_fs_stop_all_queues.exit.i.for.body.i13.i_crit_edge ]
  %20 = ptrtoint ptr %vqs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vqs.i, align 4
  %fud.i.i = getelementptr %struct.virtio_fs_vq, ptr %21, i32 %i.09.i.i, i32 6
  %22 = ptrtoint ptr %fud.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fud.i.i, align 16
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %for.body.i13.i.cleanup.i.i_crit_edge, label %if.end.i.i

for.body.i13.i.cleanup.i.i_crit_edge:             ; preds = %for.body.i13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i.i

if.end.i.i:                                       ; preds = %for.body.i13.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @fuse_dev_free(ptr noundef nonnull %23) #13
  %24 = ptrtoint ptr %fud.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %fud.i.i, align 16
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end.i.i, %for.body.i13.i.cleanup.i.i_crit_edge
  %inc.i14.i = add nuw i32 %i.09.i.i, 1
  %25 = ptrtoint ptr %nvqs.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nvqs.i.i, align 4
  %cmp.i15.i = icmp ult i32 %inc.i14.i, %26
  br i1 %cmp.i15.i, label %cleanup.i.i.for.body.i13.i_crit_edge, label %cleanup.i.i.if.end4_crit_edge

cleanup.i.i.if.end4_crit_edge:                    ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

cleanup.i.i.for.body.i13.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i13.i

if.end4:                                          ; preds = %cleanup.i.i.if.end4_crit_edge, %virtio_fs_stop_all_queues.exit.i.if.end4_crit_edge, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  tail call void @kill_anon_super(ptr noundef %sb) #13
  tail call void @fuse_mount_destroy(ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_init_fs_context_submount(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_fs_free_fsc(ptr nocapture noundef readonly %fsc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fsc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  tail call void @kfree(ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_fs_parse_param(ptr noundef %fsc, ptr noundef %param) #3 align 64 {
entry:
  %result = alloca %struct.fs_parse_result, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %result) #13
  %0 = call ptr @memset(ptr %result, i32 255, i32 16)
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fsc, i32 0, i32 3
  %1 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fs_private, align 4
  %log.i = getelementptr inbounds %struct.fs_context, ptr %fsc, i32 0, i32 9
  %call.i = call i32 @__fs_parse(ptr noundef %log.i, ptr noundef nonnull @virtio_fs_parameters, ptr noundef %param, ptr noundef nonnull %result) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.cleanup.sink.split_crit_edge
    i32 1, label %sw.bb1
  ]

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %4 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb1, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %6, %sw.bb1 ], [ 1, %if.end.cleanup.sink.split_crit_edge ]
  %dax_mode = getelementptr inbounds %struct.fuse_fs_context, ptr %2, i32 0, i32 6
  %7 = ptrtoint ptr %dax_mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %dax_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %result) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_fs_get_tree(ptr noundef %fsc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %source = getelementptr inbounds %struct.fs_context, ptr %fsc, i32 0, i32 10
  %0 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %source, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @virtio_fs_mutex, i32 noundef 0) #13
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @virtio_fs_instances, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @virtio_fs_instances
  br i1 %cmp.not.i, label %virtio_fs_find_instance.exit.thread, label %for.body.i

virtio_fs_find_instance.exit.thread:              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef nonnull @virtio_fs_mutex) #13
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %tag1.i = getelementptr i8, ptr %.pn.i, i32 8
  %3 = ptrtoint ptr %tag1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tag1.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %4, ptr noundef %1) #17
  %cmp2.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %fs.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fs.0.le.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %fs.0.le.i, i32 1, i32 3, i32 1) #13
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fs.0.le.i, ptr %fs.0.le.i, i32 1, ptr elementtype(i32) %fs.0.le.i) #13, !srcloc !133
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !134

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.virtio_fs_find_instance.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !135

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.virtio_fs_find_instance.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %virtio_fs_find_instance.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %fs.0.le.i, i32 noundef %.sink.i.i.i.i.i) #13
  br label %virtio_fs_find_instance.exit

virtio_fs_find_instance.exit:                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.virtio_fs_find_instance.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @virtio_fs_mutex) #13
  %tobool.not = icmp eq ptr %fs.0.le.i, null
  br i1 %tobool.not, label %virtio_fs_find_instance.exit.do.end_crit_edge, label %if.end

virtio_fs_find_instance.exit.do.end_crit_edge:    ; preds = %virtio_fs_find_instance.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %virtio_fs_find_instance.exit.do.end_crit_edge, %virtio_fs_find_instance.exit.thread
  %7 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %source, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %8) #18
  br label %cleanup

if.end:                                           ; preds = %virtio_fs_find_instance.exit
  %vqs = getelementptr i8, ptr %.pn.i, i32 12
  %9 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vqs, align 4
  %vq = getelementptr %struct.virtio_fs_vq, ptr %10, i32 1, i32 1
  %11 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vq, align 4
  %call3 = tail call i32 @virtqueue_get_vring_size(ptr noundef %12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call3)
  %cmp = icmp ult i32 %call3, 5
  br i1 %cmp, label %do.end15, label %if.end31.critedge, !prof !134

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1431, i32 noundef 9, ptr noundef null) #13
  br label %out_err

if.end31.critedge:                                ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 616) #16
  %tobool33.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool33.not, label %if.end31.critedge.out_err_crit_edge, label %if.end35

if.end31.critedge.out_err_crit_edge:              ; preds = %if.end31.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_err

if.end35:                                         ; preds = %if.end31.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i139 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 16) #16
  %tobool37.not = icmp eq ptr %call7.i.i139, null
  br i1 %tobool37.not, label %if.end35.out_err_crit_edge, label %if.end39

if.end35.out_err_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_err

if.end39:                                         ; preds = %if.end35
  %user_ns = getelementptr inbounds %struct.fs_context, ptr %fsc, i32 0, i32 6
  %15 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %user_ns, align 4
  tail call void @fuse_conn_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i.i139, ptr noundef %16, ptr noundef nonnull @virtio_fs_fiq_ops, ptr noundef nonnull %fs.0.le.i) #13
  %release = getelementptr inbounds %struct.fuse_conn, ptr %call7.i.i, i32 0, i32 35
  %17 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @fuse_free_conn, ptr %release, align 8
  %delete_stale = getelementptr inbounds %struct.fuse_conn, ptr %call7.i.i, i32 0, i32 26
  %18 = ptrtoint ptr %delete_stale to i32
  call void @__asan_loadN_noabort(i32 %18, i32 7)
  %bf.load = load i56, ptr %delete_stale, align 1
  %bf.set45 = or i56 %bf.load, 2432
  store i56 %bf.set45, ptr %delete_stale, align 1
  %max_pages_limit = getelementptr inbounds %struct.fuse_conn, ptr %call7.i.i, i32 0, i32 11
  %19 = ptrtoint ptr %max_pages_limit to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_pages_limit, align 8
  %sub = add i32 %call3, -4
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 %sub)
  %22 = ptrtoint ptr %max_pages_limit to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %max_pages_limit, align 8
  %s_fs_info = getelementptr inbounds %struct.fs_context, ptr %fsc, i32 0, i32 12
  %23 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i139, ptr %s_fs_info, align 4
  %call49 = tail call ptr @sget_fc(ptr noundef %fsc, ptr noundef nonnull @virtio_fs_test_super, ptr noundef nonnull @set_anon_super_fc) #13
  %24 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info, align 4
  %tobool51.not = icmp eq ptr %25, null
  br i1 %tobool51.not, label %if.end39.if.end53_crit_edge, label %if.then52

if.end39.if.end53_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then52:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @fuse_mount_destroy(ptr noundef nonnull %call7.i.i139) #13
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end39.if.end53_crit_edge
  %cmp.i = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %call49 to i32
  br label %cleanup

if.end57:                                         ; preds = %if.end53
  %s_root = getelementptr inbounds %struct.super_block, ptr %call49, i32 0, i32 13
  %27 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_root, align 64
  %tobool58.not = icmp eq ptr %28, null
  br i1 %tobool58.not, label %if.then59, label %if.end57.if.end64_crit_edge

if.end57.if.end64_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

if.then59:                                        ; preds = %if.end57
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %call49, i32 0, i32 33
  %29 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_fs_info.i.i, align 16
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %priv.i = getelementptr inbounds %struct.fuse_conn, ptr %32, i32 0, i32 12, i32 11
  %33 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv.i, align 8
  %fs_private.i = getelementptr inbounds %struct.fs_context, ptr %fsc, i32 0, i32 3
  %35 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fs_private.i, align 4
  %rootmode.i.i = getelementptr inbounds %struct.fuse_fs_context, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %rootmode.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 16384, ptr %rootmode.i.i, align 4
  %default_permissions.i.i = getelementptr inbounds %struct.fuse_fs_context, ptr %36, i32 0, i32 5
  %38 = ptrtoint ptr %default_permissions.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load.i.i = load i16, ptr %default_permissions.i.i, align 4
  %max_read.i.i = getelementptr inbounds %struct.fuse_fs_context, ptr %36, i32 0, i32 7
  %39 = ptrtoint ptr %max_read.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %max_read.i.i, align 4
  %blksize.i.i = getelementptr inbounds %struct.fuse_fs_context, ptr %36, i32 0, i32 8
  %40 = ptrtoint ptr %blksize.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 512, ptr %blksize.i.i, align 4
  %bf.set12.i.i = or i16 %bf.load.i.i, 1984
  store i16 %bf.set12.i.i, ptr %default_permissions.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @virtio_fs_mutex, i32 noundef 0) #13
  %list.i = getelementptr inbounds %struct.virtio_fs, ptr %34, i32 0, i32 1
  %41 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %list.i, align 4
  %cmp.i.not.i = icmp eq ptr %42, %list.i
  br i1 %cmp.i.not.i, label %do.end.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then59
  %nvqs.i = getelementptr inbounds %struct.virtio_fs, ptr %34, i32 0, i32 4
  %43 = ptrtoint ptr %nvqs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nvqs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp80.not.i = icmp eq i32 %44, 0
  br i1 %cmp80.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %vqs.i = getelementptr inbounds %struct.virtio_fs, ptr %34, i32 0, i32 3
  br label %for.body.i142

do.end.i:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #15
  %tag.i = getelementptr inbounds %struct.virtio_fs, ptr %34, i32 0, i32 2
  %45 = ptrtoint ptr %tag.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tag.i, align 4
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %46) #18
  br label %virtio_fs_fill_super.exit.thread

for.cond.i141:                                    ; preds = %for.body.i142
  %inc.i = add nuw i32 %i.081.i, 1
  %47 = ptrtoint ptr %nvqs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nvqs.i, align 4
  %cmp.i140 = icmp ult i32 %inc.i, %48
  br i1 %cmp.i140, label %for.cond.i141.for.body.i142_crit_edge, label %for.cond.i141.for.end.i_crit_edge

for.cond.i141.for.end.i_crit_edge:                ; preds = %for.cond.i141
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.cond.i141.for.body.i142_crit_edge:            ; preds = %for.cond.i141
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i142

for.body.i142:                                    ; preds = %for.cond.i141.for.body.i142_crit_edge, %for.body.lr.ph.i
  %i.081.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i141.for.body.i142_crit_edge ]
  %49 = ptrtoint ptr %vqs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vqs.i, align 4
  %call4.i = tail call ptr @fuse_dev_alloc() #13
  %fud.i = getelementptr %struct.virtio_fs_vq, ptr %50, i32 %i.081.i, i32 6
  %51 = ptrtoint ptr %fud.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call4.i, ptr %fud.i, align 16
  %tobool6.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool6.not.i, label %for.body.i142.err_free_fuse_devs.i_crit_edge, label %for.cond.i141

for.body.i142.err_free_fuse_devs.i_crit_edge:     ; preds = %for.body.i142
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_fuse_devs.i

for.end.i:                                        ; preds = %for.cond.i141.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %fudptr.i = getelementptr inbounds %struct.fuse_fs_context, ptr %36, i32 0, i32 11
  %52 = ptrtoint ptr %fudptr.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %fudptr.i, align 4
  %dax_mode.i = getelementptr inbounds %struct.fuse_fs_context, ptr %36, i32 0, i32 6
  %53 = ptrtoint ptr %dax_mode.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dax_mode.i, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %54, label %for.end.i.if.end20.i_crit_edge [
    i32 2, label %for.end.i.if.end23.i_crit_edge
    i32 1, label %land.lhs.true.i
  ]

for.end.i.if.end23.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23.i

for.end.i.if.end20.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i

land.lhs.true.i:                                  ; preds = %for.end.i
  %dax_dev.i = getelementptr inbounds %struct.virtio_fs, ptr %34, i32 0, i32 6
  %56 = ptrtoint ptr %dax_dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dax_dev.i, align 4
  %tobool13.not.i = icmp eq ptr %57, null
  br i1 %tobool13.not.i, label %if.then14.i, label %land.lhs.true.i.if.end20.i_crit_edge

land.lhs.true.i.if.end20.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i

if.then14.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #18
  br label %err_free_fuse_devs.i

if.end20.i:                                       ; preds = %land.lhs.true.i.if.end20.i_crit_edge, %for.end.i.if.end20.i_crit_edge
  %dax_dev21.i = getelementptr inbounds %struct.virtio_fs, ptr %34, i32 0, i32 6
  %58 = ptrtoint ptr %dax_dev21.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dax_dev21.i, align 4
  %dax_dev22.i = getelementptr inbounds %struct.fuse_fs_context, ptr %36, i32 0, i32 10
  %60 = ptrtoint ptr %dax_dev22.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %dax_dev22.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end20.i, %for.end.i.if.end23.i_crit_edge
  %call24.i = tail call i32 @fuse_fill_super_common(ptr noundef %call49, ptr noundef %36) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.i = icmp slt i32 %call24.i, 0
  br i1 %cmp25.i, label %if.end23.i.err_free_fuse_devs.i_crit_edge, label %for.cond28.preheader.i

if.end23.i.err_free_fuse_devs.i_crit_edge:        ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_fuse_devs.i

for.cond28.preheader.i:                           ; preds = %if.end23.i
  %61 = ptrtoint ptr %nvqs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nvqs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp3082.not.i = icmp eq i32 %62, 0
  br i1 %cmp3082.not.i, label %for.cond28.preheader.i.virtio_fs_fill_super.exit.thread152_crit_edge, label %for.body31.lr.ph.i

for.cond28.preheader.i.virtio_fs_fill_super.exit.thread152_crit_edge: ; preds = %for.cond28.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %virtio_fs_fill_super.exit.thread152

for.body31.lr.ph.i:                               ; preds = %for.cond28.preheader.i
  %vqs33.i = getelementptr inbounds %struct.virtio_fs, ptr %34, i32 0, i32 3
  br label %for.body31.i

for.body31.i:                                     ; preds = %for.body31.i.for.body31.i_crit_edge, %for.body31.lr.ph.i
  %i.183.i = phi i32 [ 0, %for.body31.lr.ph.i ], [ %inc37.i, %for.body31.i.for.body31.i_crit_edge ]
  %63 = ptrtoint ptr %vqs33.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vqs33.i, align 4
  %fud35.i = getelementptr %struct.virtio_fs_vq, ptr %64, i32 %i.183.i, i32 6
  %65 = ptrtoint ptr %fud35.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fud35.i, align 16
  tail call void @fuse_dev_install(ptr noundef %66, ptr noundef %32) #13
  %inc37.i = add nuw i32 %i.183.i, 1
  %67 = ptrtoint ptr %nvqs.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nvqs.i, align 4
  %cmp30.i = icmp ult i32 %inc37.i, %68
  br i1 %cmp30.i, label %for.body31.i.for.body31.i_crit_edge, label %for.end38.i

for.body31.i.for.body31.i_crit_edge:              ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body31.i

for.end38.i:                                      ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %phi.cmp.i = icmp eq i32 %68, 0
  br i1 %phi.cmp.i, label %for.end38.i.virtio_fs_fill_super.exit.thread152_crit_edge, label %for.end38.i.for.body.i.i_crit_edge

for.end38.i.for.body.i.i_crit_edge:               ; preds = %for.end38.i
  br label %for.body.i.i

for.end38.i.virtio_fs_fill_super.exit.thread152_crit_edge: ; preds = %for.end38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %virtio_fs_fill_super.exit.thread152

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.end38.i.for.body.i.i_crit_edge
  %i.08.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.end38.i.for.body.i.i_crit_edge ]
  %69 = ptrtoint ptr %vqs33.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %vqs33.i, align 4
  %arrayidx.i.i = getelementptr %struct.virtio_fs_vq, ptr %70, i32 %i.08.i.i
  tail call void @_raw_spin_lock(ptr noundef %arrayidx.i.i) #13
  %connected.i.i = getelementptr %struct.virtio_fs_vq, ptr %70, i32 %i.08.i.i, i32 7
  %71 = ptrtoint ptr %connected.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %connected.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i) #13
  %inc.i.i = add nuw i32 %i.08.i.i, 1
  %72 = ptrtoint ptr %nvqs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nvqs.i, align 4
  %cmp.i70.i = icmp ult i32 %inc.i.i, %73
  br i1 %cmp.i70.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.virtio_fs_fill_super.exit.thread152_crit_edge

for.body.i.i.virtio_fs_fill_super.exit.thread152_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %virtio_fs_fill_super.exit.thread152

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

virtio_fs_fill_super.exit.thread152:              ; preds = %for.body.i.i.virtio_fs_fill_super.exit.thread152_crit_edge, %for.end38.i.virtio_fs_fill_super.exit.thread152_crit_edge, %for.cond28.preheader.i.virtio_fs_fill_super.exit.thread152_crit_edge
  tail call void @fuse_send_init(ptr noundef %30) #13
  tail call void @mutex_unlock(ptr noundef nonnull @virtio_fs_mutex) #13
  br label %if.end63

err_free_fuse_devs.i:                             ; preds = %if.end23.i.err_free_fuse_devs.i_crit_edge, %if.then14.i, %for.body.i142.err_free_fuse_devs.i_crit_edge
  %err.0.i = phi i32 [ %call24.i, %if.end23.i.err_free_fuse_devs.i_crit_edge ], [ -22, %if.then14.i ], [ -12, %for.body.i142.err_free_fuse_devs.i_crit_edge ]
  %74 = ptrtoint ptr %nvqs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nvqs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp8.not.i.i = icmp eq i32 %75, 0
  br i1 %cmp8.not.i.i, label %err_free_fuse_devs.i.virtio_fs_fill_super.exit.thread_crit_edge, label %for.body.lr.ph.i73.i

err_free_fuse_devs.i.virtio_fs_fill_super.exit.thread_crit_edge: ; preds = %err_free_fuse_devs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %virtio_fs_fill_super.exit.thread

for.body.lr.ph.i73.i:                             ; preds = %err_free_fuse_devs.i
  %vqs.i72.i = getelementptr inbounds %struct.virtio_fs, ptr %34, i32 0, i32 3
  br label %for.body.i74.i

for.body.i74.i:                                   ; preds = %cleanup.i.i.for.body.i74.i_crit_edge, %for.body.lr.ph.i73.i
  %i.09.i.i = phi i32 [ 0, %for.body.lr.ph.i73.i ], [ %inc.i75.i, %cleanup.i.i.for.body.i74.i_crit_edge ]
  %76 = ptrtoint ptr %vqs.i72.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %vqs.i72.i, align 4
  %fud.i.i = getelementptr %struct.virtio_fs_vq, ptr %77, i32 %i.09.i.i, i32 6
  %78 = ptrtoint ptr %fud.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %fud.i.i, align 16
  %tobool.not.i.i = icmp eq ptr %79, null
  br i1 %tobool.not.i.i, label %for.body.i74.i.cleanup.i.i_crit_edge, label %if.end.i.i

for.body.i74.i.cleanup.i.i_crit_edge:             ; preds = %for.body.i74.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i.i

if.end.i.i:                                       ; preds = %for.body.i74.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @fuse_dev_free(ptr noundef nonnull %79) #13
  %80 = ptrtoint ptr %fud.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %fud.i.i, align 16
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end.i.i, %for.body.i74.i.cleanup.i.i_crit_edge
  %inc.i75.i = add nuw i32 %i.09.i.i, 1
  %81 = ptrtoint ptr %nvqs.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nvqs.i, align 4
  %cmp.i76.i = icmp ult i32 %inc.i75.i, %82
  br i1 %cmp.i76.i, label %cleanup.i.i.for.body.i74.i_crit_edge, label %virtio_fs_fill_super.exit

cleanup.i.i.for.body.i74.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i74.i

virtio_fs_fill_super.exit.thread:                 ; preds = %err_free_fuse_devs.i.virtio_fs_fill_super.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ %err.0.i, %err_free_fuse_devs.i.virtio_fs_fill_super.exit.thread_crit_edge ], [ -22, %do.end.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @virtio_fs_mutex) #13
  br label %if.then62

virtio_fs_fill_super.exit:                        ; preds = %cleanup.i.i
  tail call void @mutex_unlock(ptr noundef nonnull @virtio_fs_mutex) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool61.not = icmp eq i32 %err.0.i, 0
  br i1 %tobool61.not, label %virtio_fs_fill_super.exit.if.end63_crit_edge, label %virtio_fs_fill_super.exit.if.then62_crit_edge

virtio_fs_fill_super.exit.if.then62_crit_edge:    ; preds = %virtio_fs_fill_super.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then62

virtio_fs_fill_super.exit.if.end63_crit_edge:     ; preds = %virtio_fs_fill_super.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

if.then62:                                        ; preds = %virtio_fs_fill_super.exit.if.then62_crit_edge, %virtio_fs_fill_super.exit.thread
  %retval.0.i151 = phi i32 [ %retval.0.i.ph, %virtio_fs_fill_super.exit.thread ], [ %err.0.i, %virtio_fs_fill_super.exit.if.then62_crit_edge ]
  tail call void @deactivate_locked_super(ptr noundef %call49) #13
  br label %cleanup

if.end63:                                         ; preds = %virtio_fs_fill_super.exit.if.end63_crit_edge, %virtio_fs_fill_super.exit.thread152
  %s_flags = getelementptr inbounds %struct.super_block, ptr %call49, i32 0, i32 10
  %83 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %s_flags, align 4
  %or = or i32 %84, 1073741824
  store i32 %or, ptr %s_flags, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end57.if.end64_crit_edge
  %root = getelementptr inbounds %struct.fs_context, ptr %fsc, i32 0, i32 5
  %85 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %root, align 4
  %tobool66.not = icmp eq ptr %86, null
  br i1 %tobool66.not, label %if.end64.if.end88_crit_edge, label %do.end82, !prof !135

if.end64.if.end88_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

do.end82:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1470, i32 noundef 9, ptr noundef null) #13
  br label %if.end88

if.end88:                                         ; preds = %do.end82, %if.end64.if.end88_crit_edge
  %87 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %s_root, align 64
  %tobool.not.i = icmp eq ptr %88, null
  br i1 %tobool.not.i, label %if.end88.dget.exit_crit_edge, label %if.then.i143

if.end88.dget.exit_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #15
  br label %dget.exit

if.then.i143:                                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #15
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %88, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #13
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i143, %if.end88.dget.exit_crit_edge
  %89 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %88, ptr %root, align 4
  br label %cleanup

out_err:                                          ; preds = %if.end35.out_err_crit_edge, %if.end31.critedge.out_err_crit_edge, %do.end15
  %err.0 = phi i32 [ -12, %if.end35.out_err_crit_edge ], [ -12, %if.end31.critedge.out_err_crit_edge ], [ -5, %do.end15 ]
  %fc.0 = phi ptr [ %call7.i.i, %if.end35.out_err_crit_edge ], [ null, %if.end31.critedge.out_err_crit_edge ], [ null, %do.end15 ]
  tail call void @kfree(ptr noundef %fc.0) #13
  tail call void @mutex_lock_nested(ptr noundef nonnull @virtio_fs_mutex, i32 noundef 0) #13
  %call.i.i.i.i.i.i.i144 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %fs.0.le.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !136
  tail call void @llvm.prefetch.p0(ptr nonnull %fs.0.le.i, i32 1, i32 3, i32 1) #13
  %90 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %fs.0.le.i, ptr nonnull %fs.0.le.i, i32 1, ptr nonnull elementtype(i32) %fs.0.le.i) #13, !srcloc !137
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %90, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %out_err
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i145 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i145, label %if.end5.i.i.i.i.i.virtio_fs_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !135

if.end5.i.i.i.i.i.virtio_fs_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %virtio_fs_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef nonnull %fs.0.le.i, i32 noundef 3) #13
  br label %virtio_fs_put.exit

if.then.i.i:                                      ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !138
  %91 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %vqs, align 4
  tail call void @kfree(ptr noundef %92) #13
  tail call void @kfree(ptr noundef nonnull %fs.0.le.i) #13
  br label %virtio_fs_put.exit

virtio_fs_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.virtio_fs_put.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @virtio_fs_mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %virtio_fs_put.exit, %dget.exit, %if.then62, %if.then55, %do.end
  %retval.0 = phi i32 [ %err.0, %virtio_fs_put.exit ], [ %26, %if.then55 ], [ 0, %dget.exit ], [ %retval.0.i151, %if.then62 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fs_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_enum(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_vring_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_conn_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_free_conn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sget_fc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @virtio_fs_test_super(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %fsc) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.fs_context, ptr %fsc, i32 0, i32 12
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %priv = getelementptr inbounds %struct.fuse_conn, ptr %5, i32 0, i32 12, i32 11
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %priv3 = getelementptr inbounds %struct.fuse_conn, ptr %9, i32 0, i32 12, i32 11
  %10 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv3, align 8
  %cmp = icmp eq ptr %7, %11
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_anon_super_fc(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_mount_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_locked_super(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_fs_wake_forget_and_unlock(ptr noundef %fiq) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @fuse_dequeue_forget(ptr noundef %fiq, i32 noundef 1, ptr noundef null) #13
  %call1 = tail call i64 @fuse_get_unique(ptr noundef %fiq) #13
  %priv = getelementptr inbounds %struct.fuse_iqueue, ptr %fiq, i32 0, i32 11
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %vqs = getelementptr inbounds %struct.virtio_fs, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vqs, align 4
  %lock = getelementptr inbounds %struct.fuse_iqueue, ptr %fiq, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 35904, i32 noundef 56) #16
  %req3 = getelementptr inbounds %struct.virtio_fs_forget, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %call, align 8
  %7 = ptrtoint ptr %req3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 48, ptr %req3, align 8
  %.compoundliteral.sroa.2.0.ih.sroa_idx = getelementptr inbounds %struct.virtio_fs_forget, ptr %call7.i, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %.compoundliteral.sroa.2.0.ih.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %.compoundliteral.sroa.2.0.ih.sroa_idx, align 4
  %.compoundliteral.sroa.3.0.ih.sroa_idx = getelementptr inbounds %struct.virtio_fs_forget, ptr %call7.i, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %.compoundliteral.sroa.3.0.ih.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %call1, ptr %.compoundliteral.sroa.3.0.ih.sroa_idx, align 8
  %.compoundliteral.sroa.4.0.ih.sroa_idx = getelementptr inbounds %struct.virtio_fs_forget, ptr %call7.i, i32 0, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %.compoundliteral.sroa.4.0.ih.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %6, ptr %.compoundliteral.sroa.4.0.ih.sroa_idx, align 8
  %.compoundliteral.sroa.5.0.ih.sroa_idx = getelementptr inbounds %struct.virtio_fs_forget, ptr %call7.i, i32 0, i32 1, i32 0, i32 4
  %arg = getelementptr inbounds %struct.virtio_fs_forget, ptr %call7.i, i32 0, i32 1, i32 1
  %nlookup8 = getelementptr inbounds %struct.fuse_forget_one, ptr %call, i32 0, i32 1
  %11 = call ptr @memset(ptr %.compoundliteral.sroa.5.0.ih.sroa_idx, i32 0, i32 16)
  %12 = ptrtoint ptr %nlookup8 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %nlookup8, align 8
  %14 = ptrtoint ptr %arg to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %arg, align 8
  %call9 = tail call fastcc i32 @send_forget_request(ptr noundef %3, ptr noundef %call7.i, i1 noundef zeroext false)
  tail call void @kfree(ptr noundef %call) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_fs_wake_interrupt_and_unlock(ptr noundef %fiq) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.fuse_iqueue, ptr %fiq, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_fs_wake_pending_and_unlock(ptr noundef %fiq) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pending = getelementptr inbounds %struct.fuse_iqueue, ptr %fiq, i32 0, i32 4
  %0 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pending, align 4
  %cmp.i.not = icmp eq ptr %1, %pending
  br i1 %cmp.i.not, label %do.end, label %entry.if.end_crit_edge, !prof !134

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1230, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %prev = getelementptr inbounds %struct.fuse_iqueue, ptr %fiq, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev, align 4
  %flags = getelementptr inbounds %struct.fuse_req, ptr %3, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %flags) #13
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %3, ptr %3, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %prev.i3.i, align 4
  %12 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %pending, align 4
  %cmp.i139.not = icmp eq ptr %13, %pending
  br i1 %cmp.i139.not, label %list_del_init.exit.if.end49_crit_edge, label %do.end43, !prof !135

list_del_init.exit.if.end49_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

do.end43:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1234, i32 noundef 9, ptr noundef null) #13
  br label %if.end49

if.end49:                                         ; preds = %do.end43, %list_del_init.exit.if.end49_crit_edge
  %lock = getelementptr inbounds %struct.fuse_iqueue, ptr %fiq, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  %priv = getelementptr inbounds %struct.fuse_iqueue, ptr %fiq, i32 0, i32 11
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @virtio_fs_wake_pending_and_unlock.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@virtio_fs_wake_pending_and_unlock, %if.then67)) #13
          to label %do.end78 [label %if.then67], !srcloc !139

if.then67:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  %in = getelementptr inbounds %struct.fuse_req, ptr %3, i32 0, i32 5
  %opcode = getelementptr inbounds %struct.fuse_req, ptr %3, i32 0, i32 5, i32 0, i32 1
  %16 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %opcode, align 4
  %unique = getelementptr inbounds %struct.fuse_req, ptr %3, i32 0, i32 5, i32 0, i32 2
  %18 = ptrtoint ptr %unique to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %unique, align 8
  %nodeid = getelementptr inbounds %struct.fuse_req, ptr %3, i32 0, i32 5, i32 0, i32 3
  %20 = ptrtoint ptr %nodeid to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %nodeid, align 8
  %22 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %in, align 8
  %args = getelementptr inbounds %struct.fuse_req, ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %args, align 8
  %out_numargs = getelementptr inbounds %struct.fuse_args, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %out_numargs to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %out_numargs, align 2
  %conv = zext i16 %27 to i32
  %out_args = getelementptr inbounds %struct.fuse_args, ptr %25, i32 0, i32 6
  %call75 = tail call i32 @fuse_len_args(i32 noundef %conv, ptr noundef %out_args) #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @virtio_fs_wake_pending_and_unlock.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef %17, i64 noundef %19, i64 noundef %21, i32 noundef %23, i32 noundef %call75) #13
  br label %do.end78

do.end78:                                         ; preds = %if.then67, %if.end49
  %vqs = getelementptr inbounds %struct.virtio_fs, ptr %15, i32 0, i32 3
  %28 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vqs, align 4
  %arrayidx = getelementptr %struct.virtio_fs_vq, ptr %29, i32 1
  %call79 = tail call fastcc i32 @virtio_fs_enqueue_req(ptr noundef %arrayidx, ptr noundef %3, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp = icmp slt i32 %call79, 0
  br i1 %cmp, label %if.then81, label %do.end78.cleanup_crit_edge

do.end78.cleanup_crit_edge:                       ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then81:                                        ; preds = %do.end78
  %30 = zext i32 %call79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %call79, label %if.end92 [
    i32 -12, label %if.then81.if.then86_crit_edge
    i32 -28, label %if.then81.if.then86_crit_edge152
  ]

if.then81.if.then86_crit_edge152:                 ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then86

if.then81.if.then86_crit_edge:                    ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then86

if.then86:                                        ; preds = %if.then81.if.then86_crit_edge, %if.then81.if.then86_crit_edge152
  tail call void @_raw_spin_lock(ptr noundef %arrayidx) #13
  %queued_reqs = getelementptr %struct.virtio_fs_vq, ptr %29, i32 1, i32 3
  %prev.i = getelementptr %struct.virtio_fs_vq, ptr %29, i32 1, i32 3, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i, align 4
  %call.i.i141 = tail call zeroext i1 @__list_add_valid(ptr noundef %3, ptr noundef %32, ptr noundef %queued_reqs) #13
  br i1 %call.i.i141, label %if.end.i.i142, label %if.then86.list_add_tail.exit_crit_edge

if.then86.list_add_tail.exit_crit_edge:           ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i142:                                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %3, ptr %prev.i, align 4
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %queued_reqs, ptr %3, align 4
  %35 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev.i3.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %3, ptr %32, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i142, %if.then86.list_add_tail.exit_crit_edge
  %in_flight.i = getelementptr %struct.virtio_fs_vq, ptr %29, i32 1, i32 8
  %37 = ptrtoint ptr %in_flight.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %in_flight.i, align 8
  %inc.i = add i32 %38, 1
  store i32 %inc.i, ptr %in_flight.i, align 8
  br label %cleanup.sink.split

if.end92:                                         ; preds = %if.then81
  %error = getelementptr inbounds %struct.fuse_req, ptr %3, i32 0, i32 6, i32 0, i32 1
  %39 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call79, ptr %error, align 4
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %call79) #18
  tail call void @_raw_spin_lock(ptr noundef %arrayidx) #13
  %end_reqs = getelementptr %struct.virtio_fs_vq, ptr %29, i32 1, i32 4
  %prev.i144 = getelementptr %struct.virtio_fs_vq, ptr %29, i32 1, i32 4, i32 1
  %40 = ptrtoint ptr %prev.i144 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i144, align 4
  %call.i.i145 = tail call zeroext i1 @__list_add_valid(ptr noundef %3, ptr noundef %41, ptr noundef %end_reqs) #13
  br i1 %call.i.i145, label %if.end.i.i147, label %if.end92.cleanup.sink.split_crit_edge

if.end92.cleanup.sink.split_crit_edge:            ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end.i.i147:                                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %prev.i144 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %3, ptr %prev.i144, align 4
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %end_reqs, ptr %3, align 4
  %44 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev.i3.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %3, ptr %41, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i.i147, %if.end92.cleanup.sink.split_crit_edge, %list_add_tail.exit
  %.sink151 = phi i32 [ 1, %list_add_tail.exit ], [ 0, %if.end92.cleanup.sink.split_crit_edge ], [ 0, %if.end.i.i147 ]
  %dispatch_work101 = getelementptr %struct.virtio_fs_vq, ptr %29, i32 1, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %46 = load ptr, ptr @system_wq, align 4
  %call.i.i149 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %46, ptr noundef %dispatch_work101, i32 noundef %.sink151) #13
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end78.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_fs_fiq_release(ptr nocapture noundef readonly %fiq) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.fuse_iqueue, ptr %fiq, i32 0, i32 11
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @virtio_fs_mutex, i32 noundef 0) #13
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !136
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #13, !srcloc !137
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.virtio_fs_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !135

if.end5.i.i.i.i.i.virtio_fs_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %virtio_fs_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef 3) #13
  br label %virtio_fs_put.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !138
  %vqs.i.i.i = getelementptr inbounds %struct.virtio_fs, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %vqs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vqs.i.i.i, align 4
  tail call void @kfree(ptr noundef %4) #13
  tail call void @kfree(ptr noundef %1) #13
  br label %virtio_fs_put.exit

virtio_fs_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.virtio_fs_put.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @virtio_fs_mutex) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fuse_dequeue_forget(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @fuse_get_unique(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_forget_request(ptr noundef %fsvq, ptr noundef %forget, i1 noundef zeroext %in_flight) unnamed_addr #3 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #13
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  tail call void @_raw_spin_lock(ptr noundef %fsvq) #13
  %connected = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 7
  %1 = ptrtoint ptr %connected to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %connected, align 4, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  br i1 %in_flight, label %if.then3, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then3:                                         ; preds = %if.then
  %in_flight.i = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 8
  %3 = ptrtoint ptr %in_flight.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %in_flight.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i = icmp slt i32 %4, 1
  br i1 %cmp.i, label %do.end.i, label %if.then3.if.end.i_crit_edge, !prof !134

if.then3.if.end.i_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 157, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then3.if.end.i_crit_edge
  %5 = ptrtoint ptr %in_flight.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %in_flight.i, align 8
  %dec.i = add i32 %6, -1
  store i32 %dec.i, ptr %in_flight.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool21.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %in_flight_zero.i = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 9
  tail call void @complete(ptr noundef %in_flight_zero.i) #13
  br label %if.end

if.end:                                           ; preds = %if.then22.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge
  tail call void @kfree(ptr noundef %forget) #13
  br label %out

if.end4:                                          ; preds = %entry
  %req1 = getelementptr inbounds %struct.virtio_fs_forget, ptr %forget, i32 0, i32 1
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %req1, i32 noundef 48) #13
  %vq5 = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 1
  %7 = ptrtoint ptr %vq5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vq5, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_forget_request.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_forget_request, %if.then10)) #13
          to label %do.end [label %if.then10], !srcloc !139

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vdev, align 4
  %dev = getelementptr inbounds %struct.virtio_device, ptr %10, i32 0, i32 6
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @send_forget_request.__UNIQUE_ID_ddebug280, ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8) #13
  br label %do.end

do.end:                                           ; preds = %if.then10, %if.end4
  %call12 = call i32 @virtqueue_add_outbuf(ptr noundef %8, ptr noundef nonnull %sg, i32 noundef 1, ptr noundef %forget, i32 noundef 2592) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.then13, label %if.end58

if.then13:                                        ; preds = %do.end
  %11 = zext i32 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %call12, label %do.body38 [
    i32 -12, label %if.then13.do.body17_crit_edge
    i32 -28, label %if.then13.do.body17_crit_edge122
  ]

if.then13.do.body17_crit_edge122:                 ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body17

if.then13.do.body17_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body17

do.body17:                                        ; preds = %if.then13.do.body17_crit_edge, %if.then13.do.body17_crit_edge122
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_forget_request.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_forget_request, %if.then29)) #13
          to label %do.end32 [label %if.then29], !srcloc !139

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @send_forget_request.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.10, i32 noundef %call12) #13
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %do.body17
  %queued_reqs = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %forget, ptr noundef %13, ptr noundef %queued_reqs) #13
  br i1 %call.i.i, label %if.end.i.i, label %do.end32.list_add_tail.exit_crit_edge

do.end32.list_add_tail.exit_crit_edge:            ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %forget, ptr %prev.i, align 4
  %15 = ptrtoint ptr %forget to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %queued_reqs, ptr %forget, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %forget, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %forget, ptr %13, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end32.list_add_tail.exit_crit_edge
  %dispatch_work = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i106 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %dispatch_work, i32 noundef 1) #13
  br i1 %in_flight, label %list_add_tail.exit.out_crit_edge, label %if.then36

list_add_tail.exit.out_crit_edge:                 ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then36:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  %in_flight.i107 = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 8
  %19 = ptrtoint ptr %in_flight.i107 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %in_flight.i107, align 8
  %inc.i = add i32 %20, 1
  store i32 %inc.i, ptr %in_flight.i107, align 8
  br label %out

do.body38:                                        ; preds = %if.then13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_forget_request.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_forget_request, %if.then50)) #13
          to label %do.end53 [label %if.then50], !srcloc !139

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @send_forget_request.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.11, i32 noundef %call12) #13
  br label %do.end53

do.end53:                                         ; preds = %if.then50, %do.body38
  call void @kfree(ptr noundef %forget) #13
  br i1 %in_flight, label %if.then55, label %do.end53.out_crit_edge

do.end53.out_crit_edge:                           ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then55:                                        ; preds = %do.end53
  %in_flight.i108 = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 8
  %21 = ptrtoint ptr %in_flight.i108 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %in_flight.i108, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i109 = icmp slt i32 %22, 1
  br i1 %cmp.i109, label %do.end.i110, label %if.then55.if.end.i113_crit_edge, !prof !134

if.then55.if.end.i113_crit_edge:                  ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i113

do.end.i110:                                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 157, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i113

if.end.i113:                                      ; preds = %do.end.i110, %if.then55.if.end.i113_crit_edge
  %23 = ptrtoint ptr %in_flight.i108 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %in_flight.i108, align 8
  %dec.i111 = add i32 %24, -1
  store i32 %dec.i111, ptr %in_flight.i108, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i111)
  %tobool21.not.i112 = icmp eq i32 %dec.i111, 0
  br i1 %tobool21.not.i112, label %if.then22.i115, label %if.end.i113.out_crit_edge

if.end.i113.out_crit_edge:                        ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then22.i115:                                   ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #15
  %in_flight_zero.i114 = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 9
  call void @complete(ptr noundef %in_flight_zero.i114) #13
  br label %out

if.end58:                                         ; preds = %do.end
  br i1 %in_flight, label %if.end58.if.end61_crit_edge, label %if.then60

if.end58.if.end61_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  %in_flight.i117 = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 8
  %25 = ptrtoint ptr %in_flight.i117 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %in_flight.i117, align 8
  %inc.i118 = add i32 %26, 1
  store i32 %inc.i118, ptr %in_flight.i117, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end58.if.end61_crit_edge
  %call62 = call zeroext i1 @virtqueue_kick_prepare(ptr noundef %8) #13
  call void @_raw_spin_unlock(ptr noundef %fsvq) #13
  br i1 %call62, label %if.then66, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then66:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  %call67 = call zeroext i1 @virtqueue_notify(ptr noundef %8) #13
  br label %cleanup

out:                                              ; preds = %if.then22.i115, %if.end.i113.out_crit_edge, %do.end53.out_crit_edge, %if.then36, %list_add_tail.exit.out_crit_edge, %if.end
  %ret.0 = phi i32 [ %call12, %do.end53.out_crit_edge ], [ 0, %if.end ], [ 1, %if.then36 ], [ 1, %list_add_tail.exit.out_crit_edge ], [ %call12, %if.end.i113.out_crit_edge ], [ %call12, %if.then22.i115 ]
  call void @_raw_spin_unlock(ptr noundef %fsvq) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then66, %if.end61.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call12, %if.then66 ], [ %call12, %if.end61.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_outbuf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_kick_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_len_args(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @virtio_fs_enqueue_req(ptr noundef %fsvq, ptr noundef %req, i1 noundef zeroext %in_flight) unnamed_addr #3 align 64 {
entry:
  %stack_sgs = alloca [6 x ptr], align 4
  %stack_sg = alloca [6 x %struct.scatterlist], align 4
  %argbuf_used = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %stack_sgs) #13
  %0 = call ptr @memset(ptr %stack_sgs, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %stack_sg) #13
  %1 = call ptr @memset(ptr %stack_sg, i32 255, i32 120)
  %args2 = getelementptr inbounds %struct.fuse_req, ptr %req, i32 0, i32 2
  %2 = ptrtoint ptr %args2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %args2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %argbuf_used) #13
  %4 = ptrtoint ptr %argbuf_used to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %argbuf_used, align 4
  %in_numargs.i = getelementptr inbounds %struct.fuse_args, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %in_numargs.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %in_numargs.i, align 4
  %in_pages.i = getelementptr inbounds %struct.fuse_args, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %in_pages.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i = load i16, ptr %in_pages.i, align 8
  %8 = lshr i16 %bf.load.i, 12
  %.lobit.i = and i16 %8, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %.lobit.i)
  %tobool.not.i = icmp eq i16 %6, %.lobit.i
  %spec.select.i = select i1 %tobool.not.i, i32 1, i32 2
  %9 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %bf.cast7.not.i = icmp eq i16 %9, 0
  br i1 %bf.cast7.not.i, label %entry.if.end14.i_crit_edge, label %if.then8.i

entry.if.end14.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i

if.then8.i:                                       ; preds = %entry
  %conv10.i = zext i16 %6 to i32
  %sub11.i = add nsw i32 %conv10.i, -1
  %arrayidx.i = getelementptr %struct.fuse_args, ptr %3, i32 0, i32 5, i32 %sub11.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %descs.i = getelementptr inbounds %struct.fuse_args_pages, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %descs.i, align 4
  %num_pages.i = getelementptr inbounds %struct.fuse_args_pages, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_pages.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp9.i.i = icmp eq i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not10.i.i = icmp eq i32 %11, 0
  %or.cond11.i.i = or i1 %tobool.not10.i.i, %cmp9.i.i
  br i1 %or.cond11.i.i, label %if.then8.i.sg_count_fuse_pages.exit.i_crit_edge, label %if.then8.i.for.body.i.i_crit_edge

if.then8.i.for.body.i.i_crit_edge:                ; preds = %if.then8.i
  br label %for.body.i.i

if.then8.i.sg_count_fuse_pages.exit.i_crit_edge:  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sg_count_fuse_pages.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then8.i.for.body.i.i_crit_edge
  %total_len.addr.013.i.i = phi i32 [ %18, %for.body.i.i.for.body.i.i_crit_edge ], [ %11, %if.then8.i.for.body.i.i_crit_edge ]
  %i.012.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then8.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.fuse_page_desc, ptr %13, i32 %i.012.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %18 = tail call i32 @llvm.usub.sat.i32(i32 %total_len.addr.013.i.i, i32 %17) #13
  %inc.i.i = add nuw i32 %i.012.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %15)
  %cmp.i.i = icmp uge i32 %inc.i.i, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %total_len.addr.013.i.i, i32 %17)
  %tobool.not.i.i = icmp ule i32 %total_len.addr.013.i.i, %17
  %or.cond.i.i = select i1 %cmp.i.i, i1 true, i1 %tobool.not.i.i
  br i1 %or.cond.i.i, label %for.body.i.i.sg_count_fuse_pages.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.body.i.i.sg_count_fuse_pages.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sg_count_fuse_pages.exit.i

sg_count_fuse_pages.exit.i:                       ; preds = %for.body.i.i.sg_count_fuse_pages.exit.i_crit_edge, %if.then8.i.sg_count_fuse_pages.exit.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 0, %if.then8.i.sg_count_fuse_pages.exit.i_crit_edge ], [ %inc.i.i, %for.body.i.i.sg_count_fuse_pages.exit.i_crit_edge ]
  %add13.i = add i32 %i.0.lcssa.i.i, %spec.select.i
  br label %if.end14.i

if.end14.i:                                       ; preds = %sg_count_fuse_pages.exit.i, %entry.if.end14.i_crit_edge
  %total_sgs.1.i = phi i32 [ %add13.i, %sg_count_fuse_pages.exit.i ], [ %spec.select.i, %entry.if.end14.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.fuse_req, ptr %req, i32 0, i32 4
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool16.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.sg_count_fuse_req.exit_crit_edge, label %if.end18.i

if.end14.i.sg_count_fuse_req.exit_crit_edge:      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sg_count_fuse_req.exit

if.end18.i:                                       ; preds = %if.end14.i
  %out_numargs.i = getelementptr inbounds %struct.fuse_args, ptr %3, i32 0, i32 3
  %21 = ptrtoint ptr %out_numargs.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %out_numargs.i, align 2
  %23 = lshr i16 %bf.load.i, 11
  %.lobit71.i = and i16 %23, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %.lobit71.i)
  %tobool27.not.i = icmp eq i16 %22, %.lobit71.i
  %spec.select72.v.i = select i1 %tobool27.not.i, i32 1, i32 2
  %spec.select72.i = add i32 %spec.select72.v.i, %total_sgs.1.i
  %24 = and i16 %bf.load.i, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %bf.cast35.not.i = icmp eq i16 %24, 0
  br i1 %bf.cast35.not.i, label %if.end18.i.sg_count_fuse_req.exit_crit_edge, label %if.then36.i

if.end18.i.sg_count_fuse_req.exit_crit_edge:      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sg_count_fuse_req.exit

if.then36.i:                                      ; preds = %if.end18.i
  %conv38.i = zext i16 %22 to i32
  %sub39.i = add nsw i32 %conv38.i, -1
  %arrayidx40.i = getelementptr %struct.fuse_args, ptr %3, i32 0, i32 6, i32 %sub39.i
  %25 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx40.i, align 4
  %descs42.i = getelementptr inbounds %struct.fuse_args_pages, ptr %3, i32 0, i32 2
  %27 = ptrtoint ptr %descs42.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %descs42.i, align 4
  %num_pages43.i = getelementptr inbounds %struct.fuse_args_pages, ptr %3, i32 0, i32 3
  %29 = ptrtoint ptr %num_pages43.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_pages43.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp9.i73.i = icmp eq i32 %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not10.i74.i = icmp eq i32 %26, 0
  %or.cond11.i75.i = or i1 %tobool.not10.i74.i, %cmp9.i73.i
  br i1 %or.cond11.i75.i, label %if.then36.i.sg_count_fuse_pages.exit85.i_crit_edge, label %if.then36.i.for.body.i83.i_crit_edge

if.then36.i.for.body.i83.i_crit_edge:             ; preds = %if.then36.i
  br label %for.body.i83.i

if.then36.i.sg_count_fuse_pages.exit85.i_crit_edge: ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sg_count_fuse_pages.exit85.i

for.body.i83.i:                                   ; preds = %for.body.i83.i.for.body.i83.i_crit_edge, %if.then36.i.for.body.i83.i_crit_edge
  %total_len.addr.013.i76.i = phi i32 [ %33, %for.body.i83.i.for.body.i83.i_crit_edge ], [ %26, %if.then36.i.for.body.i83.i_crit_edge ]
  %i.012.i77.i = phi i32 [ %inc.i79.i, %for.body.i83.i.for.body.i83.i_crit_edge ], [ 0, %if.then36.i.for.body.i83.i_crit_edge ]
  %arrayidx.i78.i = getelementptr %struct.fuse_page_desc, ptr %28, i32 %i.012.i77.i
  %31 = ptrtoint ptr %arrayidx.i78.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i78.i, align 4
  %33 = tail call i32 @llvm.usub.sat.i32(i32 %total_len.addr.013.i76.i, i32 %32) #13
  %inc.i79.i = add nuw i32 %i.012.i77.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i79.i, i32 %30)
  %cmp.i80.i = icmp uge i32 %inc.i79.i, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %total_len.addr.013.i76.i, i32 %32)
  %tobool.not.i81.i = icmp ule i32 %total_len.addr.013.i76.i, %32
  %or.cond.i82.i = select i1 %cmp.i80.i, i1 true, i1 %tobool.not.i81.i
  br i1 %or.cond.i82.i, label %for.body.i83.i.sg_count_fuse_pages.exit85.i_crit_edge, label %for.body.i83.i.for.body.i83.i_crit_edge

for.body.i83.i.for.body.i83.i_crit_edge:          ; preds = %for.body.i83.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i83.i

for.body.i83.i.sg_count_fuse_pages.exit85.i_crit_edge: ; preds = %for.body.i83.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sg_count_fuse_pages.exit85.i

sg_count_fuse_pages.exit85.i:                     ; preds = %for.body.i83.i.sg_count_fuse_pages.exit85.i_crit_edge, %if.then36.i.sg_count_fuse_pages.exit85.i_crit_edge
  %i.0.lcssa.i84.i = phi i32 [ 0, %if.then36.i.sg_count_fuse_pages.exit85.i_crit_edge ], [ %inc.i79.i, %for.body.i83.i.sg_count_fuse_pages.exit85.i_crit_edge ]
  %add45.i = add i32 %i.0.lcssa.i84.i, %spec.select72.i
  br label %sg_count_fuse_req.exit

sg_count_fuse_req.exit:                           ; preds = %sg_count_fuse_pages.exit85.i, %if.end18.i.sg_count_fuse_req.exit_crit_edge, %if.end14.i.sg_count_fuse_req.exit_crit_edge
  %retval.0.i = phi i32 [ %total_sgs.1.i, %if.end14.i.sg_count_fuse_req.exit_crit_edge ], [ %add45.i, %sg_count_fuse_pages.exit85.i ], [ %spec.select72.i, %if.end18.i.sg_count_fuse_req.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %retval.0.i)
  %cmp = icmp ugt i32 %retval.0.i, 6
  br i1 %cmp, label %if.then, label %sg_count_fuse_req.exit.if.end7_crit_edge

sg_count_fuse_req.exit.if.end7_crit_edge:         ; preds = %sg_count_fuse_req.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then:                                          ; preds = %sg_count_fuse_req.exit
  %34 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %retval.0.i, i32 4) #13
  %35 = extractvalue { i32, i1 } %34, 1
  br i1 %35, label %if.then.kmalloc_array.exit_crit_edge, label %if.end7.i, !prof !134

if.then.kmalloc_array.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %kmalloc_array.exit

if.end7.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %36 = extractvalue { i32, i1 } %34, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %36, i32 noundef 2592) #19
  br label %kmalloc_array.exit

kmalloc_array.exit:                               ; preds = %if.end7.i, %if.then.kmalloc_array.exit_crit_edge
  %retval.0.i170 = phi ptr [ %call8.i, %if.end7.i ], [ null, %if.then.kmalloc_array.exit_crit_edge ]
  %37 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %retval.0.i, i32 20) #13
  %38 = extractvalue { i32, i1 } %37, 1
  br i1 %38, label %kmalloc_array.exit.land.lhs.true_crit_edge, label %if.end7.i201, !prof !134

kmalloc_array.exit.land.lhs.true_crit_edge:       ; preds = %kmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.end7.i201:                                     ; preds = %kmalloc_array.exit
  %39 = extractvalue { i32, i1 } %37, 0
  %call8.i200 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %39, i32 noundef 2592) #19
  %tobool.not = icmp eq ptr %retval.0.i170, null
  %tobool5.not = icmp eq ptr %call8.i200, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %if.end7.i201.land.lhs.true_crit_edge, label %if.end7.i201.if.end7_crit_edge

if.end7.i201.if.end7_crit_edge:                   ; preds = %if.end7.i201
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.end7.i201.land.lhs.true_crit_edge:             ; preds = %if.end7.i201
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

if.end7:                                          ; preds = %if.end7.i201.if.end7_crit_edge, %sg_count_fuse_req.exit.if.end7_crit_edge
  %sg.0 = phi ptr [ %stack_sg, %sg_count_fuse_req.exit.if.end7_crit_edge ], [ %call8.i200, %if.end7.i201.if.end7_crit_edge ]
  %sgs.0 = phi ptr [ %stack_sgs, %sg_count_fuse_req.exit.if.end7_crit_edge ], [ %retval.0.i170, %if.end7.i201.if.end7_crit_edge ]
  %40 = ptrtoint ptr %args2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %args2, align 8
  %in_numargs.i205 = getelementptr inbounds %struct.fuse_args, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %in_numargs.i205 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %in_numargs.i205, align 4
  %conv.i = zext i16 %43 to i32
  %in_pages.i206 = getelementptr inbounds %struct.fuse_args, ptr %41, i32 0, i32 4
  %44 = ptrtoint ptr %in_pages.i206 to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load.i207 = load i16, ptr %in_pages.i206, align 8
  %45 = lshr i16 %bf.load.i207, 12
  %.lobit.i208 = and i16 %45, 1
  %46 = zext i16 %.lobit.i208 to i32
  %sub.i = sub nsw i32 %conv.i, %46
  %out_numargs.i209 = getelementptr inbounds %struct.fuse_args, ptr %41, i32 0, i32 3
  %47 = ptrtoint ptr %out_numargs.i209 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %out_numargs.i209, align 2
  %conv3.i = zext i16 %48 to i32
  %49 = lshr i16 %bf.load.i207, 11
  %.lobit45.i = and i16 %49, 1
  %50 = zext i16 %.lobit45.i to i32
  %sub9.i = sub nsw i32 %conv3.i, %50
  %in_args.i = getelementptr inbounds %struct.fuse_args, ptr %41, i32 0, i32 5
  %call.i = tail call i32 @fuse_len_args(i32 noundef %sub.i, ptr noundef %in_args.i) #13
  %out_args.i = getelementptr inbounds %struct.fuse_args, ptr %41, i32 0, i32 6
  %call11.i = tail call i32 @fuse_len_args(i32 noundef %sub9.i, ptr noundef %out_args.i) #13
  %add.i = add i32 %call11.i, %call.i
  %call9.i.i235 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 2592) #19
  %argbuf.i = getelementptr inbounds %struct.fuse_req, ptr %req, i32 0, i32 8
  %51 = ptrtoint ptr %argbuf.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call9.i.i235, ptr %argbuf.i, align 4
  %tobool.not.i237 = icmp eq ptr %call9.i.i235, null
  br i1 %tobool.not.i237, label %if.end7.land.lhs.true_crit_edge, label %for.cond.preheader.i

if.end7.land.lhs.true_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

for.cond.preheader.i:                             ; preds = %if.end7
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %.lobit.i208)
  %cmp46.not.i = icmp eq i16 %43, %.lobit.i208
  br i1 %cmp46.not.i, label %for.cond.preheader.i.if.end11_crit_edge, label %for.body.preheader.i

for.cond.preheader.i.if.end11_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %umax.i = tail call i32 @llvm.umax.i32(i32 %sub.i, i32 1) #13
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.048.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %offset.047.i = phi i32 [ %add22.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %52 = ptrtoint ptr %argbuf.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %argbuf.i, align 4
  %add.ptr.i = getelementptr i8, ptr %53, i32 %offset.047.i
  %arrayidx.i238 = getelementptr %struct.fuse_args, ptr %41, i32 0, i32 5, i32 %i.048.i
  %value.i = getelementptr %struct.fuse_args, ptr %41, i32 0, i32 5, i32 %i.048.i, i32 1
  %54 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %value.i, align 4
  %56 = ptrtoint ptr %arrayidx.i238 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i238, align 4
  %58 = call ptr @memcpy(ptr %add.ptr.i, ptr %55, i32 %57)
  %59 = load i32, ptr %arrayidx.i238, align 4
  %add22.i = add i32 %59, %offset.047.i
  %inc.i = add nuw i32 %i.048.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.if.end11_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.if.end11_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.end11:                                         ; preds = %for.body.i.if.end11_crit_edge, %for.cond.preheader.i.if.end11_crit_edge
  %in = getelementptr inbounds %struct.fuse_req, ptr %req, i32 0, i32 5
  call void @sg_init_one(ptr noundef %sg.0, ptr noundef %in, i32 noundef 40) #13
  %arrayidx12 = getelementptr %struct.scatterlist, ptr %sg.0, i32 1
  %in_args = getelementptr inbounds %struct.fuse_args, ptr %3, i32 0, i32 5
  %60 = ptrtoint ptr %in_numargs.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %in_numargs.i, align 4
  %conv = zext i16 %61 to i32
  %62 = ptrtoint ptr %in_pages.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %bf.load = load i16, ptr %in_pages.i, align 8
  %63 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %bf.cast = icmp ne i16 %63, 0
  %argbuf = getelementptr inbounds %struct.fuse_req, ptr %req, i32 0, i32 8
  %64 = ptrtoint ptr %argbuf to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %argbuf, align 4
  %call14 = call fastcc i32 @sg_init_fuse_args(ptr noundef %arrayidx12, ptr noundef %req, ptr noundef %in_args, i32 noundef %conv, i1 noundef zeroext %bf.cast, ptr noundef %65, ptr noundef nonnull %argbuf_used)
  %add = add i32 %call14, 1
  %66 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %flags.i, align 4
  %and1.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool16.not = icmp eq i32 %and1.i, 0
  br i1 %tobool16.not, label %if.end11.if.end33_crit_edge, label %if.then17

if.end11.if.end33_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx20 = getelementptr %struct.scatterlist, ptr %sg.0, i32 %add
  %out = getelementptr inbounds %struct.fuse_req, ptr %req, i32 0, i32 6
  call void @sg_init_one(ptr noundef %arrayidx20, ptr noundef %out, i32 noundef 16) #13
  %add22 = add i32 %call14, 2
  %arrayidx23 = getelementptr %struct.scatterlist, ptr %sg.0, i32 %add22
  %out_args = getelementptr inbounds %struct.fuse_args, ptr %3, i32 0, i32 6
  %out_numargs = getelementptr inbounds %struct.fuse_args, ptr %3, i32 0, i32 3
  %68 = ptrtoint ptr %out_numargs to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %out_numargs, align 2
  %conv25 = zext i16 %69 to i32
  %70 = ptrtoint ptr %in_pages.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %bf.load26 = load i16, ptr %in_pages.i, align 8
  %71 = and i16 %bf.load26, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %bf.cast29 = icmp ne i16 %71, 0
  %72 = ptrtoint ptr %argbuf to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %argbuf, align 4
  %74 = ptrtoint ptr %argbuf_used to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %argbuf_used, align 4
  %add.ptr = getelementptr i8, ptr %73, i32 %75
  %call31 = call fastcc i32 @sg_init_fuse_args(ptr noundef %arrayidx23, ptr noundef %req, ptr noundef %out_args, i32 noundef %conv25, i1 noundef zeroext %bf.cast29, ptr noundef %add.ptr, ptr noundef null)
  %add32 = add i32 %call31, 1
  br label %if.end33

if.end33:                                         ; preds = %if.then17, %if.end11.if.end33_crit_edge
  %in_sgs.0 = phi i32 [ %add32, %if.then17 ], [ 0, %if.end11.if.end33_crit_edge ]
  %add34 = add i32 %in_sgs.0, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %add34, i32 %retval.0.i)
  %cmp35.not = icmp eq i32 %add34, %retval.0.i
  br i1 %cmp35.not, label %if.end33.if.end51_crit_edge, label %do.end, !prof !135

if.end33.if.end51_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

do.end:                                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1170, i32 noundef 9, ptr noundef null) #13
  br label %if.end51

if.end51:                                         ; preds = %do.end, %if.end33.if.end51_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp58258.not = icmp eq i32 %retval.0.i, 0
  br i1 %cmp58258.not, label %if.end51.for.end_crit_edge, label %if.end51.for.body_crit_edge

if.end51.for.body_crit_edge:                      ; preds = %if.end51
  br label %for.body

if.end51.for.end_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end51.for.body_crit_edge
  %i.0259 = phi i32 [ %inc62, %for.body.for.body_crit_edge ], [ 0, %if.end51.for.body_crit_edge ]
  %arrayidx60 = getelementptr %struct.scatterlist, ptr %sg.0, i32 %i.0259
  %arrayidx61 = getelementptr ptr, ptr %sgs.0, i32 %i.0259
  %76 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %arrayidx60, ptr %arrayidx61, align 4
  %inc62 = add nuw i32 %i.0259, 1
  %exitcond.not = icmp eq i32 %inc62, %retval.0.i
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end51.for.end_crit_edge
  call void @_raw_spin_lock(ptr noundef %fsvq) #13
  %connected = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 7
  %77 = ptrtoint ptr %connected to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %connected, align 4, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool63.not = icmp eq i8 %78, 0
  br i1 %tobool63.not, label %for.end.land.lhs.true.sink.split_crit_edge, label %if.end66

for.end.land.lhs.true.sink.split_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.sink.split

if.end66:                                         ; preds = %for.end
  %vq67 = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 1
  %79 = ptrtoint ptr %vq67 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %vq67, align 4
  %call68 = call i32 @virtqueue_add_sgs(ptr noundef %80, ptr noundef nonnull %sgs.0, i32 noundef %add, i32 noundef %in_sgs.0, ptr noundef %req, i32 noundef 2592) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.end66.land.lhs.true.sink.split_crit_edge, label %if.end73

if.end66.land.lhs.true.sink.split_crit_edge:      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.sink.split

if.end73:                                         ; preds = %if.end66
  %fud = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 6
  %81 = ptrtoint ptr %fud to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %fud, align 16
  %lock74 = getelementptr inbounds %struct.fuse_dev, ptr %82, i32 0, i32 1, i32 1
  call void @_raw_spin_lock(ptr noundef %lock74) #13
  %processing = getelementptr inbounds %struct.fuse_dev, ptr %82, i32 0, i32 1, i32 2
  %83 = ptrtoint ptr %processing to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %processing, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %req, ptr noundef %86, ptr noundef %84) #13
  br i1 %call.i.i, label %if.end.i.i240, label %if.end73.list_add_tail.exit_crit_edge

if.end73.list_add_tail.exit_crit_edge:            ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i240:                                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  %87 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %req, ptr %prev.i, align 4
  %88 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %84, ptr %req, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %req, i32 0, i32 1
  %89 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %prev3.i.i, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %req, ptr %86, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i240, %if.end73.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock74) #13
  call void @_set_bit(i32 noundef 8, ptr noundef %flags.i) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !141
  br i1 %in_flight, label %list_add_tail.exit.if.end85_crit_edge, label %if.then84

list_add_tail.exit.if.end85_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.then84:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  %in_flight.i = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 8
  %91 = ptrtoint ptr %in_flight.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %in_flight.i, align 8
  %inc.i241 = add i32 %92, 1
  store i32 %inc.i241, ptr %in_flight.i, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %list_add_tail.exit.if.end85_crit_edge
  %call86 = call zeroext i1 @virtqueue_kick_prepare(ptr noundef %80) #13
  call void @_raw_spin_unlock(ptr noundef %fsvq) #13
  br i1 %call86, label %if.then90, label %if.end85.if.end101_crit_edge

if.end85.if.end101_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101

if.then90:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  %call91 = call zeroext i1 @virtqueue_notify(ptr noundef %80) #13
  br label %if.end101

land.lhs.true.sink.split:                         ; preds = %if.end66.land.lhs.true.sink.split_crit_edge, %for.end.land.lhs.true.sink.split_crit_edge
  %ret.0.ph.ph = phi i32 [ -107, %for.end.land.lhs.true.sink.split_crit_edge ], [ %call68, %if.end66.land.lhs.true.sink.split_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %fsvq) #13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %land.lhs.true.sink.split, %if.end7.land.lhs.true_crit_edge, %if.end7.i201.land.lhs.true_crit_edge, %kmalloc_array.exit.land.lhs.true_crit_edge
  %sg.1.ph = phi ptr [ %sg.0, %if.end7.land.lhs.true_crit_edge ], [ %call8.i200, %if.end7.i201.land.lhs.true_crit_edge ], [ null, %kmalloc_array.exit.land.lhs.true_crit_edge ], [ %sg.0, %land.lhs.true.sink.split ]
  %ret.0.ph = phi i32 [ -12, %if.end7.land.lhs.true_crit_edge ], [ -12, %if.end7.i201.land.lhs.true_crit_edge ], [ -12, %kmalloc_array.exit.land.lhs.true_crit_edge ], [ %ret.0.ph.ph, %land.lhs.true.sink.split ]
  %sgs.1.ph = phi ptr [ %sgs.0, %if.end7.land.lhs.true_crit_edge ], [ %retval.0.i170, %if.end7.i201.land.lhs.true_crit_edge ], [ %retval.0.i170, %kmalloc_array.exit.land.lhs.true_crit_edge ], [ %sgs.0, %land.lhs.true.sink.split ]
  %argbuf96 = getelementptr inbounds %struct.fuse_req, ptr %req, i32 0, i32 8
  %93 = ptrtoint ptr %argbuf96 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %argbuf96, align 4
  %tobool97.not = icmp eq ptr %94, null
  br i1 %tobool97.not, label %land.lhs.true.if.end101_crit_edge, label %if.then98

land.lhs.true.if.end101_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101

if.then98:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %94) #13
  %95 = ptrtoint ptr %argbuf96 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %argbuf96, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then98, %land.lhs.true.if.end101_crit_edge, %if.then90, %if.end85.if.end101_crit_edge
  %sgs.1256 = phi ptr [ %sgs.1.ph, %if.then98 ], [ %sgs.1.ph, %land.lhs.true.if.end101_crit_edge ], [ %sgs.0, %if.then90 ], [ %sgs.0, %if.end85.if.end101_crit_edge ]
  %ret.0254 = phi i32 [ %ret.0.ph, %if.then98 ], [ %ret.0.ph, %land.lhs.true.if.end101_crit_edge ], [ %call68, %if.then90 ], [ %call68, %if.end85.if.end101_crit_edge ]
  %sg.1252 = phi ptr [ %sg.1.ph, %if.then98 ], [ %sg.1.ph, %land.lhs.true.if.end101_crit_edge ], [ %sg.0, %if.then90 ], [ %sg.0, %if.end85.if.end101_crit_edge ]
  %cmp103.not = icmp eq ptr %sgs.1256, %stack_sgs
  br i1 %cmp103.not, label %if.end101.if.end106_crit_edge, label %if.then105

if.end101.if.end106_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end106

if.then105:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef %sgs.1256) #13
  call void @kfree(ptr noundef %sg.1252) #13
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %if.end101.if.end106_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %argbuf_used) #13
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %stack_sg) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %stack_sgs) #13
  ret i32 %ret.0254
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sg_init_fuse_args(ptr noundef %sg, ptr nocapture noundef readonly %req, ptr noundef %args, i32 noundef %numargs, i1 noundef zeroext %argpages, ptr noundef %argbuf, ptr noundef writeonly %len_used) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %args1 = getelementptr inbounds %struct.fuse_req, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %args1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %args1, align 8
  %conv.neg = sext i1 %argpages to i32
  %sub = add i32 %conv.neg, %numargs
  %call = tail call i32 @fuse_len_args(i32 noundef %sub, ptr noundef %args) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @sg_init_one(ptr noundef %sg, ptr noundef %argbuf, i32 noundef %call) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %total_sgs.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  br i1 %argpages, label %if.then4, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then4:                                         ; preds = %if.end
  %arrayidx5 = getelementptr %struct.scatterlist, ptr %sg, i32 %total_sgs.0
  %pages = getelementptr inbounds %struct.fuse_args_pages, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pages, align 8
  %descs = getelementptr inbounds %struct.fuse_args_pages, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %descs, align 4
  %num_pages = getelementptr inbounds %struct.fuse_args_pages, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_pages, align 8
  %sub6 = add i32 %numargs, -1
  %arrayidx7 = getelementptr %struct.fuse_arg, ptr %args, i32 %sub6
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp22.i = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not23.i = icmp eq i32 %9, 0
  %or.cond24.i = or i1 %cmp22.i, %tobool.not23.i
  br i1 %or.cond24.i, label %if.then4.sg_init_fuse_pages.exit_crit_edge, label %if.then4.for.body.i_crit_edge

if.then4.for.body.i_crit_edge:                    ; preds = %if.then4
  br label %for.body.i

if.then4.sg_init_fuse_pages.exit_crit_edge:       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %sg_init_fuse_pages.exit

for.body.i:                                       ; preds = %sg_set_page.exit.i.for.body.i_crit_edge, %if.then4.for.body.i_crit_edge
  %total_len.addr.026.i = phi i32 [ %sub.i, %sg_set_page.exit.i.for.body.i_crit_edge ], [ %9, %if.then4.for.body.i_crit_edge ]
  %i.025.i = phi i32 [ %inc.i, %sg_set_page.exit.i.for.body.i_crit_edge ], [ 0, %if.then4.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.scatterlist, ptr %arrayidx5, i32 %i.025.i
  tail call void @sg_init_table(ptr noundef %arrayidx.i, i32 noundef 1) #13
  %arrayidx1.i = getelementptr %struct.fuse_page_desc, ptr %5, i32 %i.025.i
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1.i, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %total_len.addr.026.i) #13
  %arrayidx4.i = getelementptr ptr, ptr %3, i32 %i.025.i
  %13 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx4.i, align 4
  %offset.i = getelementptr %struct.fuse_page_desc, ptr %5, i32 %i.025.i, i32 1
  %15 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset.i, align 4
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %19 = ptrtoint ptr %14 to i32
  %and2.i.i.i = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !135

do.body5.i.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #13, !srcloc !142
  unreachable

do.body11.i.i.i:                                  ; preds = %for.body.i
  %and.i.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_page.exit.i, label %do.body19.i.i.i, !prof !135

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #13, !srcloc !143
  unreachable

sg_set_page.exit.i:                               ; preds = %do.body11.i.i.i
  %and.i.i.i = and i32 %18, 3
  %or.i.i.i = or i32 %and.i.i.i, %19
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i.i.i, ptr %arrayidx.i, align 4
  %offset1.i.i = getelementptr %struct.scatterlist, ptr %arrayidx5, i32 %i.025.i, i32 1
  %21 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %16, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr %struct.scatterlist, ptr %arrayidx5, i32 %i.025.i, i32 2
  %22 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %12, ptr %length.i.i, align 4
  %sub.i = sub i32 %total_len.addr.026.i, %12
  %inc.i = add nuw i32 %i.025.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %7)
  %cmp.i = icmp uge i32 %inc.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not.i = icmp eq i32 %sub.i, 0
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %sg_set_page.exit.i.sg_init_fuse_pages.exit_crit_edge, label %sg_set_page.exit.i.for.body.i_crit_edge

sg_set_page.exit.i.for.body.i_crit_edge:          ; preds = %sg_set_page.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

sg_set_page.exit.i.sg_init_fuse_pages.exit_crit_edge: ; preds = %sg_set_page.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sg_init_fuse_pages.exit

sg_init_fuse_pages.exit:                          ; preds = %sg_set_page.exit.i.sg_init_fuse_pages.exit_crit_edge, %if.then4.sg_init_fuse_pages.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.then4.sg_init_fuse_pages.exit_crit_edge ], [ %inc.i, %sg_set_page.exit.i.sg_init_fuse_pages.exit_crit_edge ]
  %add = add i32 %i.0.lcssa.i, %total_sgs.0
  br label %if.end9

if.end9:                                          ; preds = %sg_init_fuse_pages.exit, %if.end.if.end9_crit_edge
  %total_sgs.1 = phi i32 [ %add, %sg_init_fuse_pages.exit ], [ %total_sgs.0, %if.end.if.end9_crit_edge ]
  %tobool10.not = icmp eq ptr %len_used, null
  br i1 %tobool10.not, label %if.end9.if.end12_crit_edge, label %if.then11

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %len_used to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call, ptr %len_used, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  ret i32 %total_sgs.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_sgs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fuse_dev_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_fill_super_common(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_dev_install(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_send_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_dev_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fuse_mount_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_conn_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @virtio_fs_drain_all_queues_locked(ptr nocapture noundef readonly %fs) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %nvqs = getelementptr inbounds %struct.virtio_fs, ptr %fs, i32 0, i32 4
  %0 = ptrtoint ptr %nvqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nvqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.not = icmp eq i32 %1, 0
  br i1 %cmp4.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vqs = getelementptr inbounds %struct.virtio_fs, ptr %fs, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %virtio_fs_drain_queue.exit.for.body_crit_edge, %for.body.lr.ph
  %i.05 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %virtio_fs_drain_queue.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vqs, align 4
  %arrayidx = getelementptr %struct.virtio_fs_vq, ptr %3, i32 %i.05
  %in_flight.i = getelementptr %struct.virtio_fs_vq, ptr %3, i32 %i.05, i32 8
  %4 = ptrtoint ptr %in_flight.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %in_flight.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp slt i32 %5, 0
  br i1 %cmp.i, label %do.end.i, label %for.body.if.end.i_crit_edge, !prof !134

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 188, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.body.if.end.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %arrayidx) #13
  %6 = ptrtoint ptr %in_flight.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %in_flight.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool20.not.i = icmp eq i32 %7, 0
  br i1 %tobool20.not.i, label %if.else.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %in_flight_zero.i = getelementptr %struct.virtio_fs_vq, ptr %3, i32 %i.05, i32 9
  %8 = ptrtoint ptr %in_flight_zero.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %in_flight_zero.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx) #13
  tail call void @wait_for_completion(ptr noundef %in_flight_zero.i) #13
  br label %virtio_fs_drain_queue.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx) #13
  br label %virtio_fs_drain_queue.exit

virtio_fs_drain_queue.exit:                       ; preds = %if.else.i, %if.then21.i
  %done_work.i = getelementptr %struct.virtio_fs_vq, ptr %3, i32 %i.05, i32 2
  %call.i = tail call zeroext i1 @flush_work(ptr noundef %done_work.i) #13
  %dispatch_work.i = getelementptr %struct.virtio_fs_vq, ptr %3, i32 %i.05, i32 5
  %call26.i = tail call zeroext i1 @flush_delayed_work(ptr noundef %dispatch_work.i) #13
  %inc = add nuw i32 %i.05, 1
  %9 = ptrtoint ptr %nvqs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nvqs, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %virtio_fs_drain_queue.exit.for.body_crit_edge, label %virtio_fs_drain_queue.exit.for.end_crit_edge

virtio_fs_drain_queue.exit.for.end_crit_edge:     ; preds = %virtio_fs_drain_queue.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

virtio_fs_drain_queue.exit.for.body_crit_edge:    ; preds = %virtio_fs_drain_queue.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %virtio_fs_drain_queue.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_fs_probe(ptr noundef %vdev) #3 align 64 {
entry:
  %virtio_cread_v.i = alloca i32, align 4
  %vq_name.i = alloca [24 x i8], align 1
  %tag_buf.i = alloca [36 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 44) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #13
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %call7.i.i, align 8
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tag_buf.i) #13
  %3 = call ptr @memset(ptr %tag_buf.i, i32 255, i32 36)
  %config.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %4 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config.i.i.i, align 8
  %generation.i.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %generation.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %generation.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i, label %if.end.cond.end.i.i.i_crit_edge, label %cond.true.i.i.i

if.end.cond.end.i.i.i_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i.i.i

cond.true.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call i32 %7(ptr noundef %vdev) #13
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.true.i.i.i, %if.end.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %call.i.i.i, %cond.true.i.i.i ], [ 0, %if.end.cond.end.i.i.i_crit_edge ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.21, i32 noundef 451) #13
  br label %do.body6.i.i.i

do.body6.i.i.i:                                   ; preds = %cond.end17.i.i.i.do.body6.i.i.i_crit_edge, %cond.end.i.i.i
  %gen.0.i.i.i = phi i32 [ %cond.i.i.i, %cond.end.i.i.i ], [ %cond18.i.i.i, %cond.end17.i.i.i.do.body6.i.i.i_crit_edge ]
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %do.body6.i.i.i
  %i.01.i.i.i = phi i32 [ 0, %do.body6.i.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %8 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config.i.i.i, align 8
  %get.i.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %get.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %tag_buf.i, i32 %i.01.i.i.i
  call void %11(ptr noundef %vdev, i32 noundef %i.01.i.i.i, ptr noundef %add.ptr.i.i.i, i32 noundef 1) #13
  %inc.i.i.i = add nuw nsw i32 %i.01.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 36
  br i1 %exitcond.not.i.i.i, label %for.end.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i
  %12 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %config.i.i.i, align 8
  %generation10.i.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %generation10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %generation10.i.i.i, align 4
  %tobool11.not.i.i.i = icmp eq ptr %15, null
  br i1 %tobool11.not.i.i.i, label %for.end.i.i.i.cond.end17.i.i.i_crit_edge, label %cond.true12.i.i.i

for.end.i.i.i.cond.end17.i.i.i_crit_edge:         ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end17.i.i.i

cond.true12.i.i.i:                                ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call15.i.i.i = call i32 %15(ptr noundef %vdev) #13
  br label %cond.end17.i.i.i

cond.end17.i.i.i:                                 ; preds = %cond.true12.i.i.i, %for.end.i.i.i.cond.end17.i.i.i_crit_edge
  %cond18.i.i.i = phi i32 [ %call15.i.i.i, %cond.true12.i.i.i ], [ 0, %for.end.i.i.i.cond.end17.i.i.i_crit_edge ]
  %cmp20.not.i.i.i = icmp eq i32 %cond18.i.i.i, %gen.0.i.i.i
  br i1 %cmp20.not.i.i.i, label %virtio_cread_bytes.exit.i, label %cond.end17.i.i.i.do.body6.i.i.i_crit_edge

cond.end17.i.i.i.do.body6.i.i.i_crit_edge:        ; preds = %cond.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body6.i.i.i

virtio_cread_bytes.exit.i:                        ; preds = %cond.end17.i.i.i
  %call.i = call ptr @memchr(ptr noundef nonnull %tag_buf.i, i32 noundef 0, i32 noundef 36) #17
  %cmp.i = icmp eq ptr %call.i, %tag_buf.i
  br i1 %cmp.i, label %virtio_cread_bytes.exit.i.virtio_fs_read_tag.exit.thread_crit_edge, label %if.end.i

virtio_cread_bytes.exit.i.virtio_fs_read_tag.exit.thread_crit_edge: ; preds = %virtio_cread_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %virtio_fs_read_tag.exit.thread

if.end.i:                                         ; preds = %virtio_cread_bytes.exit.i
  %tobool.not.i = icmp eq ptr %call.i, null
  %arrayidx.i = getelementptr inbounds [36 x i8], ptr %tag_buf.i, i32 0, i32 36
  %spec.select.i = select i1 %tobool.not.i, ptr %arrayidx.i, ptr %call.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %spec.select.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %tag_buf.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %dev.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  %add.i = add i32 %sub.ptr.sub.i, 1
  %call5.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef %add.i, i32 noundef 3264) #13
  %tag.i = getelementptr inbounds %struct.virtio_fs, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %tag.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call5.i, ptr %tag.i, align 4
  %tobool7.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool7.not.i, label %if.end.i.virtio_fs_read_tag.exit.thread_crit_edge, label %if.end3

if.end.i.virtio_fs_read_tag.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %virtio_fs_read_tag.exit.thread

virtio_fs_read_tag.exit.thread:                   ; preds = %if.end.i.virtio_fs_read_tag.exit.thread_crit_edge, %virtio_cread_bytes.exit.i.virtio_fs_read_tag.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end.i.virtio_fs_read_tag.exit.thread_crit_edge ], [ -22, %virtio_cread_bytes.exit.i.virtio_fs_read_tag.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tag_buf.i) #13
  br label %out

if.end3:                                          ; preds = %if.end.i
  %17 = call ptr @memcpy(ptr %call5.i, ptr %tag_buf.i, i32 %sub.ptr.sub.i)
  %arrayidx13.i = getelementptr i8, ptr %call5.i, i32 %sub.ptr.sub.i
  %18 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx13.i, align 1
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tag_buf.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v.i) #13
  %19 = ptrtoint ptr %virtio_cread_v.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %virtio_cread_v.i, align 4, !annotation !144
  call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 692) #13
  %20 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %config.i.i.i, align 8
  %get.i = getelementptr inbounds %struct.virtio_config_ops, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %get.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get.i, align 4
  call void %23(ptr noundef %vdev, i32 noundef 36, ptr noundef nonnull %virtio_cread_v.i, i32 noundef 4) #13
  %24 = ptrtoint ptr %virtio_cread_v.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %virtio_cread_v.i, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25) #13
  %num_request_queues.i = getelementptr inbounds %struct.virtio_fs, ptr %call7.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %num_request_queues.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %num_request_queues.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp8.i = icmp eq i32 %25, 0
  br i1 %cmp8.i, label %if.end3.out_crit_edge, label %if.end.i39

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i39:                                       ; preds = %if.end3
  %add.i38 = add i32 %26, 1
  %nvqs.i = getelementptr inbounds %struct.virtio_fs, ptr %call7.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %nvqs.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add.i38, ptr %nvqs.i, align 4
  %29 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i38, i32 384) #13
  %30 = extractvalue { i32, i1 } %29, 1
  br i1 %30, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !134

kcalloc.exit.thread.i:                            ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #15
  %vqs12189.i = getelementptr inbounds %struct.virtio_fs, ptr %call7.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %vqs12189.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %vqs12189.i, align 8
  br label %out

if.end7.i.i.i:                                    ; preds = %if.end.i39
  %32 = extractvalue { i32, i1 } %29, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %32, i32 noundef 3520) #19
  %vqs12.i = getelementptr inbounds %struct.virtio_fs, ptr %call7.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %vqs12.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call8.i.i.i, ptr %vqs12.i, align 8
  %tobool.not.i40 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i40, label %if.end7.i.i.i.out_crit_edge, label %if.end15.i

if.end7.i.i.i.out_crit_edge:                      ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end15.i:                                       ; preds = %if.end7.i.i.i
  %34 = ptrtoint ptr %nvqs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nvqs.i, align 4
  %36 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %35, i32 4) #13
  %37 = extractvalue { i32, i1 } %36, 1
  br i1 %37, label %if.end15.i.kmalloc_array.exit.i_crit_edge, label %if.end7.i.i, !prof !134

if.end15.i.kmalloc_array.exit.i_crit_edge:        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kmalloc_array.exit.i

if.end7.i.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  %38 = extractvalue { i32, i1 } %36, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %38, i32 noundef 3264) #19
  br label %kmalloc_array.exit.i

kmalloc_array.exit.i:                             ; preds = %if.end7.i.i, %if.end15.i.kmalloc_array.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call8.i.i, %if.end7.i.i ], [ null, %if.end15.i.kmalloc_array.exit.i_crit_edge ]
  %39 = ptrtoint ptr %nvqs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nvqs.i, align 4
  %41 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %40, i32 4) #13
  %42 = extractvalue { i32, i1 } %41, 1
  br i1 %42, label %kmalloc_array.exit.i.kmalloc_array.exit154.i_crit_edge, label %if.end7.i152.i, !prof !134

kmalloc_array.exit.i.kmalloc_array.exit154.i_crit_edge: ; preds = %kmalloc_array.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kmalloc_array.exit154.i

if.end7.i152.i:                                   ; preds = %kmalloc_array.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %43 = extractvalue { i32, i1 } %41, 0
  %call8.i151.i = call noalias align 128 ptr @__kmalloc(i32 noundef %43, i32 noundef 3264) #19
  br label %kmalloc_array.exit154.i

kmalloc_array.exit154.i:                          ; preds = %if.end7.i152.i, %kmalloc_array.exit.i.kmalloc_array.exit154.i_crit_edge
  %retval.0.i153.i = phi ptr [ %call8.i151.i, %if.end7.i152.i ], [ null, %kmalloc_array.exit.i.kmalloc_array.exit154.i_crit_edge ]
  %44 = ptrtoint ptr %nvqs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nvqs.i, align 4
  %46 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %45, i32 4) #13
  %47 = extractvalue { i32, i1 } %46, 1
  br i1 %47, label %kmalloc_array.exit154.i.out.i_crit_edge, label %if.end7.i185.i, !prof !134

kmalloc_array.exit154.i.out.i_crit_edge:          ; preds = %kmalloc_array.exit154.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

if.end7.i185.i:                                   ; preds = %kmalloc_array.exit154.i
  %48 = extractvalue { i32, i1 } %46, 0
  %call8.i184.i = call noalias align 128 ptr @__kmalloc(i32 noundef %48, i32 noundef 3264) #19
  %tobool22.not.i = icmp eq ptr %retval.0.i.i, null
  %tobool23.not.i = icmp eq ptr %retval.0.i153.i, null
  %or.cond.i = select i1 %tobool22.not.i, i1 true, i1 %tobool23.not.i
  %tobool25.not.i = icmp eq ptr %call8.i184.i, null
  %or.cond117.i = select i1 %or.cond.i, i1 true, i1 %tobool25.not.i
  br i1 %or.cond117.i, label %if.end7.i185.i.out.i_crit_edge, label %if.end27.i

if.end7.i185.i.out.i_crit_edge:                   ; preds = %if.end7.i185.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

if.end27.i:                                       ; preds = %if.end7.i185.i
  %49 = ptrtoint ptr %retval.0.i153.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @virtio_fs_vq_done, ptr %retval.0.i153.i, align 128
  %50 = ptrtoint ptr %vqs12.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vqs12.i, align 8
  call fastcc void @virtio_fs_init_vq(ptr noundef %51, ptr noundef nonnull @.str.22, i32 noundef 0) #13
  %52 = ptrtoint ptr %vqs12.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vqs12.i, align 8
  %name.i = getelementptr inbounds %struct.virtio_fs_vq, ptr %53, i32 0, i32 10
  %54 = ptrtoint ptr %call8.i184.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %name.i, ptr %call8.i184.i, align 128
  %55 = ptrtoint ptr %nvqs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nvqs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp34205.i = icmp ugt i32 %56, 1
  br i1 %cmp34205.i, label %if.end27.i.for.body.i_crit_edge, label %if.end27.i.for.end.i_crit_edge

if.end27.i.for.end.i_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end27.i.for.body.i_crit_edge:                  ; preds = %if.end27.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end27.i.for.body.i_crit_edge
  %i.0206.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %if.end27.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %vq_name.i) #13
  %sub.i = add i32 %i.0206.i, -1
  %57 = call ptr @memset(ptr %vq_name.i, i32 255, i32 24)
  %call37.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %vq_name.i, i32 noundef 24, ptr noundef nonnull @.str.23, i32 noundef %sub.i) #13
  %58 = ptrtoint ptr %vqs12.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vqs12.i, align 8
  %arrayidx39.i = getelementptr %struct.virtio_fs_vq, ptr %59, i32 %i.0206.i
  call fastcc void @virtio_fs_init_vq(ptr noundef %arrayidx39.i, ptr noundef nonnull %vq_name.i, i32 noundef 1) #13
  %arrayidx41.i = getelementptr ptr, ptr %retval.0.i153.i, i32 %i.0206.i
  %60 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @virtio_fs_vq_done, ptr %arrayidx41.i, align 4
  %61 = ptrtoint ptr %vqs12.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vqs12.i, align 8
  %name44.i = getelementptr %struct.virtio_fs_vq, ptr %62, i32 %i.0206.i, i32 10
  %arrayidx46.i = getelementptr ptr, ptr %call8.i184.i, i32 %i.0206.i
  %63 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %name44.i, ptr %arrayidx46.i, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %vq_name.i) #13
  %inc.i = add nuw i32 %i.0206.i, 1
  %64 = ptrtoint ptr %nvqs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nvqs.i, align 4
  %cmp34.i = icmp ult i32 %inc.i, %65
  br i1 %cmp34.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end27.i.for.end.i_crit_edge
  %.lcssa204.i = phi i32 [ %56, %if.end27.i.for.end.i_crit_edge ], [ %65, %for.body.i.for.end.i_crit_edge ]
  %66 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %config.i.i.i, align 8
  %find_vqs.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %67, i32 0, i32 7
  %68 = ptrtoint ptr %find_vqs.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %find_vqs.i.i, align 4
  %call.i.i = call i32 %69(ptr noundef %vdev, i32 noundef %.lcssa204.i, ptr noundef %retval.0.i.i, ptr noundef %retval.0.i153.i, ptr noundef %call8.i184.i, ptr noundef null, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp49.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp49.i, label %for.end.i.out.i_crit_edge, label %for.cond53.preheader.i

for.end.i.out.i_crit_edge:                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

for.cond53.preheader.i:                           ; preds = %for.end.i
  %70 = ptrtoint ptr %nvqs.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nvqs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp55207.not.i = icmp eq i32 %71, 0
  br i1 %cmp55207.not.i, label %for.cond53.preheader.i.out.i_crit_edge, label %for.cond53.preheader.i.for.body57.i_crit_edge

for.cond53.preheader.i.for.body57.i_crit_edge:    ; preds = %for.cond53.preheader.i
  br label %for.body57.i

for.cond53.preheader.i.out.i_crit_edge:           ; preds = %for.cond53.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

for.body57.i:                                     ; preds = %for.body57.i.for.body57.i_crit_edge, %for.cond53.preheader.i.for.body57.i_crit_edge
  %i.1208.i = phi i32 [ %inc62.i, %for.body57.i.for.body57.i_crit_edge ], [ 0, %for.cond53.preheader.i.for.body57.i_crit_edge ]
  %arrayidx58.i = getelementptr ptr, ptr %retval.0.i.i, i32 %i.1208.i
  %72 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx58.i, align 4
  %74 = ptrtoint ptr %vqs12.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vqs12.i, align 8
  %vq.i = getelementptr %struct.virtio_fs_vq, ptr %75, i32 %i.1208.i, i32 1
  %76 = ptrtoint ptr %vq.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %vq.i, align 4
  %inc62.i = add nuw i32 %i.1208.i, 1
  %77 = ptrtoint ptr %nvqs.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %nvqs.i, align 4
  %cmp55.i = icmp ult i32 %inc62.i, %78
  br i1 %cmp55.i, label %for.body57.i.for.body57.i_crit_edge, label %for.end63.i

for.body57.i.for.body57.i_crit_edge:              ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body57.i

for.end63.i:                                      ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %phi.cmp.i = icmp eq i32 %78, 0
  br i1 %phi.cmp.i, label %for.end63.i.out.i_crit_edge, label %for.end63.i.for.body.i.i_crit_edge

for.end63.i.for.body.i.i_crit_edge:               ; preds = %for.end63.i
  br label %for.body.i.i

for.end63.i.out.i_crit_edge:                      ; preds = %for.end63.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.end63.i.for.body.i.i_crit_edge
  %i.08.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.end63.i.for.body.i.i_crit_edge ]
  %79 = ptrtoint ptr %vqs12.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %vqs12.i, align 8
  %arrayidx.i.i = getelementptr %struct.virtio_fs_vq, ptr %80, i32 %i.08.i.i
  call void @_raw_spin_lock(ptr noundef %arrayidx.i.i) #13
  %connected.i.i = getelementptr %struct.virtio_fs_vq, ptr %80, i32 %i.08.i.i, i32 7
  %81 = ptrtoint ptr %connected.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %connected.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i) #13
  %inc.i.i = add nuw i32 %i.08.i.i, 1
  %82 = ptrtoint ptr %nvqs.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %nvqs.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %83
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.out.i_crit_edge

for.body.i.i.out.i_crit_edge:                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

out.i:                                            ; preds = %for.body.i.i.out.i_crit_edge, %for.end63.i.out.i_crit_edge, %for.cond53.preheader.i.out.i_crit_edge, %for.end.i.out.i_crit_edge, %if.end7.i185.i.out.i_crit_edge, %kmalloc_array.exit154.i.out.i_crit_edge
  %retval.0.i186203.i = phi ptr [ %call8.i184.i, %for.end.i.out.i_crit_edge ], [ %call8.i184.i, %if.end7.i185.i.out.i_crit_edge ], [ %call8.i184.i, %for.end63.i.out.i_crit_edge ], [ null, %kmalloc_array.exit154.i.out.i_crit_edge ], [ %call8.i184.i, %for.cond53.preheader.i.out.i_crit_edge ], [ %call8.i184.i, %for.body.i.i.out.i_crit_edge ]
  %ret.0.i = phi i32 [ %call.i.i, %for.end.i.out.i_crit_edge ], [ -12, %if.end7.i185.i.out.i_crit_edge ], [ %call.i.i, %for.end63.i.out.i_crit_edge ], [ -12, %kmalloc_array.exit154.i.out.i_crit_edge ], [ %call.i.i, %for.cond53.preheader.i.out.i_crit_edge ], [ %call.i.i, %for.body.i.i.out.i_crit_edge ]
  call void @kfree(ptr noundef %retval.0.i186203.i) #13
  call void @kfree(ptr noundef %retval.0.i153.i) #13
  call void @kfree(ptr noundef %retval.0.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool64.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool64.not.i, label %out.i.if.end7_crit_edge, label %virtio_fs_setup_vqs.exit

out.i.if.end7_crit_edge:                          ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

virtio_fs_setup_vqs.exit:                         ; preds = %out.i
  %84 = ptrtoint ptr %vqs12.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %vqs12.i, align 8
  call void @kfree(ptr noundef %85) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp5 = icmp slt i32 %ret.0.i, 0
  br i1 %cmp5, label %virtio_fs_setup_vqs.exit.out_crit_edge, label %virtio_fs_setup_vqs.exit.if.end7_crit_edge

virtio_fs_setup_vqs.exit.if.end7_crit_edge:       ; preds = %virtio_fs_setup_vqs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

virtio_fs_setup_vqs.exit.out_crit_edge:           ; preds = %virtio_fs_setup_vqs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end7:                                          ; preds = %virtio_fs_setup_vqs.exit.if.end7_crit_edge, %out.i.if.end7_crit_edge
  %86 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %config.i.i.i, align 8
  %get_status.i = getelementptr inbounds %struct.virtio_config_ops, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %get_status.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %get_status.i, align 4
  %call.i43 = call zeroext i8 %89(ptr noundef %vdev) #13
  %90 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %config.i.i.i, align 8
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %tobool.not.i44 = icmp eq ptr %93, null
  br i1 %tobool.not.i44, label %if.end7.do.body.i_crit_edge, label %if.then.i

if.end7.do.body.i_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  call void %93(ptr noundef %vdev) #13
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.end7.do.body.i_crit_edge
  %94 = and i8 %call.i43, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool4.not.i = icmp eq i8 %94, 0
  br i1 %tobool4.not.i, label %virtio_device_ready.exit, label %do.body8.i, !prof !135

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/virtio_config.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #13, !srcloc !145
  unreachable

virtio_device_ready.exit:                         ; preds = %do.body.i
  %95 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %config.i.i.i, align 8
  %set_status.i = getelementptr inbounds %struct.virtio_config_ops, ptr %96, i32 0, i32 5
  %97 = ptrtoint ptr %set_status.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %set_status.i, align 4
  %or.i = or i8 %call.i43, 4
  call void %98(ptr noundef %vdev, i8 noundef zeroext %or.i) #13
  call void @mutex_lock_nested(ptr noundef nonnull @virtio_fs_mutex, i32 noundef 0) #13
  %.pn19.i = load ptr, ptr @virtio_fs_instances, align 4
  %cmp.not20.i = icmp eq ptr %.pn19.i, @virtio_fs_instances
  br i1 %cmp.not20.i, label %virtio_device_ready.exit.if.then7.i_crit_edge, label %for.body.lr.ph.i46

virtio_device_ready.exit.if.then7.i_crit_edge:    ; preds = %virtio_device_ready.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7.i

for.body.lr.ph.i46:                               ; preds = %virtio_device_ready.exit
  %99 = ptrtoint ptr %tag.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %tag.i, align 4
  br label %for.body.i49

for.body.i49:                                     ; preds = %for.body.i49.for.body.i49_crit_edge, %for.body.lr.ph.i46
  %.pn22.i = phi ptr [ %.pn19.i, %for.body.lr.ph.i46 ], [ %.pn.i, %for.body.i49.for.body.i49_crit_edge ]
  %duplicate.0.off021.i = phi i1 [ false, %for.body.lr.ph.i46 ], [ %spec.select.i48, %for.body.i49.for.body.i49_crit_edge ]
  %tag1.i = getelementptr i8, ptr %.pn22.i, i32 8
  %101 = ptrtoint ptr %tag1.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %tag1.i, align 4
  %call.i47 = call i32 @strcmp(ptr noundef %100, ptr noundef %102) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %cmp2.i = icmp eq i32 %call.i47, 0
  %spec.select.i48 = select i1 %cmp2.i, i1 true, i1 %duplicate.0.off021.i
  %103 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @virtio_fs_instances
  br i1 %cmp.not.i, label %for.end.i50, label %for.body.i49.for.body.i49_crit_edge

for.body.i49.for.body.i49_crit_edge:              ; preds = %for.body.i49
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i49

for.end.i50:                                      ; preds = %for.body.i49
  br i1 %spec.select.i48, label %out_vqs, label %for.end.i50.if.then7.i_crit_edge

for.end.i50.if.then7.i_crit_edge:                 ; preds = %for.end.i50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then7.i

if.then7.i:                                       ; preds = %for.end.i50.if.then7.i_crit_edge, %virtio_device_ready.exit.if.then7.i_crit_edge
  %list8.i = getelementptr inbounds %struct.virtio_fs, ptr %call7.i.i, i32 0, i32 1
  %104 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @virtio_fs_instances, i32 0, i32 1), align 4
  %call.i.i.i51 = call zeroext i1 @__list_add_valid(ptr noundef %list8.i, ptr noundef %104, ptr noundef nonnull @virtio_fs_instances) #13
  br i1 %call.i.i.i51, label %if.end.i.i.i52, label %if.then7.i.virtio_fs_add_instance.exit.thread_crit_edge

if.then7.i.virtio_fs_add_instance.exit.thread_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %virtio_fs_add_instance.exit.thread

if.end.i.i.i52:                                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  store ptr %list8.i, ptr getelementptr inbounds (%struct.list_head, ptr @virtio_fs_instances, i32 0, i32 1), align 4
  %105 = ptrtoint ptr %list8.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @virtio_fs_instances, ptr %list8.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virtio_fs, ptr %call7.i.i, i32 0, i32 1, i32 1
  %106 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %104, ptr %prev3.i.i.i, align 8
  %107 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %list8.i, ptr %104, align 4
  br label %virtio_fs_add_instance.exit.thread

virtio_fs_add_instance.exit.thread:               ; preds = %if.end.i.i.i52, %if.then7.i.virtio_fs_add_instance.exit.thread_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @virtio_fs_mutex) #13
  br label %cleanup

out_vqs:                                          ; preds = %for.end.i50
  call void @__sanitizer_cov_trace_pc() #15
  call void @mutex_unlock(ptr noundef nonnull @virtio_fs_mutex) #13
  call void @virtio_reset_device(ptr noundef %vdev) #13
  %108 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %config.i.i.i, align 8
  %del_vqs.i = getelementptr inbounds %struct.virtio_config_ops, ptr %109, i32 0, i32 8
  %110 = ptrtoint ptr %del_vqs.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %del_vqs.i, align 4
  call void %111(ptr noundef %vdev) #13
  %vqs = getelementptr inbounds %struct.virtio_fs, ptr %call7.i.i, i32 0, i32 3
  %112 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %vqs, align 8
  call void @kfree(ptr noundef %113) #13
  br label %out

out:                                              ; preds = %out_vqs, %virtio_fs_setup_vqs.exit.out_crit_edge, %if.end7.i.i.i.out_crit_edge, %kcalloc.exit.thread.i, %if.end3.out_crit_edge, %virtio_fs_read_tag.exit.thread
  %ret.1 = phi i32 [ %ret.0.i, %virtio_fs_setup_vqs.exit.out_crit_edge ], [ -17, %out_vqs ], [ %retval.0.i.ph, %virtio_fs_read_tag.exit.thread ], [ -12, %kcalloc.exit.thread.i ], [ -12, %if.end7.i.i.i.out_crit_edge ], [ -22, %if.end3.out_crit_edge ]
  %114 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %priv, align 8
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %virtio_fs_add_instance.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ -12, %entry.cleanup_crit_edge ], [ 0, %virtio_fs_add_instance.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_fs_remove(ptr noundef %vdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @virtio_fs_mutex, i32 noundef 0) #13
  %list = getelementptr inbounds %struct.virtio_fs, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.virtio_fs, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.virtio_fs, ptr %1, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev.i3.i, align 4
  %nvqs.i = getelementptr inbounds %struct.virtio_fs, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %nvqs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nvqs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp7.not.i = icmp eq i32 %11, 0
  br i1 %cmp7.not.i, label %list_del_init.exit.virtio_fs_stop_all_queues.exit_crit_edge, label %for.body.lr.ph.i

list_del_init.exit.virtio_fs_stop_all_queues.exit_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %virtio_fs_stop_all_queues.exit

for.body.lr.ph.i:                                 ; preds = %list_del_init.exit
  %vqs.i = getelementptr inbounds %struct.virtio_fs, ptr %1, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %vqs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vqs.i, align 4
  %arrayidx.i = getelementptr %struct.virtio_fs_vq, ptr %13, i32 %i.08.i
  tail call void @_raw_spin_lock(ptr noundef %arrayidx.i) #13
  %connected.i = getelementptr %struct.virtio_fs_vq, ptr %13, i32 %i.08.i, i32 7
  %14 = ptrtoint ptr %connected.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %connected.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.i) #13
  %inc.i = add nuw i32 %i.08.i, 1
  %15 = ptrtoint ptr %nvqs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nvqs.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %16
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.virtio_fs_stop_all_queues.exit_crit_edge

for.body.i.virtio_fs_stop_all_queues.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %virtio_fs_stop_all_queues.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

virtio_fs_stop_all_queues.exit:                   ; preds = %for.body.i.virtio_fs_stop_all_queues.exit_crit_edge, %list_del_init.exit.virtio_fs_stop_all_queues.exit_crit_edge
  tail call fastcc void @virtio_fs_drain_all_queues_locked(ptr noundef %1)
  tail call void @virtio_reset_device(ptr noundef %vdev) #13
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %17 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %config.i, align 8
  %del_vqs.i = getelementptr inbounds %struct.virtio_config_ops, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %del_vqs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %del_vqs.i, align 4
  tail call void %20(ptr noundef %vdev) #13
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %priv, align 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !136
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #13
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #13, !srcloc !137
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %virtio_fs_stop_all_queues.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.virtio_fs_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !135

if.end5.i.i.i.i.i.virtio_fs_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %virtio_fs_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef 3) #13
  br label %virtio_fs_put.exit

if.then.i.i:                                      ; preds = %virtio_fs_stop_all_queues.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !138
  %vqs.i.i.i = getelementptr inbounds %struct.virtio_fs, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %vqs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vqs.i.i.i, align 4
  tail call void @kfree(ptr noundef %24) #13
  tail call void @kfree(ptr noundef %1) #13
  br label %virtio_fs_put.exit

virtio_fs_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.virtio_fs_put.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @virtio_fs_mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_fs_freeze(ptr nocapture noundef readnone %vdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #18
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @virtio_fs_restore(ptr nocapture noundef readnone %vdev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_fs_vq_done(ptr nocapture noundef readonly %vq) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev.i = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 3
  %0 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev.i, align 4
  %priv.i = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %vqs.i = getelementptr inbounds %struct.virtio_fs, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vqs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vqs.i, align 4
  %index.i = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 4
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @virtio_fs_vq_done.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@virtio_fs_vq_done, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !139

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdev.i, align 4
  %dev = getelementptr inbounds %struct.virtio_device, ptr %9, i32 0, i32 6
  %name = getelementptr %struct.virtio_fs_vq, ptr %5, i32 %7, i32 10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @virtio_fs_vq_done.__UNIQUE_ID_ddebug285, ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, ptr noundef %name) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %done_work = getelementptr %struct.virtio_fs_vq, ptr %5, i32 %7, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %done_work) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @virtio_fs_init_vq(ptr noundef %fsvq, ptr noundef %name, i32 noundef %vq_type) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %name1 = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 10
  %call = tail call i32 @strscpy(ptr noundef %name1, ptr noundef %name, i32 noundef 24) #13
  tail call void @__raw_spin_lock_init(ptr noundef %fsvq, ptr noundef nonnull @.str.26, ptr noundef nonnull @virtio_fs_init_vq.__key, i16 noundef signext 3) #13
  %queued_reqs = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 3
  %0 = ptrtoint ptr %queued_reqs to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %queued_reqs, ptr %queued_reqs, align 4
  %prev.i = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %queued_reqs, ptr %prev.i, align 4
  %end_reqs = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 4
  %2 = ptrtoint ptr %end_reqs to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %end_reqs, ptr %end_reqs, align 4
  %prev.i94 = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %prev.i94 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %end_reqs, ptr %prev.i94, align 4
  %in_flight_zero = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 9
  %4 = ptrtoint ptr %in_flight_zero to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %in_flight_zero, align 4
  %wait.i = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @init_completion.__key) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %vq_type)
  %cmp = icmp eq i32 %vq_type, 1
  %done_work = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 2
  tail call void @__init_work(ptr noundef %done_work, i32 noundef 0) #13
  %5 = ptrtoint ptr %done_work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %done_work, align 16
  %lockdep_map = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 2, i32 3
  br i1 %cmp, label %do.body3, label %do.body31

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.28, ptr noundef nonnull @virtio_fs_init_vq.__key.27, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry7 = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry7, ptr %entry7, align 4
  %prev.i95 = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 2, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i95 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry7, ptr %prev.i95, align 4
  %func = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @virtio_fs_requests_done_work, ptr %func, align 4
  %dispatch_work = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 5
  tail call void @__init_work(ptr noundef %dispatch_work, i32 noundef 0) #13
  %9 = ptrtoint ptr %dispatch_work to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %dispatch_work, align 4
  %lockdep_map19 = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 5, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map19, ptr noundef nonnull @.str.30, ptr noundef nonnull @virtio_fs_init_vq.__key.29, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry22 = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 5, i32 0, i32 1
  %10 = ptrtoint ptr %entry22 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry22, ptr %entry22, align 4
  br label %if.end

do.body31:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.28, ptr noundef nonnull @virtio_fs_init_vq.__key.33, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry40 = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %entry40 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry40, ptr %entry40, align 4
  %prev.i97 = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 2, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i97 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry40, ptr %prev.i97, align 4
  %func42 = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %func42 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @virtio_fs_hiprio_done_work, ptr %func42, align 4
  %dispatch_work46 = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 5
  tail call void @__init_work(ptr noundef %dispatch_work46, i32 noundef 0) #13
  %14 = ptrtoint ptr %dispatch_work46 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %dispatch_work46, align 4
  %lockdep_map55 = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 5, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map55, ptr noundef nonnull @.str.30, ptr noundef nonnull @virtio_fs_init_vq.__key.34, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry58 = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 5, i32 0, i32 1
  %15 = ptrtoint ptr %entry58 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry58, ptr %entry58, align 4
  br label %if.end

if.end:                                           ; preds = %do.body31, %do.body3
  %entry58.sink = phi ptr [ %entry58, %do.body31 ], [ %entry22, %do.body3 ]
  %virtio_fs_hiprio_dispatch_work.sink = phi ptr [ @virtio_fs_hiprio_dispatch_work, %do.body31 ], [ @virtio_fs_request_dispatch_work, %do.body3 ]
  %virtio_fs_init_vq.__key.35.sink = phi ptr [ @virtio_fs_init_vq.__key.35, %do.body31 ], [ @virtio_fs_init_vq.__key.31, %do.body3 ]
  %prev.i98 = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 5, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i98 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry58.sink, ptr %prev.i98, align 4
  %func61 = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 5, i32 0, i32 2
  %17 = ptrtoint ptr %func61 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %virtio_fs_hiprio_dispatch_work.sink, ptr %func61, align 4
  %timer65 = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 5, i32 1
  tail call void @init_timer_key(ptr noundef %timer65, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.32, ptr noundef nonnull %virtio_fs_init_vq.__key.35.sink) #13
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_fs_requests_done_work(ptr noundef %work) #3 align 64 {
entry:
  %len = alloca i32, align 4
  %reqs = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -48
  %fud = getelementptr i8, ptr %work, i32 160
  %0 = ptrtoint ptr %fud to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fud, align 16
  %vq1 = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %vq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vq1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #13
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %len, align 4, !annotation !144
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reqs) #13
  %5 = getelementptr inbounds %struct.list_head, ptr %reqs, i32 0, i32 1
  %6 = ptrtoint ptr %reqs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %reqs, ptr %reqs, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %reqs, ptr %5, align 4
  call void @_raw_spin_lock(ptr noundef %add.ptr) #13
  %lock3 = getelementptr inbounds %struct.fuse_dev, ptr %1, i32 0, i32 1, i32 1
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  call void @virtqueue_disable_cb(ptr noundef %3) #13
  %call73 = call ptr @virtqueue_get_buf(ptr noundef %3, ptr noundef nonnull %len) #13
  %cmp.not74 = icmp eq ptr %call73, null
  br i1 %cmp.not74, label %do.body.do.cond_crit_edge, label %do.body.while.body_crit_edge

do.body.while.body_crit_edge:                     ; preds = %do.body
  br label %while.body

do.body.do.cond_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond

while.body:                                       ; preds = %list_move_tail.exit.while.body_crit_edge, %do.body.while.body_crit_edge
  %call75 = phi ptr [ %call, %list_move_tail.exit.while.body_crit_edge ], [ %call73, %do.body.while.body_crit_edge ]
  call void @_raw_spin_lock(ptr noundef %lock3) #13
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call75) #13
  br i1 %call.i.i, label %if.end.i.i, label %while.body.__list_del_entry.exit.i_crit_edge

while.body.__list_del_entry.exit.i_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call75, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %call75 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call75, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %while.body.__list_del_entry.exit.i_crit_edge
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call75, ptr noundef %15, ptr noundef nonnull %reqs) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call75, ptr %5, align 4
  %17 = ptrtoint ptr %call75 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %reqs, ptr %call75, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call75, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call75, ptr %15, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock3) #13
  %call = call ptr @virtqueue_get_buf(ptr noundef %3, ptr noundef nonnull %len) #13
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %list_move_tail.exit.do.cond_crit_edge, label %list_move_tail.exit.while.body_crit_edge

list_move_tail.exit.while.body_crit_edge:         ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

list_move_tail.exit.do.cond_crit_edge:            ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond

do.cond:                                          ; preds = %list_move_tail.exit.do.cond_crit_edge, %do.body.do.cond_crit_edge
  %call5 = call zeroext i1 @virtqueue_enable_cb(ptr noundef %3) #13
  br i1 %call5, label %do.cond.do.end_crit_edge, label %land.rhs

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.rhs:                                         ; preds = %do.cond
  %call6 = call zeroext i1 @virtqueue_is_broken(ptr noundef %3) #13
  br i1 %call6, label %land.rhs.do.end_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %do.cond.do.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %add.ptr) #13
  %20 = ptrtoint ptr %reqs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reqs, align 4
  %cmp20.not78 = icmp eq ptr %21, %reqs
  br i1 %cmp20.not78, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %req.079 = phi ptr [ %next.081, %for.inc.for.body_crit_edge ], [ %21, %do.end.for.body_crit_edge ]
  %22 = ptrtoint ptr %req.079 to i32
  call void @__asan_load4_noabort(i32 %22)
  %next.081 = load ptr, ptr %req.079, align 8
  %call.i.i65 = call zeroext i1 @__list_del_entry_valid(ptr noundef %req.079) #13
  br i1 %call.i.i65, label %if.end.i.i68, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i68:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i66 = getelementptr inbounds %struct.list_head, ptr %req.079, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i66 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i66, align 4
  %25 = ptrtoint ptr %req.079 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %req.079, align 4
  %prev1.i.i.i67 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i67 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i67, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i68, %for.body.list_del_init.exit_crit_edge
  %29 = ptrtoint ptr %req.079 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %req.079, ptr %req.079, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %req.079, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %req.079, ptr %prev.i3.i, align 4
  %args = getelementptr inbounds %struct.fuse_req, ptr %req.079, i32 0, i32 2
  %31 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %args, align 8
  %may_block = getelementptr inbounds %struct.fuse_args, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %may_block to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load = load i16, ptr %may_block, align 8
  %34 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %bf.cast.not = icmp eq i16 %34, 0
  br i1 %bf.cast.not, label %if.else, label %if.then

if.then:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 36160, i32 noundef 52) #16
  %done_work = getelementptr inbounds %struct.virtio_fs_req_work, ptr %call7.i.i, i32 0, i32 2
  call void @__init_work(ptr noundef %done_work, i32 noundef 0) #13
  %36 = ptrtoint ptr %done_work to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -64, ptr %done_work, align 8
  %lockdep_map = getelementptr inbounds %struct.virtio_fs_req_work, ptr %call7.i.i, i32 0, i32 2, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.37, ptr noundef nonnull @virtio_fs_requests_done_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry29 = getelementptr inbounds %struct.virtio_fs_req_work, ptr %call7.i.i, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %entry29 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %entry29, ptr %entry29, align 4
  %prev.i = getelementptr inbounds %struct.virtio_fs_req_work, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 1
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %entry29, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.virtio_fs_req_work, ptr %call7.i.i, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @virtio_fs_complete_req_work, ptr %func, align 4
  %fsvq33 = getelementptr inbounds %struct.virtio_fs_req_work, ptr %call7.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %fsvq33 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr, ptr %fsvq33, align 4
  %41 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %req.079, ptr %call7.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %42 = load ptr, ptr @system_wq, align 4
  %call.i.i72 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %42, ptr noundef %done_work) #13
  br label %for.inc

if.else:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @virtio_fs_request_complete(ptr noundef %req.079, ptr noundef %add.ptr)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %cmp20.not = icmp eq ptr %next.081, %reqs
  br i1 %cmp20.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reqs) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_fs_request_dispatch_work(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @virtio_fs_request_dispatch_work.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@virtio_fs_request_dispatch_work, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !139

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @virtio_fs_request_dispatch_work.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @_raw_spin_lock(ptr noundef %add.ptr) #13
  %end_reqs = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %end_reqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %end_reqs, align 4
  %cmp.not112 = icmp eq ptr %1, %end_reqs
  %tobool12.not108113 = icmp eq ptr %1, null
  %tobool12.not114 = or i1 %cmp.not112, %tobool12.not108113
  br i1 %tobool12.not114, label %do.end.if.then13_crit_edge, label %do.end.if.end15_crit_edge

do.end.if.end15_crit_edge:                        ; preds = %do.end
  br label %if.end15

do.end.if.then13_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

if.then13:                                        ; preds = %list_del_init.exit.if.then13_crit_edge, %do.end.if.then13_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr) #13
  tail call void @_raw_spin_lock(ptr noundef %add.ptr) #13
  %queued_reqs = getelementptr i8, ptr %work, i32 -16
  %2 = ptrtoint ptr %queued_reqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %queued_reqs, align 4
  %cmp28.not115 = icmp eq ptr %3, %queued_reqs
  %tobool36.not109116 = icmp eq ptr %3, null
  %tobool36.not117 = or i1 %cmp28.not115, %tobool36.not109116
  br i1 %tobool36.not117, label %if.then13.cleanup_crit_edge, label %if.end39.lr.ph

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end39.lr.ph:                                   ; preds = %if.then13
  %in_flight.i = getelementptr i8, ptr %work, i32 108
  %in_flight_zero.i = getelementptr i8, ptr %work, i32 112
  br label %if.end39

if.end15:                                         ; preds = %list_del_init.exit.if.end15_crit_edge, %do.end.if.end15_crit_edge
  %4 = phi ptr [ %14, %list_del_init.exit.if.end15_crit_edge ], [ %1, %do.end.if.end15_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %4) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end15.list_del_init.exit_crit_edge

if.end15.list_del_init.exit_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end15.list_del_init.exit_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %4, ptr %4, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %4, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr) #13
  tail call void @fuse_request_end(ptr noundef nonnull %4) #13
  tail call void @_raw_spin_lock(ptr noundef %add.ptr) #13
  %13 = ptrtoint ptr %end_reqs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %end_reqs, align 4
  %cmp.not = icmp eq ptr %14, %end_reqs
  %tobool12.not108 = icmp eq ptr %14, null
  %tobool12.not = or i1 %cmp.not, %tobool12.not108
  br i1 %tobool12.not, label %list_del_init.exit.if.then13_crit_edge, label %list_del_init.exit.if.end15_crit_edge

list_del_init.exit.if.end15_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

list_del_init.exit.if.then13_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

if.end39:                                         ; preds = %if.end62.if.end39_crit_edge, %if.end39.lr.ph
  %15 = phi ptr [ %3, %if.end39.lr.ph ], [ %38, %if.end62.if.end39_crit_edge ]
  %call.i.i98 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %15) #13
  br i1 %call.i.i98, label %if.end.i.i101, label %if.end39.list_del_init.exit103_crit_edge

if.end39.list_del_init.exit103_crit_edge:         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit103

if.end.i.i101:                                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i99 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i99 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i99, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %prev1.i.i.i100 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i100 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i100, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del_init.exit103

list_del_init.exit103:                            ; preds = %if.end.i.i101, %if.end39.list_del_init.exit103_crit_edge
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %15, ptr %15, align 4
  %prev.i3.i102 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i3.i102 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %15, ptr %prev.i3.i102, align 4
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr) #13
  %call42 = tail call fastcc i32 @virtio_fs_enqueue_req(ptr noundef %add.ptr, ptr noundef nonnull %15, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.then44, label %list_del_init.exit103.if.end62_crit_edge

list_del_init.exit103.if.end62_crit_edge:         ; preds = %list_del_init.exit103
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.then44:                                        ; preds = %list_del_init.exit103
  %24 = zext i32 %call42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %call42, label %if.end54 [
    i32 -12, label %if.then44.if.then47_crit_edge
    i32 -28, label %if.then44.if.then47_crit_edge125
  ]

if.then44.if.then47_crit_edge125:                 ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then47

if.then44.if.then47_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then47

if.then47:                                        ; preds = %if.then44.if.then47_crit_edge, %if.then44.if.then47_crit_edge125
  tail call void @_raw_spin_lock(ptr noundef %add.ptr) #13
  %prev.i = getelementptr i8, ptr %work, i32 -12
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i, align 4
  %call.i.i104 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %15, ptr noundef %26, ptr noundef %queued_reqs) #13
  br i1 %call.i.i104, label %if.end.i.i105, label %if.then47.list_add_tail.exit_crit_edge

if.then47.list_add_tail.exit_crit_edge:           ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i105:                                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i3.i102.le = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %15, ptr %prev.i, align 4
  %28 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %queued_reqs, ptr %15, align 4
  %29 = ptrtoint ptr %prev.i3.i102.le to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev.i3.i102.le, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %15, ptr %26, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i105, %if.then47.list_add_tail.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %31 = load ptr, ptr @system_wq, align 4
  %call.i.i106 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %31, ptr noundef %work, i32 noundef 1) #13
  br label %cleanup

if.end54:                                         ; preds = %if.then44
  %error = getelementptr inbounds %struct.fuse_req, ptr %15, i32 0, i32 6, i32 0, i32 1
  %32 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call42, ptr %error, align 4
  tail call void @_raw_spin_lock(ptr noundef %add.ptr) #13
  %33 = ptrtoint ptr %in_flight.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %in_flight.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp.i = icmp slt i32 %34, 1
  br i1 %cmp.i, label %do.end.i, label %if.end54.if.end.i_crit_edge, !prof !134

if.end54.if.end.i_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 157, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end54.if.end.i_crit_edge
  %35 = ptrtoint ptr %in_flight.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %in_flight.i, align 8
  %dec.i = add i32 %36, -1
  store i32 %dec.i, ptr %in_flight.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool21.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %if.end.i.dec_in_flight_req.exit_crit_edge

if.end.i.dec_in_flight_req.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dec_in_flight_req.exit

if.then22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @complete(ptr noundef %in_flight_zero.i) #13
  br label %dec_in_flight_req.exit

dec_in_flight_req.exit:                           ; preds = %if.then22.i, %if.end.i.dec_in_flight_req.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr) #13
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %call42) #18
  tail call void @fuse_request_end(ptr noundef nonnull %15) #13
  br label %if.end62

if.end62:                                         ; preds = %dec_in_flight_req.exit, %list_del_init.exit103.if.end62_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %add.ptr) #13
  %37 = ptrtoint ptr %queued_reqs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %queued_reqs, align 4
  %cmp28.not = icmp eq ptr %38, %queued_reqs
  %tobool36.not109 = icmp eq ptr %38, null
  %tobool36.not = or i1 %cmp28.not, %tobool36.not109
  br i1 %tobool36.not, label %if.end62.cleanup_crit_edge, label %if.end62.if.end39_crit_edge

if.end62.if.end39_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %if.end62.cleanup_crit_edge, %list_add_tail.exit, %if.then13.cleanup_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_fs_hiprio_done_work(ptr noundef %work) #3 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -48
  %vq1 = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %vq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vq1, align 4
  tail call void @_raw_spin_lock(ptr noundef %add.ptr) #13
  %in_flight.i = getelementptr i8, ptr %work, i32 168
  %in_flight_zero.i = getelementptr i8, ptr %work, i32 172
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #13
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %len, align 4, !annotation !144
  call void @virtqueue_disable_cb(ptr noundef %1) #13
  %call13 = call ptr @virtqueue_get_buf(ptr noundef %1, ptr noundef nonnull %len) #13
  %cmp.not14 = icmp eq ptr %call13, null
  br i1 %cmp.not14, label %do.body.while.end_crit_edge, label %do.body.while.body_crit_edge

do.body.while.body_crit_edge:                     ; preds = %do.body
  br label %while.body

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %dec_in_flight_req.exit.while.body_crit_edge, %do.body.while.body_crit_edge
  %call15 = phi ptr [ %call, %dec_in_flight_req.exit.while.body_crit_edge ], [ %call13, %do.body.while.body_crit_edge ]
  call void @kfree(ptr noundef nonnull %call15) #13
  %3 = ptrtoint ptr %in_flight.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %in_flight.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i = icmp slt i32 %4, 1
  br i1 %cmp.i, label %do.end.i, label %while.body.if.end.i_crit_edge, !prof !134

while.body.if.end.i_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 157, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %while.body.if.end.i_crit_edge
  %5 = ptrtoint ptr %in_flight.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %in_flight.i, align 8
  %dec.i = add i32 %6, -1
  store i32 %dec.i, ptr %in_flight.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool21.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %if.end.i.dec_in_flight_req.exit_crit_edge

if.end.i.dec_in_flight_req.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dec_in_flight_req.exit

if.then22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @complete(ptr noundef %in_flight_zero.i) #13
  br label %dec_in_flight_req.exit

dec_in_flight_req.exit:                           ; preds = %if.then22.i, %if.end.i.dec_in_flight_req.exit_crit_edge
  %call = call ptr @virtqueue_get_buf(ptr noundef %1, ptr noundef nonnull %len) #13
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %dec_in_flight_req.exit.while.end_crit_edge, label %dec_in_flight_req.exit.while.body_crit_edge

dec_in_flight_req.exit.while.body_crit_edge:      ; preds = %dec_in_flight_req.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

dec_in_flight_req.exit.while.end_crit_edge:       ; preds = %dec_in_flight_req.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %dec_in_flight_req.exit.while.end_crit_edge, %do.body.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #13
  %call2 = call zeroext i1 @virtqueue_enable_cb(ptr noundef %1) #13
  br i1 %call2, label %while.end.do.end_crit_edge, label %land.rhs

while.end.do.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.rhs:                                         ; preds = %while.end
  %call3 = call zeroext i1 @virtqueue_is_broken(ptr noundef %1) #13
  br i1 %call3, label %land.rhs.do.end_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %while.end.do.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_fs_hiprio_dispatch_work(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @virtio_fs_hiprio_dispatch_work.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@virtio_fs_hiprio_dispatch_work, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !139

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @virtio_fs_hiprio_dispatch_work.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %queued_reqs = getelementptr i8, ptr %work, i32 -16
  br label %while.cond

while.cond:                                       ; preds = %list_del.exit.while.cond_crit_edge, %do.end
  tail call void @_raw_spin_lock(ptr noundef %add.ptr) #13
  %0 = ptrtoint ptr %queued_reqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queued_reqs, align 4
  %cmp.not = icmp eq ptr %1, %queued_reqs
  %tobool12.not31 = icmp eq ptr %1, null
  %tobool12.not = or i1 %cmp.not, %tobool12.not31
  br i1 %tobool12.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr) #13
  br label %cleanup

if.end15:                                         ; preds = %while.cond
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end15.list_del.exit_crit_edge

if.end15.list_del.exit_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end15.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr) #13
  %call17 = tail call fastcc i32 @send_forget_request(ptr noundef %add.ptr, ptr noundef nonnull %1, i1 noundef zeroext true)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %list_del.exit.while.cond_crit_edge, label %list_del.exit.cleanup_crit_edge

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

list_del.exit.while.cond_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

cleanup:                                          ; preds = %list_del.exit.cleanup_crit_edge, %if.then13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtqueue_disable_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_get_buf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_enable_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_is_broken(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_fs_complete_req_work(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %fsvq = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %fsvq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fsvq, align 4
  tail call fastcc void @virtio_fs_request_complete(ptr noundef %1, ptr noundef %3)
  tail call void @kfree(ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @virtio_fs_request_complete(ptr noundef %req, ptr noundef %fsvq) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fud = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 6
  %0 = ptrtoint ptr %fud to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fud, align 16
  %args1 = getelementptr inbounds %struct.fuse_req, ptr %req, i32 0, i32 2
  %2 = ptrtoint ptr %args1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %args1, align 8
  %out.i = getelementptr inbounds %struct.fuse_req, ptr %req, i32 0, i32 6
  %4 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out.i, align 8
  %sub.i = add i32 %5, -16
  %in_numargs.i = getelementptr inbounds %struct.fuse_args, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %in_numargs.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %in_numargs.i, align 4
  %conv.i = zext i16 %7 to i32
  %in_pages.i = getelementptr inbounds %struct.fuse_args, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %in_pages.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %in_pages.i, align 8
  %9 = lshr i16 %bf.load.i, 12
  %.lobit.i = and i16 %9, 1
  %10 = zext i16 %.lobit.i to i32
  %sub2.i = sub nsw i32 %conv.i, %10
  %out_numargs.i = getelementptr inbounds %struct.fuse_args, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %out_numargs.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %out_numargs.i, align 2
  %13 = lshr i16 %bf.load.i, 11
  %.lobit76.i = and i16 %13, 1
  %in_args.i = getelementptr inbounds %struct.fuse_args, ptr %3, i32 0, i32 5
  %call.i = tail call i32 @fuse_len_args(i32 noundef %sub2.i, ptr noundef %in_args.i) #13
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %.lobit76.i)
  %cmp78.not.i = icmp eq i16 %12, %.lobit76.i
  br i1 %cmp78.not.i, label %entry.for.end.i_crit_edge, label %for.body.lr.ph.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %conv3.i = zext i16 %12 to i32
  %14 = zext i16 %.lobit76.i to i32
  %sub9.i = sub nsw i32 %conv3.i, %14
  %argbuf.i = getelementptr inbounds %struct.fuse_req, ptr %req, i32 0, i32 8
  %umax.i = tail call i32 @llvm.umax.i32(i32 %sub9.i, i32 1) #13
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.081.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %remaining.080.i = phi i32 [ %sub.i, %for.body.lr.ph.i ], [ %spec.select.i, %if.end.i.for.body.i_crit_edge ]
  %offset.079.i = phi i32 [ %call.i, %for.body.lr.ph.i ], [ %add.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.fuse_args, ptr %3, i32 0, i32 6, i32 %i.081.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %17 = ptrtoint ptr %in_pages.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load11.i = load i16, ptr %in_pages.i, align 8
  %18 = and i16 %bf.load11.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %bf.cast14.not.i = icmp eq i16 %18, 0
  br i1 %bf.cast14.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %out_numargs.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %out_numargs.i, align 2
  %conv17.i = zext i16 %20 to i32
  %sub18.i = add nsw i32 %conv17.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.081.i, i32 %sub18.i)
  %cmp19.i = icmp eq i32 %i.081.i, %sub18.i
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %remaining.080.i)
  %cmp22.i = icmp ugt i32 %16, %remaining.080.i
  %or.cond.i = select i1 %cmp19.i, i1 %cmp22.i, i1 false
  %spec.select77.i = select i1 %or.cond.i, i32 %remaining.080.i, i32 %16
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %for.body.i.if.end.i_crit_edge
  %argsize.0.i = phi i32 [ %16, %for.body.i.if.end.i_crit_edge ], [ %spec.select77.i, %land.lhs.true.i ]
  %value.i = getelementptr %struct.fuse_args, ptr %3, i32 0, i32 6, i32 %i.081.i, i32 1
  %21 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %value.i, align 4
  %23 = ptrtoint ptr %argbuf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %argbuf.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 %offset.079.i
  %25 = call ptr @memcpy(ptr %22, ptr %add.ptr.i, i32 %argsize.0.i)
  %add.i = add i32 %argsize.0.i, %offset.079.i
  %26 = ptrtoint ptr %out_numargs.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %out_numargs.i, align 2
  %conv27.i = zext i16 %27 to i32
  %sub28.i = add nsw i32 %conv27.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.081.i, i32 %sub28.i)
  %cmp29.not.i = icmp eq i32 %i.081.i, %sub28.i
  %sub32.i = select i1 %cmp29.not.i, i32 0, i32 %argsize.0.i
  %spec.select.i = sub i32 %remaining.080.i, %sub32.i
  %inc.i = add nuw i32 %i.081.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %remaining.0.lcssa.i = phi i32 [ %sub.i, %entry.for.end.i_crit_edge ], [ %spec.select.i, %if.end.i.for.end.i_crit_edge ]
  %28 = ptrtoint ptr %in_pages.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load35.i = load i16, ptr %in_pages.i, align 8
  %29 = and i16 %bf.load35.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %bf.cast38.not.i = icmp eq i16 %29, 0
  br i1 %bf.cast38.not.i, label %for.end.i.copy_args_from_argbuf.exit_crit_edge, label %if.then39.i

for.end.i.copy_args_from_argbuf.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_args_from_argbuf.exit

if.then39.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %out_numargs.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %out_numargs.i, align 2
  %conv42.i = zext i16 %31 to i32
  %sub43.i = add nsw i32 %conv42.i, -1
  %arrayidx44.i = getelementptr %struct.fuse_args, ptr %3, i32 0, i32 6, i32 %sub43.i
  %32 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %remaining.0.lcssa.i, ptr %arrayidx44.i, align 4
  br label %copy_args_from_argbuf.exit

copy_args_from_argbuf.exit:                       ; preds = %if.then39.i, %for.end.i.copy_args_from_argbuf.exit_crit_edge
  %argbuf47.i = getelementptr inbounds %struct.fuse_req, ptr %req, i32 0, i32 8
  %33 = ptrtoint ptr %argbuf47.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %argbuf47.i, align 4
  tail call void @kfree(ptr noundef %34) #13
  %35 = ptrtoint ptr %argbuf47.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %argbuf47.i, align 4
  %36 = ptrtoint ptr %in_pages.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load = load i16, ptr %in_pages.i, align 8
  %37 = and i16 %bf.load, 2304
  call void @__sanitizer_cov_trace_const_cmp2(i16 2304, i16 %37)
  %.not = icmp eq i16 %37, 2304
  br i1 %.not, label %if.then, label %copy_args_from_argbuf.exit.if.end37_crit_edge

copy_args_from_argbuf.exit.if.end37_crit_edge:    ; preds = %copy_args_from_argbuf.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then:                                          ; preds = %copy_args_from_argbuf.exit
  %num_pages = getelementptr inbounds %struct.fuse_args_pages, ptr %3, i32 0, i32 3
  %38 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_pages, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp66.not = icmp eq i32 %39, 0
  br i1 %cmp66.not, label %if.then.if.end37_crit_edge, label %for.body.lr.ph

if.then.if.end37_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

for.body.lr.ph:                                   ; preds = %if.then
  %40 = ptrtoint ptr %out_numargs.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %out_numargs.i, align 2
  %conv = zext i16 %41 to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr %struct.fuse_args, ptr %3, i32 0, i32 6, i32 %sub
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx, align 4
  %descs = getelementptr inbounds %struct.fuse_args_pages, ptr %3, i32 0, i32 2
  %pages = getelementptr inbounds %struct.fuse_args_pages, ptr %3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.068 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %len.067 = phi i32 [ %43, %for.body.lr.ph ], [ %len.1, %for.inc.for.body_crit_edge ]
  %44 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %descs, align 4
  %arrayidx7 = getelementptr %struct.fuse_page_desc, ptr %45, i32 %i.068
  %46 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.067, i32 %47)
  %cmp8 = icmp ult i32 %len.067, %47
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %for.body
  %offset = getelementptr %struct.fuse_page_desc, ptr %45, i32 %i.068, i32 1
  %48 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not = icmp eq i32 %49, 0
  br i1 %tobool.not, label %if.then10.if.end_crit_edge, label %do.end, !prof !135

if.then10.if.end_crit_edge:                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 579, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then10.if.end_crit_edge
  %50 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pages, align 8
  %arrayidx34 = getelementptr ptr, ptr %51, i32 %i.068
  %52 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx34, align 4
  tail call void @zero_user_segments(ptr noundef %53, i32 noundef %len.067, i32 noundef %47, i32 noundef 0, i32 noundef 0) #13
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %sub35 = sub i32 %len.067, %47
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.end
  %len.1 = phi i32 [ 0, %if.end ], [ %sub35, %if.else ]
  %inc = add nuw i32 %i.068, 1
  %54 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_pages, align 8
  %cmp = icmp ult i32 %inc, %55
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end37_crit_edge

for.inc.if.end37_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end37:                                         ; preds = %for.inc.if.end37_crit_edge, %if.then.if.end37_crit_edge, %copy_args_from_argbuf.exit.if.end37_crit_edge
  %lock = getelementptr inbounds %struct.fuse_dev, ptr %1, i32 0, i32 1, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #13
  %flags = getelementptr inbounds %struct.fuse_req, ptr %req, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %flags) #13
  tail call void @_raw_spin_unlock(ptr noundef %lock) #13
  tail call void @fuse_request_end(ptr noundef %req) #13
  tail call void @_raw_spin_lock(ptr noundef %fsvq) #13
  %in_flight.i = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 8
  %56 = ptrtoint ptr %in_flight.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %in_flight.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp.i = icmp slt i32 %57, 1
  br i1 %cmp.i, label %do.end.i, label %if.end37.if.end.i65_crit_edge, !prof !134

if.end37.if.end.i65_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i65

do.end.i:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 157, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i65

if.end.i65:                                       ; preds = %do.end.i, %if.end37.if.end.i65_crit_edge
  %58 = ptrtoint ptr %in_flight.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %in_flight.i, align 8
  %dec.i = add i32 %59, -1
  store i32 %dec.i, ptr %in_flight.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool21.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %if.end.i65.dec_in_flight_req.exit_crit_edge

if.end.i65.dec_in_flight_req.exit_crit_edge:      ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #15
  br label %dec_in_flight_req.exit

if.then22.i:                                      ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #15
  %in_flight_zero.i = getelementptr inbounds %struct.virtio_fs_vq, ptr %fsvq, i32 0, i32 9
  tail call void @complete(ptr noundef %in_flight_zero.i) #13
  br label %dec_in_flight_req.exit

dec_in_flight_req.exit:                           ; preds = %if.then22.i, %if.end.i65.dec_in_flight_req.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %fsvq) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_request_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37, !39, !41, !43, !44, !45, !47, !48, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !75, !77, !79, !81, !83, !85, !86, !87, !89, !90, !92, !93, !95, !96, !97, !98, !100, !102, !103, !105, !106, !108, !109, !111, !112, !113, !115, !116, !118, !119, !121, !122, !123}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__initcall__kmod_virtiofs__294_1526_virtio_fs_init6, !1, !"__initcall__kmod_virtiofs__294_1526_virtio_fs_init6", i1 false, i1 false}
!1 = !{!"../fs/fuse/virtio_fs.c", i32 1526, i32 1}
!2 = !{ptr @__exitcall_virtio_fs_exit, !3, !"__exitcall_virtio_fs_exit", i1 false, i1 false}
!3 = !{!"../fs/fuse/virtio_fs.c", i32 1533, i32 1}
!4 = !{ptr @__UNIQUE_ID_author295, !5, !"__UNIQUE_ID_author295", i1 false, i1 false}
!5 = !{!"../fs/fuse/virtio_fs.c", i32 1535, i32 1}
!6 = !{ptr @__UNIQUE_ID_description296, !7, !"__UNIQUE_ID_description296", i1 false, i1 false}
!7 = !{!"../fs/fuse/virtio_fs.c", i32 1536, i32 1}
!8 = !{ptr @__UNIQUE_ID_file297, !9, !"__UNIQUE_ID_file297", i1 false, i1 false}
!9 = !{!"../fs/fuse/virtio_fs.c", i32 1537, i32 1}
!10 = !{ptr @__UNIQUE_ID_license298, !9, !"__UNIQUE_ID_license298", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias299, !12, !"__UNIQUE_ID_alias299", i1 false, i1 false}
!12 = !{!"../fs/fuse/virtio_fs.c", i32 1538, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/fuse/virtio_fs.c", i32 1505, i32 11}
!15 = !{ptr @virtio_fs_type, !16, !"virtio_fs_type", i1 false, i1 false}
!16 = !{!"../fs/fuse/virtio_fs.c", i32 1503, i32 32}
!17 = !{ptr @virtio_fs_context_ops, !18, !"virtio_fs_context_ops", i1 false, i1 false}
!18 = !{!"../fs/fuse/virtio_fs.c", i32 1482, i32 43}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/fuse/virtio_fs.c", i32 104, i32 2}
!21 = !{ptr @virtio_fs_parameters, !22, !"virtio_fs_parameters", i1 false, i1 false}
!22 = !{!"../fs/fuse/virtio_fs.c", i32 103, i32 39}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/fuse/virtio_fs.c", i32 92, i32 3}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/fuse/virtio_fs.c", i32 93, i32 3}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/fuse/virtio_fs.c", i32 94, i32 3}
!29 = !{ptr @dax_param_enums, !30, !"dax_param_enums", i1 false, i1 false}
!30 = !{!"../fs/fuse/virtio_fs.c", i32 91, i32 36}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/fuse/virtio_fs.c", i32 1426, i32 3}
!33 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @virtio_fs_get_tree._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @virtio_fs_get_tree._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @virtio_fs_instances, !38, !"virtio_fs_instances", i1 false, i1 false}
!38 = !{!"../fs/fuse/virtio_fs.c", i32 31, i32 8}
!39 = !{ptr @virtio_fs_fiq_ops, !40, !"virtio_fs_fiq_ops", i1 false, i1 false}
!40 = !{!"../fs/fuse/virtio_fs.c", i32 1272, i32 37}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/fuse/virtio_fs.c", i32 430, i32 2}
!43 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @send_forget_request.__UNIQUE_ID_ddebug280, !42, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/fuse/virtio_fs.c", i32 435, i32 4}
!47 = !{ptr @send_forget_request.__UNIQUE_ID_ddebug281, !46, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/fuse/virtio_fs.c", i32 445, i32 4}
!50 = !{ptr @send_forget_request.__UNIQUE_ID_ddebug282, !49, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!51 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/fuse/virtio_fs.c", i32 1239, i32 2}
!53 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @virtio_fs_wake_pending_and_unlock.__UNIQUE_ID_ddebug291, !52, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/fuse/virtio_fs.c", i32 1261, i32 3}
!57 = !{ptr @virtio_fs_wake_pending_and_unlock._entry, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @virtio_fs_wake_pending_and_unlock._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/fuse/virtio_fs.c", i32 1309, i32 3}
!61 = !{ptr @virtio_fs_fill_super._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @virtio_fs_fill_super._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/fuse/virtio_fs.c", i32 1328, i32 4}
!65 = !{ptr @virtio_fs_fill_super._entry.16, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @virtio_fs_fill_super._entry_ptr.18, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/fuse/virtio_fs.c", i32 30, i32 8}
!69 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @virtio_fs_mutex, !68, !"virtio_fs_mutex", i1 false, i1 false}
!71 = !{ptr @virtio_fs_driver, !72, !"virtio_fs_driver", i1 false, i1 false}
!72 = !{!"../fs/fuse/virtio_fs.c", i32 957, i32 29}
!73 = !{ptr @id_table, !74, !"id_table", i1 false, i1 false}
!74 = !{!"../fs/fuse/virtio_fs.c", i32 950, i32 38}
!75 = !{ptr @feature_table, !76, !"feature_table", i1 false, i1 false}
!76 = !{!"../fs/fuse/virtio_fs.c", i32 955, i32 27}
!77 = !{ptr @.str.21, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/linux/virtio_config.h", i32 451, i32 2}
!79 = !{ptr @.str.22, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/fuse/virtio_fs.c", i32 712, i32 41}
!81 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/fuse/virtio_fs.c", i32 719, i32 34}
!83 = !{ptr @.str.24, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/fuse/virtio_fs.c", i32 656, i32 2}
!85 = !{ptr @.str.25, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @virtio_fs_vq_done.__UNIQUE_ID_ddebug285, !84, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!87 = !{ptr @virtio_fs_init_vq.__key, !88, !"__key", i1 false, i1 false}
!88 = !{!"../fs/fuse/virtio_fs.c", i32 665, i32 2}
!89 = !{ptr @.str.26, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @virtio_fs_init_vq.__key.27, !91, !"__key", i1 false, i1 false}
!91 = !{!"../fs/fuse/virtio_fs.c", i32 671, i32 3}
!92 = !{ptr @.str.28, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @virtio_fs_init_vq.__key.29, !94, !"__key", i1 false, i1 false}
!94 = !{!"../fs/fuse/virtio_fs.c", i32 672, i32 3}
!95 = !{ptr @.str.30, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @virtio_fs_init_vq.__key.31, !94, !"__key", i1 false, i1 false}
!97 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @virtio_fs_init_vq.__key.33, !99, !"__key", i1 false, i1 false}
!99 = !{!"../fs/fuse/virtio_fs.c", i32 675, i32 3}
!100 = !{ptr @virtio_fs_init_vq.__key.34, !101, !"__key", i1 false, i1 false}
!101 = !{!"../fs/fuse/virtio_fs.c", i32 676, i32 3}
!102 = !{ptr @virtio_fs_init_vq.__key.35, !101, !"__key", i1 false, i1 false}
!103 = !{ptr @init_completion.__key, !104, !"__key", i1 false, i1 false}
!104 = !{!"../include/linux/completion.h", i32 87, i32 2}
!105 = !{ptr @.str.36, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @virtio_fs_requests_done_work.__key, !107, !"__key", i1 false, i1 false}
!107 = !{!"../fs/fuse/virtio_fs.c", i32 641, i32 4}
!108 = !{ptr @.str.37, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.38, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/fuse/virtio_fs.c", i32 358, i32 2}
!111 = !{ptr @.str.39, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @virtio_fs_request_dispatch_work.__UNIQUE_ID_ddebug277, !110, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!113 = !{ptr @virtio_fs_request_dispatch_work._entry, !114, !"_entry", i1 false, i1 false}
!114 = !{!"../fs/fuse/virtio_fs.c", i32 399, i32 4}
!115 = !{ptr @virtio_fs_request_dispatch_work._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.40, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/fuse/virtio_fs.c", i32 472, i32 2}
!118 = !{ptr @virtio_fs_hiprio_dispatch_work.__UNIQUE_ID_ddebug283, !117, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!119 = !{ptr @.str.41, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/fuse/virtio_fs.c", i32 939, i32 2}
!121 = !{ptr @.str.42, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @virtio_fs_freeze._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @virtio_fs_freeze._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{i64 2148689995, i64 2148690027, i64 2148690056, i64 2148690090, i64 2148690121, i64 2148690144}
!134 = !{!"branch_weights", i32 1, i32 2000}
!135 = !{!"branch_weights", i32 2000, i32 1}
!136 = !{i64 2148778020}
!137 = !{i64 2148692460, i64 2148692492, i64 2148692521, i64 2148692555, i64 2148692586, i64 2148692609}
!138 = !{i64 2150399109}
!139 = !{i64 2148513063, i64 2148513068, i64 2148513081, i64 2148513125, i64 2148513159, i64 2148513180}
!140 = !{i8 0, i8 2}
!141 = !{i64 2155331130}
!142 = !{i64 2154399318, i64 2154403871, i64 2154399355, i64 2154399411, i64 2154399445, i64 2154399469, i64 2154399510, i64 2154399531, i64 2154399559, i64 2154399593}
!143 = !{i64 2154404989, i64 2154405481, i64 2154405026, i64 2154405082, i64 2154405116, i64 2154405140, i64 2154405181, i64 2154405202, i64 2154405230, i64 2154405264}
!144 = !{!"auto-init"}
!145 = !{i64 2154518987, i64 2154519481, i64 2154519024, i64 2154519080, i64 2154519114, i64 2154519138, i64 2154519179, i64 2154519200, i64 2154519228, i64 2154519262}
