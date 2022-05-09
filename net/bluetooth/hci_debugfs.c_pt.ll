; ModuleID = '/llk/IR_all_yes/net/bluetooth/hci_debugfs.c_pt.bc'
source_filename = "../net/bluetooth/hci_debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, i16, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.1, i32, %struct.spinlock }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.hci_conn = type { %struct.list_head, %struct.atomic_t, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i8, i16, i16, i8, i8, i8, i8, i8, [3 x i8], [3 x [8 x i8]], i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, [31 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i16, i32, i8, i8, i8, i32, %struct.sk_buff_head, %struct.list_head, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bt_codec, ptr, ptr, ptr }
%struct.bt_codec = type <{ i8, i16, i16, i8, i8 }>
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.141, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.142, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.143, ptr, %struct.address_space, %struct.list_head, %union.anon.144, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.141 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.142 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.143 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.144 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.bdaddr_list = type { %struct.list_head, %struct.bdaddr_t, i8 }
%struct.hci_conn_params = type { %struct.list_head, %struct.list_head, %struct.bdaddr_t, i8, i16, i16, i16, i16, i32, ptr, i8, [1 x i32], i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.blocked_key = type { %struct.list_head, %struct.callback_head, i8, [16 x i8] }
%struct.bt_uuid = type { %struct.list_head, [16 x i8], i8, i8 }
%struct.oob_data = type { %struct.list_head, %struct.bdaddr_t, i8, i8, [16 x i8], [16 x i8], [16 x i8], [16 x i8] }
%struct.file = type { %union.anon.26, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.26 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inquiry_entry = type { %struct.list_head, %struct.list_head, i32, i32, %struct.inquiry_data }
%struct.inquiry_data = type { %struct.bdaddr_t, i8, i8, i8, [3 x i8], i16, i8, i8 }
%struct.link_key = type { %struct.list_head, %struct.callback_head, %struct.bdaddr_t, i8, [16 x i8], i8 }
%struct.smp_irk = type { %struct.list_head, %struct.callback_head, %struct.bdaddr_t, %struct.bdaddr_t, i8, [16 x i8] }
%struct.smp_ltk = type { %struct.list_head, %struct.callback_head, %struct.bdaddr_t, i8, i8, i8, i8, i16, i64, [16 x i8] }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"features\00", [23 x i8] zeroinitializer }, align 32
@features_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @features_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"manufacturer\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hci_version\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hci_revision\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hardware_error\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"device_id\00", [22 x i8] zeroinitializer }, align 32
@device_id_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @device_id_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"device_list\00", [20 x i8] zeroinitializer }, align 32
@device_list_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @device_list_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"blacklist\00", [22 x i8] zeroinitializer }, align 32
@blacklist_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @blacklist_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"blocked_keys\00", [19 x i8] zeroinitializer }, align 32
@blocked_keys_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @blocked_keys_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uuids\00", [26 x i8] zeroinitializer }, align 32
@uuids_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @uuids_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"remote_oob\00", [21 x i8] zeroinitializer }, align 32
@remote_oob_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @remote_oob_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"conn_info_min_age\00", [46 x i8] zeroinitializer }, align 32
@conn_info_min_age_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @conn_info_min_age_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"conn_info_max_age\00", [46 x i8] zeroinitializer }, align 32
@conn_info_max_age_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @conn_info_max_age_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"use_debug_keys\00", [17 x i8] zeroinitializer }, align 32
@use_debug_keys_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @use_debug_keys_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sc_only_mode\00", [19 x i8] zeroinitializer }, align 32
@sc_only_mode_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @sc_only_mode_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hardware_info\00", [18 x i8] zeroinitializer }, align 32
@hardware_info_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @hardware_info_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"firmware_info\00", [18 x i8] zeroinitializer }, align 32
@firmware_info_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @firmware_info_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"inquiry_cache\00", [18 x i8] zeroinitializer }, align 32
@inquiry_cache_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @inquiry_cache_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"link_keys\00", [22 x i8] zeroinitializer }, align 32
@link_keys_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @link_keys_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dev_class\00", [22 x i8] zeroinitializer }, align 32
@dev_class_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dev_class_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"voice_setting\00", [18 x i8] zeroinitializer }, align 32
@voice_setting_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @voice_setting_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"force_bredr_smp\00", [16 x i8] zeroinitializer }, align 32
@force_bredr_smp_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @force_bredr_smp_read, ptr @force_bredr_smp_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ssp_debug_mode\00", [17 x i8] zeroinitializer }, align 32
@ssp_debug_mode_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ssp_debug_mode_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"min_encrypt_key_size\00", [43 x i8] zeroinitializer }, align 32
@min_encrypt_key_size_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @min_encrypt_key_size_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"auto_accept_delay\00", [46 x i8] zeroinitializer }, align 32
@auto_accept_delay_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @auto_accept_delay_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"idle_timeout\00", [19 x i8] zeroinitializer }, align 32
@idle_timeout_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @idle_timeout_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sniff_min_interval\00", [45 x i8] zeroinitializer }, align 32
@sniff_min_interval_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sniff_min_interval_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sniff_max_interval\00", [45 x i8] zeroinitializer }, align 32
@sniff_max_interval_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sniff_max_interval_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"identity\00", [23 x i8] zeroinitializer }, align 32
@identity_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @identity_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rpa_timeout\00", [20 x i8] zeroinitializer }, align 32
@rpa_timeout_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rpa_timeout_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"random_address\00", [17 x i8] zeroinitializer }, align 32
@random_address_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @random_address_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"static_address\00", [17 x i8] zeroinitializer }, align 32
@static_address_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @static_address_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"force_static_address\00", [43 x i8] zeroinitializer }, align 32
@force_static_address_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @force_static_address_read, ptr @force_static_address_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"white_list_size\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"white_list\00", [21 x i8] zeroinitializer }, align 32
@white_list_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @white_list_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"resolv_list_size\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"resolv_list\00", [20 x i8] zeroinitializer }, align 32
@resolv_list_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @resolv_list_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"identity_resolving_keys\00", [40 x i8] zeroinitializer }, align 32
@identity_resolving_keys_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @identity_resolving_keys_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"long_term_keys\00", [17 x i8] zeroinitializer }, align 32
@long_term_keys_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @long_term_keys_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"conn_min_interval\00", [46 x i8] zeroinitializer }, align 32
@conn_min_interval_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @conn_min_interval_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"conn_max_interval\00", [46 x i8] zeroinitializer }, align 32
@conn_max_interval_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @conn_max_interval_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"conn_latency\00", [19 x i8] zeroinitializer }, align 32
@conn_latency_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @conn_latency_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"supervision_timeout\00", [44 x i8] zeroinitializer }, align 32
@supervision_timeout_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @supervision_timeout_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adv_channel_map\00", [16 x i8] zeroinitializer }, align 32
@adv_channel_map_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @adv_channel_map_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"adv_min_interval\00", [47 x i8] zeroinitializer }, align 32
@adv_min_interval_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @adv_min_interval_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"adv_max_interval\00", [47 x i8] zeroinitializer }, align 32
@adv_max_interval_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @adv_max_interval_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"discov_interleaved_timeout\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"min_key_size\00", [19 x i8] zeroinitializer }, align 32
@min_key_size_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @min_key_size_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max_key_size\00", [19 x i8] zeroinitializer }, align 32
@max_key_size_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @max_key_size_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"auth_payload_timeout\00", [43 x i8] zeroinitializer }, align 32
@auth_payload_timeout_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @auth_payload_timeout_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"force_no_mitm\00", [18 x i8] zeroinitializer }, align 32
@force_no_mitm_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @force_no_mitm_read, ptr @force_no_mitm_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"quirk_strict_duplicate_filter\00", [34 x i8] zeroinitializer }, align 32
@quirk_strict_duplicate_filter_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @quirk_strict_duplicate_filter_read, ptr @quirk_strict_duplicate_filter_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"quirk_simultaneous_discovery\00", [35 x i8] zeroinitializer }, align 32
@quirk_simultaneous_discovery_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @quirk_simultaneous_discovery_read, ptr @quirk_simultaneous_discovery_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dut_mode\00", [23 x i8] zeroinitializer }, align 32
@dut_mode_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @dut_mode_read, ptr @dut_mode_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vendor_diag\00", [20 x i8] zeroinitializer }, align 32
@vendor_diag_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @vendor_diag_read, ptr @vendor_diag_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%2u: %8ph\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LE: %8ph\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%4.4x:%4.4x:%4.4x:%4.4x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%pMR (type %u)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%pMR (type %u) %u\0A\00", [45 x i8] zeroinitializer }, align 32
@blocked_keys_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"net/bluetooth/hci_debugfs.c\00", [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%u %*phN\0A\00", [22 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.66 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pUb\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%pMR (type %u) %u %*phN %*phN %*phN %*phN\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%pMR %d %d %d 0x%.2x%.2x%.2x 0x%.4x %d %d %u\0A\00", [50 x i8] zeroinitializer }, align 32
@link_keys_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%pMR %u %*phN %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"0x%.2x%.2x%.2x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0x%4.4llx\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%pMR (type %u) %*phN %pMR\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pMR\0A\00", [26 x i8] zeroinitializer }, align 32
@identity_resolving_keys_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@long_term_keys_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.78 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%pMR (type %u) %u 0x%02x %u %.4x %.16llx %*phN\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 313, i32 22 }
@___asan_gen_.85 = private unnamed_addr constant [14 x i8] c"features_fops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 106, i32 1 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 315, i32 21 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 317, i32 20 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 318, i32 21 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 319, i32 20 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 321, i32 22 }
@___asan_gen_.103 = private unnamed_addr constant [15 x i8] c"device_id_fops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 120, i32 1 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 324, i32 22 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"device_list_fops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 140, i32 1 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 326, i32 22 }
@___asan_gen_.115 = private unnamed_addr constant [15 x i8] c"blacklist_fops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 155, i32 1 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 328, i32 22 }
@___asan_gen_.121 = private unnamed_addr constant [18 x i8] c"blocked_keys_fops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 170, i32 1 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 330, i32 22 }
@___asan_gen_.127 = private unnamed_addr constant [11 x i8] c"uuids_fops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 195, i32 1 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 331, i32 22 }
@___asan_gen_.133 = private unnamed_addr constant [16 x i8] c"remote_oob_fops\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 214, i32 1 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 334, i32 22 }
@___asan_gen_.139 = private unnamed_addr constant [23 x i8] c"conn_info_min_age_fops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 336, i32 22 }
@___asan_gen_.145 = private unnamed_addr constant [23 x i8] c"conn_info_max_age_fops\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 269, i32 1 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 340, i32 23 }
@___asan_gen_.151 = private unnamed_addr constant [20 x i8] c"use_debug_keys_fops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 284, i32 37 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 344, i32 23 }
@___asan_gen_.157 = private unnamed_addr constant [18 x i8] c"sc_only_mode_fops\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 302, i32 37 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 348, i32 23 }
@___asan_gen_.163 = private unnamed_addr constant [19 x i8] c"hardware_info_fops\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 352, i32 23 }
@___asan_gen_.169 = private unnamed_addr constant [19 x i8] c"firmware_info_fops\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 309, i32 1 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 623, i32 22 }
@___asan_gen_.175 = private unnamed_addr constant [19 x i8] c"inquiry_cache_fops\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 380, i32 1 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 625, i32 22 }
@___asan_gen_.181 = private unnamed_addr constant [15 x i8] c"link_keys_fops\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 396, i32 1 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 627, i32 22 }
@___asan_gen_.187 = private unnamed_addr constant [15 x i8] c"dev_class_fops\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 410, i32 1 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 629, i32 22 }
@___asan_gen_.193 = private unnamed_addr constant [19 x i8] c"voice_setting_fops\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 640, i32 23 }
@___asan_gen_.199 = private unnamed_addr constant [21 x i8] c"force_bredr_smp_fops\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 530, i32 37 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 644, i32 23 }
@___asan_gen_.205 = private unnamed_addr constant [20 x i8] c"ssp_debug_mode_fops\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 438, i32 37 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 646, i32 23 }
@___asan_gen_.211 = private unnamed_addr constant [26 x i8] c"min_encrypt_key_size_fops\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 480, i32 1 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 648, i32 23 }
@___asan_gen_.217 = private unnamed_addr constant [23 x i8] c"auto_accept_delay_fops\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 495, i32 1 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 653, i32 23 }
@___asan_gen_.223 = private unnamed_addr constant [18 x i8] c"idle_timeout_fops\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 562, i32 1 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 655, i32 23 }
@___asan_gen_.229 = private unnamed_addr constant [24 x i8] c"sniff_min_interval_fops\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 590, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 657, i32 23 }
@___asan_gen_.235 = private unnamed_addr constant [24 x i8] c"sniff_max_interval_fops\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 618, i32 1 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1180, i32 22 }
@___asan_gen_.241 = private unnamed_addr constant [14 x i8] c"identity_fops\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 680, i32 1 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1182, i32 22 }
@___asan_gen_.247 = private unnamed_addr constant [17 x i8] c"rpa_timeout_fops\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 710, i32 1 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1184, i32 22 }
@___asan_gen_.253 = private unnamed_addr constant [20 x i8] c"random_address_fops\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 724, i32 1 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1186, i32 22 }
@___asan_gen_.259 = private unnamed_addr constant [20 x i8] c"static_address_fops\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 737, i32 1 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1194, i32 23 }
@___asan_gen_.265 = private unnamed_addr constant [26 x i8] c"force_static_address_fops\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 775, i32 37 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1198, i32 20 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1200, i32 22 }
@___asan_gen_.274 = private unnamed_addr constant [16 x i8] c"white_list_fops\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 795, i32 1 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1202, i32 20 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1204, i32 22 }
@___asan_gen_.283 = private unnamed_addr constant [17 x i8] c"resolv_list_fops\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 810, i32 1 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1206, i32 22 }
@___asan_gen_.289 = private unnamed_addr constant [29 x i8] c"identity_resolving_keys_fops\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 828, i32 1 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1208, i32 22 }
@___asan_gen_.295 = private unnamed_addr constant [20 x i8] c"long_term_keys_fops\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 846, i32 1 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1210, i32 22 }
@___asan_gen_.301 = private unnamed_addr constant [23 x i8] c"conn_min_interval_fops\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 873, i32 1 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1212, i32 22 }
@___asan_gen_.307 = private unnamed_addr constant [23 x i8] c"conn_max_interval_fops\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 901, i32 1 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1214, i32 22 }
@___asan_gen_.313 = private unnamed_addr constant [18 x i8] c"conn_latency_fops\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 929, i32 1 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1216, i32 22 }
@___asan_gen_.319 = private unnamed_addr constant [25 x i8] c"supervision_timeout_fops\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 957, i32 1 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1218, i32 22 }
@___asan_gen_.325 = private unnamed_addr constant [21 x i8] c"adv_channel_map_fops\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 985, i32 1 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1220, i32 22 }
@___asan_gen_.331 = private unnamed_addr constant [22 x i8] c"adv_min_interval_fops\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1013, i32 1 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1222, i32 22 }
@___asan_gen_.337 = private unnamed_addr constant [22 x i8] c"adv_max_interval_fops\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1041, i32 1 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1224, i32 21 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1226, i32 22 }
@___asan_gen_.346 = private unnamed_addr constant [18 x i8] c"min_key_size_fops\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1069, i32 1 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1228, i32 22 }
@___asan_gen_.352 = private unnamed_addr constant [18 x i8] c"max_key_size_fops\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1097, i32 1 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1230, i32 22 }
@___asan_gen_.358 = private unnamed_addr constant [26 x i8] c"auth_payload_timeout_fops\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1125, i32 1 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1232, i32 22 }
@___asan_gen_.364 = private unnamed_addr constant [19 x i8] c"force_no_mitm_fops\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1166, i32 37 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1235, i32 22 }
@___asan_gen_.370 = private unnamed_addr constant [35 x i8] c"quirk_strict_duplicate_filter_fops\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1173, i32 1 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1238, i32 22 }
@___asan_gen_.376 = private unnamed_addr constant [34 x i8] c"quirk_simultaneous_discovery_fops\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1175, i32 1 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1251, i32 31 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1369, i32 22 }
@___asan_gen_.385 = private unnamed_addr constant [14 x i8] c"dut_mode_fops\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1304, i32 37 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1373, i32 23 }
@___asan_gen_.391 = private unnamed_addr constant [17 x i8] c"vendor_diag_fops\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 1360, i32 37 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 98, i32 17 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 100, i32 17 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 113, i32 16 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 130, i32 17 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 132, i32 17 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 163, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 164, i32 17 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 695, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.425, i32 723, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 188, i32 17 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 204, i32 17 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 241, i32 1 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 308, i32 1 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 366, i32 17 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 389, i32 17 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 403, i32 16 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 423, i32 1 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 672, i32 16 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 718, i32 16 }
@___asan_gen_.461 = private constant [31 x i8] c"../net/bluetooth/hci_debugfs.c\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 837, i32 17 }
@___asan_gen_.463 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.464 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 156, i32 2 }
@llvm.compiler.used = appending global [128 x ptr] [ptr @.str, ptr @features_fops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @device_id_fops, ptr @.str.6, ptr @device_list_fops, ptr @.str.7, ptr @blacklist_fops, ptr @.str.8, ptr @blocked_keys_fops, ptr @.str.9, ptr @uuids_fops, ptr @.str.10, ptr @remote_oob_fops, ptr @.str.11, ptr @conn_info_min_age_fops, ptr @.str.12, ptr @conn_info_max_age_fops, ptr @.str.13, ptr @use_debug_keys_fops, ptr @.str.14, ptr @sc_only_mode_fops, ptr @.str.15, ptr @hardware_info_fops, ptr @.str.16, ptr @firmware_info_fops, ptr @.str.17, ptr @inquiry_cache_fops, ptr @.str.18, ptr @link_keys_fops, ptr @.str.19, ptr @dev_class_fops, ptr @.str.20, ptr @voice_setting_fops, ptr @.str.21, ptr @force_bredr_smp_fops, ptr @.str.22, ptr @ssp_debug_mode_fops, ptr @.str.23, ptr @min_encrypt_key_size_fops, ptr @.str.24, ptr @auto_accept_delay_fops, ptr @.str.25, ptr @idle_timeout_fops, ptr @.str.26, ptr @sniff_min_interval_fops, ptr @.str.27, ptr @sniff_max_interval_fops, ptr @.str.28, ptr @identity_fops, ptr @.str.29, ptr @rpa_timeout_fops, ptr @.str.30, ptr @random_address_fops, ptr @.str.31, ptr @static_address_fops, ptr @.str.32, ptr @force_static_address_fops, ptr @.str.33, ptr @.str.34, ptr @white_list_fops, ptr @.str.35, ptr @.str.36, ptr @resolv_list_fops, ptr @.str.37, ptr @identity_resolving_keys_fops, ptr @.str.38, ptr @long_term_keys_fops, ptr @.str.39, ptr @conn_min_interval_fops, ptr @.str.40, ptr @conn_max_interval_fops, ptr @.str.41, ptr @conn_latency_fops, ptr @.str.42, ptr @supervision_timeout_fops, ptr @.str.43, ptr @adv_channel_map_fops, ptr @.str.44, ptr @adv_min_interval_fops, ptr @.str.45, ptr @adv_max_interval_fops, ptr @.str.46, ptr @.str.47, ptr @min_key_size_fops, ptr @.str.48, ptr @max_key_size_fops, ptr @.str.49, ptr @auth_payload_timeout_fops, ptr @.str.50, ptr @force_no_mitm_fops, ptr @.str.51, ptr @quirk_strict_duplicate_filter_fops, ptr @.str.52, ptr @quirk_simultaneous_discovery_fops, ptr @.str.53, ptr @.str.54, ptr @dut_mode_fops, ptr @.str.55, ptr @vendor_diag_fops, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.81], section "llvm.metadata"
@0 = internal global [128 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @features_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_id_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_list_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blacklist_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blocked_keys_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uuids_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @remote_oob_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @conn_info_min_age_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @conn_info_max_age_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_debug_keys_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc_only_mode_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hardware_info_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_info_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inquiry_cache_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_keys_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_class_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voice_setting_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_bredr_smp_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp_debug_mode_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_encrypt_key_size_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auto_accept_delay_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idle_timeout_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sniff_min_interval_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sniff_max_interval_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @identity_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpa_timeout_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @random_address_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @static_address_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_static_address_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @white_list_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resolv_list_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @identity_resolving_keys_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @long_term_keys_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @conn_min_interval_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @conn_max_interval_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @conn_latency_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supervision_timeout_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv_channel_map_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv_min_interval_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv_max_interval_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_key_size_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_key_size_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auth_payload_timeout_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_no_mitm_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quirk_strict_duplicate_filter_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quirk_simultaneous_discovery_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dut_mode_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vendor_diag_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_debugfs_create_common(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 203
  %0 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs, align 4
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef %1, ptr noundef %hdev, ptr noundef nonnull @features_fops) #8
  %2 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs, align 4
  %manufacturer = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 31
  tail call void @debugfs_create_u16(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %3, ptr noundef %manufacturer) #8
  %4 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs, align 4
  %hci_ver = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 28
  tail call void @debugfs_create_u8(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %5, ptr noundef %hci_ver) #8
  %6 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfs, align 4
  %hci_rev = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 29
  tail call void @debugfs_create_u16(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %7, ptr noundef %hci_rev) #8
  %8 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %debugfs, align 4
  %hw_error_code = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 77
  tail call void @debugfs_create_u8(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef %9, ptr noundef %hw_error_code) #8
  %10 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %debugfs, align 4
  %call6 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 292, ptr noundef %11, ptr noundef %hdev, ptr noundef nonnull @device_id_fops) #8
  %12 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %debugfs, align 4
  %call8 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 292, ptr noundef %13, ptr noundef %hdev, ptr noundef nonnull @device_list_fops) #8
  %14 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %debugfs, align 4
  %call10 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 292, ptr noundef %15, ptr noundef %hdev, ptr noundef nonnull @blacklist_fops) #8
  %16 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %debugfs, align 4
  %call12 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 292, ptr noundef %17, ptr noundef %hdev, ptr noundef nonnull @blocked_keys_fops) #8
  %18 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %debugfs, align 4
  %call14 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 292, ptr noundef %19, ptr noundef %hdev, ptr noundef nonnull @uuids_fops) #8
  %20 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %debugfs, align 4
  %call16 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 256, ptr noundef %21, ptr noundef %hdev, ptr noundef nonnull @remote_oob_fops) #8
  %22 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %debugfs, align 4
  %call18 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 420, ptr noundef %23, ptr noundef %hdev, ptr noundef nonnull @conn_info_min_age_fops) #8
  %24 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %debugfs, align 4
  %call20 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 420, ptr noundef %25, ptr noundef %hdev, ptr noundef nonnull @conn_info_max_age_fops) #8
  %arrayidx21 = getelementptr %struct.hci_dev, ptr %hdev, i32 0, i32 21, i32 0, i32 6
  %26 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx21, align 2
  %28 = and i8 %27, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not = icmp eq i8 %28, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx24 = getelementptr %struct.hci_dev, ptr %hdev, i32 0, i32 21, i32 0, i32 4
  %29 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx24, align 2
  %31 = and i8 %30, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool27.not = icmp eq i8 %31, 0
  br i1 %tobool27.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %32 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %debugfs, align 4
  %call29 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext 292, ptr noundef %33, ptr noundef %hdev, ptr noundef nonnull @use_debug_keys_fops) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %arrayidx32 = getelementptr %struct.hci_dev, ptr %hdev, i32 0, i32 21, i32 2, i32 1
  %34 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx32, align 1
  %36 = and i8 %35, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool35.not = icmp eq i8 %36, 0
  br i1 %tobool35.not, label %lor.lhs.false36, label %if.end.if.then43_crit_edge

if.end.if.then43_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

lor.lhs.false36:                                  ; preds = %if.end
  %arrayidx39 = getelementptr %struct.hci_dev, ptr %hdev, i32 0, i32 21, i32 0, i32 4
  %37 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx39, align 2
  %39 = and i8 %38, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool42.not = icmp eq i8 %39, 0
  br i1 %tobool42.not, label %lor.lhs.false36.if.end46_crit_edge, label %lor.lhs.false36.if.then43_crit_edge

lor.lhs.false36.if.then43_crit_edge:              ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

lor.lhs.false36.if.end46_crit_edge:               ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then43:                                        ; preds = %lor.lhs.false36.if.then43_crit_edge, %if.end.if.then43_crit_edge
  %40 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %debugfs, align 4
  %call45 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 292, ptr noundef %41, ptr noundef %hdev, ptr noundef nonnull @sc_only_mode_fops) #8
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %lor.lhs.false36.if.end46_crit_edge
  %hw_info = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 201
  %42 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_info, align 4
  %tobool47.not = icmp eq ptr %43, null
  br i1 %tobool47.not, label %if.end46.if.end51_crit_edge, label %if.then48

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %debugfs, align 4
  %call50 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 292, ptr noundef %45, ptr noundef %hdev, ptr noundef nonnull @hardware_info_fops) #8
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end46.if.end51_crit_edge
  %fw_info = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 202
  %46 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fw_info, align 8
  %tobool52.not = icmp eq ptr %47, null
  br i1 %tobool52.not, label %if.end51.if.end56_crit_edge, label %if.then53

if.end51.if.end56_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %debugfs, align 4
  %call55 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 292, ptr noundef %49, ptr noundef %hdev, ptr noundef nonnull @firmware_info_fops) #8
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end51.if.end56_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u16(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u8(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_debugfs_create_bredr(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 203
  %0 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs, align 4
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.17, i16 noundef zeroext 292, ptr noundef %1, ptr noundef %hdev, ptr noundef nonnull @inquiry_cache_fops) #8
  %2 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs, align 4
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 256, ptr noundef %3, ptr noundef %hdev, ptr noundef nonnull @link_keys_fops) #8
  %4 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs, align 4
  %call4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.19, i16 noundef zeroext 292, ptr noundef %5, ptr noundef %hdev, ptr noundef nonnull @dev_class_fops) #8
  %6 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfs, align 4
  %call6 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.20, i16 noundef zeroext 292, ptr noundef %7, ptr noundef %hdev, ptr noundef nonnull @voice_setting_fops) #8
  %features = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 21
  %arrayidx7 = getelementptr %struct.hci_dev, ptr %hdev, i32 0, i32 21, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx7, align 1
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %debugfs, align 4
  %call9 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.21, i16 noundef zeroext 420, ptr noundef %12, ptr noundef %hdev, ptr noundef nonnull @force_bredr_smp_fops) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx12 = getelementptr %struct.hci_dev, ptr %hdev, i32 0, i32 21, i32 0, i32 6
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx12, align 2
  %15 = and i8 %14, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool15.not = icmp eq i8 %15, 0
  br i1 %tobool15.not, label %if.end.if.end23_crit_edge, label %if.then16

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %debugfs, align 4
  %call18 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.22, i16 noundef zeroext 292, ptr noundef %17, ptr noundef %hdev, ptr noundef nonnull @ssp_debug_mode_fops) #8
  %18 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %debugfs, align 4
  %call20 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.23, i16 noundef zeroext 420, ptr noundef %19, ptr noundef %hdev, ptr noundef nonnull @min_encrypt_key_size_fops) #8
  %20 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %debugfs, align 4
  %call22 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.24, i16 noundef zeroext 420, ptr noundef %21, ptr noundef %hdev, ptr noundef nonnull @auto_accept_delay_fops) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then16, %if.end.if.end23_crit_edge
  %22 = ptrtoint ptr %features to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %features, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %tobool29.not = icmp sgt i8 %23, -1
  br i1 %tobool29.not, label %if.end23.if.end37_crit_edge, label %if.then30

if.end23.if.end37_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %debugfs, align 4
  %call32 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.25, i16 noundef zeroext 420, ptr noundef %25, ptr noundef %hdev, ptr noundef nonnull @idle_timeout_fops) #8
  %26 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %debugfs, align 4
  %call34 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.26, i16 noundef zeroext 420, ptr noundef %27, ptr noundef %hdev, ptr noundef nonnull @sniff_min_interval_fops) #8
  %28 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %debugfs, align 4
  %call36 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.27, i16 noundef zeroext 420, ptr noundef %29, ptr noundef %hdev, ptr noundef nonnull @sniff_max_interval_fops) #8
  br label %if.end37

if.end37:                                         ; preds = %if.then30, %if.end23.if.end37_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_debugfs_create_le(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  %.compoundliteral = alloca %struct.bdaddr_t, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 203
  %0 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs, align 4
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.28, i16 noundef zeroext 256, ptr noundef %1, ptr noundef %hdev, ptr noundef nonnull @identity_fops) #8
  %2 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs, align 4
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.29, i16 noundef zeroext 420, ptr noundef %3, ptr noundef %hdev, ptr noundef nonnull @rpa_timeout_fops) #8
  %4 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs, align 4
  %call4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.30, i16 noundef zeroext 292, ptr noundef %5, ptr noundef %hdev, ptr noundef nonnull @random_address_fops) #8
  %6 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfs, align 4
  %call6 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.31, i16 noundef zeroext 292, ptr noundef %7, ptr noundef %hdev, ptr noundef nonnull @static_address_fops) #8
  %bdaddr = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 7
  %8 = call ptr @memset(ptr %.compoundliteral, i32 0, i32 6)
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(6) %bdaddr, ptr noundef nonnull dereferenceable(6) %.compoundliteral, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %debugfs, align 4
  %call13 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.32, i16 noundef zeroext 420, ptr noundef %10, ptr noundef %hdev, ptr noundef nonnull @force_static_address_fops) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %debugfs, align 4
  %le_accept_list_size = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 23
  tail call void @debugfs_create_u8(ptr noundef nonnull @.str.33, i16 noundef zeroext 292, ptr noundef %12, ptr noundef %le_accept_list_size) #8
  %13 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %debugfs, align 4
  %call16 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.34, i16 noundef zeroext 292, ptr noundef %14, ptr noundef %hdev, ptr noundef nonnull @white_list_fops) #8
  %15 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %debugfs, align 4
  %le_resolv_list_size = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 24
  tail call void @debugfs_create_u8(ptr noundef nonnull @.str.35, i16 noundef zeroext 292, ptr noundef %16, ptr noundef %le_resolv_list_size) #8
  %17 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %debugfs, align 4
  %call19 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.36, i16 noundef zeroext 292, ptr noundef %18, ptr noundef %hdev, ptr noundef nonnull @resolv_list_fops) #8
  %19 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %debugfs, align 4
  %call21 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.37, i16 noundef zeroext 256, ptr noundef %20, ptr noundef %hdev, ptr noundef nonnull @identity_resolving_keys_fops) #8
  %21 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %debugfs, align 4
  %call23 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.38, i16 noundef zeroext 256, ptr noundef %22, ptr noundef %hdev, ptr noundef nonnull @long_term_keys_fops) #8
  %23 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %debugfs, align 4
  %call25 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.39, i16 noundef zeroext 420, ptr noundef %24, ptr noundef %hdev, ptr noundef nonnull @conn_min_interval_fops) #8
  %25 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %debugfs, align 4
  %call27 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.40, i16 noundef zeroext 420, ptr noundef %26, ptr noundef %hdev, ptr noundef nonnull @conn_max_interval_fops) #8
  %27 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %debugfs, align 4
  %call29 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.41, i16 noundef zeroext 420, ptr noundef %28, ptr noundef %hdev, ptr noundef nonnull @conn_latency_fops) #8
  %29 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %debugfs, align 4
  %call31 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.42, i16 noundef zeroext 420, ptr noundef %30, ptr noundef %hdev, ptr noundef nonnull @supervision_timeout_fops) #8
  %31 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %debugfs, align 4
  %call33 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.43, i16 noundef zeroext 420, ptr noundef %32, ptr noundef %hdev, ptr noundef nonnull @adv_channel_map_fops) #8
  %33 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %debugfs, align 4
  %call35 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.44, i16 noundef zeroext 420, ptr noundef %34, ptr noundef %hdev, ptr noundef nonnull @adv_min_interval_fops) #8
  %35 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %debugfs, align 4
  %call37 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.45, i16 noundef zeroext 420, ptr noundef %36, ptr noundef %hdev, ptr noundef nonnull @adv_max_interval_fops) #8
  %37 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %debugfs, align 4
  %discov_interleaved_timeout = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 69
  tail call void @debugfs_create_u16(ptr noundef nonnull @.str.46, i16 noundef zeroext 420, ptr noundef %38, ptr noundef %discov_interleaved_timeout) #8
  %39 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %debugfs, align 4
  %call40 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.47, i16 noundef zeroext 420, ptr noundef %40, ptr noundef %hdev, ptr noundef nonnull @min_key_size_fops) #8
  %41 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %debugfs, align 4
  %call42 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.48, i16 noundef zeroext 420, ptr noundef %42, ptr noundef %hdev, ptr noundef nonnull @max_key_size_fops) #8
  %43 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %debugfs, align 4
  %call44 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.49, i16 noundef zeroext 420, ptr noundef %44, ptr noundef %hdev, ptr noundef nonnull @auth_payload_timeout_fops) #8
  %45 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %debugfs, align 4
  %call46 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.50, i16 noundef zeroext 420, ptr noundef %46, ptr noundef %hdev, ptr noundef nonnull @force_no_mitm_fops) #8
  %47 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %debugfs, align 4
  %call48 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.51, i16 noundef zeroext 420, ptr noundef %48, ptr noundef %hdev, ptr noundef nonnull @quirk_strict_duplicate_filter_fops) #8
  %49 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %debugfs, align 4
  %call50 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.52, i16 noundef zeroext 420, ptr noundef %50, ptr noundef %hdev, ptr noundef nonnull @quirk_simultaneous_discovery_fops) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_debugfs_create_conn(ptr nocapture noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 65
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %name) #8
  %debugfs = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 203
  %2 = call ptr @memset(ptr %name, i32 255, i32 6)
  %3 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %debugfs, align 4
  %tobool.not.i = icmp eq ptr %4, null
  %cmp.i = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %handle = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 11
  %5 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %handle, align 2
  %conv = zext i16 %6 to i32
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 6, ptr noundef nonnull @.str.53, i32 noundef %conv)
  %7 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %debugfs, align 4
  %call5 = call ptr @debugfs_create_dir(ptr noundef nonnull %name, ptr noundef %8) #8
  %debugfs6 = getelementptr inbounds %struct.hci_conn, ptr %conn, i32 0, i32 64
  %9 = ptrtoint ptr %debugfs6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5, ptr %debugfs6, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %name) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hci_debugfs_create_basic(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 203
  %0 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs, align 4
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.54, i16 noundef zeroext 420, ptr noundef %1, ptr noundef %hdev, ptr noundef nonnull @dut_mode_fops) #8
  %set_diag = getelementptr inbounds %struct.hci_dev, ptr %hdev, i32 0, i32 241
  %2 = ptrtoint ptr %set_diag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_diag, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs, align 4
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.55, i16 noundef zeroext 420, ptr noundef %5, ptr noundef %hdev, ptr noundef nonnull @vendor_diag_fops) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @features_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @features_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @features_show(ptr noundef %f, ptr nocapture noundef readnone %ptr) #0 align 64 {
for.body:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %lock = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %max_page = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 20
  %arrayidx = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.56, i32 noundef 0, ptr noundef %arrayidx) #8
  %2 = ptrtoint ptr %max_page to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_page, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp4.not.1 = icmp eq i8 %3, 0
  br i1 %cmp4.not.1, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.1:                                       ; preds = %for.body
  %arrayidx.1 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.56, i32 noundef 1, ptr noundef %arrayidx.1) #8
  %4 = ptrtoint ptr %max_page to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %max_page, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp4.not.2 = icmp ult i8 %5, 2
  br i1 %cmp4.not.2, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.2 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.56, i32 noundef 2, ptr noundef %arrayidx.2) #8
  br label %for.end

for.end:                                          ; preds = %for.body.2, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge
  %arrayidx9 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 21, i32 0, i32 4
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx9, align 2
  %8 = and i8 %7, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %le_features = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 22
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.57, ptr noundef %le_features) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_id_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @device_id_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_id_show(ptr noundef %f, ptr nocapture noundef readnone %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %lock = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %devid_source = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 82
  %2 = ptrtoint ptr %devid_source to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %devid_source, align 2
  %conv = zext i16 %3 to i32
  %devid_vendor = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 83
  %4 = ptrtoint ptr %devid_vendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %devid_vendor, align 8
  %conv1 = zext i16 %5 to i32
  %devid_product = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 84
  %6 = ptrtoint ptr %devid_product to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %devid_product, align 2
  %conv2 = zext i16 %7 to i32
  %devid_version = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 85
  %8 = ptrtoint ptr %devid_version to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %devid_version, align 4
  %conv3 = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.58, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %conv3) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_list_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @device_list_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_list_show(ptr noundef %f, ptr nocapture noundef readnone %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %lock = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %accept_list = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 186
  %2 = ptrtoint ptr %accept_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %b.041 = load ptr, ptr %accept_list, align 4
  %cmp.not42 = icmp eq ptr %b.041, %accept_list
  br i1 %cmp.not42, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %b.043 = phi ptr [ %b.0, %for.body.for.body_crit_edge ], [ %b.041, %entry.for.body_crit_edge ]
  %bdaddr = getelementptr inbounds %struct.bdaddr_list, ptr %b.043, i32 0, i32 1
  %bdaddr_type = getelementptr inbounds %struct.bdaddr_list, ptr %b.043, i32 0, i32 2
  %3 = ptrtoint ptr %bdaddr_type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bdaddr_type, align 2
  %conv = zext i8 %4 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.59, ptr noundef %bdaddr, i32 noundef %conv) #8
  %5 = ptrtoint ptr %b.043 to i32
  call void @__asan_load4_noabort(i32 %5)
  %b.0 = load ptr, ptr %b.043, align 4
  %cmp.not = icmp eq ptr %b.0, %accept_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %le_conn_params = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 194
  %6 = ptrtoint ptr %le_conn_params to i32
  call void @__asan_load4_noabort(i32 %6)
  %p.044 = load ptr, ptr %le_conn_params, align 4
  %cmp14.not45 = icmp eq ptr %p.044, %le_conn_params
  br i1 %cmp14.not45, label %for.end.for.end25_crit_edge, label %for.end.for.body17_crit_edge

for.end.for.body17_crit_edge:                     ; preds = %for.end
  br label %for.body17

for.end.for.end25_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end25

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.end.for.body17_crit_edge
  %p.046 = phi ptr [ %p.0, %for.body17.for.body17_crit_edge ], [ %p.044, %for.end.for.body17_crit_edge ]
  %addr = getelementptr inbounds %struct.hci_conn_params, ptr %p.046, i32 0, i32 2
  %addr_type = getelementptr inbounds %struct.hci_conn_params, ptr %p.046, i32 0, i32 3
  %7 = ptrtoint ptr %addr_type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %addr_type, align 2
  %conv18 = zext i8 %8 to i32
  %auto_connect = getelementptr inbounds %struct.hci_conn_params, ptr %p.046, i32 0, i32 8
  %9 = ptrtoint ptr %auto_connect to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %auto_connect, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.60, ptr noundef %addr, i32 noundef %conv18, i32 noundef %10) #8
  %11 = ptrtoint ptr %p.046 to i32
  call void @__asan_load4_noabort(i32 %11)
  %p.0 = load ptr, ptr %p.046, align 4
  %cmp14.not = icmp eq ptr %p.0, %le_conn_params
  br i1 %cmp14.not, label %for.body17.for.end25_crit_edge, label %for.body17.for.body17_crit_edge

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body17

for.body17.for.end25_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end25

for.end25:                                        ; preds = %for.body17.for.end25_crit_edge, %for.end.for.end25_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blacklist_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @blacklist_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blacklist_show(ptr noundef %f, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %lock = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %reject_list = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 185
  %2 = ptrtoint ptr %reject_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %b.015 = load ptr, ptr %reject_list, align 4
  %cmp.not16 = icmp eq ptr %b.015, %reject_list
  br i1 %cmp.not16, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %b.017 = phi ptr [ %b.0, %for.body.for.body_crit_edge ], [ %b.015, %entry.for.body_crit_edge ]
  %bdaddr = getelementptr inbounds %struct.bdaddr_list, ptr %b.017, i32 0, i32 1
  %bdaddr_type = getelementptr inbounds %struct.bdaddr_list, ptr %b.017, i32 0, i32 2
  %3 = ptrtoint ptr %bdaddr_type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bdaddr_type, align 2
  %conv = zext i8 %4 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.59, ptr noundef %bdaddr, i32 noundef %conv) #8
  %5 = ptrtoint ptr %b.017 to i32
  call void @__asan_load4_noabort(i32 %5)
  %b.0 = load ptr, ptr %b.017, align 4
  %cmp.not = icmp eq ptr %b.0, %reject_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blocked_keys_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @blocked_keys_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blocked_keys_show(ptr noundef %f, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !264) #8
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !274
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 696, ptr noundef nonnull @.str.65) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b24 = load i1, ptr @blocked_keys_show.__warned, align 1
  br i1 %.b24, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @blocked_keys_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.61, i32 noundef 163, ptr noundef nonnull @.str.62) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %blocked_keys = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 197
  %6 = ptrtoint ptr %blocked_keys to i32
  call void @__asan_load4_noabort(i32 %6)
  %key.034 = load volatile ptr, ptr %blocked_keys, align 4
  %cmp.not35 = icmp eq ptr %key.034, %blocked_keys
  br i1 %cmp.not35, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %key.036 = phi ptr [ %key.0, %for.body.for.body_crit_edge ], [ %key.034, %do.end.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.blocked_key, ptr %key.036, i32 0, i32 2
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %type, align 4
  %conv = zext i8 %8 to i32
  %val = getelementptr inbounds %struct.blocked_key, ptr %key.036, i32 0, i32 3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.63, i32 noundef %conv, i32 noundef 16, ptr noundef %val) #8
  %9 = ptrtoint ptr %key.036 to i32
  call void @__asan_load4_noabort(i32 %9)
  %key.0 = load volatile ptr, ptr %key.036, align 4
  %cmp.not = icmp eq ptr %key.0, %blocked_keys
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i25 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i25, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i28

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i28:                                ; preds = %for.end
  %call1.i26 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26)
  %tobool.not.i27 = icmp eq i32 %call1.i26, 0
  br i1 %tobool.not.i27, label %land.lhs.true.i28.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i30

land.lhs.true.i28.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i30:                               ; preds = %land.lhs.true.i28
  %.b4.i29 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i29, label %land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge, label %if.then.i31

land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i31:                                      ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 724, ptr noundef nonnull @.str.66) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i31, %land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i28.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !275
  %10 = tail call i32 @llvm.read_register.i32(metadata !264) #8
  %and.i.i.i.i.i32 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i32 to ptr
  %preempt_count.i.i.i.i33 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i33, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i33, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uuids_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @uuids_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uuids_show(ptr noundef %f, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  %val = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %lock = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %uuids = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 187
  %2 = ptrtoint ptr %uuids to i32
  call void @__asan_load4_noabort(i32 %2)
  %uuid.027 = load ptr, ptr %uuids, align 4
  %cmp.not28 = icmp eq ptr %uuid.027, %uuids
  br i1 %cmp.not28, label %entry.for.end15_crit_edge, label %for.body.lr.ph

entry.for.end15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end15

for.body.lr.ph:                                   ; preds = %entry
  %3 = getelementptr inbounds [16 x i8], ptr %val, i32 0, i32 1
  %4 = getelementptr inbounds [16 x i8], ptr %val, i32 0, i32 2
  %5 = getelementptr inbounds [16 x i8], ptr %val, i32 0, i32 3
  %6 = getelementptr inbounds [16 x i8], ptr %val, i32 0, i32 4
  %7 = getelementptr inbounds [16 x i8], ptr %val, i32 0, i32 5
  %8 = getelementptr inbounds [16 x i8], ptr %val, i32 0, i32 6
  %9 = getelementptr inbounds [16 x i8], ptr %val, i32 0, i32 7
  %10 = getelementptr inbounds [16 x i8], ptr %val, i32 0, i32 8
  %11 = getelementptr inbounds [16 x i8], ptr %val, i32 0, i32 9
  %12 = getelementptr inbounds [16 x i8], ptr %val, i32 0, i32 10
  %13 = getelementptr inbounds [16 x i8], ptr %val, i32 0, i32 11
  %14 = getelementptr inbounds [16 x i8], ptr %val, i32 0, i32 12
  %15 = getelementptr inbounds [16 x i8], ptr %val, i32 0, i32 13
  %16 = getelementptr inbounds [16 x i8], ptr %val, i32 0, i32 14
  %17 = getelementptr inbounds [16 x i8], ptr %val, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %uuid.029 = phi ptr [ %uuid.027, %for.body.lr.ph ], [ %uuid.0, %for.body.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %val) #8
  %arrayidx = getelementptr %struct.bt_uuid, ptr %uuid.029, i32 0, i32 1, i32 15
  %18 = call ptr @memset(ptr %val, i32 255, i32 16)
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %val, align 1
  %arrayidx.1 = getelementptr %struct.bt_uuid, ptr %uuid.029, i32 0, i32 1, i32 14
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.1, align 1
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %3, align 1
  %arrayidx.2 = getelementptr %struct.bt_uuid, ptr %uuid.029, i32 0, i32 1, i32 13
  %25 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.2, align 1
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %4, align 1
  %arrayidx.3 = getelementptr %struct.bt_uuid, ptr %uuid.029, i32 0, i32 1, i32 12
  %28 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.3, align 1
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %5, align 1
  %arrayidx.4 = getelementptr %struct.bt_uuid, ptr %uuid.029, i32 0, i32 1, i32 11
  %31 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.4, align 1
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %6, align 1
  %arrayidx.5 = getelementptr %struct.bt_uuid, ptr %uuid.029, i32 0, i32 1, i32 10
  %34 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.5, align 1
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %7, align 1
  %arrayidx.6 = getelementptr %struct.bt_uuid, ptr %uuid.029, i32 0, i32 1, i32 9
  %37 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.6, align 1
  %39 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %8, align 1
  %arrayidx.7 = getelementptr %struct.bt_uuid, ptr %uuid.029, i32 0, i32 1, i32 8
  %40 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.7, align 1
  %42 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %9, align 1
  %arrayidx.8 = getelementptr %struct.bt_uuid, ptr %uuid.029, i32 0, i32 1, i32 7
  %43 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.8, align 1
  %45 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %10, align 1
  %arrayidx.9 = getelementptr %struct.bt_uuid, ptr %uuid.029, i32 0, i32 1, i32 6
  %46 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.9, align 1
  %48 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %11, align 1
  %arrayidx.10 = getelementptr %struct.bt_uuid, ptr %uuid.029, i32 0, i32 1, i32 5
  %49 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.10, align 1
  %51 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %12, align 1
  %arrayidx.11 = getelementptr %struct.bt_uuid, ptr %uuid.029, i32 0, i32 1, i32 4
  %52 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.11, align 1
  %54 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %13, align 1
  %arrayidx.12 = getelementptr %struct.bt_uuid, ptr %uuid.029, i32 0, i32 1, i32 3
  %55 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.12, align 1
  %57 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %14, align 1
  %arrayidx.13 = getelementptr %struct.bt_uuid, ptr %uuid.029, i32 0, i32 1, i32 2
  %58 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.13, align 1
  %60 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %15, align 1
  %arrayidx.14 = getelementptr %struct.bt_uuid, ptr %uuid.029, i32 0, i32 1, i32 1
  %61 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.14, align 1
  %63 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %16, align 1
  %arrayidx.15 = getelementptr %struct.bt_uuid, ptr %uuid.029, i32 0, i32 1, i32 0
  %64 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.15, align 1
  %66 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %17, align 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.67, ptr noundef nonnull %val) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %val) #8
  %67 = ptrtoint ptr %uuid.029 to i32
  call void @__asan_load4_noabort(i32 %67)
  %uuid.0 = load ptr, ptr %uuid.029, align 4
  %cmp.not = icmp eq ptr %uuid.0, %uuids
  br i1 %cmp.not, label %for.body.for.end15_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end15_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end15

for.end15:                                        ; preds = %for.body.for.end15_crit_edge, %entry.for.end15_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @remote_oob_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @remote_oob_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @remote_oob_show(ptr noundef %f, ptr nocapture noundef readnone %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %lock = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %remote_oob_data = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 191
  %2 = ptrtoint ptr %remote_oob_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %data.024 = load ptr, ptr %remote_oob_data, align 4
  %cmp.not25 = icmp eq ptr %data.024, %remote_oob_data
  br i1 %cmp.not25, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %data.026 = phi ptr [ %data.0, %for.body.for.body_crit_edge ], [ %data.024, %entry.for.body_crit_edge ]
  %bdaddr = getelementptr inbounds %struct.oob_data, ptr %data.026, i32 0, i32 1
  %bdaddr_type = getelementptr inbounds %struct.oob_data, ptr %data.026, i32 0, i32 2
  %3 = ptrtoint ptr %bdaddr_type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bdaddr_type, align 2
  %conv = zext i8 %4 to i32
  %present = getelementptr inbounds %struct.oob_data, ptr %data.026, i32 0, i32 3
  %5 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %present, align 1
  %conv2 = zext i8 %6 to i32
  %hash192 = getelementptr inbounds %struct.oob_data, ptr %data.026, i32 0, i32 4
  %rand192 = getelementptr inbounds %struct.oob_data, ptr %data.026, i32 0, i32 5
  %hash256 = getelementptr inbounds %struct.oob_data, ptr %data.026, i32 0, i32 6
  %rand256 = getelementptr inbounds %struct.oob_data, ptr %data.026, i32 0, i32 7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.68, ptr noundef %bdaddr, i32 noundef %conv, i32 noundef %conv2, i32 noundef 16, ptr noundef %hash192, i32 noundef 16, ptr noundef %rand192, i32 noundef 16, ptr noundef %hash256, i32 noundef 16, ptr noundef %rand256) #8
  %7 = ptrtoint ptr %data.026 to i32
  call void @__asan_load4_noabort(i32 %7)
  %data.0 = load ptr, ptr %data.026, align 4
  %cmp.not = icmp eq ptr %data.0, %remote_oob_data
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @conn_info_min_age_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @conn_info_min_age_get, ptr noundef nonnull @conn_info_min_age_set, ptr noundef nonnull @.str.69) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @conn_info_min_age_get(ptr noundef %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %conn_info_min_age = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 70
  %0 = ptrtoint ptr %conn_info_min_age to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %conn_info_min_age, align 2
  %conv = zext i16 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @conn_info_min_age_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %cmp = icmp eq i64 %val, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %conn_info_max_age = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 71
  %0 = ptrtoint ptr %conn_info_max_age to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %conn_info_max_age, align 8
  %conv = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %val)
  %cmp1 = icmp ult i64 %conv, %val
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %conv3 = trunc i64 %val to i16
  %conn_info_min_age = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 70
  %2 = ptrtoint ptr %conn_info_min_age to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv3, ptr %conn_info_min_age, align 2
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @conn_info_max_age_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @conn_info_max_age_get, ptr noundef nonnull @conn_info_max_age_set, ptr noundef nonnull @.str.69) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @conn_info_max_age_get(ptr noundef %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %conn_info_max_age = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 71
  %0 = ptrtoint ptr %conn_info_max_age to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %conn_info_max_age, align 8
  %conv = zext i16 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @conn_info_max_age_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %cmp = icmp eq i64 %val, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %conn_info_min_age = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 70
  %0 = ptrtoint ptr %conn_info_min_age to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %conn_info_min_age, align 2
  %conv = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %val)
  %cmp1 = icmp ugt i64 %conv, %val
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %conv3 = trunc i64 %val to i16
  %conn_info_max_age = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 71
  %2 = ptrtoint ptr %conn_info_max_age to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv3, ptr %conn_info_max_age, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @use_debug_keys_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #8
  %2 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %4 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %dev_flags, align 4
  %6 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %conv = select i1 %tobool.not, i8 78, i8 89
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %buf, align 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 10, ptr %2, align 1
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %3, align 1
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #8
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc_only_mode_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #8
  %2 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %4 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %dev_flags, align 4
  %6 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %conv = select i1 %tobool.not, i8 78, i8 89
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %buf, align 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 10, ptr %2, align 1
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %3, align 1
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #8
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hardware_info_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @hardware_info_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hardware_info_show(ptr noundef %f, ptr nocapture noundef readnone %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %lock = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %hw_info = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 201
  %2 = ptrtoint ptr %hw_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_info, align 4
  %tobool.not = icmp eq ptr %3, null
  %..str.71 = select i1 %tobool.not, ptr @.str.71, ptr %3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.70, ptr noundef %..str.71) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @firmware_info_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @firmware_info_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @firmware_info_show(ptr noundef %f, ptr nocapture noundef readnone %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %lock = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %fw_info = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 202
  %2 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw_info, align 8
  %tobool.not = icmp eq ptr %3, null
  %..str.71 = select i1 %tobool.not, ptr @.str.71, ptr %3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.70, ptr noundef %..str.71) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inquiry_cache_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @inquiry_cache_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inquiry_cache_show(ptr noundef %f, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %lock = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %all = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 170, i32 2
  %2 = ptrtoint ptr %all to i32
  call void @__asan_load4_noabort(i32 %2)
  %e.038 = load ptr, ptr %all, align 4
  %cmp.not39 = icmp eq ptr %e.038, %all
  br i1 %cmp.not39, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %e.040 = phi ptr [ %e.0, %for.body.for.body_crit_edge ], [ %e.038, %entry.for.body_crit_edge ]
  %data3 = getelementptr inbounds %struct.inquiry_entry, ptr %e.040, i32 0, i32 4
  %pscan_rep_mode = getelementptr inbounds %struct.inquiry_entry, ptr %e.040, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %pscan_rep_mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pscan_rep_mode, align 2
  %conv = zext i8 %4 to i32
  %pscan_period_mode = getelementptr inbounds %struct.inquiry_entry, ptr %e.040, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %pscan_period_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pscan_period_mode, align 1
  %conv4 = zext i8 %6 to i32
  %pscan_mode = getelementptr inbounds %struct.inquiry_entry, ptr %e.040, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %pscan_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pscan_mode, align 2
  %conv5 = zext i8 %8 to i32
  %dev_class = getelementptr inbounds %struct.inquiry_entry, ptr %e.040, i32 0, i32 4, i32 4
  %arrayidx = getelementptr %struct.inquiry_entry, ptr %e.040, i32 0, i32 4, i32 4, i32 2
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %10 to i32
  %arrayidx8 = getelementptr %struct.inquiry_entry, ptr %e.040, i32 0, i32 4, i32 4, i32 1
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %12 to i32
  %13 = ptrtoint ptr %dev_class to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dev_class, align 1
  %conv12 = zext i8 %14 to i32
  %clock_offset = getelementptr inbounds %struct.inquiry_entry, ptr %e.040, i32 0, i32 4, i32 5
  %15 = ptrtoint ptr %clock_offset to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %clock_offset, align 2
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %conv13 = zext i16 %17 to i32
  %rssi = getelementptr inbounds %struct.inquiry_entry, ptr %e.040, i32 0, i32 4, i32 6
  %18 = ptrtoint ptr %rssi to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rssi, align 2
  %conv14 = sext i8 %19 to i32
  %ssp_mode = getelementptr inbounds %struct.inquiry_entry, ptr %e.040, i32 0, i32 4, i32 7
  %20 = ptrtoint ptr %ssp_mode to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ssp_mode, align 1
  %conv15 = zext i8 %21 to i32
  %timestamp = getelementptr inbounds %struct.inquiry_entry, ptr %e.040, i32 0, i32 3
  %22 = ptrtoint ptr %timestamp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %timestamp, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.72, ptr noundef %data3, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv9, i32 noundef %conv12, i32 noundef %conv13, i32 noundef %conv14, i32 noundef %conv15, i32 noundef %23) #8
  %24 = ptrtoint ptr %e.040 to i32
  call void @__asan_load4_noabort(i32 %24)
  %e.0 = load ptr, ptr %e.040, align 4
  %cmp.not = icmp eq ptr %e.0, %all
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @link_keys_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @link_keys_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @link_keys_show(ptr noundef %f, ptr nocapture noundef readnone %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !264) #8
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !274
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 696, ptr noundef nonnull @.str.65) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b27 = load i1, ptr @link_keys_show.__warned, align 1
  br i1 %.b27, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @link_keys_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.61, i32 noundef 388, ptr noundef nonnull @.str.62) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %link_keys = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 188
  %6 = ptrtoint ptr %link_keys to i32
  call void @__asan_load4_noabort(i32 %6)
  %key.037 = load volatile ptr, ptr %link_keys, align 4
  %cmp.not38 = icmp eq ptr %key.037, %link_keys
  br i1 %cmp.not38, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %key.039 = phi ptr [ %key.0, %for.body.for.body_crit_edge ], [ %key.037, %do.end.for.body_crit_edge ]
  %bdaddr = getelementptr inbounds %struct.link_key, ptr %key.039, i32 0, i32 2
  %type = getelementptr inbounds %struct.link_key, ptr %key.039, i32 0, i32 3
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %type, align 2
  %conv = zext i8 %8 to i32
  %val = getelementptr inbounds %struct.link_key, ptr %key.039, i32 0, i32 4
  %pin_len = getelementptr inbounds %struct.link_key, ptr %key.039, i32 0, i32 5
  %9 = ptrtoint ptr %pin_len to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pin_len, align 1
  %conv10 = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.73, ptr noundef %bdaddr, i32 noundef %conv, i32 noundef 16, ptr noundef %val, i32 noundef %conv10) #8
  %11 = ptrtoint ptr %key.039 to i32
  call void @__asan_load4_noabort(i32 %11)
  %key.0 = load volatile ptr, ptr %key.039, align 4
  %cmp.not = icmp eq ptr %key.0, %link_keys
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i28 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i28, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i31

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i31:                                ; preds = %for.end
  %call1.i29 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i29)
  %tobool.not.i30 = icmp eq i32 %call1.i29, 0
  br i1 %tobool.not.i30, label %land.lhs.true.i31.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i33

land.lhs.true.i31.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i33:                               ; preds = %land.lhs.true.i31
  %.b4.i32 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i32, label %land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge, label %if.then.i34

land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i34:                                      ; preds = %land.lhs.true2.i33
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 724, ptr noundef nonnull @.str.66) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i34, %land.lhs.true2.i33.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i31.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !275
  %12 = tail call i32 @llvm.read_register.i32(metadata !264) #8
  %and.i.i.i.i.i35 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i35 to ptr
  %preempt_count.i.i.i.i36 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i36, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i36, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_class_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @dev_class_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_class_show(ptr noundef %f, ptr nocapture noundef readnone %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %lock = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %dev_class = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 17
  %arrayidx = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 17, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 2
  %conv = zext i8 %3 to i32
  %arrayidx2 = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %5 to i32
  %6 = ptrtoint ptr %dev_class to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dev_class, align 8
  %conv6 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.74, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv6) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @voice_setting_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @voice_setting_get, ptr noundef null, ptr noundef nonnull @.str.75) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @voice_setting_get(ptr noundef %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %voice_setting = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 33
  %0 = ptrtoint ptr %voice_setting to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %voice_setting, align 2
  %conv = zext i16 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @force_bredr_smp_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #8
  %2 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %6 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %conv = select i1 %tobool.not, i8 78, i8 89
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %buf, align 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 10, ptr %2, align 1
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %3, align 1
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #8
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @force_bredr_smp_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable) #8
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %enable, align 1, !annotation !276
  %call = call i32 @kstrtobool_from_user(ptr noundef %user_buf, i32 noundef %count, ptr noundef nonnull %enable) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enable, align 1, !range !277
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1 = icmp ne i8 %4, 0
  %call2 = call i32 @smp_force_bredr(ptr noundef %1, i1 noundef zeroext %tobool1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %count.call2 = select i1 %tobool3.not, i32 %count, i32 %call2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %count.call2, %if.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool_from_user(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_force_bredr(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssp_debug_mode_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #8
  %2 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %ssp_debug_mode = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 76
  %4 = ptrtoint ptr %ssp_debug_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ssp_debug_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %conv1 = select i1 %tobool.not, i8 78, i8 89
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv1, ptr %buf, align 1
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 10, ptr %2, align 1
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %3, align 1
  %call = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @min_encrypt_key_size_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @min_encrypt_key_size_get, ptr noundef nonnull @min_encrypt_key_size_set, ptr noundef nonnull @.str.69) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @min_encrypt_key_size_get(ptr noundef %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %min_enc_key_size = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 73
  %0 = ptrtoint ptr %min_enc_key_size to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %min_enc_key_size, align 4
  %conv = zext i8 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @min_encrypt_key_size_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i64 %val, -17
  call void @__sanitizer_cov_trace_const_cmp8(i64 -16, i64 %0)
  %1 = icmp ult i64 %0, -16
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %conv = trunc i64 %val to i8
  %min_enc_key_size = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 73
  %2 = ptrtoint ptr %min_enc_key_size to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %min_enc_key_size, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @auto_accept_delay_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @auto_accept_delay_get, ptr noundef nonnull @auto_accept_delay_set, ptr noundef nonnull @.str.69) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @auto_accept_delay_get(ptr noundef %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %auto_accept_delay = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 117
  %0 = ptrtoint ptr %auto_accept_delay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %auto_accept_delay, align 4
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @auto_accept_delay_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %conv = trunc i64 %val to i32
  %auto_accept_delay = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 117
  %0 = ptrtoint ptr %auto_accept_delay to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %auto_accept_delay, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idle_timeout_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @idle_timeout_get, ptr noundef nonnull @idle_timeout_set, ptr noundef nonnull @.str.69) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idle_timeout_get(ptr noundef %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %idle_timeout = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 102
  %0 = ptrtoint ptr %idle_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idle_timeout, align 4
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idle_timeout_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %cmp.not = icmp ne i64 %val, 0
  %0 = add i64 %val, -3600001
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3599501, i64 %0)
  %1 = icmp ult i64 %0, -3599501
  %or.cond = and i1 %cmp.not, %1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %conv = trunc i64 %val to i32
  %idle_timeout = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 102
  %2 = ptrtoint ptr %idle_timeout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %idle_timeout, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sniff_min_interval_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @sniff_min_interval_get, ptr noundef nonnull @sniff_min_interval_set, ptr noundef nonnull @.str.69) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sniff_min_interval_get(ptr noundef %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %sniff_min_interval = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 103
  %0 = ptrtoint ptr %sniff_min_interval to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sniff_min_interval, align 8
  %conv = zext i16 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sniff_min_interval_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %cmp = icmp ne i64 %val, 0
  %rem = and i64 %val, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rem)
  %tobool.not = icmp eq i64 %rem, 0
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %lor.lhs.false1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false1:                                   ; preds = %entry
  %sniff_max_interval = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 104
  %0 = ptrtoint ptr %sniff_max_interval to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sniff_max_interval, align 2
  %conv = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %val)
  %cmp2 = icmp ult i64 %conv, %val
  br i1 %cmp2, label %lor.lhs.false1.cleanup_crit_edge, label %if.end

lor.lhs.false1.cleanup_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %conv4 = trunc i64 %val to i16
  %sniff_min_interval = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 103
  %2 = ptrtoint ptr %sniff_min_interval to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv4, ptr %sniff_min_interval, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false1.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sniff_max_interval_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @sniff_max_interval_get, ptr noundef nonnull @sniff_max_interval_set, ptr noundef nonnull @.str.69) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sniff_max_interval_get(ptr noundef %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %sniff_max_interval = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 104
  %0 = ptrtoint ptr %sniff_max_interval to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sniff_max_interval, align 2
  %conv = zext i16 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sniff_max_interval_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %cmp = icmp ne i64 %val, 0
  %rem = and i64 %val, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rem)
  %tobool.not = icmp eq i64 %rem, 0
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %lor.lhs.false1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false1:                                   ; preds = %entry
  %sniff_min_interval = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 103
  %0 = ptrtoint ptr %sniff_min_interval to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sniff_min_interval, align 8
  %conv = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %val)
  %cmp2 = icmp ugt i64 %conv, %val
  br i1 %cmp2, label %lor.lhs.false1.cleanup_crit_edge, label %if.end

lor.lhs.false1.cleanup_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %conv4 = trunc i64 %val to i16
  %sniff_max_interval = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 104
  %2 = ptrtoint ptr %sniff_max_interval to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv4, ptr %sniff_max_interval, align 2
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false1.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @identity_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @identity_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @identity_show(ptr noundef %f, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  %addr = alloca %struct.bdaddr_t, align 1
  %addr_type = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #8
  %2 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr_type) #8
  %3 = ptrtoint ptr %addr_type to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %addr_type, align 1, !annotation !276
  %lock = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @hci_copy_identity_address(ptr noundef %1, ptr noundef nonnull %addr, ptr noundef nonnull %addr_type) #8
  %4 = ptrtoint ptr %addr_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr_type, align 1
  %conv = zext i8 %5 to i32
  %irk = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 220
  %rpa = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 223
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.76, ptr noundef nonnull %addr, i32 noundef %conv, i32 noundef 16, ptr noundef %irk, ptr noundef %rpa) #8
  call void @mutex_unlock(ptr noundef %lock) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr_type) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_copy_identity_address(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpa_timeout_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @rpa_timeout_get, ptr noundef nonnull @rpa_timeout_set, ptr noundef nonnull @.str.69) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpa_timeout_get(ptr noundef %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %rpa_timeout = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 221
  %0 = ptrtoint ptr %rpa_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rpa_timeout, align 8
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpa_timeout_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i64 %val, -86401
  call void @__sanitizer_cov_trace_const_cmp8(i64 -86371, i64 %0)
  %1 = icmp ult i64 %0, -86371
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %conv = trunc i64 %val to i32
  %rpa_timeout = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 221
  %2 = ptrtoint ptr %rpa_timeout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %rpa_timeout, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @random_address_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @random_address_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @random_address_show(ptr noundef %f, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %lock = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %random_addr = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.77, ptr noundef %random_addr) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @static_address_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @static_address_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @static_address_show(ptr noundef %f, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %lock = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %static_addr = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.77, ptr noundef %static_addr) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @force_static_address_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #8
  %2 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %6 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %conv = select i1 %tobool.not, i8 78, i8 89
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %buf, align 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 10, ptr %2, align 1
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %3, align 1
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #8
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @force_static_address_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable) #8
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %enable, align 1, !annotation !276
  %flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtobool_from_user(ptr noundef %user_buf, i32 noundef %count, ptr noundef nonnull %enable) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enable, align 1, !range !277
  %7 = zext i8 %6 to i32
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i, align 4
  %shr.i = lshr i32 %9, 7
  %and1.i18 = and i32 %shr.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i18, i32 %7)
  %cmp = icmp eq i32 %and1.i18, %7
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  call void @_change_bit(i32 noundef 39, ptr noundef %dev_flags) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end9 ], [ -16, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -114, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_change_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @white_list_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @white_list_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @white_list_show(ptr noundef %f, ptr nocapture noundef readnone %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %lock = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %le_accept_list = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 192
  %2 = ptrtoint ptr %le_accept_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %b.015 = load ptr, ptr %le_accept_list, align 4
  %cmp.not16 = icmp eq ptr %b.015, %le_accept_list
  br i1 %cmp.not16, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %b.017 = phi ptr [ %b.0, %for.body.for.body_crit_edge ], [ %b.015, %entry.for.body_crit_edge ]
  %bdaddr = getelementptr inbounds %struct.bdaddr_list, ptr %b.017, i32 0, i32 1
  %bdaddr_type = getelementptr inbounds %struct.bdaddr_list, ptr %b.017, i32 0, i32 2
  %3 = ptrtoint ptr %bdaddr_type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bdaddr_type, align 2
  %conv = zext i8 %4 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.59, ptr noundef %bdaddr, i32 noundef %conv) #8
  %5 = ptrtoint ptr %b.017 to i32
  call void @__asan_load4_noabort(i32 %5)
  %b.0 = load ptr, ptr %b.017, align 4
  %cmp.not = icmp eq ptr %b.0, %le_accept_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resolv_list_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @resolv_list_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resolv_list_show(ptr noundef %f, ptr nocapture noundef readnone %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %lock = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %le_resolv_list = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 193
  %2 = ptrtoint ptr %le_resolv_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %b.015 = load ptr, ptr %le_resolv_list, align 4
  %cmp.not16 = icmp eq ptr %b.015, %le_resolv_list
  br i1 %cmp.not16, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %b.017 = phi ptr [ %b.0, %for.body.for.body_crit_edge ], [ %b.015, %entry.for.body_crit_edge ]
  %bdaddr = getelementptr inbounds %struct.bdaddr_list, ptr %b.017, i32 0, i32 1
  %bdaddr_type = getelementptr inbounds %struct.bdaddr_list, ptr %b.017, i32 0, i32 2
  %3 = ptrtoint ptr %bdaddr_type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bdaddr_type, align 2
  %conv = zext i8 %4 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.59, ptr noundef %bdaddr, i32 noundef %conv) #8
  %5 = ptrtoint ptr %b.017 to i32
  call void @__asan_load4_noabort(i32 %5)
  %b.0 = load ptr, ptr %b.017, align 4
  %cmp.not = icmp eq ptr %b.0, %le_resolv_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @identity_resolving_keys_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @identity_resolving_keys_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @identity_resolving_keys_show(ptr noundef %f, ptr nocapture noundef readnone %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !264) #8
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !274
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 696, ptr noundef nonnull @.str.65) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b26 = load i1, ptr @identity_resolving_keys_show.__warned, align 1
  br i1 %.b26, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @identity_resolving_keys_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.61, i32 noundef 818, ptr noundef nonnull @.str.62) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %identity_resolving_keys = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 190
  %6 = ptrtoint ptr %identity_resolving_keys to i32
  call void @__asan_load4_noabort(i32 %6)
  %irk.036 = load volatile ptr, ptr %identity_resolving_keys, align 4
  %cmp.not37 = icmp eq ptr %irk.036, %identity_resolving_keys
  br i1 %cmp.not37, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %irk.038 = phi ptr [ %irk.0, %for.body.for.body_crit_edge ], [ %irk.036, %do.end.for.body_crit_edge ]
  %bdaddr = getelementptr inbounds %struct.smp_irk, ptr %irk.038, i32 0, i32 3
  %addr_type = getelementptr inbounds %struct.smp_irk, ptr %irk.038, i32 0, i32 4
  %7 = ptrtoint ptr %addr_type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %addr_type, align 4
  %conv = zext i8 %8 to i32
  %val = getelementptr inbounds %struct.smp_irk, ptr %irk.038, i32 0, i32 5
  %rpa = getelementptr inbounds %struct.smp_irk, ptr %irk.038, i32 0, i32 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.76, ptr noundef %bdaddr, i32 noundef %conv, i32 noundef 16, ptr noundef %val, ptr noundef %rpa) #8
  %9 = ptrtoint ptr %irk.038 to i32
  call void @__asan_load4_noabort(i32 %9)
  %irk.0 = load volatile ptr, ptr %irk.038, align 4
  %cmp.not = icmp eq ptr %irk.0, %identity_resolving_keys
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i27 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i27, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i30

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i30:                                ; preds = %for.end
  %call1.i28 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i28)
  %tobool.not.i29 = icmp eq i32 %call1.i28, 0
  br i1 %tobool.not.i29, label %land.lhs.true.i30.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i32

land.lhs.true.i30.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i32:                               ; preds = %land.lhs.true.i30
  %.b4.i31 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i31, label %land.lhs.true2.i32.rcu_read_unlock.exit_crit_edge, label %if.then.i33

land.lhs.true2.i32.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i33:                                      ; preds = %land.lhs.true2.i32
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 724, ptr noundef nonnull @.str.66) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i33, %land.lhs.true2.i32.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i30.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !275
  %10 = tail call i32 @llvm.read_register.i32(metadata !264) #8
  %and.i.i.i.i.i34 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i34 to ptr
  %preempt_count.i.i.i.i35 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i35, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i35, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @long_term_keys_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @long_term_keys_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @long_term_keys_show(ptr noundef %f, ptr nocapture noundef readnone %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %f, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !264) #8
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !274
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 696, ptr noundef nonnull @.str.65) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b34 = load i1, ptr @long_term_keys_show.__warned, align 1
  br i1 %.b34, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @long_term_keys_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.61, i32 noundef 836, ptr noundef nonnull @.str.62) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %long_term_keys = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 189
  %6 = ptrtoint ptr %long_term_keys to i32
  call void @__asan_load4_noabort(i32 %6)
  %ltk.044 = load volatile ptr, ptr %long_term_keys, align 8
  %cmp.not45 = icmp eq ptr %ltk.044, %long_term_keys
  br i1 %cmp.not45, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %ltk.046 = phi ptr [ %ltk.0, %for.body.for.body_crit_edge ], [ %ltk.044, %do.end.for.body_crit_edge ]
  %bdaddr = getelementptr inbounds %struct.smp_ltk, ptr %ltk.046, i32 0, i32 2
  %bdaddr_type = getelementptr inbounds %struct.smp_ltk, ptr %ltk.046, i32 0, i32 3
  %7 = ptrtoint ptr %bdaddr_type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bdaddr_type, align 2
  %conv = zext i8 %8 to i32
  %authenticated = getelementptr inbounds %struct.smp_ltk, ptr %ltk.046, i32 0, i32 4
  %9 = ptrtoint ptr %authenticated to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %authenticated, align 1
  %conv10 = zext i8 %10 to i32
  %type = getelementptr inbounds %struct.smp_ltk, ptr %ltk.046, i32 0, i32 5
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type, align 8
  %conv11 = zext i8 %12 to i32
  %enc_size = getelementptr inbounds %struct.smp_ltk, ptr %ltk.046, i32 0, i32 6
  %13 = ptrtoint ptr %enc_size to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %enc_size, align 1
  %conv12 = zext i8 %14 to i32
  %ediv = getelementptr inbounds %struct.smp_ltk, ptr %ltk.046, i32 0, i32 7
  %15 = ptrtoint ptr %ediv to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ediv, align 2
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %conv13 = zext i16 %17 to i32
  %rand = getelementptr inbounds %struct.smp_ltk, ptr %ltk.046, i32 0, i32 8
  %18 = ptrtoint ptr %rand to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %rand, align 8
  %20 = tail call i64 @llvm.bswap.i64(i64 %19)
  %val = getelementptr inbounds %struct.smp_ltk, ptr %ltk.046, i32 0, i32 9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %f, ptr noundef nonnull @.str.78, ptr noundef %bdaddr, i32 noundef %conv, i32 noundef %conv10, i32 noundef %conv11, i32 noundef %conv12, i32 noundef %conv13, i64 noundef %20, i32 noundef 16, ptr noundef %val) #8
  %21 = ptrtoint ptr %ltk.046 to i32
  call void @__asan_load4_noabort(i32 %21)
  %ltk.0 = load volatile ptr, ptr %ltk.046, align 8
  %cmp.not = icmp eq ptr %ltk.0, %long_term_keys
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i35 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i35, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i38

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i38:                                ; preds = %for.end
  %call1.i36 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %tobool.not.i37 = icmp eq i32 %call1.i36, 0
  br i1 %tobool.not.i37, label %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i40

land.lhs.true.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i40:                               ; preds = %land.lhs.true.i38
  %.b4.i39 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i39, label %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, label %if.then.i41

land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i41:                                      ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 724, ptr noundef nonnull @.str.66) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i41, %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !275
  %22 = tail call i32 @llvm.read_register.i32(metadata !264) #8
  %and.i.i.i.i.i42 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i42 to ptr
  %preempt_count.i.i.i.i43 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i43, align 4
  %sub.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i43, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @conn_min_interval_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @conn_min_interval_get, ptr noundef nonnull @conn_min_interval_set, ptr noundef nonnull @.str.69) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @conn_min_interval_get(ptr noundef %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %le_conn_min_interval = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 57
  %0 = ptrtoint ptr %le_conn_min_interval to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %le_conn_min_interval, align 2
  %conv = zext i16 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @conn_min_interval_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i64 %val, -3201
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3195, i64 %0)
  %1 = icmp ult i64 %0, -3195
  br i1 %1, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %le_conn_max_interval = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 58
  %2 = ptrtoint ptr %le_conn_max_interval to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %le_conn_max_interval, align 8
  %conv = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %val)
  %cmp3 = icmp ult i64 %conv, %val
  br i1 %cmp3, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %conv5 = trunc i64 %val to i16
  %le_conn_min_interval = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 57
  %4 = ptrtoint ptr %le_conn_min_interval to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv5, ptr %le_conn_min_interval, align 2
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @conn_max_interval_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @conn_max_interval_get, ptr noundef nonnull @conn_max_interval_set, ptr noundef nonnull @.str.69) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @conn_max_interval_get(ptr noundef %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %le_conn_max_interval = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 58
  %0 = ptrtoint ptr %le_conn_max_interval to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %le_conn_max_interval, align 8
  %conv = zext i16 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @conn_max_interval_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i64 %val, -3201
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3195, i64 %0)
  %1 = icmp ult i64 %0, -3195
  br i1 %1, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %le_conn_min_interval = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 57
  %2 = ptrtoint ptr %le_conn_min_interval to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %le_conn_min_interval, align 2
  %conv = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %val)
  %cmp3 = icmp ugt i64 %conv, %val
  br i1 %cmp3, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %conv5 = trunc i64 %val to i16
  %le_conn_max_interval = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 58
  %4 = ptrtoint ptr %le_conn_max_interval to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv5, ptr %le_conn_max_interval, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @conn_latency_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @conn_latency_get, ptr noundef nonnull @conn_latency_set, ptr noundef nonnull @.str.69) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @conn_latency_get(ptr noundef %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %le_conn_latency = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 59
  %0 = ptrtoint ptr %le_conn_latency to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %le_conn_latency, align 2
  %conv = zext i16 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @conn_latency_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 499, i64 %val)
  %cmp = icmp ugt i64 %val, 499
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %conv = trunc i64 %val to i16
  %le_conn_latency = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 59
  %0 = ptrtoint ptr %le_conn_latency to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %le_conn_latency, align 2
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @supervision_timeout_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @supervision_timeout_get, ptr noundef nonnull @supervision_timeout_set, ptr noundef nonnull @.str.69) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @supervision_timeout_get(ptr noundef %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %le_supv_timeout = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 60
  %0 = ptrtoint ptr %le_supv_timeout to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %le_supv_timeout, align 4
  %conv = zext i16 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @supervision_timeout_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i64 %val, -3201
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3191, i64 %0)
  %1 = icmp ult i64 %0, -3191
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %conv = trunc i64 %val to i16
  %le_supv_timeout = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 60
  %2 = ptrtoint ptr %le_supv_timeout to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %le_supv_timeout, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv_channel_map_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @adv_channel_map_get, ptr noundef nonnull @adv_channel_map_set, ptr noundef nonnull @.str.69) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv_channel_map_get(ptr noundef %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %le_adv_channel_map = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 43
  %0 = ptrtoint ptr %le_adv_channel_map to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %le_adv_channel_map, align 1
  %conv = zext i8 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv_channel_map_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i64 %val, -8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -7, i64 %0)
  %1 = icmp ult i64 %0, -7
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %conv = trunc i64 %val to i8
  %le_adv_channel_map = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 43
  %2 = ptrtoint ptr %le_adv_channel_map to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %le_adv_channel_map, align 1
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv_min_interval_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @adv_min_interval_get, ptr noundef nonnull @adv_min_interval_set, ptr noundef nonnull @.str.69) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv_min_interval_get(ptr noundef %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %le_adv_min_interval = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 44
  %0 = ptrtoint ptr %le_adv_min_interval to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %le_adv_min_interval, align 4
  %conv = zext i16 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv_min_interval_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i64 %val, -16385
  call void @__sanitizer_cov_trace_const_cmp8(i64 -16353, i64 %0)
  %1 = icmp ult i64 %0, -16353
  br i1 %1, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %le_adv_max_interval = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 45
  %2 = ptrtoint ptr %le_adv_max_interval to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %le_adv_max_interval, align 2
  %conv = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %val)
  %cmp3 = icmp ult i64 %conv, %val
  br i1 %cmp3, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %conv5 = trunc i64 %val to i16
  %le_adv_min_interval = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 44
  %4 = ptrtoint ptr %le_adv_min_interval to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv5, ptr %le_adv_min_interval, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv_max_interval_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @adv_max_interval_get, ptr noundef nonnull @adv_max_interval_set, ptr noundef nonnull @.str.69) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv_max_interval_get(ptr noundef %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %le_adv_max_interval = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 45
  %0 = ptrtoint ptr %le_adv_max_interval to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %le_adv_max_interval, align 2
  %conv = zext i16 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv_max_interval_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i64 %val, -16385
  call void @__sanitizer_cov_trace_const_cmp8(i64 -16353, i64 %0)
  %1 = icmp ult i64 %0, -16353
  br i1 %1, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %le_adv_min_interval = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 44
  %2 = ptrtoint ptr %le_adv_min_interval to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %le_adv_min_interval, align 4
  %conv = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %val)
  %cmp3 = icmp ugt i64 %conv, %val
  br i1 %cmp3, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %conv5 = trunc i64 %val to i16
  %le_adv_max_interval = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 45
  %4 = ptrtoint ptr %le_adv_max_interval to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv5, ptr %le_adv_max_interval, align 2
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @min_key_size_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @min_key_size_get, ptr noundef nonnull @min_key_size_set, ptr noundef nonnull @.str.69) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @min_key_size_get(ptr noundef %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %le_min_key_size = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 68
  %0 = ptrtoint ptr %le_min_key_size to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %le_min_key_size, align 1
  %conv = zext i8 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @min_key_size_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %le_max_key_size = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 67
  %0 = ptrtoint ptr %le_max_key_size to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %le_max_key_size, align 2
  %conv = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %val)
  %cmp = icmp ult i64 %conv, %val
  call void @__sanitizer_cov_trace_const_cmp8(i64 7, i64 %val)
  %cmp2 = icmp ult i64 %val, 7
  %or.cond = or i1 %cmp2, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %conv4 = trunc i64 %val to i8
  %le_min_key_size = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 68
  %2 = ptrtoint ptr %le_min_key_size to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv4, ptr %le_min_key_size, align 1
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_key_size_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @max_key_size_get, ptr noundef nonnull @max_key_size_set, ptr noundef nonnull @.str.69) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_key_size_get(ptr noundef %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %le_max_key_size = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 67
  %0 = ptrtoint ptr %le_max_key_size to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %le_max_key_size, align 2
  %conv = zext i8 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_key_size_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %val)
  %cmp = icmp ugt i64 %val, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %le_min_key_size = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 68
  %0 = ptrtoint ptr %le_min_key_size to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %le_min_key_size, align 1
  %conv = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %val)
  %cmp1 = icmp ugt i64 %conv, %val
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %conv3 = trunc i64 %val to i8
  %le_max_key_size = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 67
  %2 = ptrtoint ptr %le_max_key_size to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv3, ptr %le_max_key_size, align 2
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @auth_payload_timeout_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @auth_payload_timeout_get, ptr noundef nonnull @auth_payload_timeout_set, ptr noundef nonnull @.str.69) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @auth_payload_timeout_get(ptr noundef %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %auth_payload_timeout = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 72
  %0 = ptrtoint ptr %auth_payload_timeout to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %auth_payload_timeout, align 2
  %conv = zext i16 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @auth_payload_timeout_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i64 %val, -65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 -65535, i64 %0)
  %1 = icmp ult i64 %0, -65535
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %conv = trunc i64 %val to i16
  %auth_payload_timeout = getelementptr inbounds %struct.hci_dev, ptr %data, i32 0, i32 72
  %2 = ptrtoint ptr %auth_payload_timeout to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %auth_payload_timeout, align 2
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @force_no_mitm_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #8
  %2 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %6 = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %conv = select i1 %tobool.not, i8 78, i8 89
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %buf, align 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 10, ptr %2, align 1
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %3, align 1
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #8
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @force_no_mitm_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  %enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #8
  %2 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  %3 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable) #8
  %4 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %enable, align 1, !annotation !276
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %2, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.81, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %2, i32 -1226833920) #12, !srcloc !278
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !279

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %2) #8
  %6 = call i32 @llvm.read_register.i32(metadata !264) #8
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !280
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !281
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !282
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %2) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #8, !srcloc !281
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !282
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %2, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %2, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !279

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %2, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %2
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx, align 1
  %call.i = call i32 @kstrtobool(ptr noundef nonnull %buf, ptr noundef nonnull %enable) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %11 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enable, align 1, !range !277
  %13 = zext i8 %12 to i32
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i, align 4
  %shr.i = lshr i32 %15, 11
  %and1.i = and i32 %shr.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i, i32 %13)
  %cmp9 = icmp eq i32 %and1.i, %13
  br i1 %cmp9, label %if.end5.cleanup_crit_edge, label %if.end12

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  call void @_change_bit(i32 noundef 43, ptr noundef %dev_flags) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %count, %if.end12 ], [ -22, %if.end.cleanup_crit_edge ], [ -114, %if.end5.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @quirk_strict_duplicate_filter_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #8
  %2 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %quirks = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 118
  %4 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %quirks, align 4
  %6 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %conv = select i1 %tobool.not, i8 78, i8 89
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %buf, align 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 10, ptr %2, align 1
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %3, align 1
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #8
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @quirk_strict_duplicate_filter_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable) #8
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %enable, align 1, !annotation !276
  %flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtobool_from_user(ptr noundef %user_buf, i32 noundef %count, ptr noundef nonnull %enable) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enable, align 1, !range !277
  %7 = zext i8 %6 to i32
  %quirks = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 118
  %8 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %quirks, align 4
  %shr.i = lshr i32 %9, 9
  %and1.i17 = and i32 %shr.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i17, i32 %7)
  %cmp = icmp eq i32 %and1.i17, %7
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  call void @_change_bit(i32 noundef 9, ptr noundef %quirks) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end9 ], [ -16, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -114, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @quirk_simultaneous_discovery_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #8
  %2 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %quirks = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 118
  %4 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %quirks, align 4
  %6 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %conv = select i1 %tobool.not, i8 78, i8 89
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %buf, align 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 10, ptr %2, align 1
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %3, align 1
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #8
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @quirk_simultaneous_discovery_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable) #8
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %enable, align 1, !annotation !276
  %flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtobool_from_user(ptr noundef %user_buf, i32 noundef %count, ptr noundef nonnull %enable) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enable, align 1, !range !277
  %7 = zext i8 %6 to i32
  %quirks = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 118
  %8 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %quirks, align 4
  %shr.i = lshr i32 %9, 10
  %and1.i17 = and i32 %shr.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i17, i32 %7)
  %cmp = icmp eq i32 %and1.i17, %7
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  call void @_change_bit(i32 noundef 10, ptr noundef %quirks) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end9 ], [ -16, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -114, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dut_mode_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #8
  %2 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %conv = select i1 %tobool.not, i8 78, i8 89
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %buf, align 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 10, ptr %2, align 1
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %3, align 1
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #8
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dut_mode_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable) #8
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %enable, align 1, !annotation !276
  %flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtobool_from_user(ptr noundef %user_buf, i32 noundef %count, ptr noundef nonnull %enable) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enable, align 1, !range !277
  %7 = zext i8 %6 to i32
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i, align 4
  %shr.i = lshr i32 %9, 4
  %and1.i37 = and i32 %shr.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i37, i32 %7)
  %cmp = icmp eq i32 %and1.i37, %7
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %req_lock = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 163
  call void @mutex_lock_nested(ptr noundef %req_lock, i32 noundef 0) #8
  %10 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enable, align 1, !range !277
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool10.not = icmp eq i8 %11, 0
  %. = select i1 %tobool10.not, i16 3075, i16 6147
  %call15 = call ptr @__hci_cmd_sync(ptr noundef %1, i16 noundef zeroext %., i32 noundef 0, ptr noundef null, i32 noundef 200) #8
  call void @mutex_unlock(ptr noundef %req_lock) #8
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree_skb_reason(ptr noundef %call15, i32 noundef 0) #8
  call void @_change_bit(i32 noundef 36, ptr noundef %dev_flags) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then19, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then19 ], [ %count, %if.end21 ], [ -100, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -114, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__hci_cmd_sync(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vendor_diag_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #8
  %2 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.hci_dev, ptr %1, i32 0, i32 206, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %6 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %conv = select i1 %tobool.not, i8 78, i8 89
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %buf, align 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 10, ptr %2, align 1
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %3, align 1
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #8
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vendor_diag_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable) #8
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %enable, align 1, !annotation !276
  %call = call i32 @kstrtobool_from_user(ptr noundef %user_buf, i32 noundef %count, ptr noundef nonnull %enable) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %quirks = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 118
  %3 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %quirks, align 4
  %5 = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %land.lhs.true.done_crit_edge, label %lor.lhs.false

land.lhs.true.done_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

lor.lhs.false:                                    ; preds = %land.lhs.true
  %dev_flags = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  %9 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %dev_flags, align 4
  %11 = and i32 %10, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  br i1 %tobool6.not, label %lor.lhs.false.if.end8_crit_edge, label %lor.lhs.false.done_crit_edge

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

lor.lhs.false.if.end8_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end8:                                          ; preds = %lor.lhs.false.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %req_lock = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 163
  call void @mutex_lock_nested(ptr noundef %req_lock, i32 noundef 0) #8
  %set_diag = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 241
  %12 = ptrtoint ptr %set_diag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_diag, align 4
  %14 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enable, align 1, !range !277
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool9 = icmp ne i8 %15, 0
  %call10 = call i32 %13(ptr noundef %1, i1 noundef zeroext %tobool9) #8
  call void @mutex_unlock(ptr noundef %req_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end8.done_crit_edge

if.end8.done_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

done:                                             ; preds = %if.end8.done_crit_edge, %lor.lhs.false.done_crit_edge, %land.lhs.true.done_crit_edge
  %16 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %enable, align 1, !range !277
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool14.not = icmp eq i8 %17, 0
  %dev_flags18 = getelementptr inbounds %struct.hci_dev, ptr %1, i32 0, i32 206
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 37, ptr noundef %dev_flags18) #8
  br label %cleanup

if.else:                                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  call void @_clear_bit(i32 noundef 37, ptr noundef %dev_flags18) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then15, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ], [ %count, %if.else ], [ %count, %if.then15 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 128)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !135, !136, !138, !140, !141, !142, !144, !145, !147, !149, !151, !153, !155, !156, !158, !160, !162, !164, !165, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !252, !254, !256, !258, !260, !262}
!llvm.named.register.sp = !{!264}
!llvm.module.flags = !{!265, !266, !267, !268, !269, !270, !271, !272}
!llvm.ident = !{!273}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/bluetooth/hci_debugfs.c", i32 313, i32 22}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/bluetooth/hci_debugfs.c", i32 315, i32 21}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/bluetooth/hci_debugfs.c", i32 317, i32 20}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/bluetooth/hci_debugfs.c", i32 318, i32 21}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/bluetooth/hci_debugfs.c", i32 319, i32 20}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/bluetooth/hci_debugfs.c", i32 321, i32 22}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/bluetooth/hci_debugfs.c", i32 324, i32 22}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/bluetooth/hci_debugfs.c", i32 326, i32 22}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/bluetooth/hci_debugfs.c", i32 328, i32 22}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/bluetooth/hci_debugfs.c", i32 330, i32 22}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/bluetooth/hci_debugfs.c", i32 331, i32 22}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/bluetooth/hci_debugfs.c", i32 334, i32 22}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/bluetooth/hci_debugfs.c", i32 336, i32 22}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/bluetooth/hci_debugfs.c", i32 340, i32 23}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/bluetooth/hci_debugfs.c", i32 344, i32 23}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/bluetooth/hci_debugfs.c", i32 348, i32 23}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/bluetooth/hci_debugfs.c", i32 352, i32 23}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/bluetooth/hci_debugfs.c", i32 623, i32 22}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/bluetooth/hci_debugfs.c", i32 625, i32 22}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/bluetooth/hci_debugfs.c", i32 627, i32 22}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/bluetooth/hci_debugfs.c", i32 629, i32 22}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/bluetooth/hci_debugfs.c", i32 640, i32 23}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/bluetooth/hci_debugfs.c", i32 644, i32 23}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/bluetooth/hci_debugfs.c", i32 646, i32 23}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/bluetooth/hci_debugfs.c", i32 648, i32 23}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/bluetooth/hci_debugfs.c", i32 653, i32 23}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/bluetooth/hci_debugfs.c", i32 655, i32 23}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/bluetooth/hci_debugfs.c", i32 657, i32 23}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/bluetooth/hci_debugfs.c", i32 1180, i32 22}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/bluetooth/hci_debugfs.c", i32 1182, i32 22}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/bluetooth/hci_debugfs.c", i32 1184, i32 22}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/bluetooth/hci_debugfs.c", i32 1186, i32 22}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/bluetooth/hci_debugfs.c", i32 1194, i32 23}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/bluetooth/hci_debugfs.c", i32 1198, i32 20}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/bluetooth/hci_debugfs.c", i32 1200, i32 22}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/bluetooth/hci_debugfs.c", i32 1202, i32 20}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/bluetooth/hci_debugfs.c", i32 1204, i32 22}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/bluetooth/hci_debugfs.c", i32 1206, i32 22}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/bluetooth/hci_debugfs.c", i32 1208, i32 22}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/bluetooth/hci_debugfs.c", i32 1210, i32 22}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/bluetooth/hci_debugfs.c", i32 1212, i32 22}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/bluetooth/hci_debugfs.c", i32 1214, i32 22}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/bluetooth/hci_debugfs.c", i32 1216, i32 22}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/bluetooth/hci_debugfs.c", i32 1218, i32 22}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/bluetooth/hci_debugfs.c", i32 1220, i32 22}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/bluetooth/hci_debugfs.c", i32 1222, i32 22}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/bluetooth/hci_debugfs.c", i32 1224, i32 21}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../net/bluetooth/hci_debugfs.c", i32 1226, i32 22}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../net/bluetooth/hci_debugfs.c", i32 1228, i32 22}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../net/bluetooth/hci_debugfs.c", i32 1230, i32 22}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../net/bluetooth/hci_debugfs.c", i32 1232, i32 22}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/bluetooth/hci_debugfs.c", i32 1235, i32 22}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../net/bluetooth/hci_debugfs.c", i32 1238, i32 22}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../net/bluetooth/hci_debugfs.c", i32 1251, i32 31}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../net/bluetooth/hci_debugfs.c", i32 1369, i32 22}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../net/bluetooth/hci_debugfs.c", i32 1373, i32 23}
!112 = !{ptr @features_fops, !113, !"features_fops", i1 false, i1 false}
!113 = !{!"../net/bluetooth/hci_debugfs.c", i32 106, i32 1}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../net/bluetooth/hci_debugfs.c", i32 98, i32 17}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../net/bluetooth/hci_debugfs.c", i32 100, i32 17}
!118 = !{ptr @device_id_fops, !119, !"device_id_fops", i1 false, i1 false}
!119 = !{!"../net/bluetooth/hci_debugfs.c", i32 120, i32 1}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../net/bluetooth/hci_debugfs.c", i32 113, i32 16}
!122 = !{ptr @device_list_fops, !123, !"device_list_fops", i1 false, i1 false}
!123 = !{!"../net/bluetooth/hci_debugfs.c", i32 140, i32 1}
!124 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../net/bluetooth/hci_debugfs.c", i32 130, i32 17}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../net/bluetooth/hci_debugfs.c", i32 132, i32 17}
!128 = !{ptr @blacklist_fops, !129, !"blacklist_fops", i1 false, i1 false}
!129 = !{!"../net/bluetooth/hci_debugfs.c", i32 155, i32 1}
!130 = !{ptr @blocked_keys_fops, !131, !"blocked_keys_fops", i1 false, i1 false}
!131 = !{!"../net/bluetooth/hci_debugfs.c", i32 170, i32 1}
!132 = distinct !{null, !133, !"__warned", i1 false, i1 false}
!133 = !{!"../net/bluetooth/hci_debugfs.c", i32 163, i32 2}
!134 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../net/bluetooth/hci_debugfs.c", i32 164, i32 17}
!138 = distinct !{null, !139, !"__warned", i1 false, i1 false}
!139 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!140 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!142 = distinct !{null, !143, !"__warned", i1 false, i1 false}
!143 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!144 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @uuids_fops, !146, !"uuids_fops", i1 false, i1 false}
!146 = !{!"../net/bluetooth/hci_debugfs.c", i32 195, i32 1}
!147 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../net/bluetooth/hci_debugfs.c", i32 188, i32 17}
!149 = !{ptr @remote_oob_fops, !150, !"remote_oob_fops", i1 false, i1 false}
!150 = !{!"../net/bluetooth/hci_debugfs.c", i32 214, i32 1}
!151 = !{ptr @.str.68, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../net/bluetooth/hci_debugfs.c", i32 204, i32 17}
!153 = !{ptr @conn_info_min_age_fops, !154, !"conn_info_min_age_fops", i1 false, i1 false}
!154 = !{!"../net/bluetooth/hci_debugfs.c", i32 241, i32 1}
!155 = !{ptr @.str.69, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @conn_info_max_age_fops, !157, !"conn_info_max_age_fops", i1 false, i1 false}
!157 = !{!"../net/bluetooth/hci_debugfs.c", i32 269, i32 1}
!158 = !{ptr @use_debug_keys_fops, !159, !"use_debug_keys_fops", i1 false, i1 false}
!159 = !{!"../net/bluetooth/hci_debugfs.c", i32 284, i32 37}
!160 = !{ptr @sc_only_mode_fops, !161, !"sc_only_mode_fops", i1 false, i1 false}
!161 = !{!"../net/bluetooth/hci_debugfs.c", i32 302, i32 37}
!162 = !{ptr @hardware_info_fops, !163, !"hardware_info_fops", i1 false, i1 false}
!163 = !{!"../net/bluetooth/hci_debugfs.c", i32 308, i32 1}
!164 = !{ptr @.str.70, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @firmware_info_fops, !167, !"firmware_info_fops", i1 false, i1 false}
!167 = !{!"../net/bluetooth/hci_debugfs.c", i32 309, i32 1}
!168 = !{ptr @inquiry_cache_fops, !169, !"inquiry_cache_fops", i1 false, i1 false}
!169 = !{!"../net/bluetooth/hci_debugfs.c", i32 380, i32 1}
!170 = !{ptr @.str.72, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../net/bluetooth/hci_debugfs.c", i32 366, i32 17}
!172 = !{ptr @link_keys_fops, !173, !"link_keys_fops", i1 false, i1 false}
!173 = !{!"../net/bluetooth/hci_debugfs.c", i32 396, i32 1}
!174 = distinct !{null, !175, !"__warned", i1 false, i1 false}
!175 = !{!"../net/bluetooth/hci_debugfs.c", i32 388, i32 2}
!176 = !{ptr @.str.73, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../net/bluetooth/hci_debugfs.c", i32 389, i32 17}
!178 = !{ptr @dev_class_fops, !179, !"dev_class_fops", i1 false, i1 false}
!179 = !{!"../net/bluetooth/hci_debugfs.c", i32 410, i32 1}
!180 = !{ptr @.str.74, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../net/bluetooth/hci_debugfs.c", i32 403, i32 16}
!182 = !{ptr @voice_setting_fops, !183, !"voice_setting_fops", i1 false, i1 false}
!183 = !{!"../net/bluetooth/hci_debugfs.c", i32 423, i32 1}
!184 = !{ptr @.str.75, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @force_bredr_smp_fops, !186, !"force_bredr_smp_fops", i1 false, i1 false}
!186 = !{!"../net/bluetooth/hci_debugfs.c", i32 530, i32 37}
!187 = !{ptr @ssp_debug_mode_fops, !188, !"ssp_debug_mode_fops", i1 false, i1 false}
!188 = !{!"../net/bluetooth/hci_debugfs.c", i32 438, i32 37}
!189 = !{ptr @min_encrypt_key_size_fops, !190, !"min_encrypt_key_size_fops", i1 false, i1 false}
!190 = !{!"../net/bluetooth/hci_debugfs.c", i32 480, i32 1}
!191 = !{ptr @auto_accept_delay_fops, !192, !"auto_accept_delay_fops", i1 false, i1 false}
!192 = !{!"../net/bluetooth/hci_debugfs.c", i32 495, i32 1}
!193 = !{ptr @idle_timeout_fops, !194, !"idle_timeout_fops", i1 false, i1 false}
!194 = !{!"../net/bluetooth/hci_debugfs.c", i32 562, i32 1}
!195 = !{ptr @sniff_min_interval_fops, !196, !"sniff_min_interval_fops", i1 false, i1 false}
!196 = !{!"../net/bluetooth/hci_debugfs.c", i32 590, i32 1}
!197 = !{ptr @sniff_max_interval_fops, !198, !"sniff_max_interval_fops", i1 false, i1 false}
!198 = !{!"../net/bluetooth/hci_debugfs.c", i32 618, i32 1}
!199 = !{ptr @identity_fops, !200, !"identity_fops", i1 false, i1 false}
!200 = !{!"../net/bluetooth/hci_debugfs.c", i32 680, i32 1}
!201 = !{ptr @.str.76, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../net/bluetooth/hci_debugfs.c", i32 672, i32 16}
!203 = !{ptr @rpa_timeout_fops, !204, !"rpa_timeout_fops", i1 false, i1 false}
!204 = !{!"../net/bluetooth/hci_debugfs.c", i32 710, i32 1}
!205 = !{ptr @random_address_fops, !206, !"random_address_fops", i1 false, i1 false}
!206 = !{!"../net/bluetooth/hci_debugfs.c", i32 724, i32 1}
!207 = !{ptr @.str.77, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../net/bluetooth/hci_debugfs.c", i32 718, i32 16}
!209 = !{ptr @static_address_fops, !210, !"static_address_fops", i1 false, i1 false}
!210 = !{!"../net/bluetooth/hci_debugfs.c", i32 737, i32 1}
!211 = !{ptr @force_static_address_fops, !212, !"force_static_address_fops", i1 false, i1 false}
!212 = !{!"../net/bluetooth/hci_debugfs.c", i32 775, i32 37}
!213 = !{ptr @white_list_fops, !214, !"white_list_fops", i1 false, i1 false}
!214 = !{!"../net/bluetooth/hci_debugfs.c", i32 795, i32 1}
!215 = !{ptr @resolv_list_fops, !216, !"resolv_list_fops", i1 false, i1 false}
!216 = !{!"../net/bluetooth/hci_debugfs.c", i32 810, i32 1}
!217 = !{ptr @identity_resolving_keys_fops, !218, !"identity_resolving_keys_fops", i1 false, i1 false}
!218 = !{!"../net/bluetooth/hci_debugfs.c", i32 828, i32 1}
!219 = distinct !{null, !220, !"__warned", i1 false, i1 false}
!220 = !{!"../net/bluetooth/hci_debugfs.c", i32 818, i32 2}
!221 = !{ptr @long_term_keys_fops, !222, !"long_term_keys_fops", i1 false, i1 false}
!222 = !{!"../net/bluetooth/hci_debugfs.c", i32 846, i32 1}
!223 = distinct !{null, !224, !"__warned", i1 false, i1 false}
!224 = !{!"../net/bluetooth/hci_debugfs.c", i32 836, i32 2}
!225 = !{ptr @.str.78, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../net/bluetooth/hci_debugfs.c", i32 837, i32 17}
!227 = !{ptr @conn_min_interval_fops, !228, !"conn_min_interval_fops", i1 false, i1 false}
!228 = !{!"../net/bluetooth/hci_debugfs.c", i32 873, i32 1}
!229 = !{ptr @conn_max_interval_fops, !230, !"conn_max_interval_fops", i1 false, i1 false}
!230 = !{!"../net/bluetooth/hci_debugfs.c", i32 901, i32 1}
!231 = !{ptr @conn_latency_fops, !232, !"conn_latency_fops", i1 false, i1 false}
!232 = !{!"../net/bluetooth/hci_debugfs.c", i32 929, i32 1}
!233 = !{ptr @supervision_timeout_fops, !234, !"supervision_timeout_fops", i1 false, i1 false}
!234 = !{!"../net/bluetooth/hci_debugfs.c", i32 957, i32 1}
!235 = !{ptr @adv_channel_map_fops, !236, !"adv_channel_map_fops", i1 false, i1 false}
!236 = !{!"../net/bluetooth/hci_debugfs.c", i32 985, i32 1}
!237 = !{ptr @adv_min_interval_fops, !238, !"adv_min_interval_fops", i1 false, i1 false}
!238 = !{!"../net/bluetooth/hci_debugfs.c", i32 1013, i32 1}
!239 = !{ptr @adv_max_interval_fops, !240, !"adv_max_interval_fops", i1 false, i1 false}
!240 = !{!"../net/bluetooth/hci_debugfs.c", i32 1041, i32 1}
!241 = !{ptr @min_key_size_fops, !242, !"min_key_size_fops", i1 false, i1 false}
!242 = !{!"../net/bluetooth/hci_debugfs.c", i32 1069, i32 1}
!243 = !{ptr @max_key_size_fops, !244, !"max_key_size_fops", i1 false, i1 false}
!244 = !{!"../net/bluetooth/hci_debugfs.c", i32 1097, i32 1}
!245 = !{ptr @auth_payload_timeout_fops, !246, !"auth_payload_timeout_fops", i1 false, i1 false}
!246 = !{!"../net/bluetooth/hci_debugfs.c", i32 1125, i32 1}
!247 = !{ptr @force_no_mitm_fops, !248, !"force_no_mitm_fops", i1 false, i1 false}
!248 = !{!"../net/bluetooth/hci_debugfs.c", i32 1166, i32 37}
!249 = distinct !{null, !250, !"__already_done", i1 false, i1 false}
!250 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!251 = distinct !{null, !250, !"<string literal>", i1 false, i1 false}
!252 = distinct !{null, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!254 = !{ptr @.str.81, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!256 = !{ptr @quirk_strict_duplicate_filter_fops, !257, !"quirk_strict_duplicate_filter_fops", i1 false, i1 false}
!257 = !{!"../net/bluetooth/hci_debugfs.c", i32 1173, i32 1}
!258 = !{ptr @quirk_simultaneous_discovery_fops, !259, !"quirk_simultaneous_discovery_fops", i1 false, i1 false}
!259 = !{!"../net/bluetooth/hci_debugfs.c", i32 1175, i32 1}
!260 = !{ptr @dut_mode_fops, !261, !"dut_mode_fops", i1 false, i1 false}
!261 = !{!"../net/bluetooth/hci_debugfs.c", i32 1304, i32 37}
!262 = !{ptr @vendor_diag_fops, !263, !"vendor_diag_fops", i1 false, i1 false}
!263 = !{!"../net/bluetooth/hci_debugfs.c", i32 1360, i32 37}
!264 = !{!"sp"}
!265 = !{i32 1, !"wchar_size", i32 2}
!266 = !{i32 1, !"min_enum_size", i32 4}
!267 = !{i32 8, !"branch-target-enforcement", i32 0}
!268 = !{i32 8, !"sign-return-address", i32 0}
!269 = !{i32 8, !"sign-return-address-all", i32 0}
!270 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!271 = !{i32 7, !"uwtable", i32 1}
!272 = !{i32 7, !"frame-pointer", i32 2}
!273 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!274 = !{i64 2149508049}
!275 = !{i64 2149508315}
!276 = !{!"auto-init"}
!277 = !{i8 0, i8 2}
!278 = !{i64 2152208082, i64 2152208107}
!279 = !{!"branch_weights", i32 2000, i32 1}
!280 = !{i64 4703637}
!281 = !{i64 4703834}
!282 = !{i64 2152189067}
